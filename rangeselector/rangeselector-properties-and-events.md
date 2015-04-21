---
title: Properties and Events
page_title: Properties and Events
description: Properties and Events
slug: rangeselector-properties-and-events
tags: properties,and,events
published: True
position: 2
---

# Properties and Events



## 
        Properties:
      

Here are the most important properties for changing the control appearance and behavior:
      

* The __StartRange__ and __EndRange__ properties specify the range area. The values of these properties are from type double and should between 0 and 100.
          

#### __[C#] __

{{source=..\SamplesCS\RangeSelector\RangeSelectorPropertiesAndEvents.cs region=StartEnd}}
	
	            this.radRangeSelector1.StartRange = 20;
	            this.radRangeSelector1.EndRange = 50;
	
	{{endregion}}



#### __[VB.NET] __

{{source=..\SamplesVB\RangeSelector\RangeSelectorPropertiesAndEvents.vb region=StartEnd}}
	
	            Me.radRangeSelector1.StartRange = 20
	            Me.radRangeSelector1.EndRange = 50
	
	{{endregion}}



* The __RangeSelectorViewZoomStart__ and __RangeSelectorViewZoomEnd__ define the start and end zoom factor of __RadRangeSelector__. These zoom is in percentages
            and can be controlled from track bar at the bottom of control. You can use these properties __only__ if associated element implements the __IRangeSelectorElement__
            interface. The values of these properties are of type double and should between 0 and 100.
          

#### __[C#] __

{{source=..\SamplesCS\RangeSelector\RangeSelectorPropertiesAndEvents.cs region=StartZoomEndZoom}}
	
	            this.radRangeSelector1.RangeSelectorViewZoomStart = 20;
	            this.radRangeSelector1.RangeSelectorViewZoomEnd = 50;
	
	{{endregion}}



#### __[VB.NET] __

{{source=..\SamplesVB\RangeSelector\RangeSelectorPropertiesAndEvents.vb region=StartZoomEndZoom}}
	
	            Me.radRangeSelector1.RangeSelectorViewZoomStart = 20
	            Me.radRangeSelector1.RangeSelectorViewZoomEnd = 50
	
	{{endregion}}



* The __ShowButtons__ property controls the visibility of the navigation buttons in RadRangeSelector. By default these buttons are displayed. To hide them, set the property to false.
          

#### __[C#] __

{{source=..\SamplesCS\RangeSelector\RangeSelectorPropertiesAndEvents.cs region=hideButtons}}
	
	            this.radRangeSelector1.ShowButtons = false;
	
	{{endregion}}



#### __[VB.NET] __

{{source=..\SamplesVB\RangeSelector\RangeSelectorPropertiesAndEvents.vb region=hideButtons}}
	
	            Me.radRangeSelector1.ShowButtons = False
	
	{{endregion}}



* The __AssociatedControl__ is the most important property of __RadRangeSeletor__. This property establishes the connection between the __RadRangeSelector__ and the associated control.
            This property can accept every object that inherits __RadControl__ except __RadRangeSelector__.
          

#### __[C#] __

{{source=..\SamplesCS\RangeSelector\RangeSelectorGettingStarted.cs region=set associatedControl}}
	
	            this.radRangeSelector1.AssociatedControl = this.radChartView1;
	
	{{endregion}}



#### __[VB.NET] __

{{source=..\SamplesVB\RangeSelector\RangeSelectorGettingStarted.vb region=set associatedControl}}
	            Me.radRangeSelector1.AssociatedControl = Me.radChartView1
	{{endregion}}



>To take all advantages of __RadRangeSelector__ - like scales, track bar and controlling the associated control without any additional implementation, the element of associated
              control should implement the __IRangeSelectorElement__ interface. By design if the associated control implements the __IRangeSelectorControl__ the returned element should implement the __IRangeSelectorElement__
              interface as well. For all controls that not implement the __IRangeSelectorControl__ interface the associated elements will be their RootElement.
            If you want to associate only element whitout control you can use the following approach:
          

#### __[C#] __

{{source=..\SamplesCS\RangeSelector\RangeSelectorPropertiesAndEvents.cs region=set associatedElement}}
	
	            this.radRangeSelector1.RangeSelectorElement.AssociatedElement = new RangeSelectorViewElement(new RadChartElement());
	
	{{endregion}}



#### __[VB.NET] __

{{source=..\SamplesVB\RangeSelector\RangeSelectorPropertiesAndEvents.vb region=set associatedElement}}
	
	            Me.radRangeSelector1.RangeSelectorElement.AssociatedElement = New RangeSelectorViewElement(New RadChartElement())
	
	{{endregion}}



## 
        Events:
      

There are several events that you will find useful in the context of RadRangeSelector:
      

* __ThumbLeftValueChanging__ - Occurs when the value of left thumb is changing.
          

* __ThumbLeftValueChanged__ - Occurs when the value of left thumb is changed.
          

* __ThumbRightValueChanging__ - Occurs when the value of right thumb is changing.
          

* __ThumbRightValueChanged__ - Occurs when the value of left thumb is changed.
          

* __SelectionChanging__ – this event is fired when the selection range is about to change.
          

* __SelectionChanged__ – this event is fired when the range is changed.
          

* __ScaleInitializing__ - Occurs when scale of the control is initializing. This event is cancelable and can be used to hide some scale or to change its dock position.
          

#### __[C#] __

{{source=..\SamplesCS\RangeSelector\RangeSelectorPropertiesAndEvents.cs region=ScaleInitializing}}
	
	        void radRangeSelector1_ScaleInitializing(object sender, ScaleInitializingEventArgs e)
	        {
	            RangeSelectorChartScaleContainerElement scaleElement = e.ScaleElement as RangeSelectorChartScaleContainerElement;
	            if (scaleElement == null) 
	            { 
	                return; 
	            }
	
	            if (scaleElement.Title == "axe1")
	            {
	                e.Cancel = true;
	            }
	            else 
	            {
	                scaleElement.ScalePostion = ViewPosition.TopLeft;
	            }
	        }
	
	{{endregion}}



#### __[VB.NET] __

{{source=..\SamplesVB\RangeSelector\RangeSelectorPropertiesAndEvents.vb region=ScaleInitializing}}
	
	        Private Sub radRangeSelector1_ScaleInitializing(sender As Object, e As ScaleInitializingEventArgs)
	            Dim scaleElement As RangeSelectorChartScaleContainerElement = TryCast(e.ScaleElement, RangeSelectorChartScaleContainerElement)
	            If scaleElement Is Nothing Then
	                Return
	            End If
	
	            If scaleElement.Title = "axe1" Then
	                e.Cancel = True
	            Else
	                scaleElement.ScalePostion = ViewPosition.TopLeft
	            End If
	        End Sub
	
	{{endregion}}


