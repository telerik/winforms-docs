---
title: Structure
page_title: Structure | UI for WinForms Documentation
description: RadCommandBar is a fully theme-able tool strip that provides unprecedented flexibility
slug: winforms/commandbar/structure
tags: structure
published: True
position: 1
previous_url: commandbar-structure,commandbar-item-types
---

# Structure 

>caption Figure 1: RadCommandBar's elements hierarchy

![commandbar-structure 005](images/commandbar-structure005.png)

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

![commandbar-structure 001](images/commandbar-structure001.png)

## CommandBarRowElement

The __CommandBarRowElement__ object represents a horizontal or vertical line within the __RadCommandBarElement__ where individual strip elements are displayed.

>caption Fig.3 CommandBarRowElement

![commandbar-structure 002](images/commandbar-structure002.png)

## CommandBarStripElement

The __CommandBarStripElement__ object represents an individual toolstrip within a __CommandBarRowElement__. Descendants of the __RadCommandBarBaseItem__ are arranged within a particular __CommandBarStripElement__.

>caption Fig.4 CommandBarStripElement

![commandbar-structure 003](images/commandbar-structure003.png)

## RadCommandBarBaseItem descendants

You can add these item types to the __CommandBarStripElement__ from the context menu or the RadElement Collection Editor:

| Name | Example | Description |
| ------ | ------ | ------ |
|CommandBarButton|![commandbar-item-types 001](images/commandbar-item-types001.png)|Displays a button containing text, an image, or both. Set the DrawText property to true to display the text of the button. Use the TextImageRelation property to control the layout of image and text: Overlay, ImageAboveText, TextAboveImage, ImageBeforeText, TextBeforeImage.|
|CommandBarToggleButton|![commandbar-item-types 002](images/commandbar-item-types002.png)|Displays a button that can toggle between "pressed" and "unpressed" states. The button element ToggleState property indicates the current condition of the button.|
|CommandBarTextBox|![commandbar-item-types 003](images/commandbar-item-types003.png)|Displays a text box that can accept user input. Use the Text property to get and set its content.|
|CommandBarDropDownList|![commandbar-item-types 004](images/commandbar-item-types004.png)|Displays a dropdown list. Use the SelectedIndexChanged and SelectedValueChanged events to respond to user choices.|
|CommandBarLabel|![commandbar-item-types 005](images/commandbar-item-types005.png)|Displays static text on a strip element. Set the Text property to change the content.|
|CommandBarSeparatorItem|![commandbar-item-types 006](images/commandbar-item-types006.png)|Adds empty space between other elements on a strip element.|
|CommandBarDropDownButton|![commandbar-item-types 007](images/commandbar-item-types007.png)|Displays a button with a drop-down arrow. Clicking the drop-down arrow displays a menu of choices. Use the Items property to populate the menu. Attach event handlers for individual element events in code to respond to user actions.|
|CommandBarSplitButton|![commandbar-item-types 008](images/commandbar-item-types008.png)|Displays a button with a drop-down arrow. Clicking the drop-down arrow displays a menu of choices. Clicking the button has the same effect as clicking the default item from the menu.|
|CommandBarHostItem|![commandbar-item-types 009](images/commandbar-item-types009.png)|Item that can host any RadElement. Use the HostedElement property to get/set the element that you are hosting.|

>caption Fig.5 RadCommandBarBaseItem 

![commandbar-structure 004](images/commandbar-structure004.png)
