---
title: Loading And Saving Layouts
page_title: Loading And Saving Layouts | RadDock
description: Loading And Saving the state of RadDock.
slug: winforms/dock/loading-and-saving-layouts/loading-and-saving-layouts
tags: loading,and,saving,layouts
published: True
position: 0
previous_url: dock-loading-and-saving-layouts
---

# Loading And Saving Layouts
 

__RadDock__ provides methods to save and load layouts. A layout records the size and arrangement of all __DockWindows__ within __RadDock__. This saves all managed windows (__ToolWindow__ and __DocumentWindow__) regardless of state (i.e. a window may be hidden or floating and still be saved). 
       
## To Save a Layout

To save a layout, call the __RadDock.SaveToXML__ method:

#### SaveToXml 

{{source=..\SamplesCS\Dock\SaveLoadLayout.cs region=saveLayout}} 
{{source=..\SamplesVB\Dock\SaveLoadLayout.vb region=saveLayout}} 

````C#
this.radDock1.SaveToXml("c:\\layout1.xml");

````
````VB.NET
Me.RadDock1.SaveToXml("c:\layout1.xml")

````

{{endregion}} 
 
You can use the __DockWindowSerializing__ event to exclude windows from the saved layout: 

{{source=..\SamplesCS\Dock\SaveLoadLayout.cs region=Serializing}} 
{{source=..\SamplesVB\Dock\SaveLoadLayout.vb region=Serializing}} 

````C#
void radDock1_DockWindowSerializing(object sender, DockWindowCancelEventArgs e)
{
    if (e.NewWindow.Text == "Window Top")
    {
        e.Cancel = true;
    }
}

````
````VB.NET
Private Sub radDock1_DockWindowSerializing(ByVal sender As Object, ByVal e As DockWindowCancelEventArgs)
    If e.NewWindow.Text = "Window Top" Then
        e.Cancel = True
    End If
End Sub

````

{{endregion}} 
 

## To Load a Layout

To load a layout, call the __RadDock.LoadFromXML__ method:

#### LoadFromXml 

{{source=..\SamplesCS\Dock\SaveLoadLayout.cs region=loadLayout}} 
{{source=..\SamplesVB\Dock\SaveLoadLayout.vb region=loadLayout}} 

````C#
this.radDock1.LoadFromXml("c:\\layout1.xml");

````
````VB.NET
Me.RadDock1.LoadFromXml("c:\layout1.xml")

````

{{endregion}} 
 

| RELATED VIDEOS |  |
| ------ | ------ |
|[Saving and Loading RadDock for WinForms Layouts](http://www.telerik.com/videos/winforms/saving-and-loading-raddock-for-winforms-layouts) In this video, you will learn how to use the simple XML serialization features of RadDock for WinForms to easily save and load RadDock layouts. (Runtime: 07:03)|![dock-loading-and-saving-layouts 001](images/dock-loading-and-saving-layouts001.png)|

# See Also

* [Tutorial Saving and Loading Layout and Content]({%slug winforms/dock/loading-and-saving-layouts/tutorial:-saving-and-loading-layout-and-content%})     
 
