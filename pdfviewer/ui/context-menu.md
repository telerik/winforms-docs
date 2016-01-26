---
title: Context Menu
page_title: Context Menu | UI for WinForms Documentation
description: Context Menu
slug: winforms/pdfviewer/ui/context-menu
tags: context menu
published: True
position: 0
---

__RadPdfViewer__ shows __PdfViewerContextMenu__ when the user right clicks over the viewer. To be shown in the area where __RadPdfViewer__ is, you have to load a document.  

The context menu can change dynamically. For example, when the Text Selection mode is enabled, *Copy* and *Select All* items are displayed in the menu with a separator below them:

|FixedDocumentViewerMode.Pan|FixedDocumentViewerMode.TextSelection|
|----|----|
|![pdfviewer-overview 001](images/pdfviewer-ui-context-menu001.png)|![pdfviewer-overview 001](images/pdfviewer-ui-context-menu002.png)|
 
Additionally, you can easily add a custom menu item to the context menu. You can find below a sample code snippet:

{{source=..\SamplesCS\PdfViewer\PdfUI.cs region=CustomContextMenuItem}} 
{{source=..\SamplesVB\PdfViewer\PdfUI.vb region=CustomContextMenuItem}} 

````C#
public PdfUI()
        {
            InitializeComponent();

            RadMenuItem item = new RadMenuItem("MyItem");
            item.Click += item_Click;
            this.radPdfViewer1.PdfViewerElement.ContextMenu.Items.Add(item);
        }
        
        private void item_Click(object sender, EventArgs e)
        {
            RadMessageBox.Show("Perform your custom action here");
        }
````
````VB.NET
 Public Sub New()
        InitializeComponent()

        Dim item As New RadMenuItem("MyItem")
        AddHandler item.Click, AddressOf item_Click
        Me.RadPdfViewer1.PdfViewerElement.ContextMenu.Items.Add(item)
    End Sub

    Private Sub item_Click(sender As Object, e As EventArgs)
        RadMessageBox.Show("Perform your custom action here")
    End Sub
````

{{endregion}}