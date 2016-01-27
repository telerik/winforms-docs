---
title: Overview
page_title: Editors | UI for WinForms Documentation
description: Editors
slug: winforms/gridview/editors/editors
tags: editors
published: True
position: 0
previous_url: gridview-editors
---

# Editors



## 

When __RadGridView__ is not in read-only mode users can edit the contents of the current cell. Usually this process starts by typing in the cell or by pressing __F2__. All of the following conditions should be met to put a cell in edit mode:

* The underlying data source supports editing.

* __RadGridView__ control is enabled.

* __BeginEditMode__ property value is not __BeginEditProgrammatically__.

* __ReadOnly__ properties of the cell, column, and control are all set to false.

* __GridViewTemplate.AllowEditRow__ property of is set to true.

When in edit mode, the user can change the cell value and press __Enter__ to commit the change or __Esc__ to revert to the original value. Clicking outside the edited cell also commits the change.

You can configure __RadGridVIew__ so that cells enter edit mode only when users type in the cell or only when users press __F2__ or __Enter__. The __BeginEditMode__ property controls this behavior.

You can control also the __Enter__ key behavior when __RadGridView__ is in edit mode. It can move the focus to the next cell or the next row. Use __EnterKeyMode__ and __NewRowEnterKeyMode__ properties for this purpose.

__Topics:__

||
| ------ |
|[API]({%slug winforms/gridview/editors/api%}) section describes how to control the editing process programmatically.|
|[Events]({%slug winforms/gridview/editors/events%}) section presents all events that occur during this process.|
|[Data validation]({%slug winforms/gridview/editors/data-validation%}) section shows how to validate data in RadGridView.|
|[Customizing editor behavior]({%slug winforms/gridview/editors/customizing-editor-behavior%}) section demonstrates how to change editor behavior using code.|
|[Using custom editors]({%slug winforms/gridview/editors/using-custom-editors%}) section demonstrates how to replace the standard editors with a custom one.|