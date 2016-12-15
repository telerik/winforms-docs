---
title: Scrolling
page_title: Scrolling | RadVirtualGrid
description: VirtualGrid
slug: winforms/virtualgrid/scrolling
tags: virtualgrid, scrolling
published: True
position: 17
---

# Scrolling

__RadVirtualGrid__ allows three types of scroll modes:

* __Smooth__: Sets scrolling by pixel, meaning that an item can be partially visible.

* __Discrete__: Defines scrolling by only one item at a time.
       
* __Deferred__: Does not cause GUI updates until the user finishes the scrolling operation.

>caption Fig.1 Smooth Scrolling<br>
![virtualgrid-overview 001](images/virtualgrid-scrolling001.gif)


{{source=..\SamplesCS\VirtualGrid\Rows\VirtualGridResizingRows.cs region=SmoothScrolling}} 
{{source=..\SamplesVB\VirtualGrid\Rows\VirtualGridResizingRows.vb region=SmoothScrolling}}
````C#
this.radVirtualGrid1.TableElement.RowScroller.ScrollMode = ItemScrollerScrollModes.Smooth;

````
````VB.NET
Me.RadVirtualGrid1.TableElement.RowScroller.ScrollMode = ItemScrollerScrollModes.Smooth

````



{{endregion}}

>caption Fig.2 Discrete Scrolling<br>
![virtualgrid-overview 002](images/virtualgrid-scrolling002.gif)

{{source=..\SamplesCS\VirtualGrid\Rows\VirtualGridResizingRows.cs region=DiscreteScrolling}} 
{{source=..\SamplesVB\VirtualGrid\Rows\VirtualGridResizingRows.vb region=DiscreteScrolling}}
````C#
this.radVirtualGrid1.TableElement.RowScroller.ScrollMode = ItemScrollerScrollModes.Discrete;

````
````VB.NET
Me.RadVirtualGrid1.TableElement.RowScroller.ScrollMode = ItemScrollerScrollModes.Discrete

````



{{endregion}}

>caption Fig.3 Deferred Scrolling<br>
![virtualgrid-overview 003](images/virtualgrid-scrolling003.gif)

{{source=..\SamplesCS\VirtualGrid\Rows\VirtualGridResizingRows.cs region=DeferredScrolling}} 
{{source=..\SamplesVB\VirtualGrid\Rows\VirtualGridResizingRows.vb region=DeferredScrolling}}
````C#
this.radVirtualGrid1.TableElement.RowScroller.ScrollMode = ItemScrollerScrollModes.Deferred;

````
````VB.NET
Me.RadVirtualGrid1.TableElement.RowScroller.ScrollMode = ItemScrollerScrollModes.Deferred

````



{{endregion}}


The __RadVirtualGrid.UseScrollBarsInHierarchy__ property is responsible for defining whether vertical scrollbars will appear for the inner child views. By default the property is set to *false*.

 
