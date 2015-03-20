---
title: Print Support
page_title: Print Support
description: Print Support
slug: scheduler-print-support
tags: print,support
published: True
position: 13
---

# Print Support


<table><th><tr><td>

RELATED VIDEOS</td><td></td></tr></th><tr><td>[Getting Started with Printing for RadScheduler](http://tv.telerik.com/watch/winforms/getting-started-with-printing-for-radscheduler)

This video demonstrates how to use the new Print features of RadScheduler. It includes a tour of new end-user printing features as well as how to accomplish it programmatically.
            </td><td>![scheduler-print-support 003](images/scheduler-print-support003.png)</td></tr></table>

The printing support of RadScheduler, allows the end user to directly pass the RadScheduler data to
        the printer. Common features of the printing support in Telerik UI for WinForms suite are:
      

* Page headers and footers

* Watermark

* Paper size settings

* Print preview dialogs

RadScheduler supports four print styles, similar to the Outlook ones: DailyStyle, WeeklyStyle,
        MonthlyStyle and DetailsStyle. In all modes, you can add to your pages an area for handwritten notes
        or a date header with calendar that shows the busy days.
      

You can also print a single view on two pages which will grant you more available space and allow you to organize the
        printouts in a folder or notebook.
      

## Printing

The RadScheduler has two public methods available for printing – __Print()__ and
          __PrintPreview()__ methods. The first method will directly send a print job to
          the default printer with the settings currently saved in the __PrintStyle__
          property. This method has one overload available which can show a system
          __PrintDialog__ with the available printers and their options.
        

#### __[C#]__

{{region print}}
	            this.radScheduler1.Print();
	
	            this.radScheduler1.Print(true);
	{{endregion}}



#### __[VB.NET]__

{{region print}}
	        Me.RadScheduler1.Print()
	
	        Me.RadScheduler1.Print(True)
	{{endregion}}

![scheduler-print-support 001](images/scheduler-print-support001.png)

The other available method is __PrintPreview()__. It opens a new
          RadPrintPreviewDialog which is discussed in details
          [here.]({%slug tpf-printing-support-radprintpreviewdialog%})

#### __[C#]__

{{region PrintPreview}}
	            this.radScheduler1.PrintPreview();
	{{endregion}}



#### __[VB.NET]__

{{region PrintPreview}}
	        Me.RadScheduler1.PrintPreview()
	{{endregion}}

![scheduler-print-support 002](images/scheduler-print-support002.png)
