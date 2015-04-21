---
title: Programming RadTrackBar
page_title: Programming RadTrackBar
description: Programming RadTrackBar
slug: track-and-status-controls-trackbar-programming-radtrackbar
tags: programming,radtrackbar
published: True
position: 2
---

# Programming RadTrackBar



## Properties

Here are the most important RadTrackBar properties that you can use to change its appearance and behavior:
        

* The __Minimum__ and __Maximum__ properties specify the lower end and upper end of the range which thumbs can scroll over.
            

#### __[C#]__

{{source=..\SamplesCS\TrackAndStatus\TrackBar\TrackBarPropertiesAndEvents.cs region=minMax}}
	            this.radTrackBar1.Minimum = 10;
	            this.radTrackBar1.Maximum = 120;
	{{endregion}}



#### __[VB.NET]__

{{source=..\SamplesVB\TrackAndStatus\TrackBar\TrackBarPropertiesAndEvents.vb region=minMax}}
	        Me.RadTrackBar1.Minimum = 10
	        Me.RadTrackBar1.Maximum = 120
	{{endregion}}



* The __Value__ property sets or gets the value of the thumb in *SingleThumb* mode of RadTrackBar
            

#### __[C#]__

{{source=..\SamplesCS\TrackAndStatus\TrackBar\TrackBarPropertiesAndEvents.cs region=Value}}
	            this.radTrackBar1.Value = 5;
	{{endregion}}



#### __[VB.NET]__

{{source=..\SamplesVB\TrackAndStatus\TrackBar\TrackBarPropertiesAndEvents.vb region=Value}}
	        Me.RadTrackBar1.Value = 5
	{{endregion}}



* The __TickStyle__ property controls whether the tick marks are drawn on one or both sides of the control.
              The default value is *Both*.
            

* Setting __TickStyle__ to *None* will disable the ticks.
                

#### __[C#]__

{{source=..\SamplesCS\TrackAndStatus\TrackBar\TrackBarPropertiesAndEvents.cs region=tickStyleNone}}
	            this.radTrackBar1.TickStyle = Telerik.WinControls.Enumerations.TickStyles.None;
	{{endregion}}



#### __[VB.NET]__

{{source=..\SamplesVB\TrackAndStatus\TrackBar\TrackBarPropertiesAndEvents.vb region=tickStyleNone}}
	        Me.RadTrackBar1.TickStyle = Telerik.WinControls.Enumerations.TickStyles.None
	{{endregion}}

![track-and-status-controls-trackbar-programming-radtrackbar 001](images/track-and-status-controls-trackbar-programming-radtrackbar001.png)![track-and-status-controls-trackbar-programming-radtrackbar 002](images/track-and-status-controls-trackbar-programming-radtrackbar002.png)

* Setting __TickStyle__ to *Both* will enable ticks on both sides.
                

#### __[C#]__

{{source=..\SamplesCS\TrackAndStatus\TrackBar\TrackBarPropertiesAndEvents.cs region=tickStyleBoth}}
	            this.radTrackBar1.TickStyle = Telerik.WinControls.Enumerations.TickStyles.Both;
	{{endregion}}



#### __[VB.NET]__

{{source=..\SamplesVB\TrackAndStatus\TrackBar\TrackBarPropertiesAndEvents.vb region=tickStyleBoth}}
	        Me.RadTrackBar1.TickStyle = Telerik.WinControls.Enumerations.TickStyles.Both
	{{endregion}}

![track-and-status-controls-trackbar-programming-radtrackbar 003](images/track-and-status-controls-trackbar-programming-radtrackbar003.png)![track-and-status-controls-trackbar-programming-radtrackbar 004](images/track-and-status-controls-trackbar-programming-radtrackbar004.png)

* Setting __TickStyle__ to *TopLeft* will show only the ticks on the top side,
                  when the Orientation is Horizontal. If the Orientation is set to Vertical, only the ticks on the left side will be shown:
                

#### __[C#]__

{{source=..\SamplesCS\TrackAndStatus\TrackBar\TrackBarPropertiesAndEvents.cs region=tickStyleTop}}
	            this.radTrackBar1.TickStyle = Telerik.WinControls.Enumerations.TickStyles.TopLeft;
	{{endregion}}



#### __[VB.NET]__

{{source=..\SamplesVB\TrackAndStatus\TrackBar\TrackBarPropertiesAndEvents.vb region=tickStyleTop}}
	        Me.RadTrackBar1.TickStyle = Telerik.WinControls.Enumerations.TickStyles.TopLeft
	{{endregion}}

![track-and-status-controls-trackbar-programming-radtrackbar 005](images/track-and-status-controls-trackbar-programming-radtrackbar005.png)![track-and-status-controls-trackbar-programming-radtrackbar 006](images/track-and-status-controls-trackbar-programming-radtrackbar006.png)

* Setting __TickStyle__ to *BottomRight* will
                  show only the ticks on the down side, when the Orientation is Horizontal.
                  If the Orientation is set to Vertical, only the ticks on the right side will be shown:
                

#### __[C#]__

{{source=..\SamplesCS\TrackAndStatus\TrackBar\TrackBarPropertiesAndEvents.cs region=tickStyleBottom}}
	            this.radTrackBar1.TickStyle = Telerik.WinControls.Enumerations.TickStyles.BottomRight;
	{{endregion}}



#### __[VB.NET]__

{{source=..\SamplesVB\TrackAndStatus\TrackBar\TrackBarPropertiesAndEvents.vb region=tickStyleBottom}}
	        Me.RadTrackBar1.TickStyle = Telerik.WinControls.Enumerations.TickStyles.BottomRight
	{{endregion}}

![track-and-status-controls-trackbar-programming-radtrackbar 007](images/track-and-status-controls-trackbar-programming-radtrackbar007.png)![track-and-status-controls-trackbar-programming-radtrackbar 008](images/track-and-status-controls-trackbar-programming-radtrackbar008.png)

* The __Orientation__ property can be set to __Horizontal__ or __Vertical__
              to determine the overall orientation of the control. The default value is *Horizontal*, but if you set it
              to *Vertical*, you will get the following result:
            

#### __[C#]__

{{source=..\SamplesCS\TrackAndStatus\TrackBar\TrackBarPropertiesAndEvents.cs region=orientationVertical}}
	            this.radTrackBar1.Orientation = Orientation.Vertical;
	{{endregion}}



#### __[VB.NET]__

{{source=..\SamplesVB\TrackAndStatus\TrackBar\TrackBarPropertiesAndEvents.vb region=orientationVertical}}
	        Me.RadTrackBar1.Orientation = Orientation.Vertical
	{{endregion}}

![track-and-status-controls-trackbar-programming-radtrackbar 009](images/track-and-status-controls-trackbar-programming-radtrackbar009.png)

* The __LargeChange__ property sets the change in value that one click of the mouse outside of the slider makes.
              Let's say that the position of your thumb is at the beginning of the RadTrackBar (at position 0), the value of this property is
              *5* and you click on tick number 14. The thumb will reposition itself to tick number *5*,
              following the step determined by the __LargeChange__ property. However, if the __LargeChange__
              has value 0, the thumb will move to position 14.
            

#### __[C#]__

{{source=..\SamplesCS\TrackAndStatus\TrackBar\TrackBarPropertiesAndEvents.cs region=largeChange}}
	            this.radTrackBar1.LargeChange = 5;
	{{endregion}}



#### __[VB.NET]__

{{source=..\SamplesVB\TrackAndStatus\TrackBar\TrackBarPropertiesAndEvents.vb region=largeChange}}
	        Me.RadTrackBar1.LargeChange = 5
	{{endregion}}



* The __TextOrientation__ property controls the orientation of the associated texts, whether they should appear
              horizontally or vertically.  The default value is Horizontal, here is how to change it to vertical:
            

#### __[C#]__

{{source=..\SamplesCS\TrackAndStatus\TrackBar\TrackBarPropertiesAndEvents.cs region=textorientation}}
	            this.radTrackBar1.TextOrientation = Orientation.Vertical;
	{{endregion}}



#### __[VB.NET]__

{{source=..\SamplesVB\TrackAndStatus\TrackBar\TrackBarPropertiesAndEvents.vb region=textorientation}}
	        Me.RadTrackBar1.TextOrientation = Orientation.Vertical
	{{endregion}}

![track-and-status-controls-trackbar-programming-radtrackbar 010](images/track-and-status-controls-trackbar-programming-radtrackbar010.png)

* The __LabelStyle__ property controls whether the labels should be drawn. The default value is None.
            

* __Both__ - will show the labels on both sides
                

#### __[C#]__

{{source=..\SamplesCS\TrackAndStatus\TrackBar\TrackBarPropertiesAndEvents.cs region=labelsStyleBoth}}
	            this.radTrackBar1.LabelStyle = Telerik.WinControls.UI.TrackBarLabelStyle.Both;
	{{endregion}}



#### __[VB.NET]__

{{source=..\SamplesVB\TrackAndStatus\TrackBar\TrackBarPropertiesAndEvents.vb region=labelsStyleBoth}}
	        Me.RadTrackBar1.LabelStyle = Telerik.WinControls.UI.TrackBarLabelStyle.Both
	{{endregion}}

![track-and-status-controls-trackbar-programming-radtrackbar 011](images/track-and-status-controls-trackbar-programming-radtrackbar011.png)

* __TopLeft__ - will show only the labels on the top side, when the Orientation is Horizontal.
                  If the Orientation is set to Vertical, only the labels on the left side will be shown:
                

#### __[C#]__

{{source=..\SamplesCS\TrackAndStatus\TrackBar\TrackBarPropertiesAndEvents.cs region=labelsStyleTopLeft}}
	            this.radTrackBar1.LabelStyle = Telerik.WinControls.UI.TrackBarLabelStyle.TopLeft;
	{{endregion}}



#### __[VB.NET]__

{{source=..\SamplesVB\TrackAndStatus\TrackBar\TrackBarPropertiesAndEvents.vb region=labelsStyleTopLeft}}
	        Me.RadTrackBar1.LabelStyle = Telerik.WinControls.UI.TrackBarLabelStyle.TopLeft
	{{endregion}}

![track-and-status-controls-trackbar-programming-radtrackbar 012](images/track-and-status-controls-trackbar-programming-radtrackbar012.png)

* __BottomRight__ - will show only the labels on the bottom side, when the Orientation is Horizontal.
                  If the Orientation is set to Vertical, only the labels on the right side will be shown:
                

#### __[C#]__

{{source=..\SamplesCS\TrackAndStatus\TrackBar\TrackBarPropertiesAndEvents.cs region=labelsStyleBottomRight}}
	            this.radTrackBar1.LabelStyle = Telerik.WinControls.UI.TrackBarLabelStyle.BottomRight;
	{{endregion}}



#### __[VB.NET]__

{{source=..\SamplesVB\TrackAndStatus\TrackBar\TrackBarPropertiesAndEvents.vb region=labelsStyleBottomRight}}
	        Me.RadTrackBar1.LabelStyle = Telerik.WinControls.UI.TrackBarLabelStyle.BottomRight
	{{endregion}}

![track-and-status-controls-trackbar-programming-radtrackbar 013](images/track-and-status-controls-trackbar-programming-radtrackbar013.png)

* The __ShowButtons__ property controls the visibility of the navigation buttons in RadTrackBar.
              By default these buttons are not displayed. To show them, set the property to true.
            

#### __[C#]__

{{source=..\SamplesCS\TrackAndStatus\TrackBar\TrackBarPropertiesAndEvents.cs region=ShowButtons}}
	            this.radTrackBar1.ShowButtons = true;
	{{endregion}}



#### __[VB.NET]__

{{source=..\SamplesVB\TrackAndStatus\TrackBar\TrackBarPropertiesAndEvents.vb region=ShowButtons}}
	        Me.RadTrackBar1.ShowButtons = True
	{{endregion}}

![track-and-status-controls-trackbar-programming-radtrackbar 014](images/track-and-status-controls-trackbar-programming-radtrackbar014.png)

* The __LargeTickFrequency__ property sets the spacing between the large tick marks. The default value is 5.
            

#### __[C#]__

{{source=..\SamplesCS\TrackAndStatus\TrackBar\TrackBarPropertiesAndEvents.cs region=LargeTickFrequency}}
	            this.radTrackBar1.LargeTickFrequency = 10;
	{{endregion}}



#### __[VB.NET]__

{{source=..\SamplesVB\TrackAndStatus\TrackBar\TrackBarPropertiesAndEvents.vb region=LargeTickFrequency}}
	        Me.RadTrackBar1.LargeTickFrequency = 10
	{{endregion}}

![track-and-status-controls-trackbar-programming-radtrackbar 015](images/track-and-status-controls-trackbar-programming-radtrackbar015.png)

* The __SmallTickFrequency__ property sets the spacing between the small tick marks. The default value is 1.
            

#### __[C#]__

{{source=..\SamplesCS\TrackAndStatus\TrackBar\TrackBarPropertiesAndEvents.cs region=SmallTickFrequency}}
	            this.radTrackBar1.SmallTickFrequency = 2;
	{{endregion}}



#### __[VB.NET]__

{{source=..\SamplesVB\TrackAndStatus\TrackBar\TrackBarPropertiesAndEvents.vb region=SmallTickFrequency}}
	        Me.RadTrackBar1.SmallTickFrequency = 2
	{{endregion}}

![track-and-status-controls-trackbar-programming-radtrackbar 016](images/track-and-status-controls-trackbar-programming-radtrackbar016.png)

* The __TrackBarMode__ property determinates in which mode the control will operate.
              Each [mode]({%slug track-and-status-controls-trackbar-modes%}) has different functionality and behavior.
            

* __SingleThumb__

#### __[C#]__

{{source=..\SamplesCS\TrackAndStatus\TrackBar\TrackBarPropertiesAndEvents.cs region=TrackBarModeSingleThumb}}
	            this.radTrackBar1.TrackBarMode = Telerik.WinControls.UI.TrackBarRangeMode.SingleThumb;
	{{endregion}}



#### __[VB.NET]__

{{source=..\SamplesVB\TrackAndStatus\TrackBar\TrackBarPropertiesAndEvents.vb region=TrackBarModeSingleThumb}}
	        Me.RadTrackBar1.TrackBarMode = Telerik.WinControls.UI.TrackBarRangeMode.SingleThumb
	{{endregion}}

![track-and-status-controls-trackbar-programming-radtrackbar 017](images/track-and-status-controls-trackbar-programming-radtrackbar017.png)

* __StartFromTheBeggining__

#### __[C#]__

{{source=..\SamplesCS\TrackAndStatus\TrackBar\TrackBarPropertiesAndEvents.cs region=TrackBarModeStartFromTheBeginning}}
	            this.radTrackBar1.TrackBarMode = Telerik.WinControls.UI.TrackBarRangeMode.StartFromTheBeginning;
	            this.radTrackBar1.Ranges.Add(new TrackBarRange(0, 5, "MyRange1"));
	            this.radTrackBar1.Ranges.Add(new TrackBarRange(0, 15, "MyRange2"));
	{{endregion}}



#### __[VB.NET]__

{{source=..\SamplesVB\TrackAndStatus\TrackBar\TrackBarPropertiesAndEvents.vb region=TrackBarModeStartFromTheBeginning}}
	        Me.RadTrackBar1.TrackBarMode = Telerik.WinControls.UI.TrackBarRangeMode.StartFromTheBeginning
	        Me.RadTrackBar1.Ranges.Add(New TrackBarRange(0, 5, "MyRange1"))
	        Me.RadTrackBar1.Ranges.Add(New TrackBarRange(0, 15, "MyRange2"))
	{{endregion}}

![track-and-status-controls-trackbar-programming-radtrackbar 018](images/track-and-status-controls-trackbar-programming-radtrackbar018.png)

* __Range__

#### __[C#]__

{{source=..\SamplesCS\TrackAndStatus\TrackBar\TrackBarPropertiesAndEvents.cs region=TrackBarModeRange}}
	            this.radTrackBar1.TrackBarMode = Telerik.WinControls.UI.TrackBarRangeMode.Range;
	            this.radTrackBar1.Ranges[0].Start = 2;
	            this.radTrackBar1.Ranges[0].End = 5;
	            this.radTrackBar1.Ranges.Add(new TrackBarRange(10, 15));
	{{endregion}}



#### __[VB.NET]__

{{source=..\SamplesVB\TrackAndStatus\TrackBar\TrackBarPropertiesAndEvents.vb region=TrackBarModeRange}}
	        Me.RadTrackBar1.TrackBarMode = Telerik.WinControls.UI.TrackBarRangeMode.Range
	        Me.RadTrackBar1.Ranges(0).Start = 2
	        Me.RadTrackBar1.Ranges(0).[End] = 5
	        Me.RadTrackBar1.Ranges.Add(New TrackBarRange(10, 15))
	{{endregion}}

![track-and-status-controls-trackbar-programming-radtrackbar 019](images/track-and-status-controls-trackbar-programming-radtrackbar019.png)

* The __SnapMode__ property controls the way the thumb is moving in RadTrackBar.
              When this property is set to *SnapToTicks* the thumb is moving only at tick positions.
              When the value is set to __None__ the slider is moving freely.
            

#### __[C#]__

{{source=..\SamplesCS\TrackAndStatus\TrackBar\TrackBarPropertiesAndEvents.cs region=SnapModeOff}}
	            this.radTrackBar1.SnapMode = TrackBarSnapModes.SnapToTicks;
	{{endregion}}



#### __[VB.NET]__

{{source=..\SamplesVB\TrackAndStatus\TrackBar\TrackBarPropertiesAndEvents.vb region=SnapModeOff}}
	        Me.RadTrackBar1.SnapMode = TrackBarSnapModes.SnapToTicks
	{{endregion}}

![track-and-status-controls-trackbar-programming-radtrackbar 020](images/track-and-status-controls-trackbar-programming-radtrackbar020.png)

* The __ThumbSize__ property sets the size of the thumbs.
            

#### __[C#]__

{{source=..\SamplesCS\TrackAndStatus\TrackBar\TrackBarPropertiesAndEvents.cs region=ThumbSize}}
	            this.radTrackBar1.ThumbSize = new Size(16, 18);
	{{endregion}}



#### __[VB.NET]__

{{source=..\SamplesVB\TrackAndStatus\TrackBar\TrackBarPropertiesAndEvents.vb region=ThumbSize}}
	        Me.RadTrackBar1.ThumbSize = New Size(16, 18)
	{{endregion}}

![track-and-status-controls-trackbar-programming-radtrackbar 021](images/track-and-status-controls-trackbar-programming-radtrackbar021.png)

* The __ShowSlideArea__ property controls whether the line down the middle of the
              control where the slider rides is drawn. The default value is *true*. Setting it
              to false will produce the following result:
            

#### __[C#]__

{{source=..\SamplesCS\TrackAndStatus\TrackBar\TrackBarPropertiesAndEvents.cs region=showSlideAreaFalse}}
	            this.radTrackBar1.ShowSlideArea = false;
	{{endregion}}



#### __[VB.NET]__

{{source=..\SamplesVB\TrackAndStatus\TrackBar\TrackBarPropertiesAndEvents.vb region=showSlideAreaFalse}}
	        Me.RadTrackBar1.ShowSlideArea = False
	{{endregion}}

![track-and-status-controls-trackbar-programming-radtrackbar 022](images/track-and-status-controls-trackbar-programming-radtrackbar022.png)

## Events

There are several events that you will find useful in the context of RadTrackBar:

* __ValueChanged__ event is fired after the user drags
              the thumb and __drops__ it somewhere on the slider area, or when the __Value__ property is set.
              In this event, you can get the value of RadTrackBar from its __Value__ property.
            

* __LableFormatting__ event is used to formatt the labels.
            

#### __[C#]__

{{source=..\SamplesCS\TrackAndStatus\TrackBar\TrackBarPropertiesAndEvents.cs region=TickFormattingEvent}}
	        void radTrackBar1_TickFormatting(object sender, TickFormattingEventArgs e)
	        {
	            e.TickElement.Line1.BackColor = Color.Red;
	        }
	{{endregion}}



#### __[VB.NET]__

{{source=..\SamplesVB\TrackAndStatus\TrackBar\TrackBarPropertiesAndEvents.vb region=TickFormattingEvent}}
	    Private Sub radTrackBar1_TickFormatting(sender As Object, e As TickFormattingEventArgs)
	        e.TickElement.Line1.BackColor = Color.Red
	    End Sub
	{{endregion}}

![track-and-status-controls-trackbar-programming-radtrackbar 023](images/track-and-status-controls-trackbar-programming-radtrackbar023.png)

* __TickFormatting__ event is used format the ticks. For example, the code sample below changes the color of the ticks to red:
            

#### __[C#]__

{{source=..\SamplesCS\TrackAndStatus\TrackBar\TrackBarPropertiesAndEvents.cs region=LabelFormattingEvent}}
	        void radTrackBar1_LabelFormatting(object sender, LabelFormattingEventArgs e)
	        {
	            e.LabelElement.ForeColor = Color.Red;
	        }
	{{endregion}}



#### __[VB.NET]__

{{source=..\SamplesVB\TrackAndStatus\TrackBar\TrackBarPropertiesAndEvents.vb region=LabelFormattingEvent}}
	    Private Sub radTrackBar1_LabelFormatting(sender As Object, e As LabelFormattingEventArgs)
	        e.LabelElement.ForeColor = Color.Red
	    End Sub
	{{endregion}}

![track-and-status-controls-trackbar-programming-radtrackbar 024](images/track-and-status-controls-trackbar-programming-radtrackbar024.png)
