---
title: Watermark
page_title: Watermark | UI for WinForms Documentation
description: Watermark
slug: winforms/telerik-presentation-framework/printing-support/radprintdocument/watermark
tags: watermark
published: True
position: 3
previous_url: tpf-printing-support-radprintdocument-watermark
---

# Watermark

The RadPrintDocument has a build in watermark support. The RadPrintDocument supports both text watermark and image watermark.

To get the watermark to show you have to set it up using the __Watermark__ property:

{{source=..\SamplesCS\TPF\Printing support\RadPrintDocument1.cs region=Watermark}} 
{{source=..\SamplesVB\TPF\Printing support\RadPrintDocument1.vb region=Watermark}} 

````C#
RadPrintDocument document = new RadPrintDocument();
document.Watermark.Text = "Watermark";
document.Watermark.TextHOffset = 0;
document.Watermark.TextVOffset = 950;
document.Watermark.TextAngle = 300;

````
````VB.NET
Dim document As New RadPrintDocument()
document.Watermark.Text = "Watermark"
document.Watermark.TextHOffset = 0
document.Watermark.TextVOffset = 950
document.Watermark.TextAngle = 300

````

{{endregion}} 

Alternatively you can create an instance of the __RadPrintWatermark__, set its properties and then assign it to the __Watermark__ property of RadPrintDocument(this is useful when you want to use the same watermark in multiple documents).

![tpf-printing-support-radprintdocument-watermark](images/tpf-printing-support-radprintdocument-watermark.png)
