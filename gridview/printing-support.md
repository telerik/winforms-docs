---
title: Printing Support
page_title: Printing Support
description: Printing Support
slug: gridview-printing-support
tags: printing,support
published: True
position: 26
---

# Printing Support



## 
<table><th><tr><td>

RELATED VIDEOS</td><td></td></tr></th><tr><td>[Getting Started with Printing for RadGridView](http://tv.telerik.com/watch/winforms/getting-started-with-printing-for-radgridview-)

This video demonstrates how to use the new Print features of RadGridView without the need to export to other formats. It also includes a tour of new end-user printing features.
                </td><td>



![gridview-printing-support 003](images/gridview-printing-support003.png)</td></tr></table>

RadGridView provides printing support, which allows you to print the grid content by using
          [RadPrintDocument.]({%slug tpf-printing-support-radprintdocument%})
          You are able to print:
        

* [ViewDefinitions]({%slug gridview-viewdefinitions-overview%})

* [Grouped grid]({%slug gridview-grouping-basic-grouping%})

* [Summaries]({%slug gridview-rows-summary-rows%})

* Hidden rows and Hidden columns

* Header on each page

RadGridView has two public methods available for printing - __Print()__ and
          __PrintPreview()__. The first method will directly send a print job to the
          default printer with the settings currently saved in the
          [PrintStyle]({%slug gridview-printing-support-gridprintstyle%})
          property. This method has one overload available which can show a system
          __PrintDialog__ with the available printers and their options.
        

#### __[C#]__

{{region print}}
	            this.radGridView1.Print();
	
	            this.radGridView1.Print(true);
	{{endregion}}



#### __[VB.NET]__

{{region print}}
	        Me.RadGridView1.Print()
	
	        Me.RadGridView1.Print(True)
	{{endregion}}



![gridview-printing-support 001](images/gridview-printing-support001.png)

The other available method is __PrintPreview())__, which opens
          [RadPrintPreviewDialog.]({%slug tpf-printing-support-radprintpreviewdialog%})

#### __[C#]__

{{region PrintPreview}}
	            this.radGridView1.PrintPreview();
	{{endregion}}



#### __[VB.NET]__

{{region PrintPreview}}
	        Me.RadGridView1.PrintPreview()
	{{endregion}}



![gridview-printing-support 002](images/gridview-printing-support002.png)
