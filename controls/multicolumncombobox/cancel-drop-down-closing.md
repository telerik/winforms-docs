---
title: Cancel Drop Down Closing
page_title: Cancel Drop Down Closing - WinForms MultiColumnComboBox Control
description: Learn how to prevent closing the drop down according to the selected row in the popup grid.
slug: cancel-drop-down-closing
tags: drop,down,close
published: True
position: 8 
---

# Cancel Drop Down Closing

**RadMultiColumnComboBox** offers the **DropDownClosing** event which is fired just before the pop up gets closed. This is an appropriate place to prevent closing the drop down according to any custom criteria, e.g. a certain row in the pop up grid is selected.

{{source=..\SamplesCS\MultiColumnComboBox\MCCBgettingStarted.cs region=CancelClosing}} 
{{source=..\SamplesVB\MultiColumnComboBox\MCCBgettingStarted.vb region=CancelClosing}} 

````C#

private void RadMultiColumnComboBox1_DropDownClosing(object sender, RadPopupClosingEventArgs args)
{
    if (this.radMultiColumnComboBox1.EditorControl.CurrentRow != null && 
        this.radMultiColumnComboBox1.EditorControl.CurrentRow.Index == 2)
    {
        args.Cancel = true;
    }
} 


````
````VB.NET

Private Sub RadMultiColumnComboBox1_DropDownClosing(ByVal sender As Object, ByVal args As RadPopupClosingEventArgs)
    If Me.RadMultiColumnComboBox1.EditorControl.CurrentRow IsNot Nothing AndAlso
        Me.RadMultiColumnComboBox1.EditorControl.CurrentRow.Index = 2 Then
        args.Cancel = True
    End If
End Sub


````

{{endregion}}
