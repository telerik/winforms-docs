---
title: Structure
page_title: Structure - UI for WinForms Documentation
description: RadCommandBar is a fully theme-able tool strip that provides unprecedented flexibility
slug: winforms/commandbar/structure
tags: structure
published: True
position: 1
previous_url: commandbar-structure,commandbar-item-types
---

# Structure 

>caption Figure 1: RadCommandBar's elements hierarchy

![WinForms RadCommandBar RadCommandBar's elements hierarchy](images/commandbar-structure005.png)

The Telerik __RadCommandBar__ is built up of five levels of nested components:
      

* RadCommandbar

	* RadCommandBarElement

		* CommandBarRowElement (Rows Collection)

			* CommandBarStripElement (Strips Collection)

				* RadCommandBarGripButton

				* Items ( arranged in ItemsLayout)

				* RadCommandBarOverflowButton

## RadCommandBar

The __RadCommandBarElement__ object represents the overall area of the form occupied by the Telerik __RadCommandBar__.

>caption Figure 2: RadCommandBarElement

![WinForms RadCommandBar RadCommandBarElement](images/commandbar-structure001.png)

## CommandBarRowElement

The __CommandBarRowElement__ object represents a horizontal or vertical line within the __RadCommandBarElement__ where individual strip elements are displayed.

>caption Fig.3 CommandBarRowElement

![WinForms RadCommandBar CommandBarRowElement](images/commandbar-structure002.png)

## CommandBarStripElement

The __CommandBarStripElement__ object represents an individual toolstrip within a __CommandBarRowElement__. Descendants of the __RadCommandBarBaseItem__ are arranged within a particular __CommandBarStripElement__.

>caption Fig.4 CommandBarStripElement

![WinForms RadCommandBar 4 CommandBarStripElement](images/commandbar-structure003.png)

## RadCommandBarBaseItem descendants

You can add these item types to the __CommandBarStripElement__ from the context menu or the RadElement Collection Editor:

| Name | Example | Description |
| ------ | ------ | ------ |
|CommandBarButton|![WinForms RadCommandBar commandbar-item-types 001](images/commandbar-item-types001.png)|Displays a button containing text, an image, or both. Set the DrawText property to true to display the text of the button. Use the TextImageRelation property to control the layout of image and text: Overlay, ImageAboveText, TextAboveImage, ImageBeforeText, TextBeforeImage.|
|CommandBarToggleButton|![WinForms RadCommandBar commandbar-item-types 002](images/commandbar-item-types002.png)|Displays a button that can toggle between "pressed" and "unpressed" states. The button element ToggleState property indicates the current condition of the button.|
|CommandBarTextBox|![WinForms RadCommandBar commandbar-item-types 003](images/commandbar-item-types003.png)|Displays a text box that can accept user input. Use the Text property to get and set its content.|
|CommandBarDropDownList|![WinForms RadCommandBar commandbar-item-types 004](images/commandbar-item-types004.png)|Displays a dropdown list. Use the SelectedIndexChanged and SelectedValueChanged events to respond to user choices.|
|CommandBarLabel|![WinForms RadCommandBar commandbar-item-types 005](images/commandbar-item-types005.png)|Displays static text on a strip element. Set the Text property to change the content.|
|CommandBarSeparatorItem|![WinForms RadCommandBar commandbar-item-types 006](images/commandbar-item-types006.png)|Adds empty space between other elements on a strip element.|
|CommandBarDropDownButton|![WinForms RadCommandBar commandbar-item-types 007](images/commandbar-item-types007.png)|Displays a button with a drop-down arrow. Clicking the drop-down arrow displays a menu of choices. Use the Items property to populate the menu. Attach event handlers for individual element events in code to respond to user actions.|
|CommandBarSplitButton|![WinForms RadCommandBar commandbar-item-types 008](images/commandbar-item-types008.png)|Displays a button with a drop-down arrow. Clicking the drop-down arrow displays a menu of choices. Clicking the button has the same effect as clicking the default item from the menu.|
|CommandBarHostItem|![WinForms RadCommandBar commandbar-item-types 009](images/commandbar-item-types009.png)|Item that can host any RadElement. Use the **HostedItem** property to get/set the element that you are hosting. Please check the example [WinForms RadCommandBar here]({%slug host-element-in-commandbar%}).|
|CommandBarMaskedEditBox|![WinForms RadCommandBar commandbar-item-types 010](images/commandbar-item-types010.png)|Displays [WinForms RadCommandBar RadMaskedEditBox]({%slug winforms/editors/maskededitbox%}).|


>caption Fig.5 RadCommandBarBaseItem 

![WinForms RadCommandBar 5 RadCommandBarBaseItem](images/commandbar-structure004.png)
