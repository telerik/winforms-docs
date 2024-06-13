---
title: Adding custom elements inside a cell when it is in edit mode
description: Adding custom elements inside a cell when it is in edit mode. Check it now!
type: how-to
page_title: Adding custom elements inside a cell when it is in edit mode
slug: adding-custom-elements-inside-a-cell-when-it-is-in-edit-mode
tags: gridview
res_type: kb
---

|Article relates to|Product|Author|
|----|----|----|
|RadGridView for WinForms, Q3 2010|Telerik UI for WinForms|Nikolay Diyanov| 
  
## Problem
   
The purpose of this article is to demonstrate how you can enhance the existing editor of a cell by adding a RadButton control to this editor.  
   
## Solution
   
In order to make customizations in RadGridView cells that require setting a custom layout of controls/element (for example – RadDropDownListEditor in front of RadButton), we need to create a custom cell element, deriving from an existing cell element.  
   
The editor that we will enhance will be the RadDropDownListEditor. Actually, we will not enhance the RadDropDownListEditor itself, but the look of the cell when it is in edit mode.  
   
So, here is how we can do it:  
 
1\. First, create a class that inherits from an existing cell type. We will enhance a cell of a GridViewComboBoxColumn, so we need to derive from GridComboBoxCellElement. In addition, we should set the constructor:

````C#
public class CustomInfoCell : GridComboBoxCellElement  
    {  
        public CustomInfoCell(GridViewColumn column, GridRowElement row)  
            : base(column, row)  
        {              
        }  
} 

````

2\. Then, we should make the layout arrangement of the RadDropDownListEditor and the RadButton that we will place in the cell. For this purpose, I am going to override the ArrangeOverride method, which is very similar to the WPF ArrangeOverride method:
    
````C#
protected override SizeF ArrangeOverride(SizeF finalSize)  
{  
    base.ArrangeOverride(finalSize);  
    RectangleF rect = GetClientRectangle(finalSize);  
    RectangleF rectEdit = new RectangleF(rect.X, rect.Y, rect.Width - (buttonWidth + buttonPadding), rect.Height);  
    RectangleF rectButton = new RectangleF(rectEdit.Right + buttonPadding, rectEdit.Y, buttonWidth, rect.Height);  
    if (this.Children.Count == 2)  
    {  
        this.Children[0].Arrange(rectButton);  
        this.Children[1].Arrange(rectEdit);  
    }  
 
    return finalSize;  
} 

````

3\. We finished our work on the custom cell element, but now we should associate the cells of the GridViewComboBoxColumn with this custom cell type. In order to do so, handle the CreateCell event which is called once for each cell when RadGridView is shown for the first time. When this event is fired for the cells of GridViewComboBoxColumn, we set the CellType property of the GridViewCreateCellEventArgs to our custom cell type:
    
````C#
void radGridView1_CreateCell(object sender, Telerik.WinControls.UI.GridViewCreateCellEventArgs e)  
{  
    if (e.Row is GridDataRowElement)  
    {  
        if (e.Column.Name == "CustomColumn")  
        {  
            e.CellType = typeof(CustomInfoCell);   
        }  
    }  
} 

````

4\. As you can see in the code snippet above, we are calling Arrange for two children of the cell – RadDropDownListEditor and RadButton. The RadButtonElement will be inserted in the cell in another place – in the CellBeginEdit event which is fired whenever we set a cell in edit mode:

````C#
private Font font = new Font("Arial", 9F, FontStyle.Bold);
private void radGridView1_CellBeginEdit(object sender, GridViewCellCancelEventArgs e)
{
    if (e.Column.Name == "CustomColumn")
    {
        RadButtonElement radButtonElement = new RadButtonElement();
        radButtonElement.Font = font;
        radButtonElement.Text = "...";
        radButtonElement.Click += new EventHandler(radButtonElement_Click);
        this.radGridView1.CurrentCell.Children.Add(radButtonElement);
    }
}

````
 
5\. When we finish editing the RadDropDownListEditor, the CellEndEdit will be fired. This is the place where we are removing the RadButtonElement instance:
    
````C#
void radGridView1_CellEndEdit(object sender, GridViewCellEventArgs e)  
{  
    if (e.Column.Name == "CustomColumn")  
    {  
        if (this.radGridView1.CurrentCell.Children.Count == 1)  
        {  
            this.radGridView1.CurrentCell.Children.RemoveAt(0);  
        }  
    }  
} 

````
   
That’s it! Now when we click on a cell of GridViewComboBoxColumn to turn it into an edit mode, we will get this result:   
 
![](/images/ComplexEditor.png)
   
>note A complete solution in C# and VB.NET can be found [here](https://github.com/telerik/winforms-sdk/tree/master/GridView/CustomCellEditor).

