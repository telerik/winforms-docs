---
title: How to add text in the splitter grip resize handle
description: This article shows how to replace the dotted line with text
type: how-to
page_title:  How to Replace the SplitterElement dotted resize handle with text
slug: splitcontainer-grip-handle-add-text
position: 30
tags: splitcontainer, c, dotted, text, resize, grip, handle, replace
res_type: kb
---

## Environment
|Product Version|Product|Author|
|----|----|----|
|2022.2.622|SplitContainer for WinForms|[Dinko Krastev](https://www.telerik.com/blogs/author/dinko-krastev)|


## Description

An example demonstrating how to replace the dotted text (....) with custom text within the SplitContainer.

## Solution

The Splitters collection of the __RadSplitContainer__ contains all SplitElements which are currently presented in the control. We could iterate this collection and use its __Layout__ property. This property is of type __SplitterElementLayout__ that holds the "dotted" grip handle. To add the custom text we can add custom __LightVisualElement__ element to __Layout__ children collection. The "dotted" grip handle is an image set to the __BackgroundShape__ property. We can set this property to null so that we can see our custom text element.

![splitcontainer-grip-handle-add-text 001](images/splitcontainer-grip-handle-add-text.png)

#### Sample Implementation


````C#

private void Form1_Load(object sender, EventArgs e)
{
    this.radSplitContainer1.SplitterWidth = 10;            
    LightVisualElement lve = new LightVisualElement();
    lve.Text = "Click and Hold to Resize";
    lve.MinSize = new Size(150, 0);

    foreach (SplitterElement s in this.radSplitContainer1.Splitters)
    {
        lve.Margin = new Padding((-1) * s.Layout.Size.Width / 4, 1, 0, 1);
        s.Layout.Children.Add(lve);
        s.Layout.BackgroundShape = null;
    }
}
	

````
````VB.NET

Private Sub Form1_Load(ByVal sender As Object, ByVal e As EventArgs)
    Me.radSplitContainer1.SplitterWidth = 10
    Dim lve As LightVisualElement = New LightVisualElement()
    lve.Text = "Click and Hold to Resize"
    lve.MinSize = New Size(150, 0)

    For Each s As SplitterElement In Me.radSplitContainer1.Splitters
        lve.Margin = New Padding((-1) * s.Layout.Size.Width / 4, 1, 0, 1)
        s.Layout.Children.Add(lve)
        s.Layout.BackgroundShape = Nothing
    Next
End Sub


````



