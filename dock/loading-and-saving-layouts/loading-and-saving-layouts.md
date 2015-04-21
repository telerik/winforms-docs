---
title: Loading And Saving Layouts
page_title: Loading And Saving Layouts
description: Loading And Saving Layouts
slug: dock-loading-and-saving-layouts
tags: loading,and,saving,layouts
published: True
position: 0
---

# Loading And Saving Layouts



__RadDock__ provides methods to save and load layouts. A layout
        records the size and arrangement of all __DockWindows__ within
        __RadDock__. This saves all managed dockables
        (__ToolWindow__ and __DocumentWindow__) regardless of
        state (i.e. a window may be hidden or floating and still be saved). 
      

## To Save a Layout

To save a layout, call the __RadDock.SaveToXML()__ method:
        

#### __[C#] SaveToXml__

{{source=..\SamplesCS\Dock\SaveLoadLayout.cs region=saveLayout}}
	            this.radDock1.SaveToXml("c:\\layout1.xml");
	{{endregion}}



#### __[VB.NET] SaveToXml__

{{source=..\SamplesVB\Dock\SaveLoadLayout.vb region=saveLayout}}
	        Me.RadDock1.SaveToXml("c:\layout1.xml")
	{{endregion}}



You can use the __DockWindowSerializing__ event to exclude windows from the saved layout:
        

#### __[C#]__

{{source=..\SamplesCS\Dock\SaveLoadLayout.cs region=Serializing}}
	        void radDock1_DockWindowSerializing(object sender, DockWindowCancelEventArgs e)
	        {
	            if (e.NewWindow.Text == "Window Top")
	            {
	                e.Cancel = true;
	            }
	        }
	{{endregion}}



#### __[VB.NET]__

{{source=..\SamplesVB\Dock\SaveLoadLayout.vb region=Serializing}}
	    Private Sub radDock1_DockWindowSerializing(ByVal sender As Object, ByVal e As DockWindowCancelEventArgs)
	        If e.NewWindow.Text = "Window Top" Then
	            e.Cancel = True
	        End If
	    End Sub
	{{endregion}}



## To Load a Layout

To load a layout, call the __RadDock.LoadFromXML()__method:
        

#### __[C#] LoadFromXml__

{{source=..\SamplesCS\Dock\SaveLoadLayout.cs region=loadLayout}}
	            this.radDock1.LoadFromXml("c:\\layout1.xml");
	{{endregion}}



#### __[VB.NET] LoadFromXml__

{{source=..\SamplesVB\Dock\SaveLoadLayout.vb region=loadLayout}}
	        Me.RadDock1.LoadFromXml("c:\layout1.xml")
	{{endregion}}


<table><th><tr><td>

RELATED VIDEOS</td><td></td></tr></th><tr><td>

[Saving and Loading RadDock for WinForms Layouts](http://tv.telerik.com/watch/winforms/raddock/saving-loading-raddock-winforms-layouts)

In this video, you will learn how to use the simple XML serialization features of RadDock for WinForms to easily save and load RadDock layouts.
                (Runtime: 07:03)
              </td><td>

![dock-loading-and-saving-layouts 001](images/dock-loading-and-saving-layouts001.png)</td></tr></table>
