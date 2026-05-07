---
title: Printing
page_title: Printing - WinForms ChartView Control
description: WinForms ChartView provides printing support, which allows you to print the chart content by using RadPrintDocument
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

<snippet id='chartview-printing-print-cs'/>
<snippet id='chartview-printing-print-vb'/>

#### Print with Dialog

<snippet id='chartview-printing-printdialog-cs'/>
<snippet id='chartview-printing-printdialog-vb'/>

#### Print Preview

<snippet id='chartview-printing-printpreview-cs'/>
<snippet id='chartview-printing-printpreview-vb'/>

# See Also

* [Series Types]({%slug winforms/chartview-/series-types%})
* [Axes]({%slug winforms/chartview-/axes%})
