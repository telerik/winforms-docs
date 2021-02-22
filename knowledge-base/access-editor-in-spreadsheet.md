---
title: How to Access RadSpreadsheet's Editor  
description: This article demonstrates how to access the editor in RadSpreadsheet 
type: how-to
page_title: How to Access RadSpreadsheet's Editor  
slug: access-editor-in-spreadsheet
position: 5
tags: spreadsheet, editor, input
ticketid: 1507146
res_type: kb
---


## Environment
|Product Version|Product|Author|
|----|----|----|
|2021.1.122|RadSpreadsheet for WinForms|[Desislava Yordanova](https://www.telerik.com/blogs/author/desislava-yordanova)|

## Description

This article demonstrates how to access the **RadSpreadsheet**'s editor and handle the user's input while editing a cell.

The required references are listed below:

* Telerik.WinControls
* Telerik.WinControls.UI
* TelerikCommon
* Telerik.WinControls.RadSpreadsheet
* Telerik.Windows.Documents.Core
* Telerik.Windows.Documents.Spreadsheet

## Solution

The editor can be detected via the [Selection]({%slug radspreadsheet-ui-working-with-selection%}) property that the SpreadsheetElement.**ActiveWorksheetEditor** offers. It triggers the **ActiveCellModeChanged** event when the selected cell enters edit mode. By default, a Microsoft **RichTextBox** is hosted inside the editor:

 
````C#
private Telerik.WinForms.Controls.Spreadsheet.Worksheets.RadWorksheetEditor activeEditor;
private NormalWorksheetEditorPresenter activePresenter;

public Form1()
{
    InitializeComponent();

    this.radSpreadsheet1.SpreadsheetElement.ActiveSheetEditorChanged += SpreadsheetElement_ActiveSheetEditorChanged;
    InitializeSubscription();
}

public void InitializeSubscription()
{
    this.activeEditor = this.radSpreadsheet1.SpreadsheetElement.ActiveWorksheetEditor;
    this.activePresenter = this.activeEditor.ActivePresenter as NormalWorksheetEditorPresenter;

    this.activeEditor.Selection.ActiveCellModeChanged -= Selection_ActiveCellModeChanged;
    this.activeEditor.ActivePresenterChanged -= activeEditor_ActivePresenterChanged;

    this.activeEditor.Selection.ActiveCellModeChanged += Selection_ActiveCellModeChanged;
    this.activeEditor.ActivePresenterChanged += activeEditor_ActivePresenterChanged;
}

void SpreadsheetElement_ActiveSheetEditorChanged(object sender, EventArgs e)
{
    InitializeSubscription();
}

void activeEditor_ActivePresenterChanged(object sender, EventArgs e)
{
    this.activePresenter = this.activeEditor.ActivePresenter as NormalWorksheetEditorPresenter;
}

void Selection_ActiveCellModeChanged(object sender, EventArgs e)
{
    if (activeEditor.Selection.ActiveCellMode == Telerik.WinForms.Controls.Spreadsheet.Worksheets.ActiveCellMode.Edit)
    {
        CellInputUILayer uiLayer = this.activePresenter.UILayers.GetByName(WorksheetPredefinedUILayers.CellInput) as CellInputUILayer;
        CellEditor cellEditor = uiLayer.ActiveCellEditor as CellEditor;
        if (cellEditor != null)
        {
            RadHostItem editorHost = cellEditor.Children.First() as RadHostItem;
            if (editorHost != null)
            {
                RichTextBox rtb = editorHost.HostedControl as RichTextBox;
                rtb.KeyDown -= rtb_KeyDown;
                rtb.KeyDown += rtb_KeyDown;
            }
        }
    }
}

private void rtb_KeyDown(object sender, KeyEventArgs e)
{
    Console.WriteLine(e.KeyCode);
}
  

````
````VB.NET
Private activeEditor As RadWorksheetEditor
Private activePresenter As NormalWorksheetEditorPresenter

Public Sub New()
    InitializeComponent()
    AddHandler Me.RadSpreadsheet1.SpreadsheetElement.ActiveSheetEditorChanged, AddressOf SpreadsheetElement_ActiveSheetEditorChanged
    InitializeSubscription()
End Sub

Public Sub InitializeSubscription()
    Me.activeEditor = Me.RadSpreadsheet1.SpreadsheetElement.ActiveWorksheetEditor
    Me.activePresenter = TryCast(Me.activeEditor.ActivePresenter, NormalWorksheetEditorPresenter)
    RemoveHandler Me.activeEditor.Selection.ActiveCellModeChanged, AddressOf Selection_ActiveCellModeChanged
    RemoveHandler Me.activeEditor.ActivePresenterChanged, AddressOf activeEditor_ActivePresenterChanged
    AddHandler Me.activeEditor.Selection.ActiveCellModeChanged, AddressOf Selection_ActiveCellModeChanged
    AddHandler Me.activeEditor.ActivePresenterChanged, AddressOf activeEditor_ActivePresenterChanged
End Sub

Private Sub SpreadsheetElement_ActiveSheetEditorChanged(ByVal sender As Object, ByVal e As EventArgs)
    InitializeSubscription()
End Sub

Private Sub activeEditor_ActivePresenterChanged(ByVal sender As Object, ByVal e As EventArgs)
    Me.activePresenter = TryCast(Me.activeEditor.ActivePresenter, NormalWorksheetEditorPresenter)
End Sub

Private Sub Selection_ActiveCellModeChanged(ByVal sender As Object, ByVal e As EventArgs)
    If activeEditor.Selection.ActiveCellMode = Telerik.WinForms.Controls.Spreadsheet.Worksheets.ActiveCellMode.Edit Then
        Dim uiLayer As CellInputUILayer = TryCast(Me.activePresenter.UILayers.GetByName(WorksheetPredefinedUILayers.CellInput), CellInputUILayer)
        Dim cellEditor As CellEditor = TryCast(uiLayer.ActiveCellEditor, CellEditor)

        If cellEditor IsNot Nothing Then
            Dim editorHost As RadHostItem = TryCast(cellEditor.Children.First(), RadHostItem)

            If editorHost IsNot Nothing Then
                Dim rtb As RichTextBox = TryCast(editorHost.HostedControl, RichTextBox)
                RemoveHandler rtb.KeyDown, AddressOf rtb_KeyDown
                AddHandler rtb.KeyDown, AddressOf rtb_KeyDown
            End If
        End If
    End If
End Sub

Private Sub rtb_KeyDown(ByVal sender As Object, ByVal e As KeyEventArgs)
    Console.WriteLine(e.KeyCode)
End Sub
 

````

# See Also

* [Working with UI Selection]({%slug radspreadsheet-ui-working-with-selection%})  

