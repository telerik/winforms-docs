---
title: Import data from excel
description: This article shows how you car read excel file and import the data
type: how-to
page_title: Import data from excel
slug: import-data-from-excel
position: 0
tags: import,data excel
res_type: kb
---


## Environment

|Product Version|Product|Author|
|----|----|----|
|2018.3.1016|RadGridView for WinForms|[Dimitar Karamfilov](https://www.telerik.com/blogs/author/dimitar-karamfilov)|

## Description

While there are several ways to export the data from RadGridView, there is no direct way to import excel data. 

## Solution 

Use the RadSpreadProcessing library to read the file and import the data from it. The example assumes that the first line contains the column names and below them is the data. 

#### Create Data table from an Excel file

````C#
private void radButton1_Click(object sender, EventArgs e)
{
    XlsxFormatProvider formatProvider = new XlsxFormatProvider();
    Workbook workbook = formatProvider.Import(File.ReadAllBytes(@"D:\Book1.xlsx"));

    var worksheet = workbook.Sheets[0] as Worksheet;
    var table = new DataTable();


    for (int i = 0; i < worksheet.UsedCellRange.ColumnCount; i++)
    {
        CellSelection selection = worksheet.Cells[0, i];
        var columnName = selection.GetValue().Value.RawValue.ToString();

        table.Columns.Add(columnName);
    }


    for (int i = 1; i < worksheet.UsedCellRange.RowCount; i++)
    {
        var values = new object[worksheet.UsedCellRange.ColumnCount];

        for (int j = 0; j < worksheet.UsedCellRange.ColumnCount; j++)
        {
            CellSelection selection = worksheet.Cells[i, j];

            ICellValue value = selection.GetValue().Value;
            CellValueFormat format = selection.GetFormat().Value;
            CellValueFormatResult formatResult = format.GetFormatResult(value);
            string result = formatResult.InfosText;

            values[j] = result;
        }
        table.Rows.Add(values);

    }

    radGridView1.DataSource = table;

}
````