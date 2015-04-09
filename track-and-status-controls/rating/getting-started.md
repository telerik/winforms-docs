---
title: Getting Started
page_title: Getting Started
description: Getting Started
slug: track-and-status-controls-rating-getting-started
tags: getting,started
published: True
position: 1
---

# Getting Started



## 

Below are the basic steps needed to get started with __RadRating__ control in Visual Studio:

1. Drag __RadRating__ from the Visual Studio Toolbox to the form.![rating-getting-started 001](images/rating-getting-started001.png)

1. Set the *Caption* to “The best movie ever”.

1. Set the *SelctionMode* to “HalfItem”.

1. In the code behind subscribe to the *ValueChanged* event, where you can calculate and display the average rating:

#### __[C#]__

{{source=..\SamplesCS\TrackAndStatus\Rating\RatingGettingStarted.cs region=GettingStarted}}
	        
	        double averageRating = 0;
	        int numberOfChanges = 0;
	        
	        public RatingGettingStarted()
	        {
	            InitializeComponent();
	            
	            this.radRating1.Caption = "The best movie ever";
	            this.radRating1.Description = "Your rating:";
	            this.radRating1.SelectionMode = Telerik.WinControls.UI.RatingSelectionMode.HalfItem;
	            this.radRating1.ValueChanged += radRating1_ValueChanged;
	        }
	        
	        private void radRating1_ValueChanged(object sender, EventArgs e)
	        {
	            Telerik.WinControls.UI.RadRating rating = sender as Telerik.WinControls.UI.RadRating;
	            if (rating != null)
	            {
	                averageRating += (double)rating.Value;
	                numberOfChanges++;
	                double result = averageRating / numberOfChanges;
	                rating.Description = string.Format("Your rating: {0:F2}/{1}", result, rating.Maximum);
	            }
	        }
	        
	{{endregion}}



#### __[VB.NET]__

{{source=..\SamplesVB\TrackAndStatus\Rating\RatingGettingStarted.vb region=GettingStarted}}
	
	    Private averageRating As Double = 0
	    Private numberOfChanges As Integer = 0
	
	    Public Sub New()
	        InitializeComponent()
	
	        Me.RadRating1.Caption = "The best movie ever"
	        Me.RadRating1.Description = "Your rating:"
	        Me.RadRating1.SelectionMode = Telerik.WinControls.UI.RatingSelectionMode.HalfItem
	        AddHandler Me.RadRating1.ValueChanged, AddressOf radRating1_ValueChanged
	    End Sub
	
	    Private Sub radRating1_ValueChanged(sender As Object, e As EventArgs)
	        Dim rating As Telerik.WinControls.UI.RadRating = TryCast(sender, Telerik.WinControls.UI.RadRating)
	        If rating IsNot Nothing Then
	            averageRating += CDbl(rating.Value)
	            numberOfChanges += 1
	            Dim result As Double = averageRating / numberOfChanges
	            rating.Description = String.Format("Your rating: {0:F2}/{1}", result, rating.Maximum)
	        End If
	    End Sub
	
	#End Region
	
	    Private Sub RatingGettingStarted_Load(sender As Object, e As EventArgs) Handles MyBase.Load
	        ' #Region "ShowItemToolTips"
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



1. Press F5 to run the application.![rating-getting-started 002](images/rating-getting-started002.png)
