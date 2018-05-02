---
title: Custom Values in GridViewComboBoxColumn
description: Besides the items available in the popup one should be able to enter any value.
type: how-to
page_title:  Custom Values in GridViewComboBoxColumn
slug: free-text-in-combobox-column
position: 0
tags: radgridview
ticketid: 111111
res_type: kb
---


## Environment
<table>
    <tr>
        <td>Product Version</td>
        <td>2018.1 220</td>
    </tr>
    <tr>
        <td>Product</td>
        <td>RadGridView for WinForms</td>
    </tr>
</table>

## Description

By default one cannot add values that are not contained in the popup when GridViewComboBoxColumn is used. This article demonstrates how you can add any value and still be able to chose from predefined options.

## Solution

Firs you need to add a custom editor, this way you can override the __Value__ property and return the text when no value is selected.

#### Use Custom editor

{{source=..\SamplesCS\KnowledgeBase\CustomComboBoxColumn.cs region=CustomEditor}} 
{{source=..\SamplesVB\KnowledgeBase\CustomComboBoxColumn.vb region=CustomEditor}}



{{endregion}}

Once the editor is ready you can change it by using the __EditorRequired__ event.

#### Change Default Editor

{{source=..\SamplesCS\KnowledgeBase\CustomComboBoxColumn.cs region=ChangeEditor}} 
{{source=..\SamplesVB\KnowledgeBase\CustomComboBoxColumn.vb region=ChangeEditor}}



{{endregion}}

The final step is to create a custom column. This is necessary because the text is formated by looking in the DataSource of the column. 

#### Create Custom Column

{{source=..\SamplesCS\KnowledgeBase\CustomComboBoxColumn.cs region=CustomColumn}} 
{{source=..\SamplesVB\KnowledgeBase\CustomComboBoxColumn.vb region=CustomColumn}}



{{endregion}}

That is all now you will be able to add any value in the GridViewComBoxColumn. A complete Visual Studio solution is available [here](https://github.com/telerik/winforms-sdk/tree/master/GridView/CustomValuesInGridViewComboBoxColumn). 