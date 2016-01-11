---
title: API
page_title: API | UI for WinForms Documentation
description: Formatting Data Cells
slug: winforms/virtualgrid/cells/formatting-data-cells
tags: virtualgrid, editors, api
published: True
position: 1
---

# API

The editing process can be controlled by using the following properties and methods of __VirtualGridElement__:

* __BeginEdit__ – Puts the current cell in edit mode.

* __EndEdit__ – Ends the edit operation on the current cell and commits any changes in the underlying data source.

* __CloseEditor__ – Ends the edit operation on the current cell without committing the changes in the underlying data source.

* __CancelEdit__ – Closes the currently active editor and discards all changes.

* __ActiveEditor__ returns reference to the currently active editor. 

* __IsInEditMode__ indicates whether the grid is in edit mode.

* __BeginEditMode__ indicates how one can start the edit operation. The possible values are:
    - __BeginEditOnEnter__
    - __BeginEditOnF2__
    - __BeginEditOnKeystroke__
    - __BeginEditOnKeystrokeOrF2__
    - __BeginEditProgrammatically__
