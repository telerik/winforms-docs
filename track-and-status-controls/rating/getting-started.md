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
	
	{{endregion}}



1. Press F5 to run the application.![rating-getting-started 002](images/rating-getting-started002.png)
