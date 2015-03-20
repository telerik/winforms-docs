---
title: Print Preview Dialog
page_title: Print Preview Dialog
description: Print Preview Dialog
slug: tpf-printing-support-radprintpreviewdialog
tags: print,preview,dialog
published: True
position: 0
---

# Print Preview Dialog



## 

![tpf-printing-support-radprintpreviewdialog 001](images/tpf-printing-support-end-user-functionality-radprintpreviewdialog001.png)

By using RadPrintPreviewDialog you can preview how the RadPrintDocument will appear when printed. 
        	To create and show a RadPrintPreviewDialog you can use:
        

#### __[C#]__

{{region CreateAndShow1}}
	            RadPrintPreviewDialog dialog = new RadPrintPreviewDialog();
	            dialog.Document = this.radPrintDocument1;
	            dialog.ShowDialog();
	{{endregion}}



#### __[VB.NET]__

{{region CreateAndShow1}}
	        Dim dialog As New RadPrintPreviewDialog
	        dialog.Document = Me.RadPrintDocument1
	        dialog.ShowDialog()
	{{endregion}}



You can also pass the RadPrintDocument to the RadPrintPreviewDialog via its constructor:

#### __[C#]__

{{region CreateAndShow2}}
	            RadPrintPreviewDialog printPreviewDialog = new RadPrintPreviewDialog(this.radPrintDocument1);
	            printPreviewDialog.ShowDialog();
	{{endregion}}



#### __[VB.NET]__

{{region CreateAndShow2}}
	        Dim printPreviewDialog As New RadPrintPreviewDialog(Me.RadPrintDocument1)
	        printPreviewDialog.ShowDialog()
	{{endregion}}



The User Interface of RadPrintPreviewDialog is built on top of RadMenu and RadCommandBar. 
    		By default the menu is hidden and the command bar is enabled. You can access and customize
    		both controls from the ToolMenu and ToolCommandBar properties. Here is a sample demonstrating
    		how to show the menu and hide the command bar:
    	

#### __[C#]__

{{region ShowHideMenuAndCommandBar}}
	            dialog.ToolMenu.Visible = true;
	            dialog.ToolCommandBar.Visible = false;
	{{endregion}}



#### __[VB.NET]__

{{region ShowHideMenuAndCommandBar}}
	        dialog.ToolMenu.Visible = True
	        dialog.ToolCommandBar.Visible = False
	{{endregion}}



RadPrintPreviewDialog allows zooming and navigating through the pages via the menu 
    		and the tool strips. In addition, the end user can use mouse drag to scroll through 
    		the current view and __Ctrl + Mouse Wheel__ to zoom in or out of it.
    	

The RadPrintPreviewDialog can also be used for editing the print document. When the 
    		__Print Settings__ button is clicked,
    		 [RadPrintSettingsDialog]({%slug tpf-printing-support-radprintsettingdialog%})
    		is opened, allowing the end user to edit a variety of settings related to the printed object.
    		Also, when the __Watermark__ button is clicked, the end user can place a 
    		watermark on some of the pages by using the
    		 [WatermarkSettingsDialog]({%slug tpf-printing-support-radprintdocument-watermark%}).
    	

![tpf-printing-support-radprintpreviewdialog 002](images/tpf-printing-support-end-user-functionality-radprintpreviewdialog002.png)

![tpf-printing-support-radprintpreviewdialog 003](images/tpf-printing-support-end-user-functionality-radprintpreviewdialog003.png)

>The RadPrintPreviewDialog is also used at design time to edit and serialize the properties of
		  	RadPrintDocument. For more information refer to the 
    		 [RadPrintDocument article.]({%slug tpf-printing-support-radprintdocument%})
