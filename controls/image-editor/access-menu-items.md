---
title: Access Menu Items
page_title:  Access Menu Items
description: Access Menu Items
slug: radimageeditor-access-menu-items
tags: items, access, radimageeditor
published: True
position: 9
---

# Access Menu Items

This article shows how you can access the menu items. This is useful when you need to hide some items and disable specific functionality.

## Hiding the top menu 

The following snippet shows how you can hide the top menu which contains the Open, Save, Undo, and Redo buttons.

````C#
radImageEditor1.ImageEditorElement.CommandsElement.TopCommandsStackElement.Visibility = ElementVisibility.Collapsed;
````
````VBNET
radImageEditor1.ImageEditorElement.CommandsElement.TopCommandsStackElement.Visibility = ElementVisibility.Collapsed
````


## Iterating the items 

The following snippet shows how you can iterate all items a nd hide a specific menu item. 


````C#
foreach (var item in radImageEditor1.ImageEditorElement.CommandsElement.CommandsStackElement.Children)
{
    if (item is RadMenuItem)
    {
        var menuItem = (RadMenuItem)item;
        Console.WriteLine(menuItem.Text);
        if (menuItem.Text == "Crop")
        {
            menuItem.Visibility = ElementVisibility.Collapsed;
        }
      
    }
}

````
````VB.NET
For Each item In radImageEditor1.ImageEditorElement.CommandsElement.CommandsStackElement.Children
	If TypeOf item Is RadMenuItem Then
		Dim menuItem = CType(item, RadMenuItem)
		Console.WriteLine(menuItem.Text)
		If menuItem.Text = "Crop" Then
			menuItem.Visibility = ElementVisibility.Collapsed
		End If

	End If
Next item

````

