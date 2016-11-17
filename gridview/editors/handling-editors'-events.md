---
title: Handling Editors' events
page_title: Handling Editors' events | RadGridView
description: This article shows how you can use the CellEditorInitialized event handler to access the active editor.
slug: winforms/gridview/editors/handling-editors'-events
tags: handling,editors',events
published: True
position: 6
previous_url: gridview-editors-handling-editors-events
---

# Handling Editors' events

In some cases you may need to perform a specific operation depending on the user input in the editor while the editor is still opened.

For example if you are in __GridViewTextBoxColumn__, the editor for the cells in this column is __RadTextBoxEditor__. You may need to set specific text in the text box editor when the user presses CTRL + L. In this case, you should subscribe to the __KeyDown__ event of the __RadTextBoxEditorElement__ in the __CellEditorInitialized__ event handler. The editors in RadGridView are reused, so we define a field which prevents us from subscribing to the __KeyDown__ more than once.

{{source=..\SamplesCS\GridView\Editors\HandlingEditorsEvents.cs region=HandlingEditorsEvents}} 
{{source=..\SamplesVB\GridView\Editors\HandlingEditorsEvents.vb region=HandlingEditorsEvents}} 

````C#
public HandlingEditorsEvents()
{
    InitializeComponent();
    radGridView1.CellEditorInitialized += new Telerik.WinControls.UI.GridViewCellEventHandler(radGridView1_CellEditorInitialized);
}
bool tbSubscribed = false;
void radGridView1_CellEditorInitialized(object sender, Telerik.WinControls.UI.GridViewCellEventArgs e)
{
    RadTextBoxEditor tbEditor = this.radGridView1.ActiveEditor as RadTextBoxEditor;
    if (tbEditor != null)
    {
        if (!tbSubscribed)
        {
            tbSubscribed = true;
            RadTextBoxEditorElement tbElement = (RadTextBoxEditorElement)tbEditor.EditorElement;
            tbElement.KeyDown += new KeyEventHandler(tbElement_KeyDown);
        }
    }
}
void tbElement_KeyDown(object sender, KeyEventArgs e)
{
    if (e.Control)
    {
        if (e.KeyCode == Keys.L)
        {
            ((RadTextBoxEditorElement)sender).Text = "Default text";
        }
    }
}

````
````VB.NET
Public Sub New()
    InitializeComponent()
    AddHandler RadGridView1.CellEditorInitialized, AddressOf radGridView1_CellEditorInitialized
End Sub
Private tbSubscribed As Boolean = False
Private Sub radGridView1_CellEditorInitialized(ByVal sender As Object, ByVal e As Telerik.WinControls.UI.GridViewCellEventArgs)
    Dim tbEditor As RadTextBoxEditor = TryCast(Me.RadGridView1.ActiveEditor, RadTextBoxEditor)
    If Not tbEditor Is Nothing Then
        If (Not tbSubscribed) Then
            tbSubscribed = True
            Dim tbElement As RadTextBoxEditorElement = CType(tbEditor.EditorElement, RadTextBoxEditorElement)
            AddHandler tbElement.KeyDown, AddressOf tbElement_KeyDown
        End If
    End If
End Sub
Private Sub tbElement_KeyDown(ByVal sender As Object, ByVal e As KeyEventArgs)
    If e.Control Then
        If e.KeyCode = Keys.L Then
            CType(sender, RadTextBoxEditorElement).Text = "Default text"
        End If
    End If
End Sub

````

{{endregion}}# See Also
* [API]({%slug winforms/gridview/editors/api%})

* [Customizing editor behavior]({%slug winforms/gridview/editors/customizing-editor-behavior%})

* [Data validation]({%slug winforms/gridview/editors/data-validation%})

* [Overview]({%slug winforms/gridview/editors/editors%})

* [Events]({%slug winforms/gridview/editors/events%})

* [Using custom editors]({%slug winforms/gridview/editors/using-custom-editors%})

