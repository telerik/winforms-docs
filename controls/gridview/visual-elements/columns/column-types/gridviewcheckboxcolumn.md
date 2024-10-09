---
title: GridViewCheckBoxColumn
page_title: GridViewCheckBoxColumn - WinForms GridView Control
description: GridViewCheckBoxColumn displays and allows editing of boolean data in WinForms GridView. The values are shown as check boxes.
slug: winforms/gridview/columns/column-types/gridviewcheckboxcolumn
tags: gridviewcheckboxcolumn
published: True
position: 4
previous_url: gridview-columns-gridviewcheckboxcolumn, gridview-editors-howto-checkboxeditor-submit-value-change
---

# GridViewCheckBoxColumn

__GridViewCheckBoxColumn__ displays and allows editing of boolean data. The values are shown as check boxes and allow the user to set or clear the check boxes to toggle the underlying boolean data values. __GridViewCheckBoxColumn__ inherits from __GridViewDataColumn.__

![WinForms RadGridView GridViewCheckBoxColumn](images/gridview-columns-gridviewcheckboxcolumn001.png)

#### Create and add GridViewCheckBoxColumn

{{source=..\SamplesCS\GridView\Columns\GridViewCheckBoxColumn1.cs region=addCheckBoxColumn}} 
{{source=..\SamplesVB\GridView\Columns\GridViewCheckBoxColumn1.vb region=addCheckBoxColumn}} 

````C#
GridViewCheckBoxColumn checkBoxColumn = new GridViewCheckBoxColumn();
checkBoxColumn.DataType = typeof(int);
checkBoxColumn.Name = "DiscontinuedColumn";
checkBoxColumn.FieldName = "Discontinued";
checkBoxColumn.HeaderText = "Discontinued?";
radGridView1.MasterTemplate.Columns.Add(checkBoxColumn);

````
````VB.NET
Dim checkBoxColumn As New GridViewCheckBoxColumn()
checkBoxColumn.DataType = GetType(Integer)
checkBoxColumn.Name = "DiscontinuedColumn"
checkBoxColumn.FieldName = "Discontinued"
checkBoxColumn.HeaderText = "Discontinued?"
RadGridView1.MasterTemplate.Columns.Add(checkBoxColumn)

````

{{endregion}} 

The column has also a built-in functionality for checking all check boxes in it, via check box placed in the column header cell. By setting the __EnableHeaderCheckBox__ property to *true* you will enable the embedded in the header cell **RadCheckBoxElement**. 

{{source=..\SamplesCS\GridView\Columns\GridViewCheckBoxColumn1.cs region=EnableHeaderCheckBox}} 
{{source=..\SamplesVB\GridView\Columns\GridViewCheckBoxColumn1.vb region=EnableHeaderCheckBox}} 

````C#
checkBoxColumn.EnableHeaderCheckBox = true;

````
````VB.NET
checkBoxColumn.EnableHeaderCheckBox = True

````

{{endregion}} 

## ValueChanged event

__ValueChanged__ event can be used in particular about check box state change. You have to check the active editor type as in the example below:

{{source=..\SamplesCS\GridView\Columns\GridViewCheckBoxColumn1.cs region=valueChanged}} 
{{source=..\SamplesVB\GridView\Columns\GridViewCheckBoxColumn1.vb region=valueChanged}} 

````C#
void radGridView1_ValueChanged(object sender, EventArgs e)
{
    if (this.radGridView1.ActiveEditor is RadCheckBoxEditor)
    {
        Console.WriteLine(this.radGridView1.CurrentCell.RowIndex);
        Console.WriteLine(this.radGridView1.ActiveEditor.Value);
    }
}

````
````VB.NET
Private Sub RadGridView1_ValueChanged(ByVal sender As Object, ByVal e As System.EventArgs) Handles RadGridView1.ValueChanged
    If TypeOf Me.RadGridView1.ActiveEditor Is RadCheckBoxEditor Then
        Console.WriteLine(Me.RadGridView1.CurrentCell.RowIndex)
        Console.WriteLine(Me.RadGridView1.ActiveEditor.Value)
    End If
End Sub

````

{{endregion}} 

## HeaderCellToggleStateChanged event

To handle the toggle state change of the embedded check box in the header cell you should use the __HeaderCellToggleStateChanged__ event of RadGridView.

{{source=..\SamplesCS\GridView\Columns\GridViewCheckBoxColumn1.cs region=HeaderCellToggleStateChanged}} 
{{source=..\SamplesVB\GridView\Columns\GridViewCheckBoxColumn1.vb region=HeaderCellToggleStateChanged}} 

````C#
void radGridView1_HeaderCellToggleStateChanged(object sender, GridViewHeaderCellEventArgs e)
{
    Console.WriteLine(e.Column.Name);
    Console.WriteLine(e.State);
}

````
````VB.NET
Private Sub radGridView1_HeaderCellToggleStateChanged(sender As Object, e As GridViewHeaderCellEventArgs)
    Console.WriteLine(e.Column.Name)
    Console.WriteLine(e.State)
End Sub

````

{{endregion}} 

## EditMode

The __EditMode__ property controls when the value of the editor will be submitted to the cell. By default, the current behavior is kept (*OnValidate*) and the value will be submitted only when the current cell changes or the grid looses focus. The new value (*OnValueChange*) will submit the value immediately after the editor value changes.

{{source=..\SamplesCS\GridView\Columns\GridViewCheckBoxColumn1.cs region=EditMode}} 
{{source=..\SamplesVB\GridView\Columns\GridViewCheckBoxColumn1.vb region=EditMode}} 

````C#
checkBoxColumn.EditMode = EditMode.OnValueChange;

````
````VB.NET
checkBoxColumn.EditMode = EditMode.OnValueChange

````

{{endregion}} 

## GridViewCheckBoxColumn's Properties 

|Property|Description|
|----|----|
|**ThreeState**|Gets or sets a value indicating whether to use a three state check-box.|
|**DataType**|Gets or sets a value indicating the column's data type.|
|**EnableHeaderCheckBox**|Gets or sets a value indicating whether to show embedded check-box in header cell.|
|**Checked**|Gets a value indicating whether the check-box in header cell checked.|
|**ShouldCheckDataRows**|This property determines whether the check-box in the header cell will be synced with the data cells.|
|**EditMode**|This property determines whether changing a value of a check box will immediately be send to the cell (OnValueChange) or when the current cell is changed or the grid is being validated (OnCellChangeOrValidating).|
|**HeaderCheckBoxPosition**|Controls the position of the checkbox and the text, possible values are Left, Right and Center.|
|**HeaderCheckBoxAlignmentProperty**|Controls the alignment of the checkbox to the Text.|
|**CheckFilteredRows**|Gets or sets a value indicating if the hidden rows will be checked by the header check-box.|

|HeaderCheckBoxPosition/HeaderCheckBoxAlignment|Result|
|----|----|
|HeaderCheckBoxPosition = HorizontalAlignment.Right & HeaderCheckBoxAlignment = ContentAlignment.MiddleLeft|![WinForms RadGridView gridview-columns-gridviewcheckboxcolumn 001](images/gridview-columns-gridviewcheckboxcolumn002.png)|
|HeaderCheckBoxPosition = HorizontalAlignment.Right & HeaderCheckBoxAlignment = ContentAlignment.MiddleRight|![WinForms RadGridView gridview-columns-gridviewcheckboxcolumn 001](images/gridview-columns-gridviewcheckboxcolumn003.png)|


# See Also

* [How to Convert a GridViewCheckBoxColumn to a Custom ToggleSwitch Column]({%slug convert-checkboxcolumn-to-toggleswitchcolumn%})

* [GridViewBrowseColumn]({%slug winforms/gridview/columns/column-types/gridviewbrowsecolumn%})

* [GridViewCalculatorColumn]({%slug winforms/gridview/columns/column-types/gridviewcalculatorcolumn%})

* [GridViewColorColumn]({%slug winforms/gridview/columns/column-types/gridviewcolorcolumn%})

* [GridViewComboBoxColumn]({%slug winforms/gridview/columns/column-types/gridviewcomboboxcolumn%})

* [GridViewCommandColumn]({%slug winforms/gridview/columns/column-types/gridviewcommandcolumn%})

* [GridViewDateTimeColumn]({%slug winforms/gridview/columns/column-types/gridviewdatetimecolumn%})

* [GridViewDecimalColumn]({%slug winforms/gridview/columns/column-types/gridviewdecimalcolumn%})

* [GridViewHyperlinkColumn]({%slug winforms/gridview/columns/column-types/gridviewhyperlinkcolumn%})

* [GridViewSparklineColumn]({%slug gridview-columntypes-sparklinecolumn%})

