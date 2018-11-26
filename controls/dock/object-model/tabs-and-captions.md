---
title: Tabs and Captions
page_title: Tabs and Captions | RadDock
description: Describes the mostly used Tabs and Captions properties.
slug: winforms/dock/object-model/tabs-and-captions
tags: tabs,and,captions
published: True
position: 7
previous_url: dock-object-model-tabs-and-captions
---

# Tabs and Captions
 
| RELATED VIDEOS |  |
| ------ | ------ |
|[RadDock Tab Alignment/Visibility and Automation](http://tv.telerik.com/watch/winforms/raddock/raddock-tab-alignmentvisibility-automation)In this video, you will learn about some of the new features provided in the R3 2009 release of the RadDock. These features include tab alignment and visibility as well as drag and drop automation.|![dock-object-model-tabs-and-captions 007](images/dock-object-model-tabs-and-captions007.png)|

__RadDock__ exposes several properties which allow you to have full control over the visibility and the position of the tabs/captions:

* __DocumentTabAlignment:__ defines the position of the tabs for all `DocumentTabStrip` instances in __RadDock__.

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

* __DocumentTabsVisible:__ allows you to hide/show all document tabs:

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

* __ToolTabAlignment:__ defines the position of the tabs for all **ToolTabStrip** instances in **RadDock**:

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

* __ToolTabsVisible:__ allows you to hide/show all tool tabs.

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

* __CaptionVisible:__ allows you to hide the caption of a single **ToolTabStrip**.

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

* __ShowToolCloseButton and ShowDocumentCloseButton:__  displays/hides close buttons in the **ToolWindow**/**DocumentWindow** tabs.

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

# See Also

* [AllowedDockStates]({%slug winforms/dock/object-model/alloweddockstates%})
* [Creating a RadDock at Runtime]({%slug winforms/dock/object-model/creating-a-raddock-at-runtime%})
* [ Creating ToolWindow and DocumentWindow at Runtime]({%slug winforms/dock/object-model/creating-toolwindow-and-documentwindow-at-runtime%})
* [Customizing Floating Windows]({%slug winforms/dock/object-model/customizing-floating-windows%})
* [Customizing TabStrip Items]({%slug winforms/dock/object-model/customizing-tabstrip-items%})
* [Building an Advanced Layout at Runtime]({%slug winforms/dock/object-model/example:-building-an-advanced-layout-at-runtime%})
* [RadDock Properties and Methods]({%slug winforms/dock/object-model/raddock-properties-and-methods%})
* [Removing ToolWindow and DocumentWindow at Runtime]({%slug winforms/dock/object-model/removing-toolwindow-and-documentwindow-at-runtime%})
* [Accessing DockWindows]({%slug winforms/dock/object-model/accessing-dockwindows%})
* [ToolWindow and DocumentWindow Properties and Methods]({%slug winforms/dock/object-model/toolwindow-and-documentwindow-properties-and-methods%})
* [Tracking the ActiveWindow]({%slug winforms/dock/object-model/tracking-the-activewindow%})
