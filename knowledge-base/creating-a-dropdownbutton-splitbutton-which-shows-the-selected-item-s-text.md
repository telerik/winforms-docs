---
title: Creating a DropDownButton / SplitButton which shows the selected item’s text
description: Creating a DropDownButton / SplitButton which shows the selected item’s text. Check it now!
type: how-to
page_title: Creating a DropDownButton / SplitButton which shows the selected item’s text
slug: creating-a-dropdownbutton-splitbutton-which-shows-the-selected-item-s-text
tags: dropdownbutton
res_type: kb
---

|Product Version|Product|Author|Last modified|
|----|----|----|----|
|Q2 2007|RadControls for WinForms|Angel Kanchev|August 13, 2007|
 
 
**HOW-TO**   
Create a DropDownButton / SplitButton which shows the selected item’s text  
   
**DESCRIPTION**  
This KB article describes a way to show a DropDownButton item’s text in the button itself, after the item has been clicked. It also applies to the SplitButton control.  
   
**SOLUTION**  
 
1. Subscribe to the **Click** event for all menu items in the DropDownButton that have no subitems.
2. Subscribe for **Load** and **FormClose** events of the Form and fill them like this:  

````C#
private void Form1_Load(object sender, EventArgs e)        
{        
    RadDropDownButtonElement buttonElement = (RadDropDownButtonElement)this.radDropDownButton1.RootElement.Children[0];        
    SubscribeMenuItems(buttonElement.DropDownMenu.Items);        
}        
       
private void Form1_FormClosed(object sender, FormClosedEventArgs e)        
{        
    RadDropDownButtonElement buttonElement = (RadDropDownButtonElement)this.radDropDownButton1.RootElement.Children[0];        
    UnsubscribeMenuItems(buttonElement.DropDownMenu.Items);        
}    

````
````VB.NET
Class SurroundingClass
    Private Sub Form1_Load(ByVal sender As Object, ByVal e As EventArgs)
        Dim buttonElement As RadDropDownButtonElement = CType(Me.radDropDownButton1.RootElement.Children(0), RadDropDownButtonElement)
        SubscribeMenuItems(buttonElement.DropDownMenu.Items)
    End Sub

    Private Sub Form1_FormClosed(ByVal sender As Object, ByVal e As FormClosedEventArgs)
        Dim buttonElement As RadDropDownButtonElement = CType(Me.radDropDownButton1.RootElement.Children(0), RadDropDownButtonElement)
        UnsubscribeMenuItems(buttonElement.DropDownMenu.Items)
    End Sub
End Class

```` 


3. Add the private methods that will recursively subscribe / unsubscribe for **Click** event for every menu item that has no subitems:  

````C#
private void SubscribeMenuItems(RadItemCollection menuItems)        
{        
    for (int i = 0; i < menuItems.Count; i++)        
    {        
        RadMenuItem subMenuItem = menuItems[i] as RadMenuItem;        
        if (subMenuItem != null)        
        {        
            if (subMenuItem.Items.Count == 0)        
                subMenuItem.Click += new EventHandler(DropDownMenuItem_Click);        
            else        
                SubscribeMenuItems(subMenuItem.Items);        
        }        
    }        
}        
       
private void UnsubscribeMenuItems(RadItemCollection menuItems)        
{        
    for (int i = 0; i < menuItems.Count; i++)        
    {        
        RadMenuItem subMenuItem = menuItems[i] as RadMenuItem;        
        if (subMenuItem != null)        
        {        
            if (subMenuItem.Items.Count == 0)        
                subMenuItem.Click -= new EventHandler(DropDownMenuItem_Click);        
            else        
                UnsubscribeMenuItems(subMenuItem.Items);        
        }        
    }        
}        
       
private void DropDownMenuItem_Click(object sender, EventArgs e)        
{        
    RadMenuItem clickedMenuItem = (RadMenuItem)sender;        
    this.radDropDownButton1.Text = clickedMenuItem.Text;        
}  

````
````VB.NET
Class SurroundingClass
    Private Sub SubscribeMenuItems(ByVal menuItems As RadItemCollection)
        For i As Integer = 0 To menuItems.Count - 1
            Dim subMenuItem As RadMenuItem = TryCast(menuItems(i), RadMenuItem)

            If subMenuItem IsNot Nothing Then

                If subMenuItem.Items.Count = 0 Then
                    subMenuItem.Click += New EventHandler(AddressOf DropDownMenuItem_Click)
                Else
                    SubscribeMenuItems(subMenuItem.Items)
                End If
            End If
        Next
    End Sub

    Private Sub UnsubscribeMenuItems(ByVal menuItems As RadItemCollection)
        For i As Integer = 0 To menuItems.Count - 1
            Dim subMenuItem As RadMenuItem = TryCast(menuItems(i), RadMenuItem)

            If subMenuItem IsNot Nothing Then

                If subMenuItem.Items.Count = 0 Then
                    subMenuItem.Click -= New EventHandler(AddressOf DropDownMenuItem_Click)
                Else
                    UnsubscribeMenuItems(subMenuItem.Items)
                End If
            End If
        Next
    End Sub

    Private Sub DropDownMenuItem_Click(ByVal sender As Object, ByVal e As EventArgs)
        Dim clickedMenuItem As RadMenuItem = CType(sender, RadMenuItem)
        Me.radDropDownButton1.Text = clickedMenuItem.Text
    End Sub
End Class

```` 

 
The event handler **DropDownMenuItem_Click()** does the job here -  the text of the DropDown button is set to the text of the clicked menu item.  
   
Note that the subscription for **Click** must be synchronized with the menu items. If a menu item is added **DropDownMenuItem\_Click()** must be added to its **Click** event. If a menu item is removed its **Click** event must be unsubscribed. For simplicity (and when the menu items are not too many) before modification of the menu items can be called **UnsubscribeMenuItems()** and after the modification - **SubscribeMenuItems()**.


