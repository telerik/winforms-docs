---
title: Hide different elements in RadSpreadsheet for WinForms
description: Learn how to hide different elements in RadSpreadsheet.
type: how-to
page_title: How to Hide Different Elements in RadSpreadsheet Control
meta_title: How to Hide Different Elements in RadSpreadsheet Control
slug: spreadsheet-hide-different-elements
tags: spreadsheet, winforms, radspreadsheet, customization, readonly, zoom, trackbar, plus sign,FormulaBar,ContextMenu 
res_type: kb
ticketid: 1695769
---

## Environment

|Product Version|Product|Author|
|----|----|----|
|2025.3.812|RadSpreadsheet for WinForms|[Dinko Krastev](https://www.telerik.com/blogs/author/dinko-krastev)|

## Description

In this tutorial, we will demonstrate how you can hide different parts of the RadSpreadsheet control.

## Solution

#### **Hide Formula Bar**

````C#

this.radSpreadsheet1.SpreadsheetElement.FormulaBarHeight = 0;
this.radSpreadsheet1.SpreadsheetElement.FormulaBar.Visibility = Telerik.WinControls.ElementVisibility.Collapsed;

````

#### **Hide the zoom track bar and the scale button at the bottom**

````C#

(this.radSpreadsheet1.SpreadsheetElement.StatusBar.Children[1]).Visibility = Telerik.WinControls.ElementVisibility.Collapsed;
(this.radSpreadsheet1.SpreadsheetElement.StatusBar.Children[2] as RadTrackBarElement).Visibility = Telerik.WinControls.ElementVisibility.Collapsed;

````

#### **Suppress Context Menu**

Subscribe to the `ContextMenuShowing` event and set the `Menu` property to `null`:
   
```C#

radSpreadsheet1.SpreadsheetElement.ContextMenuShowing += SpreadsheetElement_ContextMenuShowing;

private void SpreadsheetElement_ContextMenuShowing(object sender, SpreadsheetContextMenuOpeningEventArgs e)
{
   e.Menu = null;       
}

````

#### **Disable Selection Rectangle**

The control does not provide a way to fully disable the selection. A possible solution here will be to disable the presenter in the editor:
   
   
````C#
   
protected override void OnLoad(EventArgs e)
{
   base.OnLoad(e);
   if (this.radSpreadsheet1.SpreadsheetElement.ActiveWorksheetEditor.ActivePresenter is NormalWorksheetEditorPresenter worksheetEditorPresenter)
   {
	   worksheetEditorPresenter.Enabled = false;
   }
}

````

#### **Suppress Protected Worksheet Message**
   
In general, the messages shown in the control will trigger the **MessageShowing** event. In thе event handler, you can check the NotificationType and handle the event.
   
````C#

private void SpreadsheetElement_MessageShowing(object sender, Telerik.WinForms.Controls.Spreadsheet.MessageShowingEventArgs e)
{
   if (e.NotificationType == Telerik.WinForms.Controls.Spreadsheet.Dialogs.MessageBoxNotificationType.ProtectedWorksheetError)
   {
	   e.IsHandled = true;
   }            
}

````

#### **Hide + Sign for Adding Worksheets**
  
````csharp

protected override void OnLoad(EventArgs e)
{
   base.OnLoad(e);
   this.radSpreadsheet1.SpreadsheetElement.SheetSelector.Children[4].Children[1].Visibility = ElementVisibility.Collapsed;
}

````
## See Also

* [RadSpreadsheet Overview](https://docs.telerik.com/devtools/winforms/controls/spreadsheet/overview)
