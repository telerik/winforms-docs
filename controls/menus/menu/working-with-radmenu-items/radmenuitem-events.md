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

{{source=..\SamplesCS\Menus\Menu\MenuEvents.cs region=toggleStateChanging}} 
{{source=..\SamplesVB\Menus\Menu\MenuEvents.vb region=toggleStateChanging}} 

````C#
void radMenuItem2_ToggleStateChanging(object sender, StateChangingEventArgs args)
{
    if (args.NewValue == Telerik.WinControls.Enumerations.ToggleState.Indeterminate)
    {
        args.Cancel = true;
    }
}

````
````VB.NET
Private Sub radMenuItem2_ToggleStateChanging(ByVal sender As Object, ByVal args As StateChangingEventArgs)
    If args.NewValue = Telerik.WinControls.Enumerations.ToggleState.Indeterminate Then
        args.Cancel = True
    End If
End Sub

````

{{endregion}} 

* __ToggleStateChanged__: This event fires when the check-box state changes between one of the __ToggleState__ enumeration values of *On*, *Off* or *Indeterminate*. The __StateChangedEventaArgs__ passed to this event handler contain the __ToggleState__ property.

#### Handling the ToggleStateChanged event

{{source=..\SamplesCS\Menus\Menu\MenuEvents.cs region=toggleStateChanged}} 
{{source=..\SamplesVB\Menus\Menu\MenuEvents.vb region=toggleStateChanged}} 

````C#
void radMenuItem2_ToggleStateChanged(object sender, StateChangedEventArgs args)
{
    MessageBox.Show(args.ToggleState.ToString());
}

````
````VB.NET
Private Sub radMenuItem2_ToggleStateChanged(ByVal sender As Object, ByVal args As StateChangedEventArgs)
    MessageBox.Show(args.ToggleState.ToString())
End Sub

````

{{endregion}} 

## RadMenuComboItem Events

For the __RadMenuComboItem__, you will probably want to work with the events of the embedded __ComboBoxElement__ property. The example below uses the ComboBoxElement.__SelectedIndexChanged__ event to get the currently selected combo box value.

#### Handling the SelectedIndexChanged event of RadMenuComboItem

{{source=..\SamplesCS\Menus\Menu\MenuEvents.cs region=comboEvent}} 
{{source=..\SamplesVB\Menus\Menu\MenuEvents.vb region=comboEvent}} 

````C#
void Form1_Load(object sender, EventArgs e)
{
    radMenuComboItem1.ComboBoxElement.SelectedIndexChanged += new Telerik.WinControls.UI.Data.PositionChangedEventHandler(ComboBoxElement_SelectedIndexChanged);
}
void ComboBoxElement_SelectedIndexChanged(object sender, EventArgs e)
{
    RadListDataItem item = (sender as RadDropDownListElement).SelectedItem as RadListDataItem;
    MessageBox.Show(item.Text);
}

````
````VB.NET
Private Sub Form1_Load(ByVal sender As Object, ByVal e As EventArgs)
    AddHandler radMenuComboItem1.ComboBoxElement.SelectedIndexChanged, AddressOf ComboBoxElement_SelectedIndexChanged
End Sub
Private Sub ComboBoxElement_SelectedIndexChanged(ByVal sender As Object, ByVal e As EventArgs)
    Dim item As RadListDataItem = TryCast((TryCast(sender, RadDropDownListElement)).SelectedItem, RadListDataItem)
    MessageBox.Show(item.Text)
End Sub

````

{{endregion}} 

## RadMenuContentItem

Handle the events for the control assigned to RadMenuContentItem.__ContentElement__, not the content item itself. In the example below an event handler is attached to the __Click__ event of a button.

#### Handling events for controls embedded in RadMenuContentItem

{{source=..\SamplesCS\Menus\Menu\MenuEvents.cs region=contentItem}} 
{{source=..\SamplesVB\Menus\Menu\MenuEvents.vb region=contentItem}} 

````C#
RadMenuContentItem buttonItem = new RadMenuContentItem();
RadButtonElement button = new RadButtonElement();
button.Text = "OK";
button.Click += new EventHandler(button_Click);
buttonItem.ContentElement = button;
radMenu1.Items.Add(buttonItem);

````
````VB.NET
Dim buttonItem As New RadMenuContentItem()
Dim button As New RadButtonElement()
button.Text = "OK"
AddHandler button.Click, AddressOf button_Click
buttonItem.ContentElement = button
RadMenu1.Items.Add(buttonItem)

````

{{endregion}} 

# See Also

* [Adding and Removing Items]({%slug winforms/menus/menu/working-with-radmenu-items/adding-and-removing-items%})
* [Nesting Controls in Menu Items]({%slug winforms/menus/menu/working-with-radmenu-items/nesting-controls-in-menu-items%})	
* [Multi-Line Menu Item Text]({%slug winforms/menus/menu/working-with-radmenu-items/multi-line-menu-item-text%})
* [Assign Shortcuts to Menu Items]({%slug winforms/menus/menu/working-with-radmenu-items/assign-shortcuts-to-menu-items%})



