---
title: Tabs and Captions
page_title: Tabs and Captions | UI for WinForms Documentation
description: Tabs and Captions
slug: winforms/dock/object-model/tabs-and-captions
tags: tabs,and,captions
published: True
position: 7
previous_url: dock-object-model-tabs-and-captions
---

# Tabs and Captions
 

| RELATED VIDEOS |  |
| ------ | ------ |
|[RadDock Tab Alignment/Visibility and Automation](http://tv.telerik.com/watch/winforms/raddock/raddock-tab-alignmentvisibility-automation)In this video, you will learn about some of the new features provided in the Q3 2009 release of the RadDock. These features include tab alignment and visibility as well as drag and drop automation.|![dock-object-model-tabs-and-captions 007](images/dock-object-model-tabs-and-captions007.png)|

## 

RadDock exposes several properties which allow you to have full control over the visibility and the position of tabs/captions:

* __DocumentTabAlignment__ - This property defines the position of the tabs for all DocumentTabStrip instances in RadDock:

#### Setting DocumentTabsAlignment to Left 

{{source=..\SamplesCS\Dock\TabsAndCaptions.cs region=documentTabsAlignment}} 
{{source=..\SamplesVB\Dock\TabsAndCaptions.vb region=documentTabsAlignment}} 

````C#
this.radDock1.DocumentTabsAlignment = TabStripAlignment.Left;

````
````VB.NET
Me.RadDock1.DocumentTabsAlignment = TabStripAlignment.Left

````

{{endregion}} 


![dock-object-model-tabs-and-captions 001](images/dock-object-model-tabs-and-captions001.png)

* __DocumentTabsVisible__ - This property allows the user to hide/show all document tabs:

#### Hiding the document tabs 

{{source=..\SamplesCS\Dock\TabsAndCaptions.cs region=documentTabsVisible}} 
{{source=..\SamplesVB\Dock\TabsAndCaptions.vb region=documentTabsVisible}} 

````C#
this.radDock1.DocumentTabsVisible = false;

````
````VB.NET
Me.RadDock1.DocumentTabsVisible = False

````

{{endregion}} 


![dock-object-model-tabs-and-captions 002](images/dock-object-model-tabs-and-captions002.png)

* __ToolTabAlignment__ - This property defines the position of the tabs for all ToolTabStrip instances in RadDock:

#### Setting the ToolTabsAlignment to Right 

{{source=..\SamplesCS\Dock\TabsAndCaptions.cs region=toolTabsAlignment}} 
{{source=..\SamplesVB\Dock\TabsAndCaptions.vb region=toolTabsAlignment}} 

````C#
this.radDock1.ToolTabsAlignment = TabStripAlignment.Right;

````
````VB.NET
Me.RadDock1.ToolTabsAlignment = TabStripAlignment.Right

````

{{endregion}} 


![dock-object-model-tabs-and-captions 003](images/dock-object-model-tabs-and-captions003.png)

* __ToolTabsVisible__ - This property allow the user to hide/show all tool tabs:

#### Hiding the tool tabs 

{{source=..\SamplesCS\Dock\TabsAndCaptions.cs region=toolTabsVisible}} 
{{source=..\SamplesVB\Dock\TabsAndCaptions.vb region=toolTabsVisible}} 

````C#
this.radDock1.ToolTabsVisible = false;

````
````VB.NET
Me.RadDock1.ToolTabsVisible = False

````

{{endregion}} 


![dock-object-model-tabs-and-captions 004](images/dock-object-model-tabs-and-captions004.png)

* __CaptionVisible__ - This property allows the user to hide the caption of a single ToolTabStrip:

#### Hiding the caption of ToolTabStrip 

{{source=..\SamplesCS\Dock\TabsAndCaptions.cs region=captionVisible}} 
{{source=..\SamplesVB\Dock\TabsAndCaptions.vb region=captionVisible}} 

````C#
this.toolTabStrip1.CaptionVisible = false;

````
````VB.NET
Me.ToolTabStrip1.CaptionVisible = False

````

{{endregion}} 


![dock-object-model-tabs-and-captions 005](images/dock-object-model-tabs-and-captions005.png)

* __ShowToolCloseButton and ShowDocumentCloseButton__ - ShowToolCloseButton/ShowDocumentCloseButton display close buttons in the ToolWindow/DocumentWindow tabs:

#### Showing close buttons 

{{source=..\SamplesCS\Dock\TabsAndCaptions.cs region=showToolCloseButton}} 
{{source=..\SamplesVB\Dock\TabsAndCaptions.vb region=showToolCloseButton}} 

````C#
this.radDock1.ShowToolCloseButton = true;
this.radDock1.ShowDocumentCloseButton = true;

````
````VB.NET
Me.RadDock1.ShowToolCloseButton = True
Me.RadDock1.ShowDocumentCloseButton = True

````

{{endregion}} 


![dock-object-model-tabs-and-captions 006](images/dock-object-model-tabs-and-captions006.png)
