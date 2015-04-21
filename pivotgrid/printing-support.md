---
title: Printing Support
page_title: Printing Support
description: Printing Support
slug: pivotgrid-printing-support
tags: printing,support
published: True
position: 13
---

# Printing Support



The printing support of RadPivotGrid allows the end user to directly pass its data to the printer. RadPivotGrid uses
        the same printing mechanism as RadGridView and RadScheduler and therefore shares the common features provided by
        [RadPrintDocument]({%slug tpf-printing-support-radprintdocument%}).
        You can modify the appearance and the layout of the printed pages by using the variety of options provided by the
        __PivotGridPrintStyle__ class.
      

## 

The RadPivotGrid has two public methods available for printing – __Print()__ and
          __PrintPreview()__ methods. The first method will directly send a print job to the
          default printer with the settings currently saved in the __PrintStyle__ property. This method
          has one overload available which can show a system __PrintDialog__ with the available printers
          and their options.
        

#### __[C#] __

{{source=..\SamplesCS\PivotGrid\PivotGridPrinting.cs region=Print}}
	            this.radPivotGrid1.Print();
	            this.radPivotGrid1.Print(true);
	{{endregion}}



#### __[VB.NET] __

{{source=..\SamplesVB\PivotGrid\PivotGridPrinting.vb region=Print}}
	        Me.radPivotGrid1.Print()
	        Me.radPivotGrid1.Print(True)
	{{endregion}}

![pivotgrid-printing-support 001](images/pivotgrid-printing-support001.png)

The other available method is __PrintPreview()__. It opens a new RadPrintPreviewDialog
          which is discussed in details [here]({%slug tpf-printing-support-radprintpreviewdialog%}).
        

#### __[C#] __

{{source=..\SamplesCS\PivotGrid\PivotGridPrinting.cs region=PrintPreview}}
	            this.radPivotGrid1.PrintPreview();
	{{endregion}}



#### __[VB.NET] __

{{source=..\SamplesVB\PivotGrid\PivotGridPrinting.vb region=PrintPreview}}
	        Me.radPivotGrid1.PrintPreview()
	{{endregion}}

![pivotgrid-printing-support 002](images/pivotgrid-printing-support002.png)
