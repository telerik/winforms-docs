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

{{source=..\SamplesCS\TrackAndStatus\Rating\RatingGettingStarted.cs region=ShowItemToolTips}}
	
	            this.radRating1.ShowItemToolTips = false;
	            
	{{endregion}}



#### __[VB.NET]__

{{source=..\SamplesVB\TrackAndStatus\Rating\RatingGettingStarted.vb region=ShowItemToolTips}}
	        Me.RadRating1.ShowItemToolTips = False
	{{endregion}}

![rating-properties-and-events 001](images/rating-properties-and-events001.png)![rating-properties-and-events 002](images/rating-properties-and-events002.png)

* *RightToLeft* - __RadRating__ supports RightToLeft functionality. It is disabled by default,
            so you should enable it:

#### __[C#]__

{{source=..\SamplesCS\TrackAndStatus\Rating\RatingGettingStarted.cs region=RightToLeft}}
	            
	            this.radRating1.RightToLeft = System.Windows.Forms.RightToLeft.Yes;
	            
	{{endregion}}



#### __[VB.NET]__

{{source=..\SamplesVB\TrackAndStatus\Rating\RatingGettingStarted.vb region=RightToLeft}}
	
	        Me.RadRating1.RightToLeft = System.Windows.Forms.RightToLeft.Yes
	{{endregion}}

![rating-properties-and-events 003](images/rating-properties-and-events003.png)

* *Direction* property can be used to control the hover direction. 

#### __[C#]__

{{source=..\SamplesCS\TrackAndStatus\Rating\RatingGettingStarted.cs region=Direction}}
	            
	            this.radRating1.Direction = RatingDirection.Reversed;
	        
	{{endregion}}



#### __[VB.NET]__

{{source=..\SamplesVB\TrackAndStatus\Rating\RatingGettingStarted.vb region=Direction}}
	        Me.RadRating1.Direction = RatingDirection.Reversed
	{{endregion}}

![rating-properties-and-events 004](images/rating-properties-and-events004.png)

* *Orientation* - the default __RadRating__ orientation is Horizontal. It is allowed to change it
            to Vertical:

#### __[C#]__

{{source=..\SamplesCS\TrackAndStatus\Rating\RatingGettingStarted.cs region=Orientation}}
	            
	            this.radRating1.Orientation = Orientation.Vertical;
	            this.radRating1.AutoSize = true;
	
	{{endregion}}



#### __[VB.NET]__

{{source=..\SamplesVB\TrackAndStatus\Rating\RatingGettingStarted.vb region=Orientation}}
	
	        Me.RadRating1.Orientation = Orientation.Vertical
	        Me.RadRating1.AutoSize = True
	
	{{endregion}}

![rating-properties-and-events 005](images/rating-properties-and-events005.png)

* *Caption, Subcaption and Description* – specify texts for the captions of __RadRating__:

#### __[C#]__

{{source=..\SamplesCS\TrackAndStatus\Rating\RatingGettingStarted.cs region=Captions}}
	            
	            this.radRating1.Caption = "Rate the movie";
	            this.radRating1.Description = "Description";
	            this.radRating1.Subcaption = "SubCaption";
	            
	{{endregion}}



#### __[VB.NET]__

{{source=..\SamplesVB\TrackAndStatus\Rating\RatingGettingStarted.vb region=Captions}}
	        Me.RadRating1.Caption = "Rate the movie"
	        Me.RadRating1.Description = "Description"
	        Me.RadRating1.Subcaption = "SubCaption"
	{{endregion}}

![rating-properties-and-events 002](images/rating-properties-and-events002.png)

* *SelectionMode* - determines how precisely the user will select the value:

#### __[C#]__

{{source=..\SamplesCS\TrackAndStatus\Rating\RatingGettingStarted.cs region=SelectionPrecise}}
	            
	            this.radRating1.SelectionMode = Telerik.WinControls.UI.RatingSelectionMode.Precise;
	            
	{{endregion}}



#### __[VB.NET]__

{{source=..\SamplesVB\TrackAndStatus\Rating\RatingGettingStarted.vb region=SelectionPrecise}}
	
	        Me.RadRating1.SelectionMode = Telerik.WinControls.UI.RatingSelectionMode.Precise
	
	{{endregion}}

![rating-properties-and-events 006](images/rating-properties-and-events006.png)

#### __[C#]__

{{source=..\SamplesCS\TrackAndStatus\Rating\RatingGettingStarted.cs region=SelectionHalfItem}}
	
	            this.radRating1.SelectionMode = Telerik.WinControls.UI.RatingSelectionMode.HalfItem;
	
	{{endregion}}



#### __[VB.NET]__

{{source=..\SamplesVB\TrackAndStatus\Rating\RatingGettingStarted.vb region=SelectionHalfItem}}
	
	        Me.RadRating1.SelectionMode = Telerik.WinControls.UI.RatingSelectionMode.HalfItem
	
	{{endregion}}

![rating-properties-and-events 007](images/rating-properties-and-events007.png)

#### __[C#]__

{{source=..\SamplesCS\TrackAndStatus\Rating\RatingGettingStarted.cs region=SelectionFullItem}}
	
	            this.radRating1.SelectionMode = Telerik.WinControls.UI.RatingSelectionMode.FullItem;
	
	{{endregion}}



#### __[VB.NET]__

{{source=..\SamplesVB\TrackAndStatus\Rating\RatingGettingStarted.vb region=SelectionFullItem}}
	
	        Me.RadRating1.SelectionMode = Telerik.WinControls.UI.RatingSelectionMode.FullItem
	
	{{endregion}}

![rating-properties-and-events 008](images/rating-properties-and-events008.png)

* *Minimum* and *Maximum* – specifies the range of __RadRating__:

#### __[C#]__

{{source=..\SamplesCS\TrackAndStatus\Rating\RatingGettingStarted.cs region=Ranges}}
	            
	            this.radRating1.Minimum = 10;
	            this.radRating1.Maximum = 40;
	            
	{{endregion}}



#### __[VB.NET]__

{{source=..\SamplesVB\TrackAndStatus\Rating\RatingGettingStarted.vb region=Ranges}}
	        Me.RadRating1.Minimum = 10
	        Me.RadRating1.Maximum = 40
	{{endregion}}

![rating-properties-and-events 009](images/rating-properties-and-events009.png)![rating-properties-and-events 010](images/rating-properties-and-events010.png)

* *Value* - sets or gets the value of the __RadRating__:

#### __[C#]__

{{source=..\SamplesCS\TrackAndStatus\Rating\RatingGettingStarted.cs region=Value}}
	
	            this.radRating1.Value = 43.4;
	
	{{endregion}}



#### __[VB.NET]__

{{source=..\SamplesVB\TrackAndStatus\Rating\RatingGettingStarted.vb region=Value}}
	
	        Me.RadRating1.Value = 43.4
	{{endregion}}



## Events

* *ValueChanging* – occurs when the value is being changed. This event can be cancelled.

* *ValueChanged* – occurs when the value has been changed.
