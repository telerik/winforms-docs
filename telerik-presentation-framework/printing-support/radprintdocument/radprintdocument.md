---
title: RadPrintDocument
page_title: RadPrintDocument | Telerik Presentation Framework
description: RadPrintDocument is used to send output to a printer and can be used with any control that implements IPrinatable.
slug: winforms/telerik-presentation-framework/printing-support/radprintdocument
tags: radprintdocument
published: True
position: 0
previous_url: tpf-printing-support-radprintdocument
---

# RadPrintDocument


RadPrintDocument is used to send output to a printer. The RadPrintDocument can be used in the VS designer as described in [Design time article]({%slug winforms/telerik-presentation-framework/printing-support/radprintdocument/design-time%}) or can be created and used at run time. The most common scenario of using RadPrintDocument is to create an instance, set the properties that describe how the page is printed, set the __AssociatedObject__ property to an instance of an object implementing the __IPrintable__ interface and call the __Print__ method to send the print job to the printer. Here is how this looks like in C# and VB:

{{source=..\SamplesCS\TPF\Printing support\RadPrintDocument1.cs region=print}} 
{{source=..\SamplesVB\TPF\Printing support\RadPrintDocument1.vb region=print}} 

````C#
RadPrintDocument document = new RadPrintDocument();
document.DefaultPageSettings.Landscape = true;
document.DefaultPageSettings.PrinterSettings.Copies = 2;
document.AssociatedObject = this.radGridView1;
document.Print();

````
````VB.NET
Dim document As New RadPrintDocument()
document.DefaultPageSettings.Landscape = True
document.DefaultPageSettings.PrinterSettings.Copies = 2
document.AssociatedObject = Me.RadGridView1
document.Print()

````

{{endregion}} 

![tpf-printing-support-radprintdocument](images/tpf-printing-support-radprintdocument.png)

# See Also
* [Design Time]({%slug winforms/telerik-presentation-framework/printing-support/radprintdocument/design-time%})

* [Header and Footer]({%slug winforms/telerik-presentation-framework/printing-support/radprintdocument/header-and-footer%})

* [Watermark]({%slug winforms/telerik-presentation-framework/printing-support/radprintdocument/watermark%})

