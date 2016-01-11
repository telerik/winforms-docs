---
title: Copy/Paste/Cut
page_title: Copy/Paste/Cut | UI for WinForms Documentation
description: Formatting Data Cells
slug: winforms/virtualgrid/copy-paste-cut
tags: virtualgrid, copy, paste, cut
published: True
position: 9
---

# Copy/Paste/Cut

__RadVirtualGrid__ supports built-in Copy/Paste functionality, which allows you to store text in the Clipboard and then paste it in a different location. Using "Copy" and "Paste" gets quite useful when you want to enter the same content repeatedly.

## Copying

The copying functionality in __RadVirtualGrid__ is controlled via the __AllowCopy__ property. If this property is set to *false* the user would not be able to copy the cell values.

Copying is a pretty simple operation. After cell/row is selected, right click over the data cell/row opens a context menu where the copy option exists. After selecting it, you can paste the content anywhere you need (in Notepad or Excel for example).

__RadVirtualGrid__ introduces __Copying__ event which occurs when the grid has prepared appropriate data formats that represent the copy selection. This event is fired once for each supported format: DataFormats.Text, DataFormats.HTML, DataFormats.CommaSeparatedValue. You can cancel this event if the data is not allowed to be stored to Clipboard in a specific format, e.g. HTML format:

{{source=..\SamplesCS\VirtualGrid\CopyPasteCutCode.cs region=copy}} 
{{source=..\SamplesVB\VirtualGrid\CopyPasteCutCode.vb region=copy}}
````C#
void radVirtualGrid1_Copying(object sender, VirtualGridClipboardEventArgs e)
{
    if (e.Format == DataFormats.Html)
    {
        e.Cancel = true;
    }
}

````
````VB.NET
Private Sub radVirtualGrid1_Copying(ByVal sender As Object, ByVal e As VirtualGridClipboardEventArgs)
    If e.Format = DataFormats.Html Then
        e.Cancel = True
    End If
End Sub

````


{{endregion}}

>note Additionally, you can use the __RadVirtualGrid.VirtualGridElement.CopySelection__ method in order to perform the copy operation programmatically.
>

## Pasting

The pasting functionality in __RadVirtualGrid__ is controlled via the __AllowPaste__ property. If this property is set to *false* the user would not be able to paste in the grid.

The default context menu for data cells offers paste possibility, except when the __RadVirtualGrid__ is read-only or disabled.

The __Pasting__ event is appropriate for modifying the Clipboard data before pasting it in the grid.

{{source=..\SamplesCS\VirtualGrid\CopyPasteCutCode.cs region=paste}} 
{{source=..\SamplesVB\VirtualGrid\CopyPasteCutCode.vb region=paste}}
````C#
void radVirtualGrid1_Pasting(object sender, VirtualGridClipboardEventArgs e)
{
    if (Clipboard.ContainsData(DataFormats.Text))
    {
        string data = Clipboard.GetData(DataFormats.Text).ToString();
        if (data != string.Empty)
        {
            Clipboard.SetData(DataFormats.Text, data.ToUpper());
        }
    }
}

````
````VB.NET
Private Sub radVirtualGrid1_Pasting(ByVal sender As Object, ByVal e As VirtualGridClipboardEventArgs)
    If Clipboard.ContainsData(DataFormats.Text) Then
        Dim data As String = Clipboard.GetData(DataFormats.Text).ToString()
        If data <> String.Empty Then
            Clipboard.SetData(DataFormats.Text, data.ToUpper())
        End If
    End If
End Sub

````


{{endregion}}

>note Additionally, you can use the __RadVirtualGrid.VirtualGridElement.Paste__ method in order to perform the paste operation programmatically.
>

## Cutting

The cutting functionality in __RadVirtualGrid__ is controlled via the __AllowCut__ property. If this property is set to *false* the user would not be able to cut the values.

>note Additionally, you can use the __RadVirtualGrid.VirtualGridElement.CutSelection__ method in order to perform the cut operation programmatically.
>

