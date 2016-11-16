---
title: Overview
page_title: Printing Support | RadGridView
description: This article shows how you can use the built-in functionality to print the contents of the grid.
slug: winforms/gridview/printing-support
tags: printing,support
published: True
position: 0
previous_url: gridview-printing-support
---

# Printing Support

| RELATED VIDEOS |  |
| ------ | ------ |
|[Getting Started with Printing for RadGridView](http://tv.telerik.com/watch/winforms/getting-started-with-printing-for-radgridview-)<br>This video demonstrates how to use the new Print features of RadGridView without the need to export to other formats. It also includes a tour of new end-user printing features.|![gridview-printing-support 003](images/gridview-printing-support003.png)|

RadGridView provides printing support, which allows you to print the grid content by using [RadPrintDocument.]({%slug winforms/telerik-presentation-framework/printing-support/radprintdocument%}) You are able to print:

* [ViewDefinitions]({%slug winforms/gridview/view-definitions/overview%})

* [Grouped grid]({%slug winforms/gridview/grouping/basic-grouping%})

* [Summaries]({%slug winforms/gridview/rows/summary-rows%})

* Hidden rows and Hidden columns

* Header on each page

RadGridView has two public methods available for printing - __Print()__ and  __PrintPreview()__. The first method will directly send a print job to the default printer with the settings currently saved in the [PrintStyle]({%slug winforms/gridview/printing-support/gridprintstyle%}) property. This method has one overload available which can show a system __PrintDialog__ with the available printers and their options.

{{source=..\SamplesCS\GridView\Printing support\PrintingSupport.cs region=print}} 
{{source=..\SamplesVB\GridView\Printing support\PrintingSupport.vb region=print}} 

````C#
this.radGridView1.Print();
this.radGridView1.Print(true);

````
````VB.NET
Me.RadGridView1.Print()
Me.RadGridView1.Print(True)

````

{{endregion}} 

![gridview-printing-support 001](images/gridview-printing-support001.png)

The other available method is __PrintPreview()__, which opens [RadPrintPreviewDialog.]({%slug winforms/telerik-presentation-framework/printing-support/end-user-functionality/print-preview-dialog%})

{{source=..\SamplesCS\GridView\Printing support\PrintingSupport.cs region=PrintPreview}} 
{{source=..\SamplesVB\GridView\Printing support\PrintingSupport.vb region=PrintPreview}} 

````C#
this.radGridView1.PrintPreview();

````
````VB.NET
Me.RadGridView1.PrintPreview()

````

{{endregion}} 

![gridview-printing-support 002](images/gridview-printing-support002.png)
# See Also
* [Events and Customization]({%slug winforms/gridview/printing-support/events-and-customization%})

* [GridPrintStyle]({%slug winforms/gridview/printing-support/gridprintstyle%})

* [Printing Hierarchical Grid]({%slug winforms/gridview/printing-support/printing-hierarchical-grid%})

