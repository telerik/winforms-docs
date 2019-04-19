---
title: Simplified Mode
page_title: Simplified Mode | RadRibbonBar
description:  
slug: winforms/ribbonbar/simplified-mode
tags: radribbonbar. simplified, mode
published: True
position: 0
---

# Simplified mode

When the simplified layout is switched on all elements in the RibbonBar are automatically arranged on a single line. This aims provide the user with a compact layout which is taking half the heigh of the standard ribbon. This functionality can be used with new or existing ribbon bars. It automatically changes the items properties in order to fit them on a single line. The process can be customized as well. If the width is not enought the items are shown in a popup just link in the default ribbon layout.  

![](images/simplified-mode001.gif)


## Enabling the simplified mode

To enable the simplified mode set the __LayoutMode___ property: 

{{source=..\SamplesCS\RibbonBar\SimplifiedLayout\SimplifiedRibbonLayout.cs region=EnableRibbon}} 
{{source=..\SamplesVB\RibbonBar\SimplifiedLayout\SimplifiedRibbonLayout.vb region=EnableRibbon}}
````C#
radRibbonBar1.LayoutMode = RibbonLayout.Simplified;

````
````VB.NET
radRibbonBar1.LayoutMode = RibbonLayout.Simplified

```` 
 

{{endregion}}

To allow the end user to change the LayoutMode ar runtime show the layout button:

{{source=..\SamplesCS\RibbonBar\SimplifiedLayout\SimplifiedRibbonLayout.cs region=LayoutButton}} 
{{source=..\SamplesVB\RibbonBar\SimplifiedLayout\SimplifiedRibbonLayout.vb region=LayoutButton}}
````C#
radRibbonBar1.ShowLayoutModeButton = true;

````
````VB.NET
radRibbonBar1.ShowLayoutModeButton = True

```` 
 

{{endregion}}

![](images/simplified-mode002.png)

## Properties

You are allowed to change the height of the ribbon when you are in the simplified mode:

{{source=..\SamplesCS\RibbonBar\SimplifiedLayout\SimplifiedRibbonLayout.cs region=LayoutHeight}} 
{{source=..\SamplesVB\RibbonBar\SimplifiedLayout\SimplifiedRibbonLayout.vb region=LayoutHeight}}
````C#
this.radRibbonBar1.SimplifiedHeight = 100;

````
````VB.NET
Me.radRibbonBar1.SimplifiedHeight = 100

```` 
 

{{endregion}}

Access the simplified mode button:

{{source=..\SamplesCS\RibbonBar\SimplifiedLayout\SimplifiedRibbonLayout.cs region=LayoutButton}} 
{{source=..\SamplesVB\RibbonBar\SimplifiedLayout\SimplifiedRibbonLayout.vb region=LayoutButton}}
````C#
radRibbonBar1.ShowLayoutModeButton = true;

````
````VB.NET
radRibbonBar1.ShowLayoutModeButton = True

```` 
 

{{endregion}}

Access the simplified mode label. The following example shows how you can change the text of the label in the upper right corner:

{{source=..\SamplesCS\RibbonBar\SimplifiedLayout\SimplifiedRibbonLayout.cs region=SimplifiedLabel}} 
{{source=..\SamplesVB\RibbonBar\SimplifiedLayout\SimplifiedRibbonLayout.vb region=SimplifiedLabel}}
````C#
this.radRibbonBar1.RibbonBarElement.LayoutModeTextElement.Text = "Compact Mode";

````
````VB.NET
Me.radRibbonBar1.RibbonBarElement.LayoutModeTextElement.Text = "Compact Mode"

```` 
 

{{endregion}}

## Events

There are 3 events that will be fired when the LayoutMode is changed:

* __LayoutModeChanged__: fired when end user is changing the layout mode with the button. 
* __ItemStyleChanged__: this event will be fired each time a property of an ribbon item is changed during the layout change operation.
* __ItemStyleChanging__: this event will be fired before a property of a ribbon item is changed, allows you change properties when the LayoutMode is changed. 


Some of the ribbon items are changed when the simplified mode is turned on. The properties will be restored when switching to the default mode. The following table shows what is changed by default.

