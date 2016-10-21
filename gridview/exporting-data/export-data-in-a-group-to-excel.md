---
title: Export Data in a Group to Excel
page_title: Export Data in a Group to Excel | UI for WinForms Documentation
description: Export Data in a Group to Excel
slug: winforms/gridview/exporting-data/export-data-in-a-group-to-excel
tags: export,data,in,a,group,to,excel
published: True
position: 4
previous_url: gridview-exporting-data-export-data-in-a-group-to-excel
---

# Export Data in a Group to Excel



## 

Sometimes you may need to export just the data in a group in a grouped RadGridView. This is possible by using the context menu and its API:

1\. Create RadContextMenu and get the right-clicked group header row by using the __MouseDown__ event and the __GetGridGroupHeaderRowElement__ method. After determining the clicked group row, you can get its child rows. Then simply show the context menu:

{{source=..\SamplesCS\GridView\ExportingData\ExportDataInAGroupToExcel.cs region=createContextMenuAndGetTheGroupChildRows}} 
{{source=..\SamplesVB\GridView\ExportingData\ExportDataInAGroupToExcel.vb region=createContextMenuAndGetTheGroupChildRows}} 

````C#
GridViewChildRowCollection childRowsForExport;
void radGridView1_MouseDown(object sender, MouseEventArgs e)
{
    if (e.Button == MouseButtons.Right)
    {
        GridGroupHeaderRowElement headerRowElement = this.GetGridGroupHeaderRowElement(e.Location);
        RadContextMenu radContextMenu1 = new RadContextMenu();
        RadMenuItem contextMenuItem = new RadMenuItem();
        
        contextMenuItem.Text = "Export to Excel";
        contextMenuItem.Click += new EventHandler(contextMenuItem_Click);
        radContextMenu1.Items.Add(contextMenuItem);
        if (headerRowElement != null)
        {
            this.childRowsForExport = headerRowElement.RowInfo.ChildRows;
            radContextMenu1.DropDown.Location = this.PointToScreen(e.Location);
            radContextMenu1.Show();
        }
    }
}
private GridGroupHeaderRowElement GetGridGroupHeaderRowElement(Point location)
{
    RadElement elementUnderMouse = this.radGridView1.ElementTree.GetElementAtPoint(location);
    while (elementUnderMouse != null)
    {
        GridGroupHeaderRowElement headerRow = elementUnderMouse as GridGroupHeaderRowElement;
        if (headerRow != null)
        {
            return headerRow;
        }
        elementUnderMouse = elementUnderMouse.Parent;
    }
    return null;
}

````
````VB.NET
Private childRowsForExport As GridViewChildRowCollection
Private Sub radGridView1_MouseDown(ByVal sender As Object, ByVal e As MouseEventArgs) Handles RadGridView1.MouseDown
    If e.Button = MouseButtons.Right Then
        Dim headerRowElement As GridGroupHeaderRowElement = Me.GetGridGroupHeaderRowElement(e.Location)
        Dim radContextMenu1 As New RadContextMenu()
        Dim contextMenuItem As New RadMenuItem()
        contextMenuItem.Text = "Export to Excel"
        AddHandler contextMenuItem.Click, AddressOf contextMenuItem_Click
        radContextMenu1.Items.Add(contextMenuItem)
        If headerRowElement IsNot Nothing Then
            Me.childRowsForExport = headerRowElement.RowInfo.ChildRows
            radContextMenu1.DropDown.Location = Me.PointToScreen(e.Location)
            radContextMenu1.Show()
        End If
    End If
End Sub
Private Function GetGridGroupHeaderRowElement(ByVal location As Point) As GridGroupHeaderRowElement
    Dim elementUnderMouse As RadElement = Me.RadGridView1.ElementTree.GetElementAtPoint(location)
    While elementUnderMouse IsNot Nothing
        Dim headerRow As GridGroupHeaderRowElement = TryCast(elementUnderMouse, GridGroupHeaderRowElement)
        If headerRow IsNot Nothing Then
            Return headerRow
        End If
        elementUnderMouse = elementUnderMouse.Parent
    End While
    Return Nothing
End Function

````

{{endregion}} 

2\. Since the export to excel methods do not support exporting only specified records, you can work-around this if you temporarily hide the unnecessary rows and use [ExportToExcelML]({%slug winforms/gridview/exporting-data/export-to-excel-via-excelml-format%}) class with the __DonNotExport__ for __HiddenRowOption__ properties.

3\. In the click event of the context menu item, mark the rows in the RadGridView.Rows collection that match the rows of the child collection by setting their __IsVisible__ property to *true*, and all the rest to *false*. Then simply export RadGridView with __HiddenRowOption__ set to *HiddenOption.DoNotExport*:

{{source=..\SamplesCS\GridView\ExportingData\ExportDataInAGroupToExcel.cs region=markTheUnnesseceryRowsAndExportTheRestOfThem}} 
{{source=..\SamplesVB\GridView\ExportingData\ExportDataInAGroupToExcel.vb region=markTheUnnesseceryRowsAndExportTheRestOfThem}} 

````C#
void contextMenuItem_Click(object sender, EventArgs e)
{
    if (this.childRowsForExport != null && this.childRowsForExport.Count > 0)
    {
        SaveFileDialog dialog = new SaveFileDialog();
        dialog.Filter = "Excel File (*.xls)|*.xls";
        if (dialog.ShowDialog() == DialogResult.OK)
        {
            //hide rows, which should not be exported
            foreach (GridViewRowInfo row in this.radGridView1.Rows)
            {
                bool isVisible = false;
                foreach (GridViewRowInfo childRow in this.childRowsForExport)
                {
                    if (row == childRow)
                    {
                        isVisible = true;
                    }
                }
                row.IsVisible = isVisible;
            }
            ExportToExcelML exporter = new ExportToExcelML(this.radGridView1);
            exporter.HiddenRowOption = HiddenOption.DoNotExport;
            exporter.RunExport(dialog.FileName);
            MessageBox.Show("Export Finished");
        }
        //show all rows
        foreach (GridViewRowInfo row in this.radGridView1.Rows)
        {
            row.IsVisible = true;
        }
    }
    //release resources
    RadMenuItem menuItem = (RadMenuItem)sender;
    menuItem.Click -= contextMenuItem_Click;
    this.childRowsForExport = null;
}

````
````VB.NET
Private Sub contextMenuItem_Click(ByVal sender As Object, ByVal e As EventArgs)
    If Me.childRowsForExport IsNot Nothing AndAlso Me.childRowsForExport.Count > 0 Then
        Dim dialog As New SaveFileDialog()
        dialog.Filter = "Excel File (*.xls)|*.xls"
        If dialog.ShowDialog() = DialogResult.OK Then
            'hide rows, which should not be exported
            For Each row As GridViewRowInfo In Me.RadGridView1.Rows
                Dim isVisible As Boolean = False
                For Each childRow As GridViewRowInfo In Me.childRowsForExport
                    If row.Equals(childRow) Then
                        isVisible = True
                    End If
                Next
                row.IsVisible = isVisible
            Next
            Dim exporter As New ExportToExcelML(Me.RadGridView1)
            exporter.HiddenRowOption = HiddenOption.DoNotExport
            exporter.RunExport(dialog.FileName)
            MessageBox.Show("Export Finished")
        End If
        'show all rows
        For Each row As GridViewRowInfo In Me.RadGridView1.Rows
            row.IsVisible = True
        Next
    End If
    'release resources
    Dim menuItem As RadMenuItem = DirectCast(sender, RadMenuItem)
    RemoveHandler menuItem.Click, AddressOf contextMenuItem_Click
    Me.childRowsForExport = Nothing
End Sub

````

{{endregion}} 




4\. If you need to get the text from the GroupRowHeader, use the following snippet:

{{source=..\SamplesCS\GridView\ExportingData\ExportDataInAGroupToExcel.cs region=getTheGroupLineText}} 
{{source=..\SamplesVB\GridView\ExportingData\ExportDataInAGroupToExcel.vb region=getTheGroupLineText}} 

````C#
private string GetGroupLineHeaderText(GridGroupHeaderRowElement headerRowElement)
{
    string headerText = headerRowElement.RowInfo.Group.GroupRow.HeaderText;
    return headerText;
}

````
````VB.NET
Private Function GetGroupLineHeaderText(ByVal headerRowElement As GridGroupHeaderRowElement) As String
    Dim headerText As String = headerRowElement.RowInfo.Group.GroupRow.HeaderText
    Return headerText
End Function

````

{{endregion}} 



