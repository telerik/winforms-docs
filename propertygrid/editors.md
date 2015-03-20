---
title: Editors
page_title: Editors
description: Editors
slug: propertygrid-editors
tags: editors
published: True
position: 9
---

# Editors



## 

When RadPropertyGrid is not in read-only mode users can edit the contents of the selected item.
 			Usually this process starts by pressing __Enter__ or __F2 key__.
 			All of the following conditions should be met to put an item in edit mode:
        

* The underlying data source supports editing.

* RadPropertyGrid control is __enabled__.

* __BeginEditMode__ property value is not *BeginEditProgrammatically*.

* __ReadOnly__ property of the control is set to *false*.

* The item the user wants to edit is *enabled*.

* The __ReadOnly__ property of item the user wants to edit is set to *false*.

When in edit mode, the user can change the item value and press __Enter__
			 to commit the change or __Esc__ to revert to the original value.
			 Clicking outside the edited item also commits the change.
		

You can configure RadPropertyGrid so that items enter edit mode directly when the item is selected
			or when users press __F2__ or __Enter__ or click for a second
			time on the item without triggering a double click event. The __BeginEditMode__ 
			property controls this behavior.
		

There are a number of build-in ediotrs which are used for editing different data types. These editors can be customized 
     or can be replaced by custom editors all together. Here is a list of the build-in ediotrs and the data types they are used for: 
<table><tr><td>

PropertyGridBrowseEditor</td><td>

Used for editing of type image.</td></tr><tr><td>

PropertyGridColorEditor</td><td>

Used for editing of type color.</td></tr><tr><td>

PropertyGridDateTimeEditor</td><td>

Used for editing of type DateTime.</td></tr><tr><td>

PropertyGridDropDownListEditor</td><td>

Used for editing of types that have a type converter supporting standart values and do not have a UITypeEditor.</td></tr><tr><td>

PropertyGridSpinEditor</td><td>

Used for editing of numeric data types.</td></tr><tr><td>

PropertyGridTextBoxEditor</td><td>

Used for editing all data types that are not covered by other editors.</td></tr><tr><td>

PropertyGridUITypeEditor</td><td>

Used for editing data types that have a UITypeEditor and are not covered by other editors.</td></tr></table>
<table><tr><td>

[API]({%slug propertygrid-editors-api%})</td><td>

Demonstrates how to control the editing process programmatically.</td></tr><tr><td>

[Events]({%slug propertygrid-editors-events%})</td><td>

Demonstrates all events that occur during this process.</td></tr><tr><td>

[Data validation]({%slug propertygrid-editors-validation%})</td><td>

Demonstrates how to validate data in RadPropertyGrid.</td></tr><tr><td>

[Customizing editor behavior]({%slug propertygrid-editors-customizing-editor-behavior%})</td><td>

Demonstrates how to change editor behavior.</td></tr><tr><td>

[Using custom editors]({%slug propertygrid-editors-using-custom-editor%})</td><td>

Demonstrates how to replace the standard editors with a custom one.</td></tr><tr><td>

[Handling editor events]({%slug propertygrid-editors-handling-editors-events%})</td><td>

Demonstrates how to handle editor events.</td></tr></table>
