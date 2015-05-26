---
title: RadMenuItem Events
page_title: RadMenuItem Events | UI for WinForms Documentation
description: RadMenuItem Events
slug: winforms/menus/menu/working-with-radmenu-items/radmenuitem-events
tags: radmenuitem,events
published: True
position: 5
---

# RadMenuItem Events



Typically you will handle the events of the objects that make up a menu, not the __RadMenu__ itself.

## RadMenuItem Events

The key event for the __RadMenuItem__ object is the
        __Click__ event, which is fired when the user selects the menu item 
        or presses the associated shortcut key. If the menu item is designed to display check marks, 
        then the __ToggleStateChanging__ and __ToggleStateChanged__ 
        events fire when a check mark is applied to or removed from the RadMenuItem object.

* __ToggleStateChanging:__Passes a __StateChangingEventArgs__ parameter with properties for __NewValue__, 
            __OldValue__ and __Cancel__.
            Both __NewValue__ and __OldValue__ are 
            __ToggleState__enumeration types with values __Intermediate__, __On__ and __Off__. 
            If __Canceled__is set to true the checkbox does not change state
            and the __ToggleStatedChanged__event does not fire.
            #_[C#] Handling the ToggleStateChanging event_

	



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
    '
````

{{endregion}} 




* __ToggleStateChanged__: This event fires when the checkbox state changes
            between one of the __ToggleState__enumeration values of 
            __On__, __Off__ or __Intermediate__.
            The __StateChangedEventaArgs__passed to this event handler contain the
            __ToggleState__property.
            #_[C#] Handling the ToggleStateChanged event_

	



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
    '
````

{{endregion}} 




## RadMenuComboItem Events

For the __RadMenuComboItem__, you will probably want to work with the events of the embedded __ComboBoxElement__property. The example below uses the __ComboBoxElement____SelectedIndexChanged__ event to get the currently selected combo box value.#_[C#] Handling the SelectedIndexChanged event of RadMenuComboItem_

	



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
    '
````

{{endregion}} 




## RadMenuContentItem

Handle the events for the control assigned to __RadMenuContentItem ContentElement__, not the content item itself. In the example below an event handler is attached to the __Click__of a button.#_[C#] Handling events for controls embedded in RadMenuContentItem_

	



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
        '
````

{{endregion}} 



