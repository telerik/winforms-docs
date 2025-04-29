---
title: Overview
page_title: Overview - WinForms ContextMenu
description: WinForms ContextMenu is a non-visual component that sits in the component tray located below the form design surface.
slug: winforms/menus/contextmenu/context-menus
tags: context,menus
published: True
position: 0
CTAControlName: ContextMenu
previous_url: menus-context-menu-getting-started
---

# WinForms ContextMenu Overview

To add context menus in your application, you can use __RadContextMenu__. The control is a non-visual component that sits in the component tray located below the form design surface. __RadContextMenu__, like __RadMenu__, can be themed and has **Items** collection that accepts __RadMenuItem__, __RadMenuComboBoxItem__, __RadMenuSeparatorItem__ and __RadMenuContextItem__. You can subscribe to the **Click** event of each menu item and execute the desired logic.

{% if site.has_cta_panels == true %}
{% include cta-panel-overview.html %}
{% endif %}

>caption Figure 1: RadContextMenu

![WinForms RadContextMenu Overview](images/menus-context-menu-getting-started001.png)

There are two ways to attach a context menu to a given control or portion of a control: 

* For those **RadControls** that have a __ContextMenu__ or __RadContextMenu__ properties you can assign the __RadContextMenu__ in the designer or in code.

#### Assigning a RadContextMenu

{{source=..\SamplesCS\Menus\ContextMenu\ContextMenu1.cs region=assignToTreeView}} 
{{source=..\SamplesVB\Menus\ContextMenu\ContextMenu1.vb region=assignToTreeView}} 

````C#
radTreeView1.Nodes[0].ContextMenu = radContextMenu1;

````
````VB.NET
RadTreeView1.Nodes(0).ContextMenu = RadContextMenu1

````

{{endregion}} 

>important The __ContextMenuStrip__ property refers to a Windows standard control. This property drop down will not display __RadMenu__ or __RadContextMenu__ components that exist on the form.
>


* Handle the mouse down event for the control that requires the context menu and call the RadContextMenu.__Show()__ method.

#### Handling the MouseDown event

{{source=..\SamplesCS\Menus\ContextMenu\ContextMenu1.cs region=mouseDown}} 
{{source=..\SamplesVB\Menus\ContextMenu\ContextMenu1.vb region=mouseDown}} 

````C#
void radCalendar1_MouseDown(object sender, MouseEventArgs e)
{
    if (e.Button == MouseButtons.Right)
    {
        Point p = (sender as Control).PointToScreen(e.Location);
        radContextMenu1.Show(p.X, p.Y);
    }
}

````
````VB.NET
Private Sub radCalendar1_MouseDown(ByVal sender As Object, ByVal e As MouseEventArgs)
    If e.Button = MouseButtons.Right Then
        Dim p As Point = (TryCast(sender, Control)).PointToScreen(e.Location)
        RadContextMenu1.Show(p.X, p.Y)
    End If
End Sub

````

{{endregion}} 

## Telerik UI for WinForms Learning Resources
* [Telerik UI for WinForms ContextMenu Homepage](https://www.telerik.com/products/winforms/contextmenu.aspx)
* [Get Started with the Telerik UI for WinForms ContextMenu]({%slug winforms/menus/contextmenu/assign-radcontextmenu-to-telerik-and-non-telerik-controls%})
* [Telerik UI for WinForms API Reference](https://docs.telerik.com/devtools/winforms/api/)
* [Getting Started with Telerik UI for WinForms Components]({%slug winforms/getting-started/first-steps%})
* [Telerik UI for WinForms Virtual Classroom (Training Courses for Registered Users)](https://learn.telerik.com/learn/course/external/view/elearning/17/TelerikUIforWinForms) 
* [Telerik UI for WinForms Forum](https://www.telerik.com/forums/winforms)
* [Telerik UI for WinForms Knowledge Base](https://docs.telerik.com/devtools/winforms/knowledge-base)


## Telerik UI for WinForms Additional Resources
* [Telerik UI for WinForms Product Overview](https://www.telerik.com/products/winforms.aspx)
* [Telerik UI for WinForms Blog](https://www.telerik.com/blogs/desktop-winforms)
* [Telerik UI for WinForms Videos](https://www.telerik.com/videos/product/winforms)
* [Telerik UI for WinForms Roadmap](https://www.telerik.com/support/whats-new/winforms/roadmap)
* [Telerik UI for WinForms Pricing](https://www.telerik.com/purchase/individual/winforms.aspx)
* [Telerik UI for WinForms Code Library](https://www.telerik.com/support/code-library/winforms)
* [Telerik UI for WinForms Support](https://www.telerik.com/support/winforms)
* [What’s New in Telerik UI for WinForms](https://www.telerik.com/support/whats-new/winforms)

## See Also

* [Assign RadContextMenu to Telerik and non-Telerik controls]({%slug winforms/menus/contextmenu/assign-radcontextmenu-to-telerik-and-non-telerik-controls%})



