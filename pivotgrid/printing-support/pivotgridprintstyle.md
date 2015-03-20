---
title: PivotGridPrintStyle
page_title: PivotGridPrintStyle
description: PivotGridPrintStyle
slug: pivotgrid-printing-support-pivotgridprintstyle
tags: pivotgridprintstyle
published: True
position: 0
---

# PivotGridPrintStyle



## 

Printing in RadPivotGrid is performed by a __PivotGridPrintStyle__ object. It provides
          different properties and events you can use to modify the appearance of the printouts. You can access the
          __PivotGridPrintStyle__ by using the __PrintStyle__ property of RadPivotGrid.
        

You can modify the default font of the different cell types by using the following properties:
        

#### __[C#] __

{{region PrintStyleFont}}
	            this.radPivotGrid1.PrintStyle.DataCellsFont = new Font("Segoe UI Light", 8, FontStyle.Regular);
	            this.radPivotGrid1.PrintStyle.HeaderCellsFont = new Font("Segoe UI Light", 8, FontStyle.Bold);
	            this.radPivotGrid1.PrintStyle.DecriptorsFont = new Font("Segoe UI Light", 9, FontStyle.Regular);
	            this.radPivotGrid1.PrintStyle.SubTotalCellsFont = new Font("Segoe UI Light", 8, FontStyle.Italic);
	            this.radPivotGrid1.PrintStyle.GrandTotalCellsFont = new Font("Segoe UI Light", 8, FontStyle.Italic | FontStyle.Bold);
	{{endregion}}



#### __[VB.NET] __

{{region PrintStyleFont}}
	        Me.radPivotGrid1.PrintStyle.DataCellsFont = New Font("Segoe UI Light", 8, FontStyle.Regular)
	        Me.radPivotGrid1.PrintStyle.HeaderCellsFont = New Font("Segoe UI Light", 8, FontStyle.Bold)
	        Me.radPivotGrid1.PrintStyle.DecriptorsFont = New Font("Segoe UI Light", 9, FontStyle.Regular)
	        Me.radPivotGrid1.PrintStyle.SubTotalCellsFont = New Font("Segoe UI Light", 8, FontStyle.Italic)
	        Me.radPivotGrid1.PrintStyle.GrandTotalCellsFont = New Font("Segoe UI Light", 8, FontStyle.Italic Or FontStyle.Bold)
	        '#End Region
	
	        '#Region "PrintStyleColor"
	        Me.radPivotGrid1.PrintStyle.CellBackColor = Color.Wheat
	        Me.radPivotGrid1.PrintStyle.HeadersBackColor = Color.Gray
	        Me.radPivotGrid1.PrintStyle.DescriptorsBackColor = Color.Yellow
	        Me.radPivotGrid1.PrintStyle.SubTotalsBackColor = Color.LightBlue
	        Me.radPivotGrid1.PrintStyle.GrandTotalsBackColor = Color.Blue
	        '#End Region
	
	        '#Region "ScaleMode"
	        Me.radPivotGrid1.PrintStyle.ScaleMode = Telerik.WinControls.UI.PivotPrintScaleMode.FitAll
	        '#End Region
	
	        '#Region "PageOrder"
	        Me.radPivotGrid1.PrintStyle.PageOrder = Telerik.WinControls.UI.PivotGridPrintPageOrder.DownThenOver
	        '#End Region
	
	        '#Region "Layout"
	        Me.radPivotGrid1.PrintStyle.LayoutType = Telerik.WinControls.UI.PivotLayout.Compact
	        Me.radPivotGrid1.PrintStyle.ComactLayoutIndent = 20
	        '#End Region
	
	        '#Region "PrintSelection"
	        Me.radPivotGrid1.PrintStyle.PrintSelectionOnly = True
	        '#End Region
	
	        AddHandler Me.radPivotGrid1.PrintElementFormatting, AddressOf radPivotGrid1_PrintElementFormatting
	        AddHandler Me.radPivotGrid1.PrintElementPaint, AddressOf radPivotGrid1_PrintElementPaint
	
	    End Sub
	
	#Region "Formatting"
	    Private Sub radPivotGrid1_PrintElementFormatting(sender As Object, e As Telerik.WinControls.UI.PrintElementEventArgs)
	        Dim cell As PivotCellPrintElement = TryCast(e.PrintElement, PivotCellPrintElement)
	        If cell IsNot Nothing AndAlso cell.Value IsNot Nothing AndAlso (Convert.ToDouble(cell.Value)) < 100 Then
	            cell.BackColor = Color.Red
	        End If
	
	        If cell IsNot Nothing AndAlso cell.Value IsNot Nothing AndAlso (Convert.ToDouble(cell.Value)) > 500 Then
	            cell.BackColor = Color.Green
	        End If
	    End Sub
	
	    Private Sub radPivotGrid1_PrintElementPaint(sender As Object, e As PrintElementPaintEventArgs)
	        Dim cell As PivotCellPrintElement = TryCast(e.PrintElement, PivotCellPrintElement)
	        If cell IsNot Nothing AndAlso cell.Value Is Nothing Then
	            Dim b As Brush = New HatchBrush(HatchStyle.BackwardDiagonal, Color.LightGray, Color.Transparent)
	            e.Graphics.FillRectangle(b, e.Bounds)
	        End If
	    End Sub
	#End Region
	
	    Private Sub PivotGridPrinting_Load(sender As Object, e As EventArgs) Handles Me.Load
	        ' TODO: This line of code loads data into the 'nwindDataSet.Orders' table. You can move, or remove it, as needed.
	        Me.ordersTableAdapter.Fill(Me.nwindDataSet.Orders)
	
	    End Sub
	
	
	End Class



Similarly, you can modify the background color for the different cell types:
        

#### __[C#] __

{{region PrintStyleColor}}
	            this.radPivotGrid1.PrintStyle.CellBackColor = Color.Wheat;
	            this.radPivotGrid1.PrintStyle.HeadersBackColor = Color.Gray;
	            this.radPivotGrid1.PrintStyle.DescriptorsBackColor = Color.Yellow;
	            this.radPivotGrid1.PrintStyle.SubTotalsBackColor = Color.LightBlue;
	            this.radPivotGrid1.PrintStyle.GrandTotalsBackColor= Color.Blue;
	{{endregion}}



#### __[VB.NET] __

{{region PrintStyleColor}}
	        Me.radPivotGrid1.PrintStyle.CellBackColor = Color.Wheat
	        Me.radPivotGrid1.PrintStyle.HeadersBackColor = Color.Gray
	        Me.radPivotGrid1.PrintStyle.DescriptorsBackColor = Color.Yellow
	        Me.radPivotGrid1.PrintStyle.SubTotalsBackColor = Color.LightBlue
	        Me.radPivotGrid1.PrintStyle.GrandTotalsBackColor = Color.Blue
	        '#End Region
	
	        '#Region "ScaleMode"
	        Me.radPivotGrid1.PrintStyle.ScaleMode = Telerik.WinControls.UI.PivotPrintScaleMode.FitAll
	        '#End Region
	
	        '#Region "PageOrder"
	        Me.radPivotGrid1.PrintStyle.PageOrder = Telerik.WinControls.UI.PivotGridPrintPageOrder.DownThenOver
	        '#End Region
	
	        '#Region "Layout"
	        Me.radPivotGrid1.PrintStyle.LayoutType = Telerik.WinControls.UI.PivotLayout.Compact
	        Me.radPivotGrid1.PrintStyle.ComactLayoutIndent = 20
	        '#End Region
	
	        '#Region "PrintSelection"
	        Me.radPivotGrid1.PrintStyle.PrintSelectionOnly = True
	        '#End Region
	
	        AddHandler Me.radPivotGrid1.PrintElementFormatting, AddressOf radPivotGrid1_PrintElementFormatting
	        AddHandler Me.radPivotGrid1.PrintElementPaint, AddressOf radPivotGrid1_PrintElementPaint
	
	    End Sub
	
	#Region "Formatting"
	    Private Sub radPivotGrid1_PrintElementFormatting(sender As Object, e As Telerik.WinControls.UI.PrintElementEventArgs)
	        Dim cell As PivotCellPrintElement = TryCast(e.PrintElement, PivotCellPrintElement)
	        If cell IsNot Nothing AndAlso cell.Value IsNot Nothing AndAlso (Convert.ToDouble(cell.Value)) < 100 Then
	            cell.BackColor = Color.Red
	        End If
	
	        If cell IsNot Nothing AndAlso cell.Value IsNot Nothing AndAlso (Convert.ToDouble(cell.Value)) > 500 Then
	            cell.BackColor = Color.Green
	        End If
	    End Sub
	
	    Private Sub radPivotGrid1_PrintElementPaint(sender As Object, e As PrintElementPaintEventArgs)
	        Dim cell As PivotCellPrintElement = TryCast(e.PrintElement, PivotCellPrintElement)
	        If cell IsNot Nothing AndAlso cell.Value Is Nothing Then
	            Dim b As Brush = New HatchBrush(HatchStyle.BackwardDiagonal, Color.LightGray, Color.Transparent)
	            e.Graphics.FillRectangle(b, e.Bounds)
	        End If
	    End Sub
	#End Region
	
	    Private Sub PivotGridPrinting_Load(sender As Object, e As EventArgs) Handles Me.Load
	        ' TODO: This line of code loads data into the 'nwindDataSet.Orders' table. You can move, or remove it, as needed.
	        Me.ordersTableAdapter.Fill(Me.nwindDataSet.Orders)
	
	    End Sub
	
	
	End Class



Sometimes the reports generated by RadPivotGrid can be larger than a single page. In this case you can choose
          to scale the report so that it fits the page area:
        

#### __[C#] __

{{region ScaleMode}}
	            this.radPivotGrid1.PrintStyle.ScaleMode = Telerik.WinControls.UI.PivotPrintScaleMode.FitAll;
	{{endregion}}



#### __[VB.NET] __

{{region ScaleMode}}
	        Me.radPivotGrid1.PrintStyle.ScaleMode = Telerik.WinControls.UI.PivotPrintScaleMode.FitAll
	        '#End Region
	
	        '#Region "PageOrder"
	        Me.radPivotGrid1.PrintStyle.PageOrder = Telerik.WinControls.UI.PivotGridPrintPageOrder.DownThenOver
	        '#End Region
	
	        '#Region "Layout"
	        Me.radPivotGrid1.PrintStyle.LayoutType = Telerik.WinControls.UI.PivotLayout.Compact
	        Me.radPivotGrid1.PrintStyle.ComactLayoutIndent = 20
	        '#End Region
	
	        '#Region "PrintSelection"
	        Me.radPivotGrid1.PrintStyle.PrintSelectionOnly = True
	        '#End Region
	
	        AddHandler Me.radPivotGrid1.PrintElementFormatting, AddressOf radPivotGrid1_PrintElementFormatting
	        AddHandler Me.radPivotGrid1.PrintElementPaint, AddressOf radPivotGrid1_PrintElementPaint
	
	    End Sub
	
	#Region "Formatting"
	    Private Sub radPivotGrid1_PrintElementFormatting(sender As Object, e As Telerik.WinControls.UI.PrintElementEventArgs)
	        Dim cell As PivotCellPrintElement = TryCast(e.PrintElement, PivotCellPrintElement)
	        If cell IsNot Nothing AndAlso cell.Value IsNot Nothing AndAlso (Convert.ToDouble(cell.Value)) < 100 Then
	            cell.BackColor = Color.Red
	        End If
	
	        If cell IsNot Nothing AndAlso cell.Value IsNot Nothing AndAlso (Convert.ToDouble(cell.Value)) > 500 Then
	            cell.BackColor = Color.Green
	        End If
	    End Sub
	
	    Private Sub radPivotGrid1_PrintElementPaint(sender As Object, e As PrintElementPaintEventArgs)
	        Dim cell As PivotCellPrintElement = TryCast(e.PrintElement, PivotCellPrintElement)
	        If cell IsNot Nothing AndAlso cell.Value Is Nothing Then
	            Dim b As Brush = New HatchBrush(HatchStyle.BackwardDiagonal, Color.LightGray, Color.Transparent)
	            e.Graphics.FillRectangle(b, e.Bounds)
	        End If
	    End Sub
	#End Region
	
	    Private Sub PivotGridPrinting_Load(sender As Object, e As EventArgs) Handles Me.Load
	        ' TODO: This line of code loads data into the 'nwindDataSet.Orders' table. You can move, or remove it, as needed.
	        Me.ordersTableAdapter.Fill(Me.nwindDataSet.Orders)
	
	    End Sub
	
	
	End Class



If you do not want to scale the report, you can choose the order in which pages are printed:
        

#### __[C#] __

{{region PageOrder}}
	            this.radPivotGrid1.PrintStyle.PageOrder = Telerik.WinControls.UI.PivotGridPrintPageOrder.DownThenOver;
	{{endregion}}



#### __[VB.NET] __

{{region PageOrder}}
	        Me.radPivotGrid1.PrintStyle.PageOrder = Telerik.WinControls.UI.PivotGridPrintPageOrder.DownThenOver
	        '#End Region
	
	        '#Region "Layout"
	        Me.radPivotGrid1.PrintStyle.LayoutType = Telerik.WinControls.UI.PivotLayout.Compact
	        Me.radPivotGrid1.PrintStyle.ComactLayoutIndent = 20
	        '#End Region
	
	        '#Region "PrintSelection"
	        Me.radPivotGrid1.PrintStyle.PrintSelectionOnly = True
	        '#End Region
	
	        AddHandler Me.radPivotGrid1.PrintElementFormatting, AddressOf radPivotGrid1_PrintElementFormatting
	        AddHandler Me.radPivotGrid1.PrintElementPaint, AddressOf radPivotGrid1_PrintElementPaint
	
	    End Sub
	
	#Region "Formatting"
	    Private Sub radPivotGrid1_PrintElementFormatting(sender As Object, e As Telerik.WinControls.UI.PrintElementEventArgs)
	        Dim cell As PivotCellPrintElement = TryCast(e.PrintElement, PivotCellPrintElement)
	        If cell IsNot Nothing AndAlso cell.Value IsNot Nothing AndAlso (Convert.ToDouble(cell.Value)) < 100 Then
	            cell.BackColor = Color.Red
	        End If
	
	        If cell IsNot Nothing AndAlso cell.Value IsNot Nothing AndAlso (Convert.ToDouble(cell.Value)) > 500 Then
	            cell.BackColor = Color.Green
	        End If
	    End Sub
	
	    Private Sub radPivotGrid1_PrintElementPaint(sender As Object, e As PrintElementPaintEventArgs)
	        Dim cell As PivotCellPrintElement = TryCast(e.PrintElement, PivotCellPrintElement)
	        If cell IsNot Nothing AndAlso cell.Value Is Nothing Then
	            Dim b As Brush = New HatchBrush(HatchStyle.BackwardDiagonal, Color.LightGray, Color.Transparent)
	            e.Graphics.FillRectangle(b, e.Bounds)
	        End If
	    End Sub
	#End Region
	
	    Private Sub PivotGridPrinting_Load(sender As Object, e As EventArgs) Handles Me.Load
	        ' TODO: This line of code loads data into the 'nwindDataSet.Orders' table. You can move, or remove it, as needed.
	        Me.ordersTableAdapter.Fill(Me.nwindDataSet.Orders)
	
	    End Sub
	
	
	End Class



To save some spaces, you can enable __CompactLayout__ mode for the printed pages:
        

#### __[C#] __

{{region Layout}}
	            this.radPivotGrid1.PrintStyle.LayoutType = Telerik.WinControls.UI.PivotLayout.Compact;
	            this.radPivotGrid1.PrintStyle.ComactLayoutIndent = 20;
	{{endregion}}



#### __[VB.NET] __

{{region Layout}}
	        Me.radPivotGrid1.PrintStyle.LayoutType = Telerik.WinControls.UI.PivotLayout.Compact
	        Me.radPivotGrid1.PrintStyle.ComactLayoutIndent = 20
	        '#End Region
	
	        '#Region "PrintSelection"
	        Me.radPivotGrid1.PrintStyle.PrintSelectionOnly = True
	        '#End Region
	
	        AddHandler Me.radPivotGrid1.PrintElementFormatting, AddressOf radPivotGrid1_PrintElementFormatting
	        AddHandler Me.radPivotGrid1.PrintElementPaint, AddressOf radPivotGrid1_PrintElementPaint
	
	    End Sub
	
	#Region "Formatting"
	    Private Sub radPivotGrid1_PrintElementFormatting(sender As Object, e As Telerik.WinControls.UI.PrintElementEventArgs)
	        Dim cell As PivotCellPrintElement = TryCast(e.PrintElement, PivotCellPrintElement)
	        If cell IsNot Nothing AndAlso cell.Value IsNot Nothing AndAlso (Convert.ToDouble(cell.Value)) < 100 Then
	            cell.BackColor = Color.Red
	        End If
	
	        If cell IsNot Nothing AndAlso cell.Value IsNot Nothing AndAlso (Convert.ToDouble(cell.Value)) > 500 Then
	            cell.BackColor = Color.Green
	        End If
	    End Sub
	
	    Private Sub radPivotGrid1_PrintElementPaint(sender As Object, e As PrintElementPaintEventArgs)
	        Dim cell As PivotCellPrintElement = TryCast(e.PrintElement, PivotCellPrintElement)
	        If cell IsNot Nothing AndAlso cell.Value Is Nothing Then
	            Dim b As Brush = New HatchBrush(HatchStyle.BackwardDiagonal, Color.LightGray, Color.Transparent)
	            e.Graphics.FillRectangle(b, e.Bounds)
	        End If
	    End Sub
	#End Region
	
	    Private Sub PivotGridPrinting_Load(sender As Object, e As EventArgs) Handles Me.Load
	        ' TODO: This line of code loads data into the 'nwindDataSet.Orders' table. You can move, or remove it, as needed.
	        Me.ordersTableAdapter.Fill(Me.nwindDataSet.Orders)
	
	    End Sub
	
	
	End Class



Additionally, if you do not want to print the entire report but only the selected parts,
          you can set the following property:
        

#### __[C#] __

{{region PrintSelection}}
	            this.radPivotGrid1.PrintStyle.PrintSelectionOnly = true;
	{{endregion}}



#### __[VB.NET] __

{{region PrintSelection}}
	        Me.radPivotGrid1.PrintStyle.PrintSelectionOnly = True
	        '#End Region
	
	        AddHandler Me.radPivotGrid1.PrintElementFormatting, AddressOf radPivotGrid1_PrintElementFormatting
	        AddHandler Me.radPivotGrid1.PrintElementPaint, AddressOf radPivotGrid1_PrintElementPaint
	
	    End Sub
	
	#Region "Formatting"
	    Private Sub radPivotGrid1_PrintElementFormatting(sender As Object, e As Telerik.WinControls.UI.PrintElementEventArgs)
	        Dim cell As PivotCellPrintElement = TryCast(e.PrintElement, PivotCellPrintElement)
	        If cell IsNot Nothing AndAlso cell.Value IsNot Nothing AndAlso (Convert.ToDouble(cell.Value)) < 100 Then
	            cell.BackColor = Color.Red
	        End If
	
	        If cell IsNot Nothing AndAlso cell.Value IsNot Nothing AndAlso (Convert.ToDouble(cell.Value)) > 500 Then
	            cell.BackColor = Color.Green
	        End If
	    End Sub
	
	    Private Sub radPivotGrid1_PrintElementPaint(sender As Object, e As PrintElementPaintEventArgs)
	        Dim cell As PivotCellPrintElement = TryCast(e.PrintElement, PivotCellPrintElement)
	        If cell IsNot Nothing AndAlso cell.Value Is Nothing Then
	            Dim b As Brush = New HatchBrush(HatchStyle.BackwardDiagonal, Color.LightGray, Color.Transparent)
	            e.Graphics.FillRectangle(b, e.Bounds)
	        End If
	    End Sub
	#End Region
	
	    Private Sub PivotGridPrinting_Load(sender As Object, e As EventArgs) Handles Me.Load
	        ' TODO: This line of code loads data into the 'nwindDataSet.Orders' table. You can move, or remove it, as needed.
	        Me.ordersTableAdapter.Fill(Me.nwindDataSet.Orders)
	
	    End Sub
	
	
	End Class


