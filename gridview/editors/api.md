---
title: API
page_title: API | UI for WinForms Documentation
description: API
slug: winforms/gridview/editors/api
tags: api
published: True
position: 1
---

# API



## 

The editing process can be controlled by using the following methods:

__BeginEdit__ – Puts the current cell in edit mode.

__EndEdit__ – Ends the edit operation on the current cell and commits any changes in the underlying data source.

__CloseEditor__ – Ends the edit operation on the current cell without committing the changes in the underlying data source.

__CancelEdit__ – Closes the currently active editor and discards all changes.

The __ActiveEditor__ property contains reference to the currently active editor. 

The __IsInEditMode__ property indicates whether the grid is in edit mode.

All editors used in __RadGridView__ inherit from __BaseGridEditor__ class. This class does not inherit from __RadElement__. You should use its __EditorElement__ property if you want to customize any element properties.
