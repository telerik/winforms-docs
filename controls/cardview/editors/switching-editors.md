---
title: Switching Editors
page_title: Switching Editors - RadCardView
description: RadCardView is a control developed on top of Telerik Presentation Framework which provides a way for displaying and editing text data as well as performing layout modifications
slug: winforms/cardview/editors/switching-editors
tags: switching editors
published: True
position: 1
---

# Switching Editors

When edit operation is about to begin, the __EditorRequired__ event is fired. By using this event, you can replace the default text box editor with one of the four built-in editors that __RadCardView__ provides: __ListViewTextBoxEditor__, __ListViewDropDownListEditor__, __ListViewSpinEditor__, __ListViewDateTimeEditor__. You can also provide a custom instance as an editor. The default editor used by __RadCardView__ is __ListViewTextBoxEditor__.

The following example shows how you can change the editor type:

>caption Figure 1: Changed Editors
![WinForms RadCardView Changed Editors](images/cardview-editors-switching-editors001.gif)

#### Changing Editor Type

<snippet id='cardview-editors-switching-editors-changingeditortype-cs'/>
<snippet id='cardview-editors-switching-editors-changingeditortype-vb'/>



# See Also

* [Editors Overview]({%slug winforms/cardview/editors/overview%})
* [Custom Items]({%slug winforms/cardview/custom-items%})
* [Formatting Items]({%slug winforms/cardviewview/customizing-appearance/formatting-items%})
