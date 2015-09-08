---
title: Properties and events
page_title: Properties and events | UI for WinForms Documentation
description: Properties and events
slug: winforms/track-and-status-controls/rating/properties-and-events
tags: properties,and,events
published: True
position: 4
---

# Properties and events

## Properties

* *ShowItemToolTips* - by default __RadRating__ shows tooltips when hovering the items. The user can disable this functionality by setting *ShowItemToolTips* property to False:

{{source=..\SamplesCS\TrackAndStatus\Rating\RatingGettingStarted.cs region=ShowItemToolTips}} 
{{source=..\SamplesVB\TrackAndStatus\Rating\RatingGettingStarted.vb region=ShowItemToolTips}} 

````C#

            this.radRating1.ShowItemToolTips = false;
````
````VB.NET
        Me.RadRating1.ShowItemToolTips = False
        '
````

{{endregion}} 


![rating-properties-and-events 001](images/rating-properties-and-events001.png)![rating-properties-and-events 002](images/rating-properties-and-events002.png)

* *RightToLeft* - __RadRating__ supports RightToLeft functionality. It is disabled by default, so you should enable it:

{{source=..\SamplesCS\TrackAndStatus\Rating\RatingGettingStarted.cs region=RightToLeft}} 
{{source=..\SamplesVB\TrackAndStatus\Rating\RatingGettingStarted.vb region=RightToLeft}} 

````C#
            
            this.radRating1.RightToLeft = System.Windows.Forms.RightToLeft.Yes;
````
````VB.NET

        Me.RadRating1.RightToLeft = System.Windows.Forms.RightToLeft.Yes
        '
````

{{endregion}} 


![rating-properties-and-events 003](images/rating-properties-and-events003.png)

* *Direction* property can be used to control the hover direction.

{{source=..\SamplesCS\TrackAndStatus\Rating\RatingGettingStarted.cs region=Direction}} 
{{source=..\SamplesVB\TrackAndStatus\Rating\RatingGettingStarted.vb region=Direction}} 

````C#
            
            this.radRating1.Direction = RatingDirection.Reversed;
````
````VB.NET
        Me.RadRating1.Direction = RatingDirection.Reversed
        '
````

{{endregion}} 


![rating-properties-and-events 004](images/rating-properties-and-events004.png)

* *Orientation* - the default __RadRating__ orientation is Horizontal. It is allowed to change it to Vertical:

{{source=..\SamplesCS\TrackAndStatus\Rating\RatingGettingStarted.cs region=Orientation}} 
{{source=..\SamplesVB\TrackAndStatus\Rating\RatingGettingStarted.vb region=Orientation}} 

````C#
            
            this.radRating1.Orientation = Orientation.Vertical;
            this.radRating1.AutoSize = true;
````
````VB.NET

        Me.RadRating1.Orientation = Orientation.Vertical
        Me.RadRating1.AutoSize = True

        '
````

{{endregion}} 


![rating-properties-and-events 005](images/rating-properties-and-events005.png)

* *Caption, Subcaption and Description* – specify texts for the captions of __RadRating__:

{{source=..\SamplesCS\TrackAndStatus\Rating\RatingGettingStarted.cs region=Captions}} 
{{source=..\SamplesVB\TrackAndStatus\Rating\RatingGettingStarted.vb region=Captions}} 

````C#
            
            this.radRating1.Caption = "Rate the movie";
            this.radRating1.Description = "Description";
            this.radRating1.Subcaption = "SubCaption";
````
````VB.NET
        Me.RadRating1.Caption = "Rate the movie"
        Me.RadRating1.Description = "Description"
        Me.RadRating1.Subcaption = "SubCaption"
        '
````

{{endregion}} 


![rating-properties-and-events 002](images/rating-properties-and-events002.png)

* *SelectionMode* - determines how precisely the user will select the value:

{{source=..\SamplesCS\TrackAndStatus\Rating\RatingGettingStarted.cs region=SelectionPrecise}} 
{{source=..\SamplesVB\TrackAndStatus\Rating\RatingGettingStarted.vb region=SelectionPrecise}} 

````C#
            
            this.radRating1.SelectionMode = Telerik.WinControls.UI.RatingSelectionMode.Precise;
````
````VB.NET

        Me.RadRating1.SelectionMode = Telerik.WinControls.UI.RatingSelectionMode.Precise

        '
````

{{endregion}} 


![rating-properties-and-events 006](images/rating-properties-and-events006.png)

{{source=..\SamplesCS\TrackAndStatus\Rating\RatingGettingStarted.cs region=SelectionHalfItem}} 
{{source=..\SamplesVB\TrackAndStatus\Rating\RatingGettingStarted.vb region=SelectionHalfItem}} 

````C#

            this.radRating1.SelectionMode = Telerik.WinControls.UI.RatingSelectionMode.HalfItem;
````
````VB.NET

        Me.RadRating1.SelectionMode = Telerik.WinControls.UI.RatingSelectionMode.HalfItem

        '
````

{{endregion}} 


![rating-properties-and-events 007](images/rating-properties-and-events007.png)

{{source=..\SamplesCS\TrackAndStatus\Rating\RatingGettingStarted.cs region=SelectionFullItem}} 
{{source=..\SamplesVB\TrackAndStatus\Rating\RatingGettingStarted.vb region=SelectionFullItem}} 

````C#

            this.radRating1.SelectionMode = Telerik.WinControls.UI.RatingSelectionMode.FullItem;
````
````VB.NET

        Me.RadRating1.SelectionMode = Telerik.WinControls.UI.RatingSelectionMode.FullItem

        '
````

{{endregion}} 


![rating-properties-and-events 008](images/rating-properties-and-events008.png)

* *Minimum* and *Maximum* – specifies the range of __RadRating__:#_[C#]_

{{source=..\SamplesCS\TrackAndStatus\Rating\RatingGettingStarted.cs region=Ranges}} 
{{source=..\SamplesVB\TrackAndStatus\Rating\RatingGettingStarted.vb region=Ranges}} 

````C#
            
            this.radRating1.Minimum = 10;
            this.radRating1.Maximum = 40;
````
````VB.NET
        Me.RadRating1.Minimum = 10
        Me.RadRating1.Maximum = 40
        '
````

{{endregion}} 

![rating-properties-and-events 009](images/rating-properties-and-events009.png)![rating-properties-and-events 010](images/rating-properties-and-events010.png)

* *Value* - sets or gets the value of the __RadRating__:

{{source=..\SamplesCS\TrackAndStatus\Rating\RatingGettingStarted.cs region=Value}} 
{{source=..\SamplesVB\TrackAndStatus\Rating\RatingGettingStarted.vb region=Value}} 

````C#

            this.radRating1.Value = 43.4;
````
````VB.NET

        Me.RadRating1.Value = 43.4
        '
````

{{endregion}} 

## Events

* *ValueChanging* – occurs when the value is being changed. This event can be cancelled.

* *ValueChanged* – occurs when the value has been changed.
