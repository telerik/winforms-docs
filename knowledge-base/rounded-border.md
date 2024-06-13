---
title: How to Achieve Rounded Shape and Rounded Border for RadTextBox
description: Learn how to accomplish rounded shape and border in WinForms RadTextBox.
type: how-to
page_title: How to Achieve Rounded Shape and Border for RadTextBox
slug: rounded-border
position: 5
tags: textbox, rounded, shape, border
ticketid: 1521435
res_type: kb
---


## Environment
|Product Version|Product|Author|
|----|----|----|
|2021.2.511|RadTextBox|[Desislava Yordanova](https://www.telerik.com/blogs/author/desislava-yordanova)|

## Description

A common requirement is to achieve a rounded shape for **RadTextBox** and make a bottom border that aligns with the rounded shape.  

This can be easily achieved by applying a [RoundRectShape]({%slug winforms/telerik-presentation-framework/roundrect-shape%}).


````C#

RoundRectShape roundRectShape = new RoundRectShape();
roundRectShape.Radius = 5;
this.radTextBox1.TextBoxElement.Shape = roundRectShape; 


this.radTextBox1.TextBoxElement.ShowBorder = true;
this.radTextBox1.TextBoxElement.Border.PaintUsingParentShape = false; 
this.radTextBox1.TextBoxElement.Border.BoxStyle = Telerik.WinControls.BorderBoxStyle.FourBorders;
this.radTextBox1.TextBoxElement.Border.BottomWidth = 3F;
this.radTextBox1.TextBoxElement.Border.BottomColor = Color.Red;
this.radTextBox1.TextBoxElement.Border.LeftWidth = 0F;
this.radTextBox1.TextBoxElement.Border.RightWidth = 0F;
this.radTextBox1.TextBoxElement.Border.TopWidth = 0F;

````
````VB.NET

Dim roundRectShape As RoundRectShape = New RoundRectShape()
roundRectShape.Radius = 5
Me.RadTextBox1.TextBoxElement.Shape = roundRectShape
Me.RadTextBox1.TextBoxElement.ShowBorder = True
Me.RadTextBox1.TextBoxElement.Border.PaintUsingParentShape = False
Me.RadTextBox1.TextBoxElement.Border.BoxStyle = Telerik.WinControls.BorderBoxStyle.FourBorders
Me.RadTextBox1.TextBoxElement.Border.BottomWidth = 3.0F
Me.RadTextBox1.TextBoxElement.Border.BottomColor = Color.Red
Me.RadTextBox1.TextBoxElement.Border.LeftWidth = 0.0F
Me.RadTextBox1.TextBoxElement.Border.RightWidth = 0.0F
Me.RadTextBox1.TextBoxElement.Border.TopWidth = 0.0F


```` 

However, the border is not clipped considering the rounded shape of the TextBoxElement:

![rounded-border 001](images/rounded-border001.png)

![rounded-border 002](images/rounded-border002.png)

This article demonstrates how you can accomplish a rounded border as well.

## Solution

The first approach is to disable the default bottom border and draw the bottom border in the ElementPainted event:

#### Example 1

````C#
public RadForm1()
{
    InitializeComponent();

    this.radTextBox1.TextBoxElement.Shape = new RoundRectShape(5);
    this.radTextBox1.TextBoxElement.Border.Visibility = ElementVisibility.Collapsed;
    this.radTextBox1.TextBoxElement.Padding = new System.Windows.Forms.Padding(4); 
    this.radTextBox1.TextBoxElement.ElementPainted += this.TextBoxElement_ElementPainted; 
}

private void TextBoxElement_ElementPainted(object sender, System.Windows.Forms.PaintEventArgs e)
{
    System.Drawing.Rectangle rect = new System.Drawing.Rectangle(0, this.radTextBox1.TextBoxElement.Bounds.Height - 2,
        this.radTextBox1.TextBoxElement.Bounds.Width, 2);
    System.Drawing.Region r = this.radTextBox1.TextBoxElement.Shape.CreateRegion(this.radTextBox1.TextBoxElement.Bounds);
    e.Graphics.SetClip(r, System.Drawing.Drawing2D.CombineMode.Intersect);
    e.Graphics.FillRectangle(System.Drawing.Brushes.Red, rect);
}

 

````
````VB.NET

Sub New() 
    InitializeComponent()

    Me.RadTextBox1.TextBoxElement.Shape = New RoundRectShape(5)
    Me.RadTextBox1.TextBoxElement.Border.Visibility = ElementVisibility.Collapsed
    Me.RadTextBox1.TextBoxElement.Padding = New System.Windows.Forms.Padding(4)
    AddHandler Me.RadTextBox1.TextBoxElement.ElementPainted, AddressOf Me.TextBoxElement_ElementPainted

End Sub

Private Sub TextBoxElement_ElementPainted(ByVal sender As Object, ByVal e As System.Windows.Forms.PaintEventArgs)
    Dim rect As System.Drawing.Rectangle = New System.Drawing.Rectangle(0, Me.RadTextBox1.TextBoxElement.Bounds.Height - 2, _
                                                                        Me.RadTextBox1.TextBoxElement.Bounds.Width, 2)
    Dim r As System.Drawing.Region = Me.radTextBox1.TextBoxElement.Shape.CreateRegion(Me.radTextBox1.TextBoxElement.Bounds)
    e.Graphics.SetClip(r, System.Drawing.Drawing2D.CombineMode.Intersect)
    e.Graphics.FillRectangle(System.Drawing.Brushes.Red, rect)
End Sub


```` 

![rounded-border 003](images/rounded-border003.png)

![rounded-border 004](images/rounded-border004.png)

The second approach is to use a single border and use the FillPrimitive to overlap the border from the other 3 sides:

#### Example 2

````C#

this.radTextBox1.RootElement.Shape = new RoundRectShape(5);
this.radTextBox1.TextBoxElement.Shape = new RoundRectShape(5);
this.radTextBox1.TextBoxElement.Padding = new System.Windows.Forms.Padding(4); 
this.radTextBox1.TextBoxElement.Fill.SmoothingMode = System.Drawing.Drawing2D.SmoothingMode.HighQuality;
this.radTextBox1.TextBoxElement.Fill.ZIndex = 10;

Telerik.WinControls.Primitives.BorderPrimitive border = this.radTextBox1.TextBoxElement.Border;
border.ForeColor = Color.Red;
border.BoxStyle = BorderBoxStyle.SingleBorder;
border.Margin = new System.Windows.Forms.Padding(5, 3, 5, 0);
border.SmoothingMode = System.Drawing.Drawing2D.SmoothingMode.HighQuality;
border.Width = 3;

````
````VB.NET
Me.RadTextBox1.RootElement.Shape = New RoundRectShape(5)
Me.RadTextBox1.TextBoxElement.Shape = New RoundRectShape(5)
Me.RadTextBox1.TextBoxElement.Padding = New System.Windows.Forms.Padding(4)
Me.RadTextBox1.TextBoxElement.Fill.SmoothingMode = System.Drawing.Drawing2D.SmoothingMode.HighQuality
Me.RadTextBox1.TextBoxElement.Fill.ZIndex = 10
Dim border As Telerik.WinControls.Primitives.BorderPrimitive = Me.RadTextBox1.TextBoxElement.Border
border.ForeColor = Color.Red
border.BoxStyle = BorderBoxStyle.SingleBorder
border.Margin = New System.Windows.Forms.Padding(5, 3, 5, 0)
border.SmoothingMode = System.Drawing.Drawing2D.SmoothingMode.HighQuality
border.Width = 3


```` 

![rounded-border 005](images/rounded-border005.png)

![rounded-border 006](images/rounded-border006.png)
 

# See Also

* [BorderPrimitive]({%slug winforms/telerik-presentation-framework/primitives/borderprimitive%})
* [RoundRect Shape]({%slug winforms/telerik-presentation-framework/roundrect-shape%})

