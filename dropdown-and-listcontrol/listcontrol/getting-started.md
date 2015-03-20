---
title: Getting Started
page_title: Getting Started
description: Getting Started
slug: dropdown-and-listcontrol-listcontrol-getting-started
tags: getting,started
published: True
position: 1
---

# Getting Started


<table><th><tr><td>

RELATED VIDEOS</td><td></td></tr></th><tr><td>

[Getting Started with RadListControl](http://tv.telerik.com/watch/winforms/getting-started-with-radlistcontrol)

In this video, you will learn how to bind data to the new RadListControl.
            </td><td>![dropdown-and-listcontrol-listcontrol-getting-started 003](images/dropdown-and-listcontrol-listcontrol-getting-started003.png)</td></tr></table>

## 

This tutorial demonstrates how to manually populate RadListControl and
how to react to a user choice in code.

1. Place a __RadListControl__ and a __RadLabel__
    control on a form.

1. Select the __RadListControl__ control, open its
    __Smart Tag__ menu.

1. Select the __Edit Items__ task.

1. In the __RadItem Collection Editor__, click
    __Add__.

1. Set the __Text__ property of the new
    __ListItem__ to "RadComboBox".
            ![dropdown-and-listcontrol-listcontrol-getting-started 001](images/dropdown-and-listcontrol-listcontrol-getting-started001.png)

1. Add five more ListItems to the RadListControl. Set their
    __Text__ properties to "RadDock", "RadMenu", "RadRibbonBar",
    "RadGridView", and "RadPageView".

1. Click __OK__.

1. In the __Properties__ window, click the events
    button.

1. Double-click the __SelectedIndexChanged__ event.

1. Replace the automatically-generated event handler with this code:

      
        	
      	 

#### __[C#] Handling the SelectedIndexChanged event__

{{region handlingSelectedIndexChanged}}
	        void radListControl1_SelectedIndexChanged(object sender, Telerik.WinControls.UI.Data.PositionChangedEventArgs e)
	        {
	            RadListDataItem item = this.radListControl1.SelectedItem as RadListDataItem;
	            radLabel1.Text = "Selected control: " + item.Text;
	        }
	{{endregion}}



#### __[VB.NET] Handling the SelectedIndexChanged event__

{{region handlingSelectedIndexChanged}}
	    Private Sub radListControl1_SelectedIndexChanged(ByVal sender As Object, ByVal e As Telerik.WinControls.UI.Data.PositionChangedEventArgs)
	        Dim item As RadListDataItem = TryCast(Me.radListControl1.SelectedItem, RadListDataItem)
	        radLabel1.Text = "Selected control: " & item.Text
	    End Sub
	{{endregion}}



1. Press __F5__ to run the project. Select an item in the
    list box and note the value of the label.
    ![dropdown-and-listcontrol-listcontrol-getting-started 002](images/dropdown-and-listcontrol-listcontrol-getting-started002.png)
