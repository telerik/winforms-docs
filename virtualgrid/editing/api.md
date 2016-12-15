---
title: API
page_title: API | RadVirtualGrid
description: Formatting Data Cells
slug: winforms/virtualgrid/cells/api
tags: virtualgrid, editors, api
published: True
position: 1
---

# API

The editing process can be controlled by using the following properties and methods of __VirtualGridElement__:

* __BeginEdit:__ Puts the current cell in edit mode.

* __EndEdit:__ Ends the edit operation on the current cell and commits any changes in the underlying data source.

* __CancelEdit:__ Closes the currently active editor and discards all changes.

* __ActiveEditor:__ returns reference to the currently active editor. 

* __IsInEditMode:__ indicates whether the grid is in edit mode.

* __BeginEditMode:__ indicates how one can start the edit operation. The possible values are:
    - __BeginEditOnEnter__
    - __BeginEditOnF2__
    - __BeginEditOnKeystroke__
    - __BeginEditOnKeystrokeOrF2__
    - __BeginEditProgrammatically__
