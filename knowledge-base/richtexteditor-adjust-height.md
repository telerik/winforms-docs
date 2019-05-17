---
title: How To Dynamically Adjust RadRichTextEditor Height To Fit Its Content
description: An example demonstrating how the RadRichTextEditor height can be adjusted to match the height of its document
type: how-to
page_title: How To Dynamically Adjust RadRichTextEditor Height To Fit Its Content
slug:  richtexteditor-adjust-height
position: 75
tags: fit, height, richtexteditor
res_type: kb
---

## Environment
 
|Product Version|Product|Author|
|----|----|----|
|2019.2.508|RadRichTextEditor for WinForms|[Hristo Merdjanov](https://www.telerik.com/blogs/author/hristo-merdjanov)|
 

## Description

An example demonstrating how the **RadRichTextEditor** height can be adjusted to match the height of its document. The end result is that the height of the control is dynamically updated whenever the document changes so that it is always entirely visible.

>note The solution in this article is not suitable for the *Paged* document layout mode.

## Solution 

The desired behavior can be achieved with the help of the vertical scroll bar. The scroll bar is always synced with the loaded document and it is possible to adjust the height of the control according to its maximum value.  In order to prevent the scroll bars from appearing it will be necessary to handle the **RadPropertyChanging** event and cancel it  when their visibility is about to be changed.

>caption Figure 1: Adjusting RadRichTextEditor Height 
![pivotgrid-changing-default-aggregate-function 001](images/richtexteditor-adjust-height001.gif)

#### Implementation

````C#
public partial class RadForm1 : Telerik.WinControls.UI.RadForm
{
    public RadForm1()
    {
        InitializeComponent();

        this.radRichTextEditor1.ScaleFactor = new System.Drawing.SizeF(1, 1);
        this.radRichTextEditor1.DocumentContentChanged += this.RadRichTextEditor1_DocumentContentChanged;
        this.radRichTextEditor1.RichTextBoxElement.VerticalScrollBar.RadPropertyChanging += this.ScrollBar_RadPropertyChanging;
        this.radRichTextEditor1.RichTextBoxElement.HorizontalScrollBar.RadPropertyChanging += this.ScrollBar_RadPropertyChanging;
    }

    private void ScrollBar_RadPropertyChanging(object sender, RadPropertyChangingEventArgs args)
    {
        if (args.Property == LightVisualElement.VisibilityProperty)
        {
            args.Cancel = true;
        }
    }

    private void RadRichTextEditor1_DocumentContentChanged(object sender, EventArgs e)
    {
        Console.WriteLine("Document_DocumentContentChanged");
        this.radRichTextEditor1.Height = TelerikDpiHelper.ScaleInt(this.radRichTextEditor1.RichTextBoxElement.VerticalScrollBar.Maximum, this.radRichTextEditor1.RootElement.DpiScaleFactor);
    }
}

````
````VB.NET
Partial Public Class RadForm1

    Public Sub New()
        InitializeComponent()

        Me.RadRichTextEditor1.ScaleFactor = New System.Drawing.SizeF(1, 1)
        AddHandler Me.RadRichTextEditor1.DocumentContentChanged, AddressOf Me.RadRichTextEditor1_DocumentContentChanged
        AddHandler Me.RadRichTextEditor1.RichTextBoxElement.VerticalScrollBar.RadPropertyChanging, AddressOf Me.ScrollBar_RadPropertyChanging
        AddHandler Me.RadRichTextEditor1.RichTextBoxElement.HorizontalScrollBar.RadPropertyChanging, AddressOf Me.ScrollBar_RadPropertyChanging
    End Sub

    Private Sub ScrollBar_RadPropertyChanging(ByVal sender As Object, ByVal args As RadPropertyChangingEventArgs)
        If args.Property Is LightVisualElement.VisibilityProperty Then
            args.Cancel = True
        End If
    End Sub

    Private Sub RadRichTextEditor1_DocumentContentChanged(ByVal sender As Object, ByVal e As EventArgs)
        Me.RadRichTextEditor1.Height = TelerikDpiHelper.ScaleInt(Me.RadRichTextEditor1.RichTextBoxElement.VerticalScrollBar.Maximum, Me.RadRichTextEditor1.RootElement.DpiScaleFactor)
    End Sub
End Class

````

# See Also

* [How to auto-fit RadRichTextEditor]({%slug auto-fit-richtexteditor%}) 

