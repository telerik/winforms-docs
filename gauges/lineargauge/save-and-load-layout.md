---
title: Save and Load Layout
page_title: Save and Load Layout
description: Save and Load Layout
slug: lineargauge-save-and-load-layout
tags: save,and,load,layout
published: True
position: 5
---

# Save and Load Layout



__RadLinearGauge__ supports Save/Load layout functionality which gives you the opportunity to preserve gauge elements'
        settings and restore them later. The layout settings are written in xml file. You can save the layout at design or at run time.
      

## Design Time

You can easily save/load the layout with the smart tag.![lineargauge-save-and-load-layout 001](images/lineargauge-save-and-load-layout001.png)

## Run Time

You can save/load the layout in code as well.

#### __[C#] __

{{source=..\SamplesCS\Gauges\LinearGauge\LinearGuageGettingStarted.cs region=code}}
	            radLinearGauge1.SaveLayout("Layout.xml");
	            radLinearGauge1.LoadLayout("Layout.xml");
	{{endregion}}



#### __[VB.NET] __

{{source=..\SamplesVB\Gauges\LinearGauge\LinearGuageGettingStarted.vb region=code}}
	        radLinearGauge1.SaveLayout("Layout.xml")
	        radLinearGauge1.LoadLayout("Layout.xml")
	        '#End Region
	    End Sub
	    '#Region "value"
	    Private Sub radLinearGauge1_ValueChanged(ByVal sender As Object, ByVal e As EventArgs)
	        If radLinearGauge2.Value > radLinearGauge2.RangeEnd - 10 Then
	            RadMessageBox.Show("Detected value that is close to the maximum!")
	        End If
	    End Sub
	    '#End Region
	End Class


