---
title: Formatting Series Labels
page_title: Formatting Series Labels
description: Formatting Series Labels
slug: chartview-customization-formatting-series-labels
tags: formatting,series,labels
published: True
position: 3
---

# Formatting Series Labels



This article demonstrates how to change the labels styles and text. The series labels can be customized in the __LabelFormatting__ event
        of __RadChartView__. This event is fired for each label, which allows you to customize all labels, depending on your goals.

## ![chartview-customization-formatting-series-labels 001](images/chartview-customization-formatting-series-labels001.png)

1. In order this event to fire, you should set the __ShowLabels__ property to *true* for at least one series.
              For example, you can set this property for all series with the following code.

#### __[C#] __

{{source=..\SamplesCS\ChartView\Customization\FormattingSeriesAndTrackballLabels.cs region=ShowLabels}}
	            foreach (var series in radChartView1.Series)
	            {
	                series.ShowLabels = true;
	            }
	{{endregion}}



#### __[VB.NET] __

{{source=..\SamplesVB\ChartView\Customization\FormattingSeriesAndTrackballLabels.vb region=ShowLabels}}
	        For Each series In RadChartView1.Series
	
	            series.ShowLabels = True
	        Next
	{{endregion}}



1. Now you can change the labels styles and text.

#### __[C#] __

{{source=..\SamplesCS\ChartView\Customization\FormattingSeriesAndTrackballLabels.cs region=LabelFormatting}}
	
	        private Font font1 = new Font("Segoe Script", 12, FontStyle.Regular);
	
	        private void radChartView1_LabelFormatting(object sender, ChartViewLabelFormattingEventArgs e)
	        {
	            e.LabelElement.BackColor = ColorTranslator.FromHtml("#005BBc");
	            e.LabelElement.ForeColor = ColorTranslator.FromHtml("#91c930");
	            e.LabelElement.BorderColor = ColorTranslator.FromHtml("#ee8310");
	            e.LabelElement.Font = font1;
	
	            CategoricalPointElement element = (CategoricalPointElement)e.LabelElement.Parent;
	            CategoricalDataPoint dataPoint = (CategoricalDataPoint)element.DataPoint;
	
	            e.LabelElement.Text = string.Format("Category: {0}, Value: {1}", dataPoint.Category, dataPoint.Value);
	        }
	{{endregion}}



#### __[VB.NET] __

{{source=..\SamplesVB\ChartView\Customization\FormattingSeriesAndTrackballLabels.vb region=LabelFormatting}}
	    Private font1 As New Font("Segoe Script", 12, FontStyle.Regular)
	
	    Private Sub radChartView1_LabelFormatting(sender As Object, e As ChartViewLabelFormattingEventArgs)
	        e.LabelElement.BackColor = ColorTranslator.FromHtml("#005BBc")
	        e.LabelElement.ForeColor = ColorTranslator.FromHtml("#91c930")
	        e.LabelElement.BorderColor = ColorTranslator.FromHtml("#ee8310")
	        e.LabelElement.Font = font1
	
	        Dim element As CategoricalPointElement = DirectCast(e.LabelElement.Parent, CategoricalPointElement)
	        Dim dataPoint As CategoricalDataPoint = DirectCast(element.DataPoint, CategoricalDataPoint)
	
	        e.LabelElement.Text = String.Format("Category: {0}, " & vbLf & "Value: {1}", dataPoint.Category, dataPoint.Value)
	    End Sub
	{{endregion}}



>importantThe code for getting the current data point can depend on the used series type. For example if you use pie chart you should cast to 
          __PiePointElement__, and __PieDataPoint__ types.
