---
title: Design Time
page_title: Design Time | RadPageView
description: RadPageView is yet another great addition to the Telerik UI for WinForms suite. As the name implies, this control layouts pages of subcontrols in different views.
slug: winforms/pageview/design-time
tags: design-time
published: True
position: 3
previous_url: pageview-design-time
---

# Design Time

## Common properties

The **Smart Tag** for **RadPageView** lets you quickly access common tasks involved with building **RadPageView** elements and customizing its elements. There is a set of properties valid for each of the available view modes:

* __New Theme Manager__: Adds a new [RadThemeManager]({%slug winforms/tools/visual-style-builder/adding-custom-themes-to-your-application/adding-radthememanager-to-a-form%}).

* __Edit UI Elements__: Opens a dialog that displays the [Element Hierarchy Editor]({%slug winforms/tools/element-hierarchy-editor%}). This editor lets you browse all the elements in the control.

* __Theme Name__: Select a theme name from the drop down list of themes available for that control. Selecting a theme allows you to change all aspects of the controls visual style at one time.

* __View Mode__: Sets the view mode of **RadPageView**. The supported modes are *Strip, Stack*, *Outlook*, *ExplorerBar* and *Backstage*.

* __Item Size Mode__: Determines whether the items should have equal size. The supported modes are *EqualHeight, EqualWidth, EqualSize* and *Individual*.

* __Item Drag Mode__: Determines the drag mode of the items. The supported modes are *Preview* and *Immediate*.

* __Item Content Orientation__: Determines the orientation of the item content (image, text, and buttons' panel). The supported orientations are *Auto*, *Horizontal*, *Horizontal180*, *Vertical90* and *Vertical270*.

* __Item Spacing__: Determines the spacing between the items in pixels.

* __Default Page__: Specifies the default page in **RadPageView**.

* __Add Page__: Clicking on this link will add a new page to RadPageView.**Pages** collection.

* __Remove Page__: Clicking on this will remove the currently selected page in **RadPageView**.

* __Learning Center__: Navigate to the Telerik help, code library projects or support forum.

* __Search__: Search the Telerik site for a given string.       

There are also view-specific properties as shown below:

## Strip view mode

![](images/pageview-design-time001.png)

* __Strip Alignment__: Determines the position of the tab items in **RadPageView** in relation to the content area. It can be *Top*, *Left*, *Bottom* or *Right*.

* __Item Alignment__: Determines the alignment of items within the strip layout.

* __Item Fit Mode__: Determines the fit mode of the items. The available modes are *None*, *Fill*, *Shrink* and *ShrinkAndFill*.

* __Strip Buttons__: Determines the style of the navigation buttons. The available styles are *None, Auto, LeftScroll, RightScroll, Scroll, VS2005Style, Close, ItemList, VS2008Style, All*.

## Stack view mode

![](images/pageview-design-time002.png)

* __Stack Position__: Determines the location of the items in relation to the content area.
          

* __Item Selection Mode__: Determines how the items in Stack view are selected and positioned.

## Outlook view mode

![](images/pageview-design-time003.png)

There are no Outlook view related properties in the Action Menu of **RadPageView**.

## ExplorerBar

![](images/pageview-design-time004.png)

* **Content Size Mode**: Gets or sets a value that defines how the content areas for each item are sized. The available options are: *FixedLength, AutoSizeToBestFit, EqualLength*.

## Backstage

![](images/pageview-design-time005.png)

* __Strip Alignment__: Determines the position of the tab items in **RadPageView** in relation to the content area. It can be *Top*, *Left*, *Bottom* or *Right*.

* __Item Alignment__: Determines the alignment of items within the strip layout.

* __Item Fit Mode__: Determines the fit mode of the items. The available modes are *None*, *Fill*, *Shrink* and *ShrinkAndFill*.

* __Item Area Width__: Gets or sets the width of the items area.

>caution In order to switch from one Action Menu to another, you should first close the menu by clicking on the **Smart Tag** and then reopen it again.
>

## NavigationView

![](images/pageview-design-time006.png)

* __Item Alignment__: Determines the alignment of items within the items container.
* __Item Fit Mode__:Determines the fit mode of the items. The available modes are *None*, *Fill*, *Shrink*, *ShrinkAndFill*, *FullHeight* and *MultiLine*.
* __DisplayMode__: Sets the display mode. The possible values are - *Auto*, *Compact*, *Expanded*, *Minimal*.
* __Header Height__: Sets the header height.
* __Expanded Pane Width__: Sets the pages panel width when the mode is set to *Expanded*.
* __Collapsed Pane Width__: Sets the pages panel width when the mode is set to *Compact*.
* __Compact Mode Threshold Width__: This property determines when the DisplayMode will be switched from Compact to Minimal. The DisplayMode should be set to Auto in order this to work.
* __Expanded Mode Threshold Width__:This property determines when the DisplayMode will be switched from Expanded to Compact. The DisplayMode should be set to Auto in order this to work.


