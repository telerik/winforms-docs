---
title: How to print image from RadImageEditor
description: This article demonstrates how to print image from RadImageEditor
type: how-to
page_title: 
slug: how-to-print-from-radimageeditor
position: 0
tags: radimageeditor, print, image
res_type: kb
---

## Environment
 
|Product Version|Product|Author|
|----|----|----|
|2021.2.511|RadImageEditor for WinForms|[Nadya Karaivanova](https://www.telerik.com/blogs/author/nadya-karaivanova)|
 
## Description

**RadImageEditor** does not support printing out of the box. However, you can easily achieve this by adding an additional button and implement the print functionality in **RadImageEditor** using PrintDocument.

This article demonstrates how to achieve printing in **RadImageEditor**.

![how-to-print-from-radimageeditor001](images/how-to-print-from-radimageeditor001.png)
 
## Solution 

Let's first create the print button, add it to the **CommandsElement** and handle it's Click event:

````C#
public RadForm1()
{
    InitializeComponent();
    RadButtonElement printButton = new RadButtonElement();
    printButton.Image = Resources.printer_icon;
    printButton.Click += this.PrintButton_Click;

    var buttonContainer = radImageEditor1.ImageEditorElement.CommandsElement.TopCommandsStackElement;
    buttonContainer.Children.RemoveAt(3);
    buttonContainer.Children.RemoveAt(2);
    buttonContainer.Children.Add(printButton);
}


````
````VB.NET
Public Sub New()
    InitializeComponent()
    Dim printButton As RadButtonElement = New RadButtonElement()
    printButton.Image = Resources.printer_icon
    AddHandler, printButton.Click, AddressOf Me.PrintButton_Click
    Dim buttonContainer = radImageEditor1.ImageEditorElement.CommandsElement.TopCommandsStackElement
    buttonContainer.Children.RemoveAt(3)
    buttonContainer.Children.RemoveAt(2)
    buttonContainer.Children.Add(printButton)
End Sub

````

Then, in the print button's Click event you can print the PrintDocument that contains the current image from **RadImageEditor**:


````C#
private void PrintButton_Click(object sender, EventArgs e)
{
    PrintDocument printDocument = new PrintDocument();
    printDocument.PrintPage += PrintPage;
    printDocument.Print();
}
private void PrintPage(object o, PrintPageEventArgs e)
{
    System.Drawing.Image img = radImageEditor1.CurrentBitmap;
    Point loc = new Point(100, 100);
    e.Graphics.DrawImage(img, loc);
}


````
````VB.NET
    Private Sub PrintButton_Click(ByVal sender As Object, ByVal e As EventArgs)
        Dim printDocument As PrintDocument = New PrintDocument()
        AddHandler printDocument.PrintPage, AddressOf PrintPage
        printDocument.Print()
    End Sub

    Private Sub PrintPage(ByVal o As Object, ByVal e As PrintPageEventArgs)
        Dim img As System.Drawing.Image = radImageEditor1.CurrentBitmap
        Dim loc As Point = New Point(100, 100)
        e.Graphics.DrawImage(img, loc)
    End Sub

````



