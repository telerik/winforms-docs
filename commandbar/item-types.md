---
title: Item Types
page_title: Item Types | UI for WinForms Documentation
description: Item Types
slug: winforms/commandbar/item-types
tags: item,types
published: True
position: 3
previous_url: commandbar-item-types
---

# Item Types

You can add these item types to the __CommandBarStripElement__ from the context menu or the RadElement Collection Editor:

## Item Types


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
