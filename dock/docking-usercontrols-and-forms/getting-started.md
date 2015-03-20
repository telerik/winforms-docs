---
title: Getting Started
page_title: Getting Started
description: Getting Started
slug: dock-docking-usercontrols-and-forms-getting-started
tags: getting,started
published: True
position: 0
---

# Getting Started



## 

In order to dock your UserControls and Forms in RadDock, you just need to use the DockControl method:

__DockControl(Control control, DockPosition position)__

This method will dock a Form, a UserControl, or simply any Control. A HostWindow with DockType ToolWindow will be created to host the Control.

For example, the following code snippet will result in the screenshot shown below:

#### __[C#] Docking a Form__

{{region dockingForm}}
	            Form form = new Form();
	            form.BackColor = Color.Pink;
	            form.Text = "My Form";
	            this.radDock1.DockControl(form, DockPosition.Left);
	            form.Show();
	{{endregion}}



#### __[VB.NET] Docking a Form__

{{region dockingForm}}
	        Dim form As Form = New Form()
	        form.BackColor = Color.Pink
	        form.Text = "My Form"
	        Me.RadDock1.DockControl(form, DockPosition.Left)
	        form.Show()
	{{endregion}}

![dock-docking-usercontrols-and-forms-getting-started 001](images/dock-docking-usercontrols-and-forms-getting-started001.png)
<table><th><tr><td>

RELATED VIDEOS</td><td></td></tr></th><tr><td>

[Introducing the new RadDock for WinForms](http://tv.telerik.com/winforms/raddock/introducing-new-raddock-winforms)

The new and improved RadDock for WinForms has landed and this is your opportunity to get a first look. Join Developer Evangelist John Kellar as he shows you how quickly you can get up and running with the new version of RadDock. John will cover the new features so you know what to expect and how you can use RadDock in your applications once it is officially released. (Runtime: 32:54)
              </td><td>

![dock-docking-usercontrols-and-forms-getting-started 002](images/dock-docking-usercontrols-and-forms-getting-started002.png)</td></tr><tr><td>

[Getting Started with RadDock for WinForms](http://tv.telerik.com/winforms/raddock/getting-started-with-raddock-winforms)

In this video, you will learn how to get started with the run-time and design-time features in the new RadDock for WinForms. You will see the rich RadDock run-time features in action and you will see how easy it is to get started with RadDock in Visual Studio. You will also be introduced to the new Advanced Layout Designer for RadDock, a design-time tool that makes it easy to customize yoru RadDock layouts. (Runtime: 09:42)
              </td><td>

![dock-docking-usercontrols-and-forms-getting-started 002](images/dock-docking-usercontrols-and-forms-getting-started002.png)</td></tr></table>
