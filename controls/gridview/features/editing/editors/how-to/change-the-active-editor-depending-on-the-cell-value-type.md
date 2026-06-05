---
title: Change the Active Editor Depending on the Cell Value Type.
page_title: Change the Active Editor Depending on the Cell Value Type. - RadGridView
description: Change the active editor depending on the cell value type at run-time.
slug: winforms/gridview/editors/how-to/change-the-active-editor-depending-on-the-cell-value-type.
tags: change,the,active,editor,depending,on,the,cell,value,type.
published: True
position: 2
previous_url: gridview-editors-howto-change-the-active-editor-depending-on-the-cell-value-type
---

# Change the active editor depending on the cell value type.

Common case is to have a single column (for example a GridViewTextBoxColumn) with different values in the rows. Naturally the user will want to edit the respective values in appropriate editors. For example if you have a GridViewTextBoxColumn with tree rows where the first row has a DateTime value, the second has decimal value and the third has text value, it would be nice for the end user to edit the date in a date time editor, the decimal value in a numeric editor and the text in a text editor. This article is going to show how this behavior can be achieved in few easy steps.
        

First we can set up the grid with some columns and rows, this will allow us to observe the editor behavior later. Just drop a RadGridView in a blank form and then use the following code to initialize the grid. At the end, subscribe to the __EditorRequired__ event, which is triggered when a cell needs an editor:

<snippet id='gridview-changetheactiveeditordependingonthecellvaluetype-formload-cs' />
<snippet id='gridview-changetheactiveeditordependingonthecellvaluetype-formload-vb' />

Now we just need to match the value with the appropriate type and show the corresponding editor. We can do that with the following __EditorRequired__ event handler:

<snippet id='gridview-changetheactiveeditordependingonthecellvaluetype-editorrequired-cs' />
<snippet id='gridview-changetheactiveeditordependingonthecellvaluetype-editorrequired-vb' />

The result is that the end user can edit the cells with the appropriate for their values editor:

![WinForms RadGridView Change Active Editor](images/gridview-editors-howto-change-the-active-editor-depending-on-the-cell-value-type001.png)

![WinForms RadGridView gridview-editors-howto-change-the-active-editor-depending-on-the-cell-value-type 002](images/gridview-editors-howto-change-the-active-editor-depending-on-the-cell-value-type002.png)


# See Also
* [Allow end-users to add items to DropDownListEditor]({%slug winforms/gridview/editors/how-to/allow-end-users-to-add-items-to-dropdownlisteditor%})

