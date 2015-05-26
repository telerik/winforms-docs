---
title: API
page_title: API | UI for WinForms Documentation
description: API
slug: winforms/propertygrid/editors/api
tags: api
published: True
position: 0
---

# API



## 

The editing process can be controlled by using the following methods:

* __BeginEdit__ – Puts the current item in edit mode.

* __EndEdit__ – Ends the edit operation on the current item and commits any changes.

* __CancelEdit__ – Closes the currently active editor and discards all changes.

* __ActiveEditor__ - Contains reference to the currently active editor.

* __IsInEditMode__ - Indicates whether the property grid is in edit mode.

All editors used in RadPropertyGrid inherit from __BaseInputEditor__ class.
			This class does not inherit from __RadElement__. You should use its 
			__EditorElement__ property if you want to customize any element properties.
		
