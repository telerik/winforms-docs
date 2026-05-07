---
title: RadMenuItem Events
page_title: RadMenuItem Events - WinForms Menu Control
description: Get familiar with the events that RadMenuItem offers.
slug: winforms/menus/menu/working-with-radmenu-items/radmenuitem-events
tags: radmenuitem,events
published: True
position: 5
previous_url: menus-menu-working-with-radmenu-items-radmenuitem-events
---

# RadMenuItem Events

Usually you will handle the events of the objects that make up a menu, not the __RadMenu__ itself.

## RadMenuItem Events

The key event for the __RadMenuItem__ object is the __Click__ event, which is fired when the user selects the menu item or presses the associated shortcut key. If the menu item is designed to display check marks, then the __ToggleStateChanging__ and __ToggleStateChanged__  events fire when a check mark is applied to or removed from the **RadMenuItem** object.

* __ToggleStateChanging:__ Passes a __StateChangingEventArgs__ parameter with properties for __NewValue__, __OldValue__ and __Cancel__. Both __NewValue__ and __OldValue__ are __ToggleState__ enumeration types with values *Indeterminate*, *On* and *Off*. If the __Cancel__ argument is set to *true* the check-box does not change its state and the __ToggleStatedChanged__ event does not fire.

#### Handling the ToggleStateChanging event

<snippet id='menus-menuevents-togglestatechanging-cs' />
<snippet id='menus-menuevents-togglestatechanging-vb' />



* __ToggleStateChanged__: This event fires when the check-box state changes between one of the __ToggleState__ enumeration values of *On*, *Off* or *Indeterminate*. The __StateChangedEventaArgs__ passed to this event handler contain the __ToggleState__ property.

#### Handling the ToggleStateChanged event

<snippet id='menus-menuevents-togglestatechanged-cs' />
<snippet id='menus-menuevents-togglestatechanged-vb' />



## RadMenuComboItem Events

For the __RadMenuComboItem__, you will probably want to work with the events of the embedded __ComboBoxElement__ property. The example below uses the ComboBoxElement.__SelectedIndexChanged__ event to get the currently selected combo box value.

#### Handling the SelectedIndexChanged event of RadMenuComboItem

<snippet id='menus-menuevents-comboevent-cs' />
<snippet id='menus-menuevents-comboevent-vb' />



## RadMenuContentItem

Handle the events for the control assigned to RadMenuContentItem.__ContentElement__, not the content item itself. In the example below an event handler is attached to the __Click__ event of a button.

#### Handling events for controls embedded in RadMenuContentItem

<snippet id='menus-menuevents-contentitem-cs' />
<snippet id='menus-menuevents-contentitem-vb' />



# See Also

* [Adding and Removing Items]({%slug winforms/menus/menu/working-with-radmenu-items/adding-and-removing-items%})
* [Nesting Controls in Menu Items]({%slug winforms/menus/menu/working-with-radmenu-items/nesting-controls-in-menu-items%})	
* [Multi-Line Menu Item Text]({%slug winforms/menus/menu/working-with-radmenu-items/multi-line-menu-item-text%})
* [Assign Shortcuts to Menu Items]({%slug winforms/menus/menu/working-with-radmenu-items/assign-shortcuts-to-menu-items%})



