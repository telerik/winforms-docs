---
title: Conditional Formatting Cells
page_title: Conditional Formatting Cells | RadGridView
description: Change the styled of a cell using a specific formatting rule (ConditionalFormattingObjects).
slug: winforms/gridview/cells/conditional-formatting-cells
tags: conditional,formatting,cells
published: True
position: 3
previous_url: gridview-cells-conditional-formatting-cells
---

# Conditional Formatting Cells

Cells and rows can be styled based on data conditions using __ConditionalFormattingObjects__. The formatting objects could contain the following formatting properties for cell, row, and text alignment:

* __CellBackColor:__ sets the background color of the cell.        

* __CellForeColor:__ sets the cell text color.         

* __CellFont:__ sets the font of the cell.         

* __TextAlignment:__ sets the alignment of the cell text.         

* __RowBackColor:__ sets the background color for the entire row that the cell appears in.         

* __RowForeColor:__ sets the cell text color for the entire row that the cell appears in.         

* __RowFont:__ sets the font of the row’s cells text.         

* __RowTextAlignment:__ sets the alignment of the row’s cells text.
          
The formatting properties of the rows apply if the __ApplyToRow__ property of the formatting object is set to *true*. The __ApplyOnSelectedRows__ property defines if the formatting properties of the object will apply also to the selected rows.      

The formatting objects are two different types depending on the mechanism for defining conditions - rule based and expression based.
      
## Rule based formatting objects

The rule based formatting objects apply to the cells / rows according to the defined rules:

* __ConditionType:__ sets conditions like *Equal*, *Contains*, etc.            

* __TValue1:__ a string representing the first value used to test the condition.            

* __TValue2:__ a string representing the second value used to test the condition.            

The example below detects when a value in the second column `UnitPrice` has a value __greater than 30__. When the condition is met the cell background color is set to *SkyBlue*, the text color is set to *Red* and the text alignment is set to *MiddleRight*.

{{source=..\SamplesCS\GridView\Cells\ConditionalFormattingCells.cs region=conditionalFormattingCells}} 
{{source=..\SamplesVB\GridView\Cells\ConditionalFormattingCells.vb region=conditionalFormattingCells}} 

````C#
ConditionalFormattingObject obj = new ConditionalFormattingObject("MyCondition", ConditionTypes.Greater, "30", "", false);
obj.CellBackColor = Color.SkyBlue;
obj.CellForeColor = Color.Red;
obj.TextAlignment = ContentAlignment.MiddleRight;
this.radGridView1.Columns["UnitPrice"].ConditionalFormattingObjectList.Add(obj);

````
````VB.NET
Dim obj As New ConditionalFormattingObject("MyCondition", ConditionTypes.Greater, "30", "", False)
obj.CellBackColor = Color.SkyBlue
obj.CellForeColor = Color.Red
obj.TextAlignment = ContentAlignment.MiddleRight
Me.RadGridView1.Columns("UnitPrice").ConditionalFormattingObjectList.Add(obj)

````

{{endregion}} 

>caption Figure 1: Rule based formatting objects.

![gridview-cells-conditional-formatting-cells 001](images/gridview-cells-conditional-formatting-cells001.png)

## Expression based formatting objects

The expression based formatting objects apply to the cells / rows according to the defined __Expression__. It provides high flexibility to the formatting mechanism. The __Expression__ could refer to data from more than one column. Its result should be Boolean.
        
The example below detects when a value in the second column `UnitPrice` has a value __greater than 30__ and sets styles to the `ProductName` column.

{{source=..\SamplesCS\GridView\Cells\ConditionalFormattingCells.cs region=expression}} 
{{source=..\SamplesVB\GridView\Cells\ConditionalFormattingCells.vb region=expression}} 

````C#
ExpressionFormattingObject obj = new ExpressionFormattingObject("MyCondition", "UnitPrice > 30", false);
obj.CellBackColor = Color.SkyBlue;
obj.CellForeColor = Color.Red;
this.radGridView1.Columns["ProductName"].ConditionalFormattingObjectList.Add(obj);

````
````VB.NET
Dim obj As New ExpressionFormattingObject("MyCondition", "UnitPrice > 30", False)
obj.CellBackColor = Color.SkyBlue
obj.CellForeColor = Color.Red
Me.RadGridView1.Columns("ProductName").ConditionalFormattingObjectList.Add(obj)

````

{{endregion}} 

>caption Figure 2: Expression based formatting objects.

![gridview-cells-conditional-formatting-cells 002](images/gridview-cells-conditional-formatting-cells002.png)

## Customize ConditionalFormattingForm

__RadGridView__ provides a convenient form which the end user could use to create formatting objects:

>caption Figure 3: Conditional Formatting Form.

![gridview-cells-conditional-formatting-cells 003](images/gridview-cells-conditional-formatting-cells003.png)

To access and customize the dialog, you can use the  __ConditionalFormattingFormShown__ event. For example, here is how to disallow displaying of non-visible columns in the drop down and also, specify the format of displaying the columns as __name and header text__:

{{source=..\SamplesCS\GridView\Cells\ConditionalFormattingCells.cs region=expression}} 
{{source=..\SamplesVB\GridView\Cells\ConditionalFormattingCells.vb region=expression}} 

````C#
ExpressionFormattingObject obj = new ExpressionFormattingObject("MyCondition", "UnitPrice > 30", false);
obj.CellBackColor = Color.SkyBlue;
obj.CellForeColor = Color.Red;
this.radGridView1.Columns["ProductName"].ConditionalFormattingObjectList.Add(obj);

````
````VB.NET
Dim obj As New ExpressionFormattingObject("MyCondition", "UnitPrice > 30", False)
obj.CellBackColor = Color.SkyBlue
obj.CellForeColor = Color.Red
Me.RadGridView1.Columns("ProductName").ConditionalFormattingObjectList.Add(obj)

````

{{endregion}} 



# See Also
* [Accessing and Setting the CurrentCell]({%slug winforms/gridview/cells/accessing-and-setting-the-currentcell%})

* [Accessing Cells]({%slug winforms/gridview/cells/accessing-cells%})

* [Creating Custom Cells]({%slug winforms/gridview/cells/creating-custom-cells%})

* [Formatting Cells]({%slug winforms/gridview/cells/formatting-cells%})

* [GridViewCellInfo]({%slug winforms/gridview/cells/gridviewcellinfo%})

* [Iterating Cells]({%slug winforms/gridview/cells/iterating-cells%})

* [Painting and Drawing in Cells]({%slug winforms/gridview/cells/painting-and-drawing-in-cells%})

* [ToolTips]({%slug winforms/gridview/cells/tooltips%})

