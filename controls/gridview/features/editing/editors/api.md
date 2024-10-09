---
title: API
page_title: API - RadGridView
description: This article show the most commonly used properties and methods used with the editing process.
slug: winforms/gridview/editors/api
tags: api
published: True
position: 1
previous_url: gridview-editors-api
---

# API

The editing process can be controlled by using the following methods:

* __BeginEdit:__ Puts the current cell in edit mode.

* __EndEdit:__ Ends the edit operation on the current cell and commits any changes in the underlying data source.

* __CloseEditor:__ Ends the edit operation on the current cell without committing the changes in the underlying data source.

* __CancelEdit:__ Closes the currently active editor and discards all changes.

* __ActiveEditor:__ This property contains reference to the currently active editor. 

* __IsInEditMode:__ This property indicates whether the grid is in edit mode.

All editors used in __RadGridView__ inherit from __BaseGridEditor__ class. This class does not inherit from __RadElement__. You should use its __EditorElement__ property if you want to customize any element properties.
# See Also
* [Customizing editor behavior]({%slug winforms/gridview/editors/customizing-editor-behavior%})

* [Data validation]({%slug winforms/gridview/editors/data-validation%})

* [Overview]({%slug winforms/gridview/editors/editors%})

* [Events]({%slug winforms/gridview/editors/events%})

* [Handling Editors' events]({%slug winforms/gridview/editors/handling-editors'-events%})

* [Using custom editors]({%slug winforms/gridview/editors/using-custom-editors%})

