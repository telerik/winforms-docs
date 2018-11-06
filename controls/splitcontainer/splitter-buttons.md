---
title: Splitter Buttons
page_title: Splitter Buttons | RadSplitContainer
description: The split panels can be collapsed to a particular direction via the splitter`s navigation buttons.
slug: winforms/splitcontainer/splitter-buttons
tags: splitcontainer,splitter-buttons
published: True
position: 5
---

# Splitter Buttons

The split panels can be collapsed to a particular direction via the splitter`s navigation buttons.

>caption Figure 1: RadSplitContainer Splitter Buttons
![splitcontainer-splitter-buttons 001](images/splitcontainer-splitter-buttons001.gif)

In order to use the splitter buttons the following properties need to be set to true.

#### Show Splitter Buttons

{{source=..\SamplesCS\SplitContainer\SplitterButtons.cs region=ShowSplitterButtons}} 
{{source=..\SamplesVB\SplitContainer\SplitterButtons.vb region=ShowSplitterButtons}}
````C#
this.radSplitContainer1.EnableCollapsing = true;
this.radSplitContainer1.UseSplitterButtons = true;

````
````VB.NET
Me.RadSplitContainer1.EnableCollapsing = True
Me.RadSplitContainer1.UseSplitterButtons = True

```` 



{{endregion}}

The control also exposes a convenient API for accessing the splitter elements. Each of the splitters can be moved to a position so that it collapses one of its associated panel. The responsible **MoveSplitter** method receives a splitter element instance and a **RadDirection** flag as parameters. The splitter`s position can be restored to its previous location with the **RestoreSplitterPosition** method.

#### Collapse Splitter

{{source=..\SamplesCS\SplitContainer\SplitterButtons.cs region=CollapsеSplitter}} 
{{source=..\SamplesVB\SplitContainer\SplitterButtons.vb region=CollapsеSplitter}}
````C#
this.radSplitContainer1.MoveSplitter(this.radSplitContainer1.Splitters[0], RadDirection.Left);

````
````VB.NET
Me.RadSplitContainer1.MoveSplitter(Me.RadSplitContainer1.Splitters(0), RadDirection.Left)

```` 



{{endregion}}

#### Expand Splitter

{{source=..\SamplesCS\SplitContainer\SplitterButtons.cs region=ExpandSplitter}} 
{{source=..\SamplesVB\SplitContainer\SplitterButtons.vb region=ExpandSplitter}}
````C#
this.radSplitContainer1.RestoreSplitterPosition(this.radSplitContainer1.Splitters[0]);

````
````VB.NET
Me.RadSplitContainer1.RestoreSplitterPosition(Me.RadSplitContainer1.Splitters(0))

```` 



{{endregion}}

# See Also

* [Building Advanced Layouts]({%slug winforms/splitcontainer/building-advanced-layouts%})	
