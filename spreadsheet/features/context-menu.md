---
title: Context Menu
page_title: Context Menu
description: Context Menu
slug: radspreadsheet-ui-worksheet-editor-context-menu
tags: context,menu
published: True
position: 1
---

# Context Menu

By default the WorksheetEditor of RadSpreadsheet have a context menu. The control's element exposes a __WorksheetEditorContextMenu__ property of type __RadContextMenu__ that allows you to plug and arrange easily a context menu.      

>tip RadContextMenu is a flexible control that aims to provide additional commands and features. You will be able to find more information regarding RadContextMenu in the section of our online documentation dedicated to the control [here]({%slug winforms/menus/contextmenu/context-menus%}).
        

## Figure 1: Worksheet Editor's Context Menu

![Rad Spreadsheet UI Worksheet Editor Context Menu 01](images/RadSpreadsheet_UI_Worksheet_Editor_Context_Menu_01.png)

## Modifying the default Context Menu

You can access and modify the default context menu in the ContextMenuShowing event. The following example demonstrates how you can remove the "Copy" item from the context menu.

{{source=..\SamplesCS\Spreadsheet\ContextMenuCode.cs region=context_menu_1}} 
{{source=..\SamplesVB\Spreadsheet\ContextMenuCode.vb region=context_menu_1}} 
 
{{endregion}}
