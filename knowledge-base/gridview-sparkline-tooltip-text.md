---
title: Setting ToolTip Text for GridViewSparklineColumn in RadGridView for WinForms
description: Learn how to customize the ToolTip text for values displayed in the GridViewSparklineColumn in RadGridView for WinForms.
type: how-to
page_title: Customizing ToolTip Label for GridViewSparklineColumn in WinForms RadGridView
slug: gridview-sparkline-tooltip-text
tags: gridview, winforms, gridviewsparklinecolumn, tooltip, localizationprovider, tooltips, sparktooltipcontroller
res_type: kb
ticketid: 1681125
---

## Environment
|Product Version|Product|Author|
|----|----|----|
|2025.1.211|RadGridView for WinForms|[Dinko Krastev](https://www.telerik.com/blogs/author/dinko-krastev)|

## Description

In the following tutorial, we will demonstrate how to add a ToolTip to the DataPoints inside the GridViewSparklineColumn. 

## Solution

To customize the ToolTip text for the GridViewSparklineColumn, handle the `DataPointTooltipTextNeeded` event of the `SparkTooltipController`. Access the controller by handling the `CellFormatting` event of the RadGridView. Below is the implementation:

### Steps to Customize ToolTip Text

1. Add a `GridViewSparklineColumn` to your RadGridView.
2. Handle the `CellFormatting` event of the RadGridView to access the `SparkTooltipController`.
3. Subscribe to the `DataPointTooltipTextNeeded` event of the `SparkTooltipController`.
4. Customize the ToolTip text in the `DataPointTooltipTextNeeded` event based on your requirements.

### Example Code

````C#
public partial class GridSparkForm : RadForm
    {
        public GridSparkForm()
        {
            InitializeComponent();

            GridViewDecimalColumn idColumn = new GridViewDecimalColumn("Id");
            this.radGridView1.Columns.Add(idColumn);

            GridViewTextBoxColumn nameColumn = new GridViewTextBoxColumn("Name");
            this.radGridView1.Columns.Add(nameColumn);

            GridViewDateTimeColumn dateColumn = new GridViewDateTimeColumn("Date");
            this.radGridView1.Columns.Add(dateColumn);

            GridViewCheckBoxColumn boolColumn = new GridViewCheckBoxColumn("Bool");
            this.radGridView1.Columns.Add(boolColumn);

            GridViewSparklineColumn column = new GridViewSparklineColumn("SparkColumn") { Width = 400 };
            column.SeriesType = SparkSeriesType.Line;
            column.ShowMarkers = true;
            column.ShowTooltip = true;
            column.ShowHighPointIndicator = true;
            column.ShowLowPointIndicator = true;
            column.ShowNegativePointIndicators = true;
            column.ShowFirstPointIndicator = true;
            column.ShowLastPointIndicator = true;

            column.SparkDataNeeded += this.Column_SparkDataNeeded;
            this.radGridView1.DataSource = this.GetData();
            this.radGridView1.Columns.Add(column);

            this.radGridView1.CellFormatting += this.RadGridView1_CellFormatting;


        }

        private void RadGridView1_CellFormatting(object sender, CellFormattingEventArgs e)
        {
            var cell = e.CellElement as GridSparklineCellElement;
            if (cell == null || cell.SparklineElement.View.Controllers.Count == 0)
            {
                return;
            }

            var controller = cell.SparklineElement.View.Controllers.Where(c => c is SparkTooltipController).First() as SparkTooltipController;
            if (controller != null)
            {
                controller.DataPointTooltipTextNeeded -= Controller_DataPointTooltipTextNeeded;
                controller.DataPointTooltipTextNeeded += Controller_DataPointTooltipTextNeeded;
            }
        }

        private void Controller_DataPointTooltipTextNeeded(object sender, SparkDataPointTooltipTextNeededEventArgs e)
        {
            var point = e.DataPoint as CategoricalSparkDataPoint;
            if (point.Value > 10)
            {
                e.Text = "Value Critical";
            }
        }

        private void Column_SparkDataNeeded(object sender, SparkDataNeededEventArgs e)
        {
            GridSparklineCellElement cell = sender as GridSparklineCellElement;
            if (cell == null)
            {
                return;
            }

            e.Cancel = true;
            BindingList<ChartDataObject> data = new BindingList<ChartDataObject>();
            for (int i = 1; i < 25; i++)
            {
                data.Add(new ChartDataObject
                {
                    //Value = i,
                    Value = i % 2 == 0 ? i : -i,
                    Category = DateTime.Now.AddDays(i)
                });
            }
            
            ((SparkCartesianSeries)cell.SparklineElement.Series).ValueMember = "Value";
            ((SparkCartesianSeries)cell.SparklineElement.Series).CategoryMember = "Category";
            cell.SparklineElement.Series.DataSource = data;
        }

        private DataTable GetData()
        {
            DataTable dt = new DataTable();

            dt.Columns.Add("Id", typeof(int));
            dt.Columns.Add("Name", typeof(string));
            dt.Columns.Add("Date", typeof(DateTime));
            dt.Columns.Add("Bool", typeof(bool));

            Random rand = new Random();

            for (int i = 0; i < 100; i++)
            {
                dt.Rows.Add(i, "Name " + i, DateTime.Now.AddDays(i), i % 2 == 0);
            }

            return dt;
        }
    }

    public class ChartDataObject
    {
        public DateTime? Category { get; set; }

        public double? Value { get; set; }
    }

````


## See Also

- [Sparkline Tooltips Documentation](https://docs.telerik.com/devtools/winforms/controls/sparkline/tooltips)
- [RadGridView Documentation](https://docs.telerik.com/devtools/winforms/controls/gridview/overview)
