---
title: RadElement
page_title: RadElement | UI for WinForms Documentation
description: RadElement
slug: winforms/telerik-presentation-framework/class-hierarchy/radelement
tags: radelement
published: True
position: 5
---

# RadElement

*RadElement* is a key class that represents the smallest unit in a RadControl that can be painted or laid out on the screen. *RadElement* is the base class of all elements that take advantage of TPF features, e.g. property inheritance, layouts and styling. *RadElement* has a size and location specified in coordinates according to its parent. Other important *RadElement* features are:

* __Behaviors__: Each property can be handled by an arbitrary external object.

* __StyleProperty__: This dependency property is a collection of predefined values for properties that are applied optionally when a certain condition is met. Styles can be grouped into a Theme.

* __Automatic element response on property changes:__ Response is controlled by RadPropertyMetadata options, e.g. AffectsDisplay, AffectsLayout. 

* __Efficient painting__: Only invalidated regions are painted. Painting does not occur exactly when a region is invalidated, other invalidated regions are combined. The frequency that elements are painted and animated is controlled by the RadElement __RenderingMaxFramerate__ property. RadElement also handles the z-ordering if children and this is also taken into account when painting.

* __Layout Mechanism__: RadElement participates in the TPF layout mechanism. The layout is a basic implementation of box-model sizing (see [http://www.w3.org/](http://www.w3.org/) for more information on the box-model standard) that handles padding, margins, size and calculations of various bounds related rectangles. RadElement implements the __IRadLayoutElement__ interface and so defines GetPreferredSize() and PerFormLayout() methods.

* __3 state visibility__: RadElements can be Visible, Hidden or Collapsed where a state of hidden does not alter the layout. 

## Property Changes

Each property change of a RadElement or inheritance parent results in calling the OnPropertyChanged() method. The override of OnPropertyChange() in RadElement:

* Notifies child RadElements.

* Processes behaviors (see notes below) 

* Raises [bubbling and tunneling events]({%slug winforms/telerik-presentation-framework/events/routed-events%}). 

* Invokes layout changes if appropriate.

* Handles style changes.

* Handles mouse input.

* Handles focus changes.

* Handles z-index reordering.

## Behaviors

Behaviors are a mechanism that trigger actions when specific properties are changed. For example, the __ItemSelectedBehavior__  class shown below reacts to __BackColor__ property changes in a __RadPageViewItem__.

{{source=..\SamplesCS\TPF\ClassHierarchy\RadElementForm.cs region=PropertyChangeBehavior}} 
{{source=..\SamplesVB\TPF\ClassHierarchy\RadElementForm.vb region=PropertyChangeBehavior}} 

````C#
        
public class ItemSelectedBehavior : PropertyChangeBehavior
{
        RadPageViewItem pageViewItem;
        Color backColor;
    
        public ItemSelectedBehavior(RadPageViewItem tabStrip, Color backColor) : base(RadPageViewItem.IsSelectedProperty)
        {
                this.pageViewItem = tabStrip;
                this.backColor = backColor;
        }
    
    public override void OnPropertyChange(Telerik.WinControls.RadElement element, RadPropertyChangedEventArgs e)
    {
        if ((bool)e.NewValue == true)
                {
                this.pageViewItem.BackColor = backColor;
                }
    }
}

````
````VB.NET
Public Class ItemSelectedBehavior
    Inherits PropertyChangeBehavior
    Private pageViewItem As RadPageViewItem
    Private backColor As Color
    Public Sub New(tabStrip As RadPageViewItem, backColor As Color)
        MyBase.New(RadPageViewItem.IsSelectedProperty)
        Me.pageViewItem = tabStrip
        Me.backColor = backColor
    End Sub
    Public Overrides Sub OnPropertyChange(element As Telerik.WinControls.RadElement, e As RadPropertyChangedEventArgs)
        If CBool(e.NewValue) = True Then
            Me.pageViewItem.BackColor = backColor
        End If
    End Sub
End Class

````

{{endregion}} 

## RadElement Lifecycle

A RadElement instance can be in one of the following states: 

__Constructing__: The element is in a process of being constructed. Layout operations are *forbidden* and Property Notifications are not *raised*.
        

__Constructed__: The element has already been successfully constructed and its child elements created. Layout operations are *forbidden, *but Property Notifications are allowed.
        

__Loading:__ The element is in a process of being loaded. Layout operations are not allowed.
        

__Loaded:__ The element has already been successfully loaded. An element is considered *Loaded* when the owning RadControl handle has been successfully created and the control may be visualized on the screen. At this stage, all layout operations as well as property notifications are allowed.
        

__Unloaded:__ A special state which indicates that the element has been successfully *loaded* one or more times, but now it either does not reside in a valid element tree, or its owning RadControl does not have a created handle. Layout operations are not allowed.
        

__Disposing:__ The element is in a process of being disposed. All layout operations and Property Notifications are *forbidden*.
        

__Disposed:__ The element has already been successfully disposed and cannot be used any further, otherwise *ObjectDisposedException* is thrown.

## Usability and Extensibility 

You can extend the current functionality by overriding the following methods:

|Method|Description|
|------|------|
|OnLoad|Implements the load semantic.|
|OnLoaded|Notifies the element that it has been successfully loaded.|
|OnUnload|Implements the core unload semantic.|
|OnUnloaded|Notifies the element that it has been successfully unloaded.|
|OnElementTreeChanged|Provides convenient way for inheritors to add custom logic for element tree change.|
|OnParentChanged|Provides convenient way for inheritors to add custom logic upon parent change.|
|UpdateReferences|Implements the core semantic for caching references in the current element tree and layout manager as well as updating of some parent-dependent values such as tree level, inheritable element state, etc.|




