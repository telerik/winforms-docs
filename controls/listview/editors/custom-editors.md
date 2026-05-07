---
title: Custom Editors
page_title: Custom Editors - RadListView
description: Telerik RadListView control is created as a result of the concord of the powerful data layer used by RadGridView and RadListControl, together with the outstanding Telerik Presentation Framework.
slug: winforms/listview/editors/custom-editors
tags: checkboxes,and,editors
published: True
position: 2 
---

# Custom Editors

This article demonstrates a sample approach how to create and replace the default editor with a track bar editor to allow editing numeric values.

>caption Figure 1: Custom track bar editor

![WinForms RadListView Custom track bar editor](images/listview-editors-custom-editors001.png)

#### Custom editor

<snippet id='listview-listviewcheckboxesandeditors-myeditor-cs' />
<snippet id='listview-listviewcheckboxesandeditors-myeditor-vb' />



Here is the sample code snippet how to replace the default editor with the custom one handling the **EditorRequired** event:

#### Replace default editor

<snippet id='listview-listviewcheckboxesandeditors-replaceeditor-cs' />
<snippet id='listview-listviewcheckboxesandeditors-replaceeditor-vb' />



# See Also

* [Default Editors]({%slug winforms/listview/editors/default-editors%})		
* [Editors Overview]({%slug winforms/listview/editors/editors%})

