---
title: Overview
page_title: Printing Support - RadGridView
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
|[Getting Started with Printing for RadGridView](http://tv.telerik.com/watch/winforms/getting-started-with-printing-for-radgridview-)<br>This video demonstrates how to use the new Print features of RadGridView without the need to export to other formats. It also includes a tour of new end-user printing features.|![WinForms RadGridView Printing Support Tutorial](images/gridview-printing-support003.png)|

RadGridView provides printing support, which allows you to print the grid content by using [RadPrintDocument.]({%slug winforms/telerik-presentation-framework/printing-support/radprintdocument%}) You are able to print:

* [ViewDefinitions]({%slug winforms/gridview/view-definitions/overview%})

* [Grouped grid]({%slug winforms/gridview/grouping/basic-grouping%})

* [Summaries]({%slug winforms/gridview/rows/summary-rows%})

* Hidden rows and Hidden columns

* Header on each page

RadGridView has two public methods available for printing - __Print()__ and  __PrintPreview()__. The first method will directly send a print job to the default printer with the settings currently saved in the [PrintStyle]({%slug winforms/gridview/printing-support/gridprintstyle%}) property. This method has one overload available which can show a system __PrintDialog__ with the available printers and their options.

<snippet id='gridview-printingsupport-print-cs' />
<snippet id='gridview-printingsupport-print-vb' />

![WinForms RadGridView Print Option](images/gridview-printing-support001.png)

The other available method is __PrintPreview()__, which opens [RadPrintPreviewDialog.]({%slug winforms/telerik-presentation-framework/printing-support/end-user-functionality/print-preview-dialog%})

<snippet id='gridview-printingsupport-printpreview-cs' />
<snippet id='gridview-printingsupport-printpreview-vb' />

![WinForms RadGridView PrintPreview](images/gridview-printing-support002.png)

# See Also

* [Events and Customization]({%slug winforms/gridview/printing-support/events-and-customization%})

* [GridPrintStyle]({%slug winforms/gridview/printing-support/gridprintstyle%})

* [Printing Hierarchical Grid]({%slug winforms/gridview/printing-support/printing-hierarchical-grid%})

* [Print Header in RadGridView Only on the First Page]({%slug gridview-print-header-on-first-page%})

* [PrintSettingsDialogFactory]({%slug winforms/gridview/printing-support/print-settings-dialog-factory%})

