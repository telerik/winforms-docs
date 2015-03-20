---
title: Properties and events
page_title: Properties and events
description: Properties and events
slug: track-and-status-controls-rating-properties-and-events
tags: properties,and,events
published: True
position: 3
---

# Properties and events





## Properties

* *ShowItemToolTips* - by default __RadRating__ shows tooltips when hovering the items.
            The user can disable this functionality by setting *ShowItemToolTips* property to False:

#### __[C#]__

{{region ShowItemToolTips}}
	
	            this.radRating1.ShowItemToolTips = false;
	            
	{{endregion}}



#### __[VB.NET]__

{{region ShowItemToolTips}}
	        Me.RadRating1.ShowItemToolTips = False
	        ' #End Region
	
	        ' #Region "RightToLeft"
	
	        Me.RadRating1.RightToLeft = System.Windows.Forms.RightToLeft.Yes
	        ' #End Region
	
	        ' #Region "Direction"
	        Me.RadRating1.Direction = RatingDirection.Reversed
	        ' #End Region
	
	        '#Region "Orientation"
	
	        Me.RadRating1.Orientation = Orientation.Vertical
	        Me.RadRating1.AutoSize = True
	
	        ' #End Region
	
	        ' #Region "Captions"
	        Me.RadRating1.Caption = "Rate the movie"
	        Me.RadRating1.Description = "Description"
	        Me.RadRating1.Subcaption = "SubCaption"
	        ' #End Region
	
	        ' #Region "SelectionPrecise"
	
	        Me.RadRating1.SelectionMode = Telerik.WinControls.UI.RatingSelectionMode.Precise
	
	        '#End Region
	
	        ' #Region "SelectionHalfItem"
	
	        Me.RadRating1.SelectionMode = Telerik.WinControls.UI.RatingSelectionMode.HalfItem
	
	        ' #End Region
	
	        '#Region "SelectionFullItem"
	
	        Me.RadRating1.SelectionMode = Telerik.WinControls.UI.RatingSelectionMode.FullItem
	
	        ' #End Region
	
	        '#Region "Ranges"
	        Me.RadRating1.Minimum = 10
	        Me.RadRating1.Maximum = 40
	        ' #End Region
	
	
	        '#Region "Value"
	
	        Me.RadRating1.Value = 43.4
	        ' #End Region
	
	        '#Region "Background"
	
	        For Each item As RatingStarVisualElement In Me.RadRating1.Items
	            item.Fill.BackColor = Color.LightBlue
	            item.HoverElement.Fill.BackColor = Color.DeepSkyBlue
	            item.ValueElement.Fill.BackColor = Color.DodgerBlue
	            item.SelectedValueElement.Fill.BackColor = Color.Blue
	
	            item.Fill.GradientStyle = Telerik.WinControls.GradientStyles.Solid
	            item.HoverElement.Fill.GradientStyle = Telerik.WinControls.GradientStyles.Solid
	            item.ValueElement.Fill.GradientStyle = Telerik.WinControls.GradientStyles.Solid
	            item.SelectedValueElement.Fill.GradientStyle = GradientStyles.Solid
	        Next
	
	        '#End Region
	
	        '#Region "CustomShape"
	
	        For i As Integer = 0 To 4
	            Dim myShape As New CustomShapeElement()
	            myShape.Fill.BackColor = Color.LightBlue
	            myShape.HoverElement.Fill.BackColor = Color.DeepSkyBlue
	            myShape.ValueElement.Fill.BackColor = Color.DodgerBlue
	            myShape.SelectedValueElement.Fill.BackColor = Color.Blue
	
	            myShape.Fill.GradientStyle = Telerik.WinControls.GradientStyles.Solid
	            myShape.HoverElement.Fill.GradientStyle = Telerik.WinControls.GradientStyles.Solid
	            myShape.ValueElement.Fill.GradientStyle = Telerik.WinControls.GradientStyles.Solid
	            myShape.SelectedValueElement.Fill.GradientStyle = GradientStyles.Solid
	            Me.RadRating1.Items.Add(myShape)
	        Next
	
	        ' #End Region
	    End Sub
	
	#Region "CustomShapeClasses"
	
	    Public Class CustomShapeElement
	        Inherits RatingVisualElement
	        Protected Overrides Function GetShape() As ElementShape
	            Return New CustomShape()
	        End Function
	
	        Protected Overrides ReadOnly Property ThemeEffectiveType() As Type
	            Get
	                Return GetType(RatingVisualElement)
	            End Get
	        End Property
	    End Class
	
	    Public Class CustomShape
	        Inherits ElementShape
	        Public Overrides Function CreatePath(bounds As Rectangle) As GraphicsPath
	            Dim path As New GraphicsPath()
	            path.AddEllipse(bounds)
	
	            Return path
	        End Function
	    End Class
	
	#End Region
	End Class

![rating-properties-and-events 001](images/rating-properties-and-events001.png)![rating-properties-and-events 002](images/rating-properties-and-events002.png)

* *RightToLeft* - __RadRating__ supports RightToLeft functionality. It is disabled by default,
            so you should enable it:

#### __[C#]__

{{region RightToLeft}}
	            
	            this.radRating1.RightToLeft = System.Windows.Forms.RightToLeft.Yes;
	            
	{{endregion}}



#### __[VB.NET]__

{{region RightToLeft}}
	
	        Me.RadRating1.RightToLeft = System.Windows.Forms.RightToLeft.Yes
	        ' #End Region
	
	        ' #Region "Direction"
	        Me.RadRating1.Direction = RatingDirection.Reversed
	        ' #End Region
	
	        '#Region "Orientation"
	
	        Me.RadRating1.Orientation = Orientation.Vertical
	        Me.RadRating1.AutoSize = True
	
	        ' #End Region
	
	        ' #Region "Captions"
	        Me.RadRating1.Caption = "Rate the movie"
	        Me.RadRating1.Description = "Description"
	        Me.RadRating1.Subcaption = "SubCaption"
	        ' #End Region
	
	        ' #Region "SelectionPrecise"
	
	        Me.RadRating1.SelectionMode = Telerik.WinControls.UI.RatingSelectionMode.Precise
	
	        '#End Region
	
	        ' #Region "SelectionHalfItem"
	
	        Me.RadRating1.SelectionMode = Telerik.WinControls.UI.RatingSelectionMode.HalfItem
	
	        ' #End Region
	
	        '#Region "SelectionFullItem"
	
	        Me.RadRating1.SelectionMode = Telerik.WinControls.UI.RatingSelectionMode.FullItem
	
	        ' #End Region
	
	        '#Region "Ranges"
	        Me.RadRating1.Minimum = 10
	        Me.RadRating1.Maximum = 40
	        ' #End Region
	
	
	        '#Region "Value"
	
	        Me.RadRating1.Value = 43.4
	        ' #End Region
	
	        '#Region "Background"
	
	        For Each item As RatingStarVisualElement In Me.RadRating1.Items
	            item.Fill.BackColor = Color.LightBlue
	            item.HoverElement.Fill.BackColor = Color.DeepSkyBlue
	            item.ValueElement.Fill.BackColor = Color.DodgerBlue
	            item.SelectedValueElement.Fill.BackColor = Color.Blue
	
	            item.Fill.GradientStyle = Telerik.WinControls.GradientStyles.Solid
	            item.HoverElement.Fill.GradientStyle = Telerik.WinControls.GradientStyles.Solid
	            item.ValueElement.Fill.GradientStyle = Telerik.WinControls.GradientStyles.Solid
	            item.SelectedValueElement.Fill.GradientStyle = GradientStyles.Solid
	        Next
	
	        '#End Region
	
	        '#Region "CustomShape"
	
	        For i As Integer = 0 To 4
	            Dim myShape As New CustomShapeElement()
	            myShape.Fill.BackColor = Color.LightBlue
	            myShape.HoverElement.Fill.BackColor = Color.DeepSkyBlue
	            myShape.ValueElement.Fill.BackColor = Color.DodgerBlue
	            myShape.SelectedValueElement.Fill.BackColor = Color.Blue
	
	            myShape.Fill.GradientStyle = Telerik.WinControls.GradientStyles.Solid
	            myShape.HoverElement.Fill.GradientStyle = Telerik.WinControls.GradientStyles.Solid
	            myShape.ValueElement.Fill.GradientStyle = Telerik.WinControls.GradientStyles.Solid
	            myShape.SelectedValueElement.Fill.GradientStyle = GradientStyles.Solid
	            Me.RadRating1.Items.Add(myShape)
	        Next
	
	        ' #End Region
	    End Sub
	
	#Region "CustomShapeClasses"
	
	    Public Class CustomShapeElement
	        Inherits RatingVisualElement
	        Protected Overrides Function GetShape() As ElementShape
	            Return New CustomShape()
	        End Function
	
	        Protected Overrides ReadOnly Property ThemeEffectiveType() As Type
	            Get
	                Return GetType(RatingVisualElement)
	            End Get
	        End Property
	    End Class
	
	    Public Class CustomShape
	        Inherits ElementShape
	        Public Overrides Function CreatePath(bounds As Rectangle) As GraphicsPath
	            Dim path As New GraphicsPath()
	            path.AddEllipse(bounds)
	
	            Return path
	        End Function
	    End Class
	
	#End Region
	End Class

![rating-properties-and-events 003](images/rating-properties-and-events003.png)

* *Direction* property can be used to control the hover direction. 

#### __[C#]__

{{region Direction}}
	            
	            this.radRating1.Direction = RatingDirection.Reversed;
	        
	{{endregion}}



#### __[VB.NET]__

{{region Direction}}
	        Me.RadRating1.Direction = RatingDirection.Reversed
	        ' #End Region
	
	        '#Region "Orientation"
	
	        Me.RadRating1.Orientation = Orientation.Vertical
	        Me.RadRating1.AutoSize = True
	
	        ' #End Region
	
	        ' #Region "Captions"
	        Me.RadRating1.Caption = "Rate the movie"
	        Me.RadRating1.Description = "Description"
	        Me.RadRating1.Subcaption = "SubCaption"
	        ' #End Region
	
	        ' #Region "SelectionPrecise"
	
	        Me.RadRating1.SelectionMode = Telerik.WinControls.UI.RatingSelectionMode.Precise
	
	        '#End Region
	
	        ' #Region "SelectionHalfItem"
	
	        Me.RadRating1.SelectionMode = Telerik.WinControls.UI.RatingSelectionMode.HalfItem
	
	        ' #End Region
	
	        '#Region "SelectionFullItem"
	
	        Me.RadRating1.SelectionMode = Telerik.WinControls.UI.RatingSelectionMode.FullItem
	
	        ' #End Region
	
	        '#Region "Ranges"
	        Me.RadRating1.Minimum = 10
	        Me.RadRating1.Maximum = 40
	        ' #End Region
	
	
	        '#Region "Value"
	
	        Me.RadRating1.Value = 43.4
	        ' #End Region
	
	        '#Region "Background"
	
	        For Each item As RatingStarVisualElement In Me.RadRating1.Items
	            item.Fill.BackColor = Color.LightBlue
	            item.HoverElement.Fill.BackColor = Color.DeepSkyBlue
	            item.ValueElement.Fill.BackColor = Color.DodgerBlue
	            item.SelectedValueElement.Fill.BackColor = Color.Blue
	
	            item.Fill.GradientStyle = Telerik.WinControls.GradientStyles.Solid
	            item.HoverElement.Fill.GradientStyle = Telerik.WinControls.GradientStyles.Solid
	            item.ValueElement.Fill.GradientStyle = Telerik.WinControls.GradientStyles.Solid
	            item.SelectedValueElement.Fill.GradientStyle = GradientStyles.Solid
	        Next
	
	        '#End Region
	
	        '#Region "CustomShape"
	
	        For i As Integer = 0 To 4
	            Dim myShape As New CustomShapeElement()
	            myShape.Fill.BackColor = Color.LightBlue
	            myShape.HoverElement.Fill.BackColor = Color.DeepSkyBlue
	            myShape.ValueElement.Fill.BackColor = Color.DodgerBlue
	            myShape.SelectedValueElement.Fill.BackColor = Color.Blue
	
	            myShape.Fill.GradientStyle = Telerik.WinControls.GradientStyles.Solid
	            myShape.HoverElement.Fill.GradientStyle = Telerik.WinControls.GradientStyles.Solid
	            myShape.ValueElement.Fill.GradientStyle = Telerik.WinControls.GradientStyles.Solid
	            myShape.SelectedValueElement.Fill.GradientStyle = GradientStyles.Solid
	            Me.RadRating1.Items.Add(myShape)
	        Next
	
	        ' #End Region
	    End Sub
	
	#Region "CustomShapeClasses"
	
	    Public Class CustomShapeElement
	        Inherits RatingVisualElement
	        Protected Overrides Function GetShape() As ElementShape
	            Return New CustomShape()
	        End Function
	
	        Protected Overrides ReadOnly Property ThemeEffectiveType() As Type
	            Get
	                Return GetType(RatingVisualElement)
	            End Get
	        End Property
	    End Class
	
	    Public Class CustomShape
	        Inherits ElementShape
	        Public Overrides Function CreatePath(bounds As Rectangle) As GraphicsPath
	            Dim path As New GraphicsPath()
	            path.AddEllipse(bounds)
	
	            Return path
	        End Function
	    End Class
	
	#End Region
	End Class

![rating-properties-and-events 004](images/rating-properties-and-events004.png)

* *Orientation* - the default __RadRating__ orientation is Horizontal. It is allowed to change it
            to Vertical:

#### __[C#]__

{{region Orientation}}
	            
	            this.radRating1.Orientation = Orientation.Vertical;
	            this.radRating1.AutoSize = true;
	
	{{endregion}}



#### __[VB.NET]__

{{region Orientation}}
	
	        Me.RadRating1.Orientation = Orientation.Vertical
	        Me.RadRating1.AutoSize = True
	
	        ' #End Region
	
	        ' #Region "Captions"
	        Me.RadRating1.Caption = "Rate the movie"
	        Me.RadRating1.Description = "Description"
	        Me.RadRating1.Subcaption = "SubCaption"
	        ' #End Region
	
	        ' #Region "SelectionPrecise"
	
	        Me.RadRating1.SelectionMode = Telerik.WinControls.UI.RatingSelectionMode.Precise
	
	        '#End Region
	
	        ' #Region "SelectionHalfItem"
	
	        Me.RadRating1.SelectionMode = Telerik.WinControls.UI.RatingSelectionMode.HalfItem
	
	        ' #End Region
	
	        '#Region "SelectionFullItem"
	
	        Me.RadRating1.SelectionMode = Telerik.WinControls.UI.RatingSelectionMode.FullItem
	
	        ' #End Region
	
	        '#Region "Ranges"
	        Me.RadRating1.Minimum = 10
	        Me.RadRating1.Maximum = 40
	        ' #End Region
	
	
	        '#Region "Value"
	
	        Me.RadRating1.Value = 43.4
	        ' #End Region
	
	        '#Region "Background"
	
	        For Each item As RatingStarVisualElement In Me.RadRating1.Items
	            item.Fill.BackColor = Color.LightBlue
	            item.HoverElement.Fill.BackColor = Color.DeepSkyBlue
	            item.ValueElement.Fill.BackColor = Color.DodgerBlue
	            item.SelectedValueElement.Fill.BackColor = Color.Blue
	
	            item.Fill.GradientStyle = Telerik.WinControls.GradientStyles.Solid
	            item.HoverElement.Fill.GradientStyle = Telerik.WinControls.GradientStyles.Solid
	            item.ValueElement.Fill.GradientStyle = Telerik.WinControls.GradientStyles.Solid
	            item.SelectedValueElement.Fill.GradientStyle = GradientStyles.Solid
	        Next
	
	        '#End Region
	
	        '#Region "CustomShape"
	
	        For i As Integer = 0 To 4
	            Dim myShape As New CustomShapeElement()
	            myShape.Fill.BackColor = Color.LightBlue
	            myShape.HoverElement.Fill.BackColor = Color.DeepSkyBlue
	            myShape.ValueElement.Fill.BackColor = Color.DodgerBlue
	            myShape.SelectedValueElement.Fill.BackColor = Color.Blue
	
	            myShape.Fill.GradientStyle = Telerik.WinControls.GradientStyles.Solid
	            myShape.HoverElement.Fill.GradientStyle = Telerik.WinControls.GradientStyles.Solid
	            myShape.ValueElement.Fill.GradientStyle = Telerik.WinControls.GradientStyles.Solid
	            myShape.SelectedValueElement.Fill.GradientStyle = GradientStyles.Solid
	            Me.RadRating1.Items.Add(myShape)
	        Next
	
	        ' #End Region
	    End Sub
	
	#Region "CustomShapeClasses"
	
	    Public Class CustomShapeElement
	        Inherits RatingVisualElement
	        Protected Overrides Function GetShape() As ElementShape
	            Return New CustomShape()
	        End Function
	
	        Protected Overrides ReadOnly Property ThemeEffectiveType() As Type
	            Get
	                Return GetType(RatingVisualElement)
	            End Get
	        End Property
	    End Class
	
	    Public Class CustomShape
	        Inherits ElementShape
	        Public Overrides Function CreatePath(bounds As Rectangle) As GraphicsPath
	            Dim path As New GraphicsPath()
	            path.AddEllipse(bounds)
	
	            Return path
	        End Function
	    End Class
	
	#End Region
	End Class

![rating-properties-and-events 005](images/rating-properties-and-events005.png)

* *Caption, Subcaption and Description* – specify texts for the captions of __RadRating__:

#### __[C#]__

{{region Captions}}
	            
	            this.radRating1.Caption = "Rate the movie";
	            this.radRating1.Description = "Description";
	            this.radRating1.Subcaption = "SubCaption";
	            
	{{endregion}}



#### __[VB.NET]__

{{region Captions}}
	        Me.RadRating1.Caption = "Rate the movie"
	        Me.RadRating1.Description = "Description"
	        Me.RadRating1.Subcaption = "SubCaption"
	        ' #End Region
	
	        ' #Region "SelectionPrecise"
	
	        Me.RadRating1.SelectionMode = Telerik.WinControls.UI.RatingSelectionMode.Precise
	
	        '#End Region
	
	        ' #Region "SelectionHalfItem"
	
	        Me.RadRating1.SelectionMode = Telerik.WinControls.UI.RatingSelectionMode.HalfItem
	
	        ' #End Region
	
	        '#Region "SelectionFullItem"
	
	        Me.RadRating1.SelectionMode = Telerik.WinControls.UI.RatingSelectionMode.FullItem
	
	        ' #End Region
	
	        '#Region "Ranges"
	        Me.RadRating1.Minimum = 10
	        Me.RadRating1.Maximum = 40
	        ' #End Region
	
	
	        '#Region "Value"
	
	        Me.RadRating1.Value = 43.4
	        ' #End Region
	
	        '#Region "Background"
	
	        For Each item As RatingStarVisualElement In Me.RadRating1.Items
	            item.Fill.BackColor = Color.LightBlue
	            item.HoverElement.Fill.BackColor = Color.DeepSkyBlue
	            item.ValueElement.Fill.BackColor = Color.DodgerBlue
	            item.SelectedValueElement.Fill.BackColor = Color.Blue
	
	            item.Fill.GradientStyle = Telerik.WinControls.GradientStyles.Solid
	            item.HoverElement.Fill.GradientStyle = Telerik.WinControls.GradientStyles.Solid
	            item.ValueElement.Fill.GradientStyle = Telerik.WinControls.GradientStyles.Solid
	            item.SelectedValueElement.Fill.GradientStyle = GradientStyles.Solid
	        Next
	
	        '#End Region
	
	        '#Region "CustomShape"
	
	        For i As Integer = 0 To 4
	            Dim myShape As New CustomShapeElement()
	            myShape.Fill.BackColor = Color.LightBlue
	            myShape.HoverElement.Fill.BackColor = Color.DeepSkyBlue
	            myShape.ValueElement.Fill.BackColor = Color.DodgerBlue
	            myShape.SelectedValueElement.Fill.BackColor = Color.Blue
	
	            myShape.Fill.GradientStyle = Telerik.WinControls.GradientStyles.Solid
	            myShape.HoverElement.Fill.GradientStyle = Telerik.WinControls.GradientStyles.Solid
	            myShape.ValueElement.Fill.GradientStyle = Telerik.WinControls.GradientStyles.Solid
	            myShape.SelectedValueElement.Fill.GradientStyle = GradientStyles.Solid
	            Me.RadRating1.Items.Add(myShape)
	        Next
	
	        ' #End Region
	    End Sub
	
	#Region "CustomShapeClasses"
	
	    Public Class CustomShapeElement
	        Inherits RatingVisualElement
	        Protected Overrides Function GetShape() As ElementShape
	            Return New CustomShape()
	        End Function
	
	        Protected Overrides ReadOnly Property ThemeEffectiveType() As Type
	            Get
	                Return GetType(RatingVisualElement)
	            End Get
	        End Property
	    End Class
	
	    Public Class CustomShape
	        Inherits ElementShape
	        Public Overrides Function CreatePath(bounds As Rectangle) As GraphicsPath
	            Dim path As New GraphicsPath()
	            path.AddEllipse(bounds)
	
	            Return path
	        End Function
	    End Class
	
	#End Region
	End Class

![rating-properties-and-events 002](images/rating-properties-and-events002.png)

* *SelectionMode* - determines how precisely the user will select the value:

#### __[C#]__

{{region SelectionPrecise}}
	            
	            this.radRating1.SelectionMode = Telerik.WinControls.UI.RatingSelectionMode.Precise;
	            
	{{endregion}}



#### __[VB.NET]__

{{region SelectionPrecise}}
	
	        Me.RadRating1.SelectionMode = Telerik.WinControls.UI.RatingSelectionMode.Precise
	
	        '#End Region
	
	        ' #Region "SelectionHalfItem"
	
	        Me.RadRating1.SelectionMode = Telerik.WinControls.UI.RatingSelectionMode.HalfItem
	
	        ' #End Region
	
	        '#Region "SelectionFullItem"
	
	        Me.RadRating1.SelectionMode = Telerik.WinControls.UI.RatingSelectionMode.FullItem
	
	        ' #End Region
	
	        '#Region "Ranges"
	        Me.RadRating1.Minimum = 10
	        Me.RadRating1.Maximum = 40
	        ' #End Region
	
	
	        '#Region "Value"
	
	        Me.RadRating1.Value = 43.4
	        ' #End Region
	
	        '#Region "Background"
	
	        For Each item As RatingStarVisualElement In Me.RadRating1.Items
	            item.Fill.BackColor = Color.LightBlue
	            item.HoverElement.Fill.BackColor = Color.DeepSkyBlue
	            item.ValueElement.Fill.BackColor = Color.DodgerBlue
	            item.SelectedValueElement.Fill.BackColor = Color.Blue
	
	            item.Fill.GradientStyle = Telerik.WinControls.GradientStyles.Solid
	            item.HoverElement.Fill.GradientStyle = Telerik.WinControls.GradientStyles.Solid
	            item.ValueElement.Fill.GradientStyle = Telerik.WinControls.GradientStyles.Solid
	            item.SelectedValueElement.Fill.GradientStyle = GradientStyles.Solid
	        Next
	
	        '#End Region
	
	        '#Region "CustomShape"
	
	        For i As Integer = 0 To 4
	            Dim myShape As New CustomShapeElement()
	            myShape.Fill.BackColor = Color.LightBlue
	            myShape.HoverElement.Fill.BackColor = Color.DeepSkyBlue
	            myShape.ValueElement.Fill.BackColor = Color.DodgerBlue
	            myShape.SelectedValueElement.Fill.BackColor = Color.Blue
	
	            myShape.Fill.GradientStyle = Telerik.WinControls.GradientStyles.Solid
	            myShape.HoverElement.Fill.GradientStyle = Telerik.WinControls.GradientStyles.Solid
	            myShape.ValueElement.Fill.GradientStyle = Telerik.WinControls.GradientStyles.Solid
	            myShape.SelectedValueElement.Fill.GradientStyle = GradientStyles.Solid
	            Me.RadRating1.Items.Add(myShape)
	        Next
	
	        ' #End Region
	    End Sub
	
	#Region "CustomShapeClasses"
	
	    Public Class CustomShapeElement
	        Inherits RatingVisualElement
	        Protected Overrides Function GetShape() As ElementShape
	            Return New CustomShape()
	        End Function
	
	        Protected Overrides ReadOnly Property ThemeEffectiveType() As Type
	            Get
	                Return GetType(RatingVisualElement)
	            End Get
	        End Property
	    End Class
	
	    Public Class CustomShape
	        Inherits ElementShape
	        Public Overrides Function CreatePath(bounds As Rectangle) As GraphicsPath
	            Dim path As New GraphicsPath()
	            path.AddEllipse(bounds)
	
	            Return path
	        End Function
	    End Class
	
	#End Region
	End Class

![rating-properties-and-events 006](images/rating-properties-and-events006.png)

#### __[C#]__

{{region SelectionHalfItem}}
	
	            this.radRating1.SelectionMode = Telerik.WinControls.UI.RatingSelectionMode.HalfItem;
	
	{{endregion}}



#### __[VB.NET]__

{{region SelectionHalfItem}}
	
	        Me.RadRating1.SelectionMode = Telerik.WinControls.UI.RatingSelectionMode.HalfItem
	
	        ' #End Region
	
	        '#Region "SelectionFullItem"
	
	        Me.RadRating1.SelectionMode = Telerik.WinControls.UI.RatingSelectionMode.FullItem
	
	        ' #End Region
	
	        '#Region "Ranges"
	        Me.RadRating1.Minimum = 10
	        Me.RadRating1.Maximum = 40
	        ' #End Region
	
	
	        '#Region "Value"
	
	        Me.RadRating1.Value = 43.4
	        ' #End Region
	
	        '#Region "Background"
	
	        For Each item As RatingStarVisualElement In Me.RadRating1.Items
	            item.Fill.BackColor = Color.LightBlue
	            item.HoverElement.Fill.BackColor = Color.DeepSkyBlue
	            item.ValueElement.Fill.BackColor = Color.DodgerBlue
	            item.SelectedValueElement.Fill.BackColor = Color.Blue
	
	            item.Fill.GradientStyle = Telerik.WinControls.GradientStyles.Solid
	            item.HoverElement.Fill.GradientStyle = Telerik.WinControls.GradientStyles.Solid
	            item.ValueElement.Fill.GradientStyle = Telerik.WinControls.GradientStyles.Solid
	            item.SelectedValueElement.Fill.GradientStyle = GradientStyles.Solid
	        Next
	
	        '#End Region
	
	        '#Region "CustomShape"
	
	        For i As Integer = 0 To 4
	            Dim myShape As New CustomShapeElement()
	            myShape.Fill.BackColor = Color.LightBlue
	            myShape.HoverElement.Fill.BackColor = Color.DeepSkyBlue
	            myShape.ValueElement.Fill.BackColor = Color.DodgerBlue
	            myShape.SelectedValueElement.Fill.BackColor = Color.Blue
	
	            myShape.Fill.GradientStyle = Telerik.WinControls.GradientStyles.Solid
	            myShape.HoverElement.Fill.GradientStyle = Telerik.WinControls.GradientStyles.Solid
	            myShape.ValueElement.Fill.GradientStyle = Telerik.WinControls.GradientStyles.Solid
	            myShape.SelectedValueElement.Fill.GradientStyle = GradientStyles.Solid
	            Me.RadRating1.Items.Add(myShape)
	        Next
	
	        ' #End Region
	    End Sub
	
	#Region "CustomShapeClasses"
	
	    Public Class CustomShapeElement
	        Inherits RatingVisualElement
	        Protected Overrides Function GetShape() As ElementShape
	            Return New CustomShape()
	        End Function
	
	        Protected Overrides ReadOnly Property ThemeEffectiveType() As Type
	            Get
	                Return GetType(RatingVisualElement)
	            End Get
	        End Property
	    End Class
	
	    Public Class CustomShape
	        Inherits ElementShape
	        Public Overrides Function CreatePath(bounds As Rectangle) As GraphicsPath
	            Dim path As New GraphicsPath()
	            path.AddEllipse(bounds)
	
	            Return path
	        End Function
	    End Class
	
	#End Region
	End Class

![rating-properties-and-events 007](images/rating-properties-and-events007.png)

#### __[C#]__

{{region SelectionFullItem}}
	
	            this.radRating1.SelectionMode = Telerik.WinControls.UI.RatingSelectionMode.FullItem;
	
	{{endregion}}



#### __[VB.NET]__

{{region SelectionFullItem}}
	
	        Me.RadRating1.SelectionMode = Telerik.WinControls.UI.RatingSelectionMode.FullItem
	
	        ' #End Region
	
	        '#Region "Ranges"
	        Me.RadRating1.Minimum = 10
	        Me.RadRating1.Maximum = 40
	        ' #End Region
	
	
	        '#Region "Value"
	
	        Me.RadRating1.Value = 43.4
	        ' #End Region
	
	        '#Region "Background"
	
	        For Each item As RatingStarVisualElement In Me.RadRating1.Items
	            item.Fill.BackColor = Color.LightBlue
	            item.HoverElement.Fill.BackColor = Color.DeepSkyBlue
	            item.ValueElement.Fill.BackColor = Color.DodgerBlue
	            item.SelectedValueElement.Fill.BackColor = Color.Blue
	
	            item.Fill.GradientStyle = Telerik.WinControls.GradientStyles.Solid
	            item.HoverElement.Fill.GradientStyle = Telerik.WinControls.GradientStyles.Solid
	            item.ValueElement.Fill.GradientStyle = Telerik.WinControls.GradientStyles.Solid
	            item.SelectedValueElement.Fill.GradientStyle = GradientStyles.Solid
	        Next
	
	        '#End Region
	
	        '#Region "CustomShape"
	
	        For i As Integer = 0 To 4
	            Dim myShape As New CustomShapeElement()
	            myShape.Fill.BackColor = Color.LightBlue
	            myShape.HoverElement.Fill.BackColor = Color.DeepSkyBlue
	            myShape.ValueElement.Fill.BackColor = Color.DodgerBlue
	            myShape.SelectedValueElement.Fill.BackColor = Color.Blue
	
	            myShape.Fill.GradientStyle = Telerik.WinControls.GradientStyles.Solid
	            myShape.HoverElement.Fill.GradientStyle = Telerik.WinControls.GradientStyles.Solid
	            myShape.ValueElement.Fill.GradientStyle = Telerik.WinControls.GradientStyles.Solid
	            myShape.SelectedValueElement.Fill.GradientStyle = GradientStyles.Solid
	            Me.RadRating1.Items.Add(myShape)
	        Next
	
	        ' #End Region
	    End Sub
	
	#Region "CustomShapeClasses"
	
	    Public Class CustomShapeElement
	        Inherits RatingVisualElement
	        Protected Overrides Function GetShape() As ElementShape
	            Return New CustomShape()
	        End Function
	
	        Protected Overrides ReadOnly Property ThemeEffectiveType() As Type
	            Get
	                Return GetType(RatingVisualElement)
	            End Get
	        End Property
	    End Class
	
	    Public Class CustomShape
	        Inherits ElementShape
	        Public Overrides Function CreatePath(bounds As Rectangle) As GraphicsPath
	            Dim path As New GraphicsPath()
	            path.AddEllipse(bounds)
	
	            Return path
	        End Function
	    End Class
	
	#End Region
	End Class

![rating-properties-and-events 008](images/rating-properties-and-events008.png)

* *Minimum* and *Maximum* – specifies the range of __RadRating__:

#### __[C#]__

{{region Ranges}}
	            
	            this.radRating1.Minimum = 10;
	            this.radRating1.Maximum = 40;
	            
	{{endregion}}



#### __[VB.NET]__

{{region Ranges}}
	        Me.RadRating1.Minimum = 10
	        Me.RadRating1.Maximum = 40
	        ' #End Region
	
	
	        '#Region "Value"
	
	        Me.RadRating1.Value = 43.4
	        ' #End Region
	
	        '#Region "Background"
	
	        For Each item As RatingStarVisualElement In Me.RadRating1.Items
	            item.Fill.BackColor = Color.LightBlue
	            item.HoverElement.Fill.BackColor = Color.DeepSkyBlue
	            item.ValueElement.Fill.BackColor = Color.DodgerBlue
	            item.SelectedValueElement.Fill.BackColor = Color.Blue
	
	            item.Fill.GradientStyle = Telerik.WinControls.GradientStyles.Solid
	            item.HoverElement.Fill.GradientStyle = Telerik.WinControls.GradientStyles.Solid
	            item.ValueElement.Fill.GradientStyle = Telerik.WinControls.GradientStyles.Solid
	            item.SelectedValueElement.Fill.GradientStyle = GradientStyles.Solid
	        Next
	
	        '#End Region
	
	        '#Region "CustomShape"
	
	        For i As Integer = 0 To 4
	            Dim myShape As New CustomShapeElement()
	            myShape.Fill.BackColor = Color.LightBlue
	            myShape.HoverElement.Fill.BackColor = Color.DeepSkyBlue
	            myShape.ValueElement.Fill.BackColor = Color.DodgerBlue
	            myShape.SelectedValueElement.Fill.BackColor = Color.Blue
	
	            myShape.Fill.GradientStyle = Telerik.WinControls.GradientStyles.Solid
	            myShape.HoverElement.Fill.GradientStyle = Telerik.WinControls.GradientStyles.Solid
	            myShape.ValueElement.Fill.GradientStyle = Telerik.WinControls.GradientStyles.Solid
	            myShape.SelectedValueElement.Fill.GradientStyle = GradientStyles.Solid
	            Me.RadRating1.Items.Add(myShape)
	        Next
	
	        ' #End Region
	    End Sub
	
	#Region "CustomShapeClasses"
	
	    Public Class CustomShapeElement
	        Inherits RatingVisualElement
	        Protected Overrides Function GetShape() As ElementShape
	            Return New CustomShape()
	        End Function
	
	        Protected Overrides ReadOnly Property ThemeEffectiveType() As Type
	            Get
	                Return GetType(RatingVisualElement)
	            End Get
	        End Property
	    End Class
	
	    Public Class CustomShape
	        Inherits ElementShape
	        Public Overrides Function CreatePath(bounds As Rectangle) As GraphicsPath
	            Dim path As New GraphicsPath()
	            path.AddEllipse(bounds)
	
	            Return path
	        End Function
	    End Class
	
	#End Region
	End Class

![rating-properties-and-events 009](images/rating-properties-and-events009.png)![rating-properties-and-events 010](images/rating-properties-and-events010.png)

* *Value* - sets or gets the value of the __RadRating__:

#### __[C#]__

{{region Value}}
	
	            this.radRating1.Value = 43.4;
	
	{{endregion}}



#### __[VB.NET]__

{{region Value}}
	
	        Me.RadRating1.Value = 43.4
	        ' #End Region
	
	        '#Region "Background"
	
	        For Each item As RatingStarVisualElement In Me.RadRating1.Items
	            item.Fill.BackColor = Color.LightBlue
	            item.HoverElement.Fill.BackColor = Color.DeepSkyBlue
	            item.ValueElement.Fill.BackColor = Color.DodgerBlue
	            item.SelectedValueElement.Fill.BackColor = Color.Blue
	
	            item.Fill.GradientStyle = Telerik.WinControls.GradientStyles.Solid
	            item.HoverElement.Fill.GradientStyle = Telerik.WinControls.GradientStyles.Solid
	            item.ValueElement.Fill.GradientStyle = Telerik.WinControls.GradientStyles.Solid
	            item.SelectedValueElement.Fill.GradientStyle = GradientStyles.Solid
	        Next
	
	        '#End Region
	
	        '#Region "CustomShape"
	
	        For i As Integer = 0 To 4
	            Dim myShape As New CustomShapeElement()
	            myShape.Fill.BackColor = Color.LightBlue
	            myShape.HoverElement.Fill.BackColor = Color.DeepSkyBlue
	            myShape.ValueElement.Fill.BackColor = Color.DodgerBlue
	            myShape.SelectedValueElement.Fill.BackColor = Color.Blue
	
	            myShape.Fill.GradientStyle = Telerik.WinControls.GradientStyles.Solid
	            myShape.HoverElement.Fill.GradientStyle = Telerik.WinControls.GradientStyles.Solid
	            myShape.ValueElement.Fill.GradientStyle = Telerik.WinControls.GradientStyles.Solid
	            myShape.SelectedValueElement.Fill.GradientStyle = GradientStyles.Solid
	            Me.RadRating1.Items.Add(myShape)
	        Next
	
	        ' #End Region
	    End Sub
	
	#Region "CustomShapeClasses"
	
	    Public Class CustomShapeElement
	        Inherits RatingVisualElement
	        Protected Overrides Function GetShape() As ElementShape
	            Return New CustomShape()
	        End Function
	
	        Protected Overrides ReadOnly Property ThemeEffectiveType() As Type
	            Get
	                Return GetType(RatingVisualElement)
	            End Get
	        End Property
	    End Class
	
	    Public Class CustomShape
	        Inherits ElementShape
	        Public Overrides Function CreatePath(bounds As Rectangle) As GraphicsPath
	            Dim path As New GraphicsPath()
	            path.AddEllipse(bounds)
	
	            Return path
	        End Function
	    End Class
	
	#End Region
	End Class



## Events

* *ValueChanging* – occurs when the value is being changed. This event can be cancelled.

* *ValueChanged* – occurs when the value has been changed.
