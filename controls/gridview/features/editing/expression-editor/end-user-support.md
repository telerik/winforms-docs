---
title: End-user Support
page_title: End-user Support - WinForms GridView Control
description: Learn how to open the RadExpressionEditor by navigating to a built-in menu item from the context menu of WinForms GridView.
slug: winforms/gridview/expression-editor/end-user-support
tags: end-user,support
published: True
position: 1
previous_url: gridview-expressioneditor-end-user-support
---

# End-user Support

End-users have two options for getting the __RadExpressionEditor__ shown at run time:

## Showing RadExpressionEditor from RadGridView User Interface

End-users can open the editor by navigating to a built-in menu item from the context menu of RadGridView. To enable this menu item, set the `EnableExpressionEditor` property to `true`. The expression column must be an unbound column.

![WinForms RadGridView ExpressionEditor](images/gridview-expressioneditor-end-user-support001.png)

<snippet id='gridview-customfunctions-enableexpressioneditor-cs' />
<snippet id='gridview-customfunctions-enableexpressioneditor-vb' />

## Showing RadExpressionEditor on a custom user action

You can show `RadExpressionEditor` on a custom user action, for example a button click, without using the standard RadGridView UI. Call the static `Show` method:

<snippet id='gridview-customfunctions-expressionformshow-cs' />
<snippet id='gridview-customfunctions-expressionformshow-vb' />

## See Also

* [Functions Reference]({%slug winforms/gridview/expression-editor/functions-reference%})

* [Expression Syntax and Operators]({%slug winforms/gridview/expression-editor/expression-syntax%})

* [Customizing RadExpressionEditor]({%slug winforms/gridview/expression-editor/customizing-radexpressioneditor%})

* [Design-time]({%slug winforms/gridview/expression-editor/design-time%})

* [Overview]({%slug winforms/gridview/expression-editor%})

* [Localization]({%slug winforms/gridview/expression-editor/localization%})

