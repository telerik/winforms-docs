---
title: Printing
page_title: Printing | UI for WinForms Documentation
description: RadChartView provides printing support, which allows you to print the chart content by using RadPrintDocument
slug: winforms/chartview-/printing-support/printing
tags: printing
published: True
position: 0
previous_url: chartview-printing-support-printing
---

# Printing

__RadChartView__ provides printing support, which allows you to print the chart content by using [RadPrintDocument]({%slug winforms/telerik-presentation-framework/printing-support/radprintdocument%}) You are able to print:

* __Series within the chart__

* __Title__

* __Legend__

__RadChartView__ has two public methods available for printing - __Print__ and __PrintPreview__. The first method will directly send a print job to the default printer. This method has one overload available which can show a system PrintDialog with the available printers and their options.

#### Direct Printing

{{source=..\SamplesCS\ChartView\Printing\ChartViewPrinting.cs region=Print}} 
{{source=..\SamplesVB\ChartView\Printing\ChartViewPrinting.vb region=Print}}
````C#
this.radChartView1.Print();

````
````VB.NET
Me.RadChartView1.Print()

```` 



{{endregion}}

#### Print with Dialog

{{source=..\SamplesCS\ChartView\Printing\ChartViewPrinting.cs region=PrintDialog}} 
{{source=..\SamplesVB\ChartView\Printing\ChartViewPrinting.vb region=PrintDialog}}
````C#
this.radChartView1.Print(true);

````
````VB.NET
Me.RadChartView1.Print(True)

```` 



{{endregion}}

#### Print Preview

{{source=..\SamplesCS\ChartView\Printing\ChartViewPrinting.cs region=PrintPreview}} 
{{source=..\SamplesVB\ChartView\Printing\ChartViewPrinting.vb region=PrintPreview}}
````C#
this.radChartView1.PrintPreview();

````
````VB.NET
Me.RadChartView1.PrintPreview()

```` 



{{endregion}} 

# See Also

* [Series Types]({%slug winforms/chartview-/series-types%})
* [Axes]({%slug winforms/chartview-/axes%})
