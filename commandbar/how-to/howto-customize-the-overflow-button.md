---
title: Customize the overflow button
page_title: Customize the overflow button
description: Customize the overflow button
slug: commandbar-howto-customize-the-overflow-button
tags: customize,the,overflow,button
published: True
position: 0
---

# Customize the overflow button



## 

This article will demonstrate how to access the __Overflow__ button
        	in RadCommandBar and how to customize its items.
        ![commandbar-howto-customize-the-overflow-button 001](images/commandbar-howto-customize-the-overflow-button001.png)

Each [CommandBarStripElement]({%slug commandbar-structure%})
			has its own __Overflow__ button. This button has a drop down, which  
			contains of __"Add or Remove Buttons"__ menu item, 
			__"Customize..."__ menu item and 
			__RadMenuSeparatorItems__ items.
			Additionally, if there is not enough space on the control to fit all the items, they will be displayed
			in the drop down menu as well.
		![commandbar-howto-customize-the-overflow-button 002](images/commandbar-howto-customize-the-overflow-button002.png)

The following example, demonstrates how to access the __RadMenuItems__ of the 
			__Overflow__ button. For your convenience we have exposed the
			__CustomizeButtonMenuItem__ and the __AddRemoveButtonsMenuItem__.
		

#### __[C#] Customize overflow button drop down menu__

{{source=..\SamplesCS\CommandBar\SaveAndLoadLayout1.cs region=HideMenuItems}}
	            //Change the font of the AddRemoveButtonMenuItem
	            radCommandBarStripElement1.OverflowButton.AddRemoveButtonsMenuItem.Font = new System.Drawing.Font("Arial", 12f);
	
	            //Change the font of the CustomizeButtonMenuItem
	            radCommandBarStripElement1.OverflowButton.CustomizeButtonMenuItem.Font = new System.Drawing.Font("Segoe UI", 10f, FontStyle.Bold);
	
	            //hide the separators
	            foreach (var item in radCommandBarStripElement1.OverflowButton.DropDownMenu.Items)
	            {
	                RadMenuSeparatorItem separator = item as RadMenuSeparatorItem;
	                if (separator != null)
	                {
	                    separator.Visibility = Telerik.WinControls.ElementVisibility.Collapsed;
	                }
	            }
	{{endregion}}



#### __[VB.NET] Customize overflow button drop down menu__

{{source=..\SamplesVB\CommandBar\SaveAndLoadLayout.vb region=HideMenuItems}}
	        'Change the font of the AddRemoveButtonMenuItem
	        CommandBarStripElement1.OverflowButton.AddRemoveButtonsMenuItem.Font = New System.Drawing.Font("Arial", 12.0F)
	
	        'Change the font of the CustomizeButtonMenuItem
	        CommandBarStripElement1.OverflowButton.CustomizeButtonMenuItem.Font = New System.Drawing.Font("Segoe UI", 10.0F, FontStyle.Bold)
	
	        'hide the separators
	        For Each item In CommandBarStripElement1.OverflowButton.DropDownMenu.Items
	            Dim separator As RadMenuSeparatorItem = TryCast(item, RadMenuSeparatorItem)
	            If separator IsNot Nothing Then
	                separator.Visibility = Telerik.WinControls.ElementVisibility.Collapsed
	            End If
	        Next
	        '#EndRegion
	    End Sub
	
	    '#region saveLayout
	    Private Sub RadButton1_Click(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles RadButton1.Click
	        Dim s As String = "default.xml"
	        Dim dialog As New SaveFileDialog()
	        dialog.Filter = "xml files (*.xml)|*.xml|All files (*.*)|*.*"
	        dialog.Title = "Select a xml file"
	        If dialog.ShowDialog() = DialogResult.OK Then
	            s = dialog.FileName
	        End If
	
	        Me.RadCommandBar1.CommandBarElement.SaveLayout(s)
	    End Sub
	{{endregion}}

![commandbar-howto-customize-the-overflow-button 003](images/commandbar-howto-customize-the-overflow-button003.png)

Alternatively, if you need to hide the whole __Overflow__ button, simply set
			its Visibility property to *Collapsed*

#### __[C#] Hide the overflow button__

{{source=..\SamplesCS\CommandBar\SaveAndLoadLayout1.cs region=HideTheOverFlowButton}}
	            radCommandBarStripElement1.OverflowButton.Visibility = Telerik.WinControls.ElementVisibility.Collapsed;
	{{endregion}}



#### __[VB.NET] Hide the overflow button__

{{source=..\SamplesVB\CommandBar\SaveAndLoadLayout.vb region=HideTheOverFlowButton}}
	        CommandBarStripElement1.OverflowButton.Visibility = Telerik.WinControls.ElementVisibility.Collapsed
	{{endregion}}

![commandbar-howto-customize-the-overflow-button 004](images/commandbar-howto-customize-the-overflow-button004.png)
