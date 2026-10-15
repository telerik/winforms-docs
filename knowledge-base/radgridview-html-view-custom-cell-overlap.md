---
title: Prevent RadGridView Custom Cell Overlap with RadButtonTextBoxElement
description: Eliminate custom cell overlap in RadGridView HTML view by replacing RadButtonTextBox with RadTextBoxControlElement and RadButtonElement.
components: ["gridview"]
type: how-to
page_title: Eliminate RadGridView Custom Cell Overlap with RadButtonTextBox
slug: radgridview-html-view-custom-cell-overlap
position: 0
tags: gridview, RadGridView, RadButtonTextBox, custom cell overlap, HTML view, HtmlViewDefinition, RadTextBoxControlElement
res_type: kb
---

## Environment

| Version | Product | Author | 
| ---- | ---- | ---- | 
| 2026.3.1007| RadGridView |[Desislava Yordanova](https://www.telerik.com/blogs/author/desislava-yordanova)| 

## Description

When you use a custom input cell with **RadGridView** and **HtmlViewDefinition**, cell content can overlap adjacent cells while the grid scrolls. Avoid placing a hosted WinForms control in a custom cell. Instead, compose the cell from **RadElements**, such as `RadTextBoxControlElement` and `RadButtonElement`.

For example, `RadButtonTextBox` derives from `RadTextBox`, whose text input is hosted through a `RadTextBoxItem` based on a standard WinForms `TextBox`. `RadButtonTextBoxElement` also derives from `RadTextBoxElement` and uses that hosted text-box item, so switching to the element does not remove the hosted control. Hosted controls do not support clipping in grid cells and can cause visual glitches. The example below replaces the `Phone` column's default cell with a custom cell that uses `RadTextBoxControlElement` and a button element.

## Solution

The example binds a `DataTable` to **RadGridView**, replaces its generated `Phone` column with a custom column, and uses an HTML-like row template to display each data record in two visual rows. The phone cell spans the first two columns in the second visual row. The custom cell handles its own display using RadElements rather than embedding a `RadButtonTextBox` control.

### Configure the grid and HTML view

````C#

using System;
using System.Data;
using System.Drawing.Text;
using System.Windows.Forms;
using Telerik.WinControls;
using Telerik.WinControls.UI;

public GridHTMLViewDefCustomCells()
{
    InitializeComponent();

    DataTable customersTable = CreateCustomersTable();
    this.radGridView1.DataSource = customersTable;
    this.radGridView1.Columns.Remove("Phone");
    this.radGridView1.Columns.Add(new ButtonTextBoxColumn("Phone"));

    this.radGridView1.AutoSizeColumnsMode = GridViewAutoSizeColumnsMode.Fill;

    HtmlViewDefinition view = new HtmlViewDefinition();
    view.RowTemplate.Rows.Add(new RowDefinition());
    view.RowTemplate.Rows.Add(new RowDefinition());

    view.RowTemplate.Rows[0].Cells.Add(new CellDefinition("CustomerID"));
    view.RowTemplate.Rows[0].Cells.Add(new CellDefinition("CompanyName"));
    view.RowTemplate.Rows[0].Cells.Add(new CellDefinition("City"));
    view.RowTemplate.Rows[0].Cells.Add(new CellDefinition("Country"));
    view.RowTemplate.Rows[1].Cells.Add(new CellDefinition("Phone"));

    view.RowTemplate.Rows[1].Cells[0].ColSpan = 2;
    view.RowTemplate.Rows[0].Cells[2].RowSpan = 2;
    view.RowTemplate.Rows[0].Cells[3].RowSpan = 2;

    this.radGridView1.ViewDefinition = view;
    view.RowTemplate.Rows[1].Height = 40;
}

````

The following helper creates a small table with the required fields. Replace the sample rows with your data as needed. The `Phone` column is removed from the automatically generated grid columns and re-added as a `ButtonTextBoxColumn` bound to the same `Phone` field.

````C#

private static DataTable CreateCustomersTable()
{
    DataTable table = new DataTable();
    table.Columns.Add("CustomerID", typeof(int));
    table.Columns.Add("CompanyName", typeof(string));
    table.Columns.Add("City", typeof(string));
    table.Columns.Add("Country", typeof(string));
    table.Columns.Add("Phone", typeof(string));

    table.Rows.Add(1, "Northwind Traders", "Seattle", "USA", "(206) 555-0100");
    table.Rows.Add(2, "Contoso Foods", "London", "UK", "+44 20 5555 0100");

    return table;
}

````

### Create the custom column and cell

The custom column returns `ButtonTextBoxCellElement` for data rows. The cell's `IsCompatible` implementation restricts it to this column and data-row elements, which is important because RadGridView virtualizes and reuses cell elements while scrolling.

````C#

public class ButtonTextBoxCellElement : GridDataCellElement
{
    private RadTextBoxControlElement textBoxElement;

    public ButtonTextBoxCellElement(GridViewColumn column, GridRowElement row)
        : base(column, row)
    {
    }

    protected override void CreateChildElements()
    {
        base.CreateChildElements();

        this.textBoxElement = new RadTextBoxControlElement();
        this.Children.Add(this.textBoxElement);

        StackLayoutElement buttonPanel = new StackLayoutElement
        {
            Orientation = Orientation.Horizontal,
            StretchVertically = true,
            StretchHorizontally = true
        };

        RadButtonElement button = new RadButtonElement();
        button.TextElement.CustomFont = "TelerikWebUI";
        button.TextElement.CustomFontSize = 10;
        button.TextElement.TextRenderingHint = TextRenderingHint.AntiAlias;
        button.Text = "\ue817";

        buttonPanel.Children.Add(button);
        this.textBoxElement.ClearButton.Parent.Children.Insert(0, buttonPanel);
    }

    protected override void SetContentCore(object value)
    {
        base.SetContentCore(value);

        this.textBoxElement.Text = value == null || value == DBNull.Value
            ? string.Empty
            : Convert.ToString(value);
    }

    protected override Type ThemeEffectiveType
    {
        get { return typeof(GridDataCellElement); }
    }

    public override bool IsCompatible(GridViewColumn data, object context)
    {
        return data is ButtonTextBoxColumn && context is GridDataRowElement;
    }
}

public class ButtonTextBoxColumn : GridViewDataColumn
{
    public ButtonTextBoxColumn(string fieldName)
        : base(fieldName)
    {
    }

    public override Type GetCellType(GridViewRowInfo row)
    {
        if (row is GridViewDataRowInfo)
        {
            return typeof(ButtonTextBoxCellElement);
        }

        return base.GetCellType(row);
    }
}

````

The `SetContentCore` override clears the text for null values as well as setting it for populated cells. This prevents a recycled cell from retaining the previous row's text. The button is a visual element. Attach a `Click` handler if it must perform an action. Replace the `TelerikWebUI` glyph font and character with an icon available in your application if needed.

This pattern avoids hosting a `RadButtonTextBoxElement` containing a TextBox control inside the cell. It uses a RadTextBoxControlElement for text input and a RadButtonElement for the adjacent button, while the custom column and cell keep the editor tied to the `Phone` field and the correct data rows.

## See Also

* [HTML View]({%slug winforms/gridview/view-definitions/html-view%})
* [How to Create Custom Cells with Input Elements]({%slug custom-gridview-cells-with-input-elements%})
* [Add two or more controls in one cell in RadGridView]({%slug add-two-or-more-controls-in-one-cell-in-grid%})
