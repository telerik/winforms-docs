---
title: Filtering Child Rows in Self-referencing Hierarchy While Keeping Parent Row Visible
description: Learn how to filter rows in a self-referencing hierarchical RadGridView while keeping parent rows visible when child rows match the filter condition.
type: how-to
page_title: Filtering Self-referencing Hierarchical RadGridView with Parent Row Visibility
meta_title: Filtering Self-referencing Hierarchical RadGridView with Parent Row Visibility
slug: grid-custom-filtering-self-referencing-hierarchy
tags: gridview, ui-for-winforms, filtering, custom-filtering, self-referencing-hierarchy
res_type: kb
ticketid: 1700615
---

## Environment

|Product Version|Product|Author|
|----|----|----|
|2025.3.812|RadGridView for WinForms|[Nadya Karaivanova](https://www.telerik.com/blogs/author/nadya-karaivanova)|

## Description

This knowledge base article shows how to filter rows in a self-referencing hierarchical RadGridView using custom filtering while keeping parent rows visible as long as any child rows match the filter condition.

## Solution

To achieve hierarchical filtering that retains parent rows when child rows match, use the **CustomFiltering** event and implement recursive filtering logic for the child rows. Follow these steps:

1. Subscribe to the **CustomFiltering** event of the RadGridView.
2. Implement a recursive method to evaluate each row and its child rows against the filter condition.
3. Set the filtering logic so that parent rows remain visible if any matching child rows are found.

### Example: Filtering Child Rows in Self-referencing Hierarchy While Keeping Parent Row Visible

````C#
public Form1()
{
    InitializeComponent();

    this.radGridView1.MasterTemplate.AutoSizeColumnsMode = GridViewAutoSizeColumnsMode.Fill;
    this.radGridView1.DataSource = CreateDataSource();

    this.radGridView1.Relations.AddSelfReference(this.radGridView1.MasterTemplate, "ID", "ParentID");

    this.radGridView1.Columns["ID"].IsVisible = false;
    this.radGridView1.Columns["ParentID"].IsVisible = false;
    this.radGridView1.Columns["Size"].FormatString = "{0} MB";

    this.radGridView1.EnableFiltering = true;
    this.radGridView1.MasterTemplate.EnableFiltering = true;
    this.radGridView1.EnableCustomFiltering = true;
    this.radGridView1.CustomFiltering += new GridViewCustomFilteringEventHandler(radGridView1_CustomFiltering);
    this.radTextBox1.TextChanged += RadTextBox1_TextChanged;
}

private void RadTextBox1_TextChanged(object sender, EventArgs e)
{
    this.radGridView1.MasterTemplate.Refresh();
}

private void radGridView1_CustomFiltering(object sender, GridViewCustomFilteringEventArgs e)
 {
    string searchString = this.radTextBox1.Text;
    if (string.IsNullOrEmpty(searchString))
    {
        e.Visible = true;
        e.Row.IsVisible = true;
        return;
    }

    string columnName_cellValue = e.Row.Cells["Name"].Value.ToString();
    bool parentContains = false;
    foreach (var childRow in e.Row.ChildRows)
    {

        string text = childRow.Cells["Name"].Value?.ToString() ?? "";
        if (childRow.ChildRows.Count> 0)
        {
            foreach (var innerRow in childRow.ChildRows)
            {
                text = innerRow.Cells["Name"].Value?.ToString() ?? "";
                if (text.Contains( searchString))
                {
                    e.Visible = true;
                    e.Row.IsVisible = true;
                    parentContains = true;
                }
                else
                {
                    e.Visible = false;
                    e.Row.IsVisible = false;
                }
            }
        }
        else
        {
            if (text.Contains(searchString))
            {
                e.Visible = true;
                e.Row.IsVisible = true;
                parentContains = true;
            }
            else
            {
                e.Visible = false;
                e.Row.IsVisible = false;
            }
        }
        
    }

    if (!parentContains)
    {
        if (columnName_cellValue.Contains(searchString))
        {

            e.Visible = true;
            e.Row.IsVisible = true;
        }
        else
        {
            e.Visible = false;
            e.Row.IsVisible = false;
        }
    }

    e.Handled = true;
}

private static DataTable CreateDataSource()
{
    DataTable dataSource = new DataTable("fileSystem");
    dataSource.Columns.Add("ID", typeof(int));
    dataSource.Columns.Add("ParentID", typeof(int));
    dataSource.Columns.Add("Name", typeof(string));
    dataSource.Columns.Add("Date", typeof(DateTime));
    dataSource.Columns.Add("Type", typeof(string));
    dataSource.Columns.Add("Size", typeof(int));

    dataSource.Rows.Add(1, null, "Program Files", DateTime.Now.AddDays(-100), "Folder", 5120);
    dataSource.Rows.Add(2, 1, "Visual Studio 2010", DateTime.Now.AddDays(-100), "Folder", 3220);
    dataSource.Rows.Add(3, 2, "bin", DateTime.Now.AddDays(-100), "Folder", 3220);
    dataSource.Rows.Add(4, 2, "READEME.txt", DateTime.Now.AddDays(-100), "Text Document", 3);

    dataSource.Rows.Add(5, 1, "Telerik RadControls", DateTime.Now.AddDays(-10), "Folder", 3120);
    dataSource.Rows.Add(6, 5, "Telerik UI for Winforms", DateTime.Now.AddDays(-10), "Folder", 101);
    dataSource.Rows.Add(7, 5, "Telerik UI for Silverlight", DateTime.Now.AddDays(-10), "Folder", 123);
    dataSource.Rows.Add(8, 5, "Telerik UI for WPF", DateTime.Now.AddDays(-10), "Folder", 221);
    dataSource.Rows.Add(9, 5, "Telerik UI for ASP.NET AJAX", DateTime.Now.AddDays(-10), "Folder", 121);

    dataSource.Rows.Add(10, 1, "Microsoft Office 2010", DateTime.Now.AddDays(-120), "Folder", 1230);
    dataSource.Rows.Add(11, 10, "Microsoft Word 2010", DateTime.Now.AddDays(-120), "Folder", 1230);
    dataSource.Rows.Add(12, 10, "Microsoft Excel 2010", DateTime.Now.AddDays(-120), "Folder", 1230);
    dataSource.Rows.Add(13, 10, "Microsoft Powerpoint 2010", DateTime.Now.AddDays(-120), "Folder", 1230);

    dataSource.Rows.Add(14, 1, "Debug Diagnostic Tools v1.0", DateTime.Now.AddDays(-400), "Folder", 2120);
    dataSource.Rows.Add(15, 1, "Designer's 3D Tools", DateTime.Now.AddDays(-500), "Folder", 1120);
    dataSource.Rows.Add(16, 1, "Communication", DateTime.Now.AddDays(-700), "Folder", 120);

    dataSource.Rows.Add(17, null, "My Documents", DateTime.Now.AddDays(-200), "Folder", 1024);
    dataSource.Rows.Add(18, 17, "Salaries.xlsx", DateTime.Now.AddDays(-200), "Excel File", 1);
    dataSource.Rows.Add(19, 18, "RecessionAnalysis.xlsx", DateTime.Now.AddDays(-200), "Excel File", 1);

    dataSource.Rows.Add(20, null, "Windows", DateTime.Now.AddDays(-100), "Folder", 10240);

    dataSource.Rows.Add(21, 20, "System32", DateTime.Now.AddDays(-220), "Folder", 510);
    dataSource.Rows.Add(22, 20, "assembly", DateTime.Now.AddDays(-20), "Folder", 240);

    dataSource.Rows.Add(23, 22, "System.Data.dll", DateTime.Now.AddDays(-20), "Assembly File", 4);
    dataSource.Rows.Add(24, 22, "System.Core.dll", DateTime.Now.AddDays(-20), "Assembly File", 2);
    dataSource.Rows.Add(25, 22, "System.Drawings.dll", DateTime.Now.AddDays(-20), "Assembly File", 3);
    dataSource.Rows.Add(26, 22, "Telerik.WinControls.UI.dll", DateTime.Now.AddDays(-20), "Assembly File", 5);

    dataSource.Rows.Add(27, null, "Users", DateTime.Now.AddDays(-100), "Folder", 5512);
    dataSource.Rows.Add(28, 27, "Administrator", DateTime.Now.AddDays(-100), "Folder", 1512);
    dataSource.Rows.Add(29, 27, "Guest", DateTime.Now.AddDays(-100), "Folder", 2512);
    dataSource.Rows.Add(30, 27, "User1", DateTime.Now.AddDays(-100), "Folder", 3512);

    dataSource.Rows.Add(31, null, "Share", DateTime.Now.AddDays(-50), "Folder", 15360);
    dataSource.Rows.Add(32, 31, "Photos", DateTime.Now.AddDays(-50), "Folder", 360);
    dataSource.Rows.Add(33, 32, "Flowers.JPG", DateTime.Now.AddDays(-50), "JPEG File", 1);
    dataSource.Rows.Add(34, 32, "Panda.GIF", DateTime.Now.AddDays(-50), "GIF File", 3);
    dataSource.Rows.Add(35, 32, "Landscape.png", DateTime.Now.AddDays(-50), "PNG File", 4);

    dataSource.Rows.Add(36, null, "Music", DateTime.Now.AddDays(-2), "Folder", 0);
    dataSource.Rows.Add(37, 36, "Mozart", DateTime.Now.AddDays(-3), "Folder", 0);
    dataSource.Rows.Add(38, 36, "Pavarotti", DateTime.Now.AddDays(-40), "Folder", 0);
    dataSource.Rows.Add(39, 36, "AC/DC", DateTime.Now.AddDays(-50), "Folder", 0);
    dataSource.Rows.Add(40, 36, "Queen", DateTime.Now.AddDays(-8), "Folder", 0);

    dataSource.Rows.Add(41, null, "Boot.ini", DateTime.Now.AddDays(-10), "INI File", 0);

    return dataSource;
}

````

## See Also
- [Custom Filtering](https://docs.telerik.com/devtools/winforms/controls/gridview/features/filtering/custom-filtering) 
