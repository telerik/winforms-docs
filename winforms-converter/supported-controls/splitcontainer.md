---
title: SplitContainer
page_title: SplitContainer | UI for Winforms Documentation
description: This article explains which standard .NET controls properties are removed and which are replaced with similar equivalents. 
slug: winforms/winforms-converter/supported-controls/menustrip
tags: covert, winforms, numericupdown, spineditor
published: True
position: 1
---

# SplitContainer

The SplitContainer control in your application will be converted to [RadSplitContainer]({%slug winforms/splitcontainer%}). The following tables describe which properties and methods are removed and which are replaced with similar equivalents.

|Properties|Action|RadControls Equivalent|
|---|---|---|
|IsSplitterFixed |Replaced|this.radSplitContainer1.Splitters[0].Fixed |
|Panel1Collapsed|Replaced|this.radSplitContainer1.SplitPanels[0].Collapsed|
|Panel1MinSize |Produces Error||
|Panel2Collapsed|Replaced|this.radSplitContainer1.SplitPanels[1].Collapsed |
|Panel2MinSize |Produces Error||
|SplitterIncrement|Produces Error||

|Methods|Action|RadControls Equivalent|
|---|---|---|
|PerformAutoScale()|Produces Error||
