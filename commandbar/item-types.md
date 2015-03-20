---
title: Item Types
page_title: Item Types
description: Item Types
slug: commandbar-item-types
tags: item,types
published: True
position: 2
---

# Item Types



You can add these item types to the CommandBarStripElement from the context menu or the RadElement Collection Editor:

## Item Types
<table><th><tr><td>

Name</td><td>

Example</td><td>

Description</td></tr></th><tr><td>

CommandBarButton</td><td>![commandbar-item-types 001](images/commandbar-item-types001.png)</td><td>

Displays a button containing text, an image, or both. Set the DrawText
                property to true to display the text of the button. Use the TextImageRelation
                property to control the layout of image and text: Overlay, ImageAboveText,
                TextAboveImage, ImageBeforeText, TextBeforeImage.
             </td></tr><tr><td>

CommandBarToggleButton</td><td>![commandbar-item-types 002](images/commandbar-item-types002.png)</td><td>

Displays a button that can toggle between "pressed" and "unpressed" states. The button element
                ToggleState property indicates the current condition of the button.
            </td></tr><tr><td>

CommandBarTextBox</td><td>![commandbar-item-types 003](images/commandbar-item-types003.png)</td><td>

Displays a text box that can accept user input. Use the Text property to get and set its content.</td></tr><tr><td>

CommandBarDropDownList</td><td>![commandbar-item-types 004](images/commandbar-item-types004.png)</td><td>

Displays a dropdown list. Use the SelectedIndexChanged and SelectedValueChanged events to respond to user choices.</td></tr><tr><td>

CommandBarLabel</td><td>![commandbar-item-types 005](images/commandbar-item-types005.png)</td><td>

Displays static text on a strip element. Set the Text property to change the content.</td></tr><tr><td>

CommandBarSeparatorItem</td><td>![commandbar-item-types 006](images/commandbar-item-types006.png)</td><td>

Adds empty space between other elements on a strip element.</td></tr><tr><td>

CommandBarDropDownButton</td><td>![commandbar-item-types 007](images/commandbar-item-types007.png)</td><td>

Displays a button with a drop-down arrow. Clicking the drop-down arrow displays a menu of choices. Use the Items property to populate the menu. Attach event handlers for individual element events in code to respond to user actions.</td></tr><tr><td>

CommandBarSplitButton</td><td>![commandbar-item-types 008](images/commandbar-item-types008.png)</td><td>

Displays a button with a drop-down arrow. Clicking the drop-down arrow displays a menu of choices. Clicking the button has the same effect as clicking the default item from the menu.</td></tr><tr><td>

CommandBarHostItem</td><td>![commandbar-item-types 009](images/commandbar-item-types009.png)</td><td>

Item that can host any RadElement. Use the HostedElement property to get/set the element that you are hosting.</td></tr></table>
