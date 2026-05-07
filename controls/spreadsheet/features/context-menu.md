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
>

>caption Figure 1: Worksheet Editor's Context Menu

![WinForms RadSpreadsheet Worksheet Editor's Context Menu](images/RadSpreadsheet_UI_Worksheet_Editor_Context_Menu_01.png)

## Modifying the default Context Menu

You can access and modify the default context menu in the ContextMenuShowing event. The following example demonstrates how you can remove the "Copy" item from the context menu.

<snippet id='spreadsheet-contextmenucode-context_menu_1-cs' />
<snippet id='spreadsheet-contextmenucode-context_menu_1-vb' />



>note Please have in mind that most of the menu items have a binding to the respective command. Hence, their visibility depends on the command itself. Hence, if you want to hide a menu item, it is not enough simply to set the RadMenuItem.**Visibility** property to **Collapsed**. It is necessary to call the RadMenuItem.**UnbindProperty(RadElement.VisibilityProperty)** method as well.

## RadSpreadsheetSheetSelector's Context Menu

**RadSpreadsheet** offers a separate menu for manipulating the sheet's tab. It is possible to insert, delete, rename or color a tab.

>note As of **R3 2020 SP1** RadSpreadsheet allows hiding/unhiding a sheet. It utilizes the [Sheets Visibility](https://docs.telerik.com/devtools/document-processing/libraries/radspreadprocessing/working-with-worksheets/sheets-visiblility)  functionality in RadSpreadProcessing.


* "**Hide**" - hides the selected sheet. If this is the last visible sheet, an alert is shown that it is not possible to hide it.
* "**Unhide...**" - enabled if there is at least one hidden sheet. Shows a dialog when clicked. In the dialog the user can select, which sheets to unhide.
>

>caption Figure 2: RadSpreadsheetSheetSelector's Context Menu

![WinForms RadSpreadsheet RadSpreadsheetSheetSelector's Context Menu](images/RadSpreadsheet_UI_Worksheet_Editor_Context_Menu_02.png)

