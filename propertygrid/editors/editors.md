---
title: Editors
page_title: Editors | UI for WinForms Documentation
description: Editors
slug: winforms/propertygrid/editors
tags: editors
published: True
position: 0
previous_url: propertygrid-editors
---

# Editors

When RadPropertyGrid is not in read-only mode users can edit the contents of the selected item. Usually this process starts by pressing __Enter__ or __F2 key__. All of the following conditions should be met to put an item in edit mode:

* The underlying data source supports editing.

* RadPropertyGrid control is __enabled__.

* __BeginEditMode__ property value is not *BeginEditProgrammatically*.

* __ReadOnly__ property of the control is set to *false*.

* The item the user wants to edit is *enabled*.

* The __ReadOnly__ property of item the user wants to edit is set to *false*.

When in edit mode, the user can change the item value and press __Enter__ to commit the change or __Esc__ to revert to the original value. Clicking outside the edited item also commits the change.

You can configure RadPropertyGrid so that items enter edit mode directly when the item is selected or when users press __F2__ or __Enter__ or click for a second time on the item without triggering a double click event. The __BeginEditMode__ property controls this behavior.

There are a number of build-in ediotrs which are used for editing different data types. These editors can be customized or can be replaced by custom editors all together. Here is a list of the build-in ediotrs and the data types they are used for: 

|   |   |
|---|---|
|PropertyGridBrowseEditor|Used for editing of type image.|
|PropertyGridColorEditor|Used for editing of type color.|
|PropertyGridDateTimeEditor|Used for editing of type DateTime.|
|PropertyGridDropDownListEditor|Used for editing of types that have a type converter supporting standart values and do not have a UITypeEditor.|
|PropertyGridSpinEditor|Used for editing of numeric data types.|
|PropertyGridTextBoxEditor|Used for editing all data types that are not covered by other editors.|
|PropertyGridUITypeEditor|Used for editing data types that have a UITypeEditor and are not covered by other editors.|

|   |   |
|---|---|
|[API]({%slug winforms/propertygrid/editors/api%})|Demonstrates how to control the editing process programmatically.|
|[Events]({%slug winforms/propertygrid/editors/events%})|Demonstrates all events that occur during this process.|
|[Data validation]({%slug winforms/propertygrid/editors/validation%})|Demonstrates how to validate data in RadPropertyGrid.|
|[Customizing editor behavior]({%slug winforms/propertygrid/editors/customizing-editor-behavior%})|Demonstrates how to change editor behavior.|
|[Using custom editors]({%slug winforms/propertygrid/editors/using-custom-editor%})|Demonstrates how to replace the standard editors with a custom one.|
|[Handling editor events]({%slug winforms/propertygrid/editors/handling-editors'-events%})|Demonstrates how to handle editor events.|
