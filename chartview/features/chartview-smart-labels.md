---
title: Smart labels
page_title: Smart labels
description: Smart labels
slug: chartview-features-smart-labels
tags: smart,labels
published: True
position: 7
---

# Smart labels



## 

RadChartView provides a built-in mechanism for resolving labels overlapping with the __SmartLabelsController__ .
          You can add the controller to the __Controllers__ collection of RadChartView and it will optimize the arrangement of
          the labels in a way that there will be less overlaps.
        

#### __[C#]__

{{source=..\SamplesCS\ChartView\Features\SmartLabels.cs region=AddSmartLabelsController}}
	            this.radChartView1.Controllers.Add(new SmartLabelsController());
	{{endregion}}



#### __[VB.NET]__

{{source=..\SamplesVB\ChartView\Features\SmartLabels.vb region=AddSmartLabelsController}}
	        Me.radChartView1.Controllers.Add(New SmartLabelsController())
	        '#End Region
	    End Sub
	
	    Private Sub EnableSmartLabels()
	        '2
	        '#Region "EnableSmartLabels"
	        Me.radChartView1.ShowSmartLabels = True
	        '#End Region
	    End Sub
	
	
	#Region "SettingUpTheProject"
	
	    Private Sub InitializeBarData()
	        Me.barData = New List(Of KeyValuePair(Of String, Double))()
	
	        Me.barData.Add(New KeyValuePair(Of String, Double)("January", 20))
	        Me.barData.Add(New KeyValuePair(Of String, Double)("February", 21))
	        Me.barData.Add(New KeyValuePair(Of String, Double)("March", 23))
	        Me.barData.Add(New KeyValuePair(Of String, Double)("April", 32))
	        Me.barData.Add(New KeyValuePair(Of String, Double)("May", 31))
	        Me.barData.Add(New KeyValuePair(Of String, Double)("June", 19))
	        Me.barData.Add(New KeyValuePair(Of String, Double)("July", 18))
	    End Sub
	
	    Private Sub InitializeLineData()
	        Me.lineData = New List(Of KeyValuePair(Of String, Double))()
	
	        Me.lineData.Add(New KeyValuePair(Of String, Double)("01", 12673.68))
	        Me.lineData.Add(New KeyValuePair(Of String, Double)("02", 12653.49))
	        Me.lineData.Add(New KeyValuePair(Of String, Double)("05", 12661.74))
	        Me.lineData.Add(New KeyValuePair(Of String, Double)("06", 12666.31))
	        Me.lineData.Add(New KeyValuePair(Of String, Double)("07", 12666.87))
	        Me.lineData.Add(New KeyValuePair(Of String, Double)("08", 12637.63))
	        Me.lineData.Add(New KeyValuePair(Of String, Double)("09", 12580.83))
	        Me.lineData.Add(New KeyValuePair(Of String, Double)("12", 12552.55))
	        Me.lineData.Add(New KeyValuePair(Of String, Double)("13", 12654.85))
	        Me.lineData.Add(New KeyValuePair(Of String, Double)("14", 12741.86))
	        Me.lineData.Add(New KeyValuePair(Of String, Double)("15", 12765.01))
	        Me.lineData.Add(New KeyValuePair(Of String, Double)("16", 12767.57))
	        Me.lineData.Add(New KeyValuePair(Of String, Double)("20", 12786.64))
	        Me.lineData.Add(New KeyValuePair(Of String, Double)("21", 12738.41))
	        Me.lineData.Add(New KeyValuePair(Of String, Double)("22", 12686.02))
	        Me.lineData.Add(New KeyValuePair(Of String, Double)("23", 12647.48))
	        Me.lineData.Add(New KeyValuePair(Of String, Double)("26", 12632.26))
	        Me.lineData.Add(New KeyValuePair(Of String, Double)("27", 12216.24))
	        Me.lineData.Add(New KeyValuePair(Of String, Double)("28", 12268.63))
	    End Sub
	
	    Private Sub InitializeScatterData()
	        Me.scatterData = New List(Of KeyValuePair(Of Double, Double))()
	
	        Me.scatterData.Add(New KeyValuePair(Of Double, Double)(8, 1))
	        Me.scatterData.Add(New KeyValuePair(Of Double, Double)(7, 34))
	        Me.scatterData.Add(New KeyValuePair(Of Double, Double)(7, 38))
	        Me.scatterData.Add(New KeyValuePair(Of Double, Double)(3, 28))
	        Me.scatterData.Add(New KeyValuePair(Of Double, Double)(6, 27))
	        Me.scatterData.Add(New KeyValuePair(Of Double, Double)(4, 25))
	        Me.scatterData.Add(New KeyValuePair(Of Double, Double)(24, 2))
	        Me.scatterData.Add(New KeyValuePair(Of Double, Double)(32, 4))
	        Me.scatterData.Add(New KeyValuePair(Of Double, Double)(36, 7))
	        Me.scatterData.Add(New KeyValuePair(Of Double, Double)(35, 3))
	        Me.scatterData.Add(New KeyValuePair(Of Double, Double)(45, 3))
	        Me.scatterData.Add(New KeyValuePair(Of Double, Double)(46, 8))
	        Me.scatterData.Add(New KeyValuePair(Of Double, Double)(15, 19))
	        Me.scatterData.Add(New KeyValuePair(Of Double, Double)(16, 12))
	        Me.scatterData.Add(New KeyValuePair(Of Double, Double)(17, 11))
	        Me.scatterData.Add(New KeyValuePair(Of Double, Double)(17, 21))
	        Me.scatterData.Add(New KeyValuePair(Of Double, Double)(23, 24))
	        Me.scatterData.Add(New KeyValuePair(Of Double, Double)(26, 30))
	        Me.scatterData.Add(New KeyValuePair(Of Double, Double)(30, 35))
	        Me.scatterData.Add(New KeyValuePair(Of Double, Double)(30, 35))
	        Me.scatterData.Add(New KeyValuePair(Of Double, Double)(34, 40))
	        Me.scatterData.Add(New KeyValuePair(Of Double, Double)(44, 43))
	        Me.scatterData.Add(New KeyValuePair(Of Double, Double)(43, 35))
	        Me.scatterData.Add(New KeyValuePair(Of Double, Double)(47, 39))
	        Me.scatterData.Add(New KeyValuePair(Of Double, Double)(34, 40))
	        Me.scatterData.Add(New KeyValuePair(Of Double, Double)(38, 28))
	        Me.scatterData.Add(New KeyValuePair(Of Double, Double)(45, 27))
	        Me.scatterData.Add(New KeyValuePair(Of Double, Double)(45, 23))
	        Me.scatterData.Add(New KeyValuePair(Of Double, Double)(35, 29))
	        Me.scatterData.Add(New KeyValuePair(Of Double, Double)(33, 25))
	        Me.scatterData.Add(New KeyValuePair(Of Double, Double)(27, 22))
	        Me.scatterData.Add(New KeyValuePair(Of Double, Double)(24, 19))
	        Me.scatterData.Add(New KeyValuePair(Of Double, Double)(28, 18))
	        Me.scatterData.Add(New KeyValuePair(Of Double, Double)(37, 15))
	        Me.scatterData.Add(New KeyValuePair(Of Double, Double)(44, 18))
	        Me.scatterData.Add(New KeyValuePair(Of Double, Double)(22, 13))
	        Me.scatterData.Add(New KeyValuePair(Of Double, Double)(24, 12))
	        Me.scatterData.Add(New KeyValuePair(Of Double, Double)(32, 14))
	        Me.scatterData.Add(New KeyValuePair(Of Double, Double)(39, 13))
	    End Sub
	
	    Private Sub SetupBar()
	        For Each item As KeyValuePair(Of String, Double) In Me.barData
	            Dim bar As New BarSeries()
	            bar.ShowLabels = True
	            bar.DrawLinesToLabels = True
	            Dim point As New CategoricalDataPoint()
	            point.Category = item.Key
	            point.Value = item.Value
	            point.Label = String.Format("{0} - {1}", point.Value, point.Category)
	            bar.DataPoints.Add(point)
	            Me.radChartView1.Series.Add(bar)
	        Next
	    End Sub
	
	    Private Sub SetupLine()
	        Dim line As New LineSeries()
	        line.ShowLabels = True
	        line.DrawLinesToLabels = True
	        line.BorderColor = Color.FromArgb(243, 210, 79)
	        line.SyncLinesToLabelsColor = False
	        line.LinesToLabelsColor = Color.Black
	
	        For Each item As KeyValuePair(Of String, Double) In Me.lineData
	            Dim point As New CategoricalDataPoint()
	            point.Category = item.Key
	            point.Value = item.Value
	            point.Label = String.Format("{0:F2}", point.Value)
	            line.DataPoints.Add(point)
	        Next
	
	        Me.radChartView1.Series.Add(line)
	    End Sub
	
	    Private Sub SetupScatter()
	        Dim scatter As New ScatterSeries()
	        scatter.ShowLabels = True
	        scatter.DrawLinesToLabels = True
	
	        For Each point As KeyValuePair(Of Double, Double) In Me.scatterData
	            Dim scatterPoint As New ScatterDataPoint()
	            scatterPoint.XValue = point.Key
	            scatterPoint.YValue = point.Value
	            scatterPoint.Label = String.Format("{0} - {1}", scatterPoint.XValue, scatterPoint.YValue)
	            scatter.DataPoints.Add(scatterPoint)
	        Next
	
	        Me.radChartView1.Series.Add(scatter)
	    End Sub
	
	    Private Sub ResetChartView()
	        Me.radChartView1.AreaType = ChartAreaType.Polar
	        Me.radChartView1.AreaType = ChartAreaType.Cartesian
	    End Sub
	
	    Private Sub radButtonBar_Click(sender As Object, e As EventArgs) Handles radButtonBar.Click
	        Me.ResetChartView()
	        Me.SetupBar()
	    End Sub
	
	    Private Sub radButtonLine_Click(sender As Object, e As EventArgs) Handles radButtonLine.Click
	        Me.ResetChartView()
	        Me.SetupLine()
	    End Sub
	
	    Private Sub radButtonScatter_Click(sender As Object, e As EventArgs) Handles radButtonScatter.Click
	        Me.ResetChartView()
	        Me.SetupScatter()
	    End Sub
	
	    Private Sub radRadioButton_ToggleStateChanged(sender As Object, args As Telerik.WinControls.UI.StateChangedEventArgs) Handles radRadioButtonOn.ToggleStateChanged, radRadioButtonOff.ToggleStateChanged
	        If (sender.Equals(Me.radRadioButtonOn)) Then
	            If args.ToggleState = Telerik.WinControls.Enumerations.ToggleState.On Then
	                EnableSmartLabels()
	            Else
	                radChartView1.ShowSmartLabels = False
	            End If
	        End If
	    End Sub
	
	    Private Sub radChartView1_LabelFormatting(sender As Object, e As ChartViewLabelFormattingEventArgs)
	        e.LabelElement.BackColor = Color.White
	        e.LabelElement.BorderColor = e.LabelElement.DataPointElement.BackColor
	    End Sub
	
	#End Region
	
	End Class



Alternatively, you can leave RadChartView do this for you by setting the __ShowSmartLabels__ property:
        

#### __[C#]__

{{source=..\SamplesCS\ChartView\Features\SmartLabels.cs region=EnableSmartLabels}}
	            this.radChartView1.ShowSmartLabels = true;
	{{endregion}}



#### __[VB.NET]__

{{source=..\SamplesVB\ChartView\Features\SmartLabels.vb region=EnableSmartLabels}}
	        Me.radChartView1.ShowSmartLabels = True
	        '#End Region
	    End Sub
	
	
	#Region "SettingUpTheProject"
	
	    Private Sub InitializeBarData()
	        Me.barData = New List(Of KeyValuePair(Of String, Double))()
	
	        Me.barData.Add(New KeyValuePair(Of String, Double)("January", 20))
	        Me.barData.Add(New KeyValuePair(Of String, Double)("February", 21))
	        Me.barData.Add(New KeyValuePair(Of String, Double)("March", 23))
	        Me.barData.Add(New KeyValuePair(Of String, Double)("April", 32))
	        Me.barData.Add(New KeyValuePair(Of String, Double)("May", 31))
	        Me.barData.Add(New KeyValuePair(Of String, Double)("June", 19))
	        Me.barData.Add(New KeyValuePair(Of String, Double)("July", 18))
	    End Sub
	
	    Private Sub InitializeLineData()
	        Me.lineData = New List(Of KeyValuePair(Of String, Double))()
	
	        Me.lineData.Add(New KeyValuePair(Of String, Double)("01", 12673.68))
	        Me.lineData.Add(New KeyValuePair(Of String, Double)("02", 12653.49))
	        Me.lineData.Add(New KeyValuePair(Of String, Double)("05", 12661.74))
	        Me.lineData.Add(New KeyValuePair(Of String, Double)("06", 12666.31))
	        Me.lineData.Add(New KeyValuePair(Of String, Double)("07", 12666.87))
	        Me.lineData.Add(New KeyValuePair(Of String, Double)("08", 12637.63))
	        Me.lineData.Add(New KeyValuePair(Of String, Double)("09", 12580.83))
	        Me.lineData.Add(New KeyValuePair(Of String, Double)("12", 12552.55))
	        Me.lineData.Add(New KeyValuePair(Of String, Double)("13", 12654.85))
	        Me.lineData.Add(New KeyValuePair(Of String, Double)("14", 12741.86))
	        Me.lineData.Add(New KeyValuePair(Of String, Double)("15", 12765.01))
	        Me.lineData.Add(New KeyValuePair(Of String, Double)("16", 12767.57))
	        Me.lineData.Add(New KeyValuePair(Of String, Double)("20", 12786.64))
	        Me.lineData.Add(New KeyValuePair(Of String, Double)("21", 12738.41))
	        Me.lineData.Add(New KeyValuePair(Of String, Double)("22", 12686.02))
	        Me.lineData.Add(New KeyValuePair(Of String, Double)("23", 12647.48))
	        Me.lineData.Add(New KeyValuePair(Of String, Double)("26", 12632.26))
	        Me.lineData.Add(New KeyValuePair(Of String, Double)("27", 12216.24))
	        Me.lineData.Add(New KeyValuePair(Of String, Double)("28", 12268.63))
	    End Sub
	
	    Private Sub InitializeScatterData()
	        Me.scatterData = New List(Of KeyValuePair(Of Double, Double))()
	
	        Me.scatterData.Add(New KeyValuePair(Of Double, Double)(8, 1))
	        Me.scatterData.Add(New KeyValuePair(Of Double, Double)(7, 34))
	        Me.scatterData.Add(New KeyValuePair(Of Double, Double)(7, 38))
	        Me.scatterData.Add(New KeyValuePair(Of Double, Double)(3, 28))
	        Me.scatterData.Add(New KeyValuePair(Of Double, Double)(6, 27))
	        Me.scatterData.Add(New KeyValuePair(Of Double, Double)(4, 25))
	        Me.scatterData.Add(New KeyValuePair(Of Double, Double)(24, 2))
	        Me.scatterData.Add(New KeyValuePair(Of Double, Double)(32, 4))
	        Me.scatterData.Add(New KeyValuePair(Of Double, Double)(36, 7))
	        Me.scatterData.Add(New KeyValuePair(Of Double, Double)(35, 3))
	        Me.scatterData.Add(New KeyValuePair(Of Double, Double)(45, 3))
	        Me.scatterData.Add(New KeyValuePair(Of Double, Double)(46, 8))
	        Me.scatterData.Add(New KeyValuePair(Of Double, Double)(15, 19))
	        Me.scatterData.Add(New KeyValuePair(Of Double, Double)(16, 12))
	        Me.scatterData.Add(New KeyValuePair(Of Double, Double)(17, 11))
	        Me.scatterData.Add(New KeyValuePair(Of Double, Double)(17, 21))
	        Me.scatterData.Add(New KeyValuePair(Of Double, Double)(23, 24))
	        Me.scatterData.Add(New KeyValuePair(Of Double, Double)(26, 30))
	        Me.scatterData.Add(New KeyValuePair(Of Double, Double)(30, 35))
	        Me.scatterData.Add(New KeyValuePair(Of Double, Double)(30, 35))
	        Me.scatterData.Add(New KeyValuePair(Of Double, Double)(34, 40))
	        Me.scatterData.Add(New KeyValuePair(Of Double, Double)(44, 43))
	        Me.scatterData.Add(New KeyValuePair(Of Double, Double)(43, 35))
	        Me.scatterData.Add(New KeyValuePair(Of Double, Double)(47, 39))
	        Me.scatterData.Add(New KeyValuePair(Of Double, Double)(34, 40))
	        Me.scatterData.Add(New KeyValuePair(Of Double, Double)(38, 28))
	        Me.scatterData.Add(New KeyValuePair(Of Double, Double)(45, 27))
	        Me.scatterData.Add(New KeyValuePair(Of Double, Double)(45, 23))
	        Me.scatterData.Add(New KeyValuePair(Of Double, Double)(35, 29))
	        Me.scatterData.Add(New KeyValuePair(Of Double, Double)(33, 25))
	        Me.scatterData.Add(New KeyValuePair(Of Double, Double)(27, 22))
	        Me.scatterData.Add(New KeyValuePair(Of Double, Double)(24, 19))
	        Me.scatterData.Add(New KeyValuePair(Of Double, Double)(28, 18))
	        Me.scatterData.Add(New KeyValuePair(Of Double, Double)(37, 15))
	        Me.scatterData.Add(New KeyValuePair(Of Double, Double)(44, 18))
	        Me.scatterData.Add(New KeyValuePair(Of Double, Double)(22, 13))
	        Me.scatterData.Add(New KeyValuePair(Of Double, Double)(24, 12))
	        Me.scatterData.Add(New KeyValuePair(Of Double, Double)(32, 14))
	        Me.scatterData.Add(New KeyValuePair(Of Double, Double)(39, 13))
	    End Sub
	
	    Private Sub SetupBar()
	        For Each item As KeyValuePair(Of String, Double) In Me.barData
	            Dim bar As New BarSeries()
	            bar.ShowLabels = True
	            bar.DrawLinesToLabels = True
	            Dim point As New CategoricalDataPoint()
	            point.Category = item.Key
	            point.Value = item.Value
	            point.Label = String.Format("{0} - {1}", point.Value, point.Category)
	            bar.DataPoints.Add(point)
	            Me.radChartView1.Series.Add(bar)
	        Next
	    End Sub
	
	    Private Sub SetupLine()
	        Dim line As New LineSeries()
	        line.ShowLabels = True
	        line.DrawLinesToLabels = True
	        line.BorderColor = Color.FromArgb(243, 210, 79)
	        line.SyncLinesToLabelsColor = False
	        line.LinesToLabelsColor = Color.Black
	
	        For Each item As KeyValuePair(Of String, Double) In Me.lineData
	            Dim point As New CategoricalDataPoint()
	            point.Category = item.Key
	            point.Value = item.Value
	            point.Label = String.Format("{0:F2}", point.Value)
	            line.DataPoints.Add(point)
	        Next
	
	        Me.radChartView1.Series.Add(line)
	    End Sub
	
	    Private Sub SetupScatter()
	        Dim scatter As New ScatterSeries()
	        scatter.ShowLabels = True
	        scatter.DrawLinesToLabels = True
	
	        For Each point As KeyValuePair(Of Double, Double) In Me.scatterData
	            Dim scatterPoint As New ScatterDataPoint()
	            scatterPoint.XValue = point.Key
	            scatterPoint.YValue = point.Value
	            scatterPoint.Label = String.Format("{0} - {1}", scatterPoint.XValue, scatterPoint.YValue)
	            scatter.DataPoints.Add(scatterPoint)
	        Next
	
	        Me.radChartView1.Series.Add(scatter)
	    End Sub
	
	    Private Sub ResetChartView()
	        Me.radChartView1.AreaType = ChartAreaType.Polar
	        Me.radChartView1.AreaType = ChartAreaType.Cartesian
	    End Sub
	
	    Private Sub radButtonBar_Click(sender As Object, e As EventArgs) Handles radButtonBar.Click
	        Me.ResetChartView()
	        Me.SetupBar()
	    End Sub
	
	    Private Sub radButtonLine_Click(sender As Object, e As EventArgs) Handles radButtonLine.Click
	        Me.ResetChartView()
	        Me.SetupLine()
	    End Sub
	
	    Private Sub radButtonScatter_Click(sender As Object, e As EventArgs) Handles radButtonScatter.Click
	        Me.ResetChartView()
	        Me.SetupScatter()
	    End Sub
	
	    Private Sub radRadioButton_ToggleStateChanged(sender As Object, args As Telerik.WinControls.UI.StateChangedEventArgs) Handles radRadioButtonOn.ToggleStateChanged, radRadioButtonOff.ToggleStateChanged
	        If (sender.Equals(Me.radRadioButtonOn)) Then
	            If args.ToggleState = Telerik.WinControls.Enumerations.ToggleState.On Then
	                EnableSmartLabels()
	            Else
	                radChartView1.ShowSmartLabels = False
	            End If
	        End If
	    End Sub
	
	    Private Sub radChartView1_LabelFormatting(sender As Object, e As ChartViewLabelFormattingEventArgs)
	        e.LabelElement.BackColor = Color.White
	        e.LabelElement.BorderColor = e.LabelElement.DataPointElement.BackColor
	    End Sub
	
	#End Region
	
	End Class



Automatic label placement is one the most complex and time consuming operations in a chart that is NP-hard(
          [http://en.wikipedia.org/wiki/NP-Hard](http://en.wikipedia.org/wiki/NP-Hard)
          ).
          There is no universal solution for all chart types and there is no solution that can guarantee solution for 100% of the label collisions in every case.
        ![chartview-features-smart-labels 001](images/chartview-features-smart-labels001.png)

RadChartView’s __SmartLabelsController__ uses strategies specific to different chart types to resolve label overlaps. 
          Since label overlapping can be quite time consuming with more generalized methods, the more concrete a strategy is the better the performance 
          that can be expected out of it. You do not need to be concerned with the strategy, RadChartView will choose the best of the built-in strategies 
          to be used in your chart.
        ![chartview-features-smart-labels 002](images/chartview-features-smart-labels002.png)![chartview-features-smart-labels 003](images/chartview-features-smart-labels003.png)
