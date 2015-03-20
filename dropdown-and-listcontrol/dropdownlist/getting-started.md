---
title: Getting Started
page_title: Getting Started
description: Getting Started
slug: dropdown-and-listcontrol-dropdownlist-getting-started
tags: getting,started
published: True
position: 0
---

# Getting Started


<table><th><tr><td>

RELATED VIDEOS</td><td></td></tr></th><tr><td>

[Getting Started with RadDropDownList](http://tv.telerik.com/watch/winforms/getting-started-with-raddropdownlist)

In this video, you will learn how to bind data to the new RadDropDownList control.
            </td><td>![dropdown-and-listcontrol-dropdownlist-getting-started 003](images/dropdown-and-listcontrol-dropdownlist-getting-started003.png)</td></tr></table>

## 

The following tutorial demonstrates how to add items and images to a RadDropDownList and how to retrieve selected text and images.![dropdown-and-listcontrol-dropdownlist-getting-started 001](images/dropdown-and-listcontrol-dropdownlist-getting-started001.png)

1. Add a __RadDropDownList__ and a __RadStatusStrip__ to a form.
            

1. Add a few images to the project as resources.

1. Using the downward arrow of the __RadStatusStrip__, add a __RadLabelElement__ and a 
              __RadButtonElement__. Set the __DisplayStyle__ of the RadButtonElement to 
              *Image*.
            ![dropdown-and-listcontrol-dropdownlist-getting-started 002](images/dropdown-and-listcontrol-dropdownlist-getting-started002.png)

1. Select RadDropDownList and find the __Items__ property in the Property Window of Visual Studio. Click the 
              ellipsis button to open the RadItem Collection Editor. Click the Add button three times to create three list items. Set the text 
              of the first, second and third item to *Japan*, *Spain* and 
              *Germany* respectively. Set the resource images to the __Image__ property of 
              the items. In addition, set the __TextImageRelation__ property to *ImageBeforeText*.
            

1. Click __OK__ to close the __RadItem Collection Editor__.
            

1. In the __Properties Window__ select the __Events__ button.
            

1. Locate and double-click the __RadDropDownList____SelectedIndexChanged__ event to create an event handler.
            

1. Paste the following code to the __SelectedIndexChanged__ event handler. The code retrieves the selected item and 
              assigns the text and image for the selected item to the status bar label and image elements.
            

#### __[C#] Handling the SelectedIndexChanged event__

{{region handlingSelectedIndexChanged}}
	        void radDropDownList1_SelectedIndexChanged(object sender, Telerik.WinControls.UI.Data.PositionChangedEventArgs e)
	        {
	            if (this.radDropDownList1.SelectedIndex > -1)
	            {
	                this.radLabelElement1.Text = this.radDropDownList1.SelectedItem.Text;
	                this.radImageButtonElement1.Image = this.radDropDownList1.SelectedItem.Image;
	            }
	        }
	{{endregion}}



#### __[VB.NET] Handling the SelectedIndexChanged event__

{{region handlingSelectedIndexChanged}}
	    Private Sub radDropDownList1_SelectedIndexChanged(ByVal sender As Object, ByVal e As Telerik.WinControls.UI.Data.PositionChangedEventArgs)
	        If Me.radDropDownList1.SelectedIndex > -1 Then
	            radLabelElement1.Text = Me.radDropDownList1.SelectedItem.Text
	            Me.radImageButtonElement1.Image = Me.radDropDownList1.SelectedItem.Image
	        End If
	    End Sub
	{{endregion}}



This is it! Now the change in the selection of the RadDropDownList instance will be reflected on RadStatusStrip.
