---
title: Print Settings Dialog
page_title: Print Settings Dialog
description: Print Settings Dialog
slug: tpf-printing-support-radprintsettingdialog
tags: print,settings,dialog
published: True
position: 1
---

# Print Settings Dialog



## 

RadPrintSettingsDialog represents a base dialog for editing printing settings. Each
        	printable object should provide such dialog to edit its settings. This dialog should 
        	not be used directly. Instead, the control-specific extended RadPrintSettingsDialogs like
        	SchedulerPrintSettingsDialog and GridPrintSettingsDialog should be used.
        



The RadPrintSettingsDialog contains three tabs:
       

* The first of them (__"Format" tab__) is empty and is reserved
		  		for specific settings of the printed object.
		 	 

* The __“Paper” tab__ provides the means for editing page settings like 
		  		orientation, margin and size.
		 	 

* The __“Header/Footer” tab__ provides the means for editing the text that appears 
		   		at the top and at the bottom of each page. You can use a set of predefined strings to display system 
		   		dependent text like page number, page count, current date and time or current user. The command
		   		buttons at the bottom of this page allow you to insert these strings to the currently focused text field.
		 	 
