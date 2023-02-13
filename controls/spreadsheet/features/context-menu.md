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

{{source=..\SamplesCS\Spreadsheet\ContextMenuCode.cs region=context_menu_1}} 
{{source=..\SamplesVB\Spreadsheet\ContextMenuCode.vb region=context_menu_1}}

````C#
public ContextMenuCode()
{
    InitializeComponent();
    radSpreadsheet1.SpreadsheetElement.ContextMenuShowing += SpreadsheetElement_ContextMenuShowing;
}
private void SpreadsheetElement_ContextMenuShowing(object sender, SpreadsheetContextMenuOpeningEventArgs e)
{
    foreach (var item in e.Menu.Items)
    {
        if (item.Text == "Copy")
        {
            item.Visibility = ElementVisibility.Collapsed;
        }
    }
}

````
````VB.NET
Public Sub New()
    InitializeComponent()
    AddHandler radSpreadsheet1.SpreadsheetElement.ContextMenuShowing, AddressOf SpreadsheetElement_ContextMenuShowing
End Sub
Private Sub SpreadsheetElement_ContextMenuShowing(ByVal sender As Object, ByVal e As SpreadsheetContextMenuOpeningEventArgs)
    For Each item In e.Menu.Items
        If item.Text = "Copy" Then
            item.Visibility = ElementVisibility.Collapsed
        End If
    Next item
End Sub

```` 
 
{{endregion}}

>note Please have in mind that most of the menu items have a binding to the respective command. Hence, their visibility depends on the command itself. Hence, if you want to hide a menu item, it is not enough simply to set the RadMenuItem.**Visibility** property to **Collapsed**. It is necessary to call the RadMenuItem.**UnbindProperty(RadElement.VisibilityProperty)** method as well.

## RadSpreadsheetSheetSelector's Context Menu

**RadSpreadsheet** offers a separate menu for manipulating the sheet's tab. It is possible to insert, delete, rename or color a tab.

>note As of **R3 2020 SP1** RadSpreadsheet allows hiding/unhiding a sheet. It utilizes the [Sheets Visibility](https://docs.telerik.com/devtools/document-processing/libraries/radspreadprocessing/working-with-worksheets/sheets-visiblility)  functionality in RadSpreadProcessing.


* "**Hide**" - hides the selected sheet. If this is the last visible sheet, an alert is shown that it is not possible to hide it.
* "**Unhide...**" - enabled if there is at least one hidden sheet. Shows a dialog when clicked. In the dialog the user can select, which sheets to unhide.
>

>caption Figure 2: RadSpreadsheetSheetSelector's Context Menu

![WinForms RadSpreadsheet RadSpreadsheetSheetSelector's Context Menu](images/RadSpreadsheet_UI_Worksheet_Editor_Context_Menu_02.png)

