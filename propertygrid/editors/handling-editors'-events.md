---
title: Handling editors' events
page_title: Handling editors' events | UI for WinForms Documentation
description: Handling editors' events
slug: winforms/propertygrid/editors/handling-editors'-events
tags: handling,editors',events
published: True
position: 6
---

# Handling editors' events

In some cases you may need to perform a specific operation depending on the user input in the editor while the editor is still opened.

For example, you may need to set specific text in the editor when the user presses __CTRL + D__. In this case, you should subscribe to the __KeyDown__ event of the __RadTextBoxElement__ in the __EditorInitialized__ event handler. The editors in RadPropertyGrid are reused, so we define a field which prevents us from subscribing to the __KeyDown__ more than once.

#### How to handle events

{{source=..\SamplesCS\PropertyGrid\Editors\PropertyGridHandlingEditorsEvents.cs region=handlingEvents}} 
{{source=..\SamplesVB\PropertyGrid\Editors\PropertyGridHandlingEditorsEvents.vb region=handlingEvents}} 

````C#
        public PropertyGridHandlingEditorsEvents()
        {
            InitializeComponent();

            this.radPropertyGrid1.EditorInitialized += new PropertyGridItemEditorInitializedEventHandler(radPropertyGrid1_EditorInitialized);
        }

        bool tbSubscribed = false;

        void radPropertyGrid1_EditorInitialized(object sender, PropertyGridItemEditorInitializedEventArgs e)
        {
            PropertyGridTextBoxEditor editor = e.Editor as PropertyGridTextBoxEditor;

            if (editor != null)
            {
                if (!tbSubscribed)
                {
                    tbSubscribed = true;
                    RadTextBoxElement tbElement = (RadTextBoxElement)editor.EditorElement;
                    tbElement.KeyDown += new KeyEventHandler(tbElement_KeyDown);
                }
            }
        }

        void tbElement_KeyDown(object sender, KeyEventArgs e)
        {
            if (e.Control)
            {
                if (e.KeyCode == Keys.D)
                {
                    ((RadTextBoxElement)sender).Text = "Default text";
                }
            }
        }
````
````VB.NET
    Public Sub New()
        InitializeComponent()
        AddHandler RadPropertyGrid1.EditorInitialized, AddressOf radPropertyGrid1_EditorInitialized
    End Sub

    Private tbSubscribed As Boolean = False

    Private Sub radPropertyGrid1_EditorInitialized(ByVal sender As Object, ByVal e As PropertyGridItemEditorInitializedEventArgs)
        Dim editor As PropertyGridTextBoxEditor = TryCast(e.Editor, PropertyGridTextBoxEditor)

        If Not editor Is Nothing Then
            If (Not tbSubscribed) Then
                tbSubscribed = True
                Dim tbElement As RadTextBoxElement = CType(editor.EditorElement, RadTextBoxElement)
                AddHandler tbElement.KeyDown, AddressOf tbElement_KeyDown
            End If
        End If
    End Sub

    Private Sub tbElement_KeyDown(ByVal sender As Object, ByVal e As KeyEventArgs)
        If e.Control Then
            If e.KeyCode = Keys.D Then
                CType(sender, RadTextBoxElement).Text = "Default text"
            End If
        End If
    End Sub
    '
````

{{endregion}}