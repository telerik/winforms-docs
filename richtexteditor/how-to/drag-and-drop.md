---
title: Drag and Drop
page_title: Drag and Drop | RadRichTextEditor
description: RadRichTextEditor also supports drag and drop operations. The example in this article will handle a scenario of dropping content inside the editor.
slug: winforms/richtexteditor/how-to/drag-and-drop
tags: drag,drop
published: True
position: 3
---

# Drag and Drop

Like other standard WinForms controls **RadRichTextEditor** also supports drag and drop operations. The example in this article will handle a scenario of dropping content inside the editor. Similarly to Word the caret will follow the mouse so that the dragged item can be inserted at its precise location. In the example we will insert text from a predefined list of cities. The same approach can also be followed with other elements as well.

>caption Figure 1: Drag and Drop Between RadListView and RadRichTextEditor 

![richtexteditor-how-to-drag-and-drop 001](images/richtexteditor-how-to-drag-and-drop001.gif)

>note In RadRichTextEditor drop operation can be allowed by accessing the **RadRichTextBox** object and setting its **AllowDrop** property to *true*.

#### Initial Controls Setup

{{source=..\SamplesCS\RichTextEditor\HowTo\RadRichTextEditorDragAndDropForm.cs region=SetupControls}} 
{{source=..\SamplesVB\RichTextEditor\HowTo\RadRichTextEditorDragAndDropForm.vb region=SetupControls}}
````C#
public RadRichTextEditorDragAndDropForm()
{
    InitializeComponent();
    this.radListView1.ListViewElement.DragDropService.PreviewDragOver += DragDropService_PreviewDragOver;
    this.radListView1.ListViewElement.DragDropService.PreviewDragDrop += DragDropService_PreviewDragDrop;
    this.radRichTextEditor1.RichTextBoxElement.AllowDrop = true;
    this.radListView1.Items.Add("London");
    this.radListView1.Items.Add("Madrid");
    this.radListView1.Items.Add("Paris");
    this.radListView1.Items.Add("Sofia");
    this.radListView1.Items.Add("Berlin");
    this.radListView1.Items.Add("Moscow");
    this.radListView1.Items.Add("Rome");
    this.radListView1.Items.Add("Athens");
}

````
````VB.NET
Public Sub New()
    InitializeComponent()
    AddHandler Me.radListView1.ListViewElement.DragDropService.PreviewDragOver, AddressOf DragDropService_PreviewDragOver
    AddHandler Me.radListView1.ListViewElement.DragDropService.PreviewDragDrop, AddressOf DragDropService_PreviewDragDrop
    Me.radRichTextEditor1.RichTextBoxElement.AllowDrop = True
    Me.radListView1.Items.Add("London")
    Me.radListView1.Items.Add("Madrid")
    Me.radListView1.Items.Add("Paris")
    Me.radListView1.Items.Add("Sofia")
    Me.radListView1.Items.Add("Berlin")
    Me.radListView1.Items.Add("Moscow")
    Me.radListView1.Items.Add("Rome")
    Me.radListView1.Items.Add("Athens")
End Sub

````



{{endregion}}

## Handling Events

In the **PreviewDragOver** event one needs to first focus the control so that the Caret can be accessed and moved. The tricky part is get the actual position inside the editor with respect to the view port and the current scaling from the mouse coordinates.

#### PreviewDragOver Event

{{source=..\SamplesCS\RichTextEditor\HowTo\RadRichTextEditorDragAndDropForm.cs region=DragOverEvent}} 
{{source=..\SamplesVB\RichTextEditor\HowTo\RadRichTextEditorDragAndDropForm.vb region=DragOverEvent}}
````C#
private void DragDropService_PreviewDragOver(object sender, Telerik.WinControls.RadDragOverEventArgs e)
{
    if (e.HitTarget is Telerik.WinForms.RichTextEditor.RadRichTextBox)
    {
        e.CanDrop = true;
        if (!this.radRichTextEditor1.Focused)
        {
            this.radRichTextEditor1.Focus();
        }
        DocumentPosition position = this.radRichTextEditor1.RichTextBoxElement.ActiveEditorPresenter.GetDocumentPositionFromViewPoint(this.GetPosition(System.Windows.Forms.Control.MousePosition,
        this.radRichTextEditor1.RichTextBoxElement));
        this.radRichTextEditor1.Document.CaretPosition.MoveToPosition(position);
    }
}
private Telerik.WinControls.RichTextEditor.UI.Point GetPosition(System.Drawing.Point mousePoint, Telerik.WinControls.RichTextEditor.UI.UIElement element)
{
    System.Drawing.Point point = element.PointFromScreen(mousePoint);
    Telerik.WinControls.Layouts.RadMatrix matrix = element.TotalTransform;
    matrix.Invert();
    return new System.Drawing.PointF(point.X * matrix.ScaleX, point.Y * matrix.ScaleY);
}

````
````VB.NET
Private Sub DragDropService_PreviewDragOver(ByVal sender As Object, ByVal e As Telerik.WinControls.RadDragOverEventArgs)
    If TypeOf e.HitTarget Is Telerik.WinForms.RichTextEditor.RadRichTextBox Then
        e.CanDrop = True
        If Not Me.radRichTextEditor1.Focused Then
            Me.radRichTextEditor1.Focus()
        End If
        Dim position As DocumentPosition = Me.radRichTextEditor1.RichTextBoxElement.ActiveEditorPresenter.GetDocumentPositionFromViewPoint(Me.GetPosition(System.Windows.Forms.Control.MousePosition, Me.radRichTextEditor1.RichTextBoxElement))
        Me.radRichTextEditor1.Document.CaretPosition.MoveToPosition(position)
    End If
End Sub
Private Function GetPosition(ByVal mousePoint As System.Drawing.Point, ByVal element As Telerik.WinControls.RichTextEditor.UI.UIElement) As Telerik.WinControls.RichTextEditor.UI.Point
    Dim point As System.Drawing.Point = element.PointFromScreen(mousePoint)
    Dim matrix As Telerik.WinControls.Layouts.RadMatrix = element.TotalTransform
    matrix.Invert()
    Return New System.Drawing.PointF(point.X * matrix.ScaleX, point.Y * matrix.ScaleY)
End Function

````



{{endregion}}

The **PreviewDragDrop** event will be handled so that a text is inserted inside the document.

#### PreviewDragDrop Event

{{source=..\SamplesCS\RichTextEditor\HowTo\RadRichTextEditorDragAndDropForm.cs region=DragDropEvent}} 
{{source=..\SamplesVB\RichTextEditor\HowTo\RadRichTextEditorDragAndDropForm.vb region=DragDropEvent}}
````C#
private void DragDropService_PreviewDragDrop(object sender, Telerik.WinControls.RadDropEventArgs e)
{
    BaseListViewVisualItem draggedItem = e.DragInstance as BaseListViewVisualItem;
    Telerik.WinForms.RichTextEditor.RadRichTextBox radRichTextBox = e.HitTarget as Telerik.WinForms.RichTextEditor.RadRichTextBox;
    if (radRichTextBox == null)
    {
        return;
    }
    RadDocumentEditor editor = new RadDocumentEditor(this.radRichTextEditor1.Document);
    editor.Insert(" ");
    editor.Insert(draggedItem.Text);
    e.Handled = true;
}

````
````VB.NET
Private Sub DragDropService_PreviewDragDrop(ByVal sender As Object, ByVal e As Telerik.WinControls.RadDropEventArgs)
    Dim draggedItem As BaseListViewVisualItem = TryCast(e.DragInstance, BaseListViewVisualItem)
    Dim radRichTextBox As Telerik.WinForms.RichTextEditor.RadRichTextBox = TryCast(e.HitTarget, Telerik.WinForms.RichTextEditor.RadRichTextBox)
    If radRichTextBox Is Nothing Then
        Return
    End If
    Dim editor As RadDocumentEditor = New RadDocumentEditor(Me.radRichTextEditor1.Document)
    editor.Insert(" ")
    editor.Insert(draggedItem.Text)
    e.Handled = True
End Sub

````



{{endregion}}

# See Also

* [RadListView]({%slug winforms/listview%})
