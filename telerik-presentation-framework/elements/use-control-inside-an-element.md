---
title: Use Control inside an Element
page_title: Use Control inside an Element | Telerik Presentation Framework
description: 
slug: winforms/telerik-presentation-framework/elements/radtrackbarelement
tags: radtrackbarelement
published: True
position: 3
---

# Use Controls inside an Element

Please note that when you are creating custom controls you can use all of the predefined elements your create custom ones. Most of the controls in the suite have a corresponding elements which can be used in the custom controls. However in cases with complex controls, the respective elements cannot be used instead. In such cases you can use the __RadHostItem__  class which allows you to add controls to elements. 

### Example add RadgridView to a panorama tile.

The tiles are simple elements that can show image and text. The following code shows how you can add a tile at runtime. The tile will contain a bound RadGridView.

#### Add Grid to a panorama tile.

{{source=..\SamplesCS\TPF\Elements\MyTrackBarControl.cs region=}} 
{{source=..\SamplesVB\TPF\Elements\MyTrackBarControl.vb region=}} 



{{endregion}}

>caption Figure 1: A Grid added to a panorama tile.

![use-control-inside-an-element001 001](images/use-control-inside-an-element001.png)