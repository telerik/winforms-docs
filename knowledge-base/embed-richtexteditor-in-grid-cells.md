---
title: How to Embed RadRichTextEditor in GridView Cells
description: Learn how to display and edit HTML text in WinForms GridView's cells.
type: how-to 
page_title: How to Embed RadRichTextEditor in GridView Cells
slug: embed-richtexteditor-in-grid-cells
position: 39
tags: gridview, html, display, edit, richtexteditor
res_type: kb
---

## Environment
 
|Product Version|Product|Author|
|----|----|----|
|2022.2.622|RadGridView for WinForms|[Desislava Yordanova](https://www.telerik.com/blogs/author/desislava-yordanova)|


## Description

A common requirement is to display and edit HTML text in RadGridView. RadGridView offers [rich text formatting]({%slug winforms/telerik-presentation-framework/html-like-text-formatting%}) mechanism that uses plain HTML tags to display formatted text such as font style, font color, font size, etc. This can be used to display plain HTML in the grid cells. However, it is also necessary to provide a convenient editing mechanism for this HTML. This article demonstrates a sample approach how to embed a [RadRichTextEditor]({%slug winforms/richtexteditor%}) in each cell in RadGridView.

>caution Note that RadRichTextEditor is a heavy control due to its diversity of supported features. Since RadRichTextEditor can't work as an element, it should be hosted as a control in a RadHostItem. Thus, it can be used inside the custom cell element. Note that since this approach uses controls (instead of elements), some visual glitches are possible as controls do not support clipping. In addition, if you are having a lot of rows, performance implications may occur for the same reason.
>

>caption Display and Edit rich text

![embed-richtexteditor-in-grid-cells 001](images/embed-richtexteditor-in-grid-cells001.gif)

## Solution

Add a [RichTextEditorRibbonUI]({%slug winforms/richtexteditor-/ui-for-applying-rich-text-formatting/ribbon-ui%}) and a RadGridView to the form.
It is necessary to create a custom column that uses a specific cell element that shows a [RadRichTextEditor]({%slug winforms/richtexteditor%}).

#### Custom Column
 
````C#  

public class GridViewRichTextColumn : GridViewTextBoxColumn
{
    public GridViewRichTextColumn()
    {
    }

    public GridViewRichTextColumn(string fieldName)
        : base(fieldName)
    {
    }


    public GridViewRichTextColumn(string uniqueName, string fieldName)
        : base(uniqueName, fieldName)
    {
    }

    public override System.Type GetCellType(GridViewRowInfo row)
    {
        if (row is GridViewDataRowInfo)
        {
            return typeof(RichTextEditorCellElement);
        }

        return base.GetCellType(row);
    }

    public override System.Type GetDefaultEditorType()
    {
        return typeof(RichTextEditor);
    }

    public override IInputEditor GetDefaultEditor()
    {
        return new RichTextEditor();
    }
}        

````
````VB.NET

Public Class GridViewRichTextColumn
    Inherits GridViewTextBoxColumn

    Public Sub New()
    End Sub

    Public Sub New(ByVal fieldName As String)
        MyBase.New(fieldName)
    End Sub

    Public Sub New(ByVal uniqueName As String, ByVal fieldName As String)
        MyBase.New(uniqueName, fieldName)
    End Sub

    Public Overrides Function GetCellType(ByVal row As GridViewRowInfo) As System.Type
        If TypeOf row Is GridViewDataRowInfo Then
            Return GetType(RichTextEditorCellElement)
        End If

        Return MyBase.GetCellType(row)
    End Function

    Public Overrides Function GetDefaultEditorType() As System.Type
        Return GetType(RichTextEditor)
    End Function

    Public Overrides Function GetDefaultEditor() As IInputEditor
        Return New RichTextEditor()
    End Function
End Class

````

#### Custom Cell Element

````C#  

public class RichTextEditorCellElement : GridDataCellElement
{
    private RichTextEditor editor;

    public RichTextEditorCellElement(GridViewColumn col, GridRowElement row)
        : base(col, row)
    {

    }

    protected override Type ThemeEffectiveType
    {
        get
        {
            return typeof(GridDataCellElement);
        }
    }

    public override IInputEditor Editor
    {
        get
        {
            return this.editor;
        }
    }

    protected override void CreateChildElements()
    {
        base.CreateChildElements();
        this.editor = new RichTextEditor();

        this.Children.Add(this.editor.EditorElement);
    }

    protected override void SetContentCore(object value)
    {
        try
        {
            this.editor.Value = Convert.ToString(value);

            if (this.Value != null && this.Value != DBNull.Value && this.Value.ToString() != "")
            {
                RichTextEditorElement element = (RichTextEditorElement)this.editor.EditorElement;
                RadRichTextEditor textBox = (RadRichTextEditor)element.HostedControl;
                HtmlFormatProvider provider = new HtmlFormatProvider(); 

                RadDocument document = provider.Import(this.Value.ToString());
                textBox.Document = document;
                document.LayoutMode = DocumentLayoutMode.Flow;
            }
        }
        catch (Exception ex)
        {
            MessageBox.Show(null, ex.ToString(), "EXCEPTION", MessageBoxButtons.OK, MessageBoxIcon.Error);
        }
    }

    public override void Attach(GridViewColumn data, object context)
    {
        base.Attach(data, context);

        if (this.RowElement != null)
        {
            this.GridViewElement.EditorManager.RegisterPermanentEditorType(typeof(RichTextEditor));
        }
    }
}     

````
````VB.NET

Public Class RichTextEditorCellElement
    Inherits GridDataCellElement

    Private _editor As RichTextEditor

    Public Sub New(ByVal col As GridViewColumn, ByVal row As GridRowElement)
        MyBase.New(col, row)
    End Sub

    Protected Overrides ReadOnly Property ThemeEffectiveType As Type
        Get
            Return GetType(GridDataCellElement)
        End Get
    End Property

    Public Overrides ReadOnly Property Editor As IInputEditor
        Get
            Return Me._editor
        End Get
    End Property

    Protected Overrides Sub CreateChildElements()
        MyBase.CreateChildElements()
        Me._editor = New RichTextEditor()
        Me.Children.Add(Me._editor.EditorElement)
    End Sub

    Protected Overrides Sub SetContentCore(ByVal value As Object)
        Try
            Me.editor.Value = Convert.ToString(value)

            If Me.Value IsNot Nothing AndAlso Not Me.Value.Equals(DBNull.Value) AndAlso Not Me.Value.ToString().Equals(String.Empty) Then
                Dim element As RichTextEditorElement = CType(Me._editor.EditorElement, RichTextEditorElement)
                Dim textBox As RadRichTextEditor = CType(element.HostedControl, RadRichTextEditor)
                Dim provider As HtmlFormatProvider = New HtmlFormatProvider()
                Dim document As RadDocument = provider.Import(Me.Value.ToString())
                textBox.Document = document
                document.LayoutMode = DocumentLayoutMode.Flow
            End If

        Catch ex As Exception
            MessageBox.Show(Nothing, ex.ToString(), "EXCEPTION", MessageBoxButtons.OK, MessageBoxIcon.[Error])
        End Try
    End Sub

    Public Overrides Sub Attach(ByVal data As GridViewColumn, ByVal context As Object)
        MyBase.Attach(data, context)

        If Me.RowElement IsNot Nothing Then
            Me.GridViewElement.EditorManager.RegisterPermanentEditorType(GetType(RichTextEditor))
        End If
    End Sub
End Class

````

#### Custom BaseGridEditor 

````C#  

public class RichTextEditor : BaseGridEditor
{
    public override object Value
    {
        get
        {
            RichTextEditorElement element = (RichTextEditorElement)EditorElement;
            RadRichTextEditor textBox = (RadRichTextEditor)element.HostedControl;
           HtmlFormatProvider provider = new HtmlFormatProvider();
            return provider.Export(textBox.Document);
        }
        set
        {
            RichTextEditorElement element = (RichTextEditorElement)EditorElement;
            RadRichTextEditor textBox = (RadRichTextEditor)element.HostedControl;
            HtmlFormatProvider provider = new HtmlFormatProvider();
            if (value != null)
            {
                textBox.Document = provider.Import(value.ToString());
            }
            else
            {
                textBox.Document = provider.Import(@"<html><body></body></html>");
            }
        }
    }

    public override void BeginEdit()
    {
        base.BeginEdit();

        RichTextEditorElement element = this.EditorElement as RichTextEditorElement;
        RadRichTextEditor richTextEditor = element.HostedControl as RadRichTextEditor;
        richTextEditor.Document.DocumentContentChanged += this.OnDocumentContentChanged;
    }

    private void OnDocumentContentChanged(object sender, System.EventArgs e)
    {
        this.OnValueChanged();
    }

    public override bool EndEdit()
    {
        RichTextEditorElement element = this.EditorElement as RichTextEditorElement;
        RadRichTextEditor richTextEditor = element.HostedControl as RadRichTextEditor;
        richTextEditor.Document.DocumentContentChanged -= this.OnDocumentContentChanged;

        return base.EndEdit();
    }

    protected override RadElement CreateEditorElement()
    {
        return new RichTextEditorElement();
    } 
}

public class RichTextEditorElement : RadHostItem
{
    public RichTextEditorElement()
        : base(new RadRichTextEditor())
    {
        RouteMessages = false;
        this.HostedControl.GotFocus += new EventHandler(HostedControl_GotFocus);
        this.HostedControl.KeyDown += new KeyEventHandler(HostedControl_KeyDown);
    }

    private void HostedControl_GotFocus(object sender, EventArgs e)
    {
        RichTextEditorCellElement cell = this.Parent as RichTextEditorCellElement;
        if (cell != null)
        {
            cell.ColumnInfo.IsCurrent = true;
            cell.RowInfo.IsCurrent = true;
            cell.GridViewElement.BeginEdit();
        }
    }

    void HostedControl_KeyDown(object sender, KeyEventArgs e)
    {
        if (e.Control && e.KeyCode == Keys.Enter)
        {
            ((RadGridView)this.ElementTree.Control).EndEdit();
        }
    }
}    

````
````VB.NET

Public Class RichTextEditor
    Inherits BaseGridEditor

    Public Overrides Property Value As Object
        Get
            Dim element As RichTextEditorElement = CType(EditorElement, RichTextEditorElement)
            Dim textBox As RadRichTextEditor = CType(element.HostedControl, RadRichTextEditor)
            Dim provider As HtmlFormatProvider = New HtmlFormatProvider()
            Return provider.Export(textBox.Document)
        End Get
        Set(ByVal value As Object)
            Dim element As RichTextEditorElement = CType(EditorElement, RichTextEditorElement)
            Dim textBox As RadRichTextEditor = CType(element.HostedControl, RadRichTextEditor)
            Dim provider As HtmlFormatProvider = New HtmlFormatProvider()

            If value IsNot Nothing Then
                textBox.Document = provider.Import(value.ToString())
            Else
                textBox.Document = provider.Import("<html><body></body></html>")
            End If
        End Set
    End Property

    Public Overrides Sub BeginEdit()
        MyBase.BeginEdit()
        Dim element As RichTextEditorElement = TryCast(Me.EditorElement, RichTextEditorElement)
        Dim richTextEditor As RadRichTextEditor = TryCast(element.HostedControl, RadRichTextEditor)
        AddHandler richTextEditor.Document.DocumentContentChanged, AddressOf Me.OnDocumentContentChanged
    End Sub

    Private Sub OnDocumentContentChanged(ByVal sender As Object, ByVal e As System.EventArgs)
        Me.OnValueChanged()
    End Sub

    Public Overrides Function EndEdit() As Boolean
        Dim element As RichTextEditorElement = TryCast(Me.EditorElement, RichTextEditorElement)
        Dim richTextEditor As RadRichTextEditor = TryCast(element.HostedControl, RadRichTextEditor)
        RemoveHandler richTextEditor.Document.DocumentContentChanged, AddressOf Me.OnDocumentContentChanged
        Return MyBase.EndEdit()
    End Function

    Protected Overrides Function CreateEditorElement() As RadElement
        Return New RichTextEditorElement()
    End Function
End Class

Public Class RichTextEditorElement
    Inherits RadHostItem

    Public Sub New()
        MyBase.New(New RadRichTextEditor())
        RouteMessages = False
        AddHandler Me.HostedControl.GotFocus, New EventHandler(AddressOf HostedControl_GotFocus)
        AddHandler Me.HostedControl.KeyDown, New KeyEventHandler(AddressOf HostedControl_KeyDown)
    End Sub

    Private Sub HostedControl_GotFocus(ByVal sender As Object, ByVal e As EventArgs)
        Dim cell As RichTextEditorCellElement = TryCast(Me.Parent, RichTextEditorCellElement)

        If cell IsNot Nothing Then
            cell.ColumnInfo.IsCurrent = True
            cell.RowInfo.IsCurrent = True
            cell.GridViewElement.BeginEdit()
        End If
    End Sub

    Private Sub HostedControl_KeyDown(ByVal sender As Object, ByVal e As KeyEventArgs)
        If e.Control AndAlso e.KeyCode = Keys.Enter Then
            Dim grid As RadGridView = TryCast(Me.ElementTree.Control, RadGridView)
            grid.EndEdit()
        End If
    End Sub
End Class

````
Last, but not least, the following code snippet demonstrates how to use it in RadGridView:

#### 

````C#  

public Form1()
{
    InitializeComponent();

    this.radGridView1.AutoSizeColumnsMode = GridViewAutoSizeColumnsMode.Fill;
    this.radGridView1.Columns.Add(new GridViewRichTextColumn("Text", "Text"));

    GridViewRowInfo row = radGridView1.Rows.AddNew(); 
    row.Height = 200;
    row.Cells[0].Value = "<html><span style=\"background-color:red\">Highlighted Text</span></html>";

     row = radGridView1.Rows.AddNew(); 
    row.Height = 200;
    row.Cells[0].Value = "<html><span style=\"background-color:red\">Second Text</span></html>";

     row = radGridView1.Rows.AddNew(); 
    row.Height = 200;
    row.Cells[0].Value = "<html><span style=\"background-color:red\">Third Text</span></html>";

    this.radGridView1.CurrentCellChanged += RadGridView1_CurrentCellChanged;
}

private void RadGridView1_CurrentCellChanged(object sender, CurrentCellChangedEventArgs e)
{
    if (e.NewCell != null && e.NewCell.ColumnInfo is GridViewRichTextColumn)
    {
        RichTextEditorCellElement cellElement = this.radGridView1.TableElement.GetCellElement(e.NewCell.RowInfo,
            e.NewCell.ColumnInfo) as RichTextEditorCellElement;
        if (cellElement != null)
        {
            RichTextEditorElement element = (RichTextEditorElement)((RichTextEditor)cellElement.Editor).EditorElement;
            RadRichTextEditor textBox = (RadRichTextEditor)element.HostedControl;
            this.richTextEditorRibbonBar1.AssociatedRichTextEditor = textBox;
            Console.WriteLine(textBox.GetHashCode());
        }
    }
}

  

````
````VB.NET

Public Class RadForm1
    Public Sub New()
        InitializeComponent()
        Me.RadGridView1.AutoSizeColumnsMode = GridViewAutoSizeColumnsMode.Fill
        Me.RadGridView1.Columns.Add(New GridViewRichTextColumn("Text", "Text"))
        Dim row As GridViewRowInfo = RadGridView1.Rows.AddNew()
        row.Height = 200
        row.Cells(0).Value = "<html><span style=""background-color:red"">Highlighted Text</span></html>"
        row = RadGridView1.Rows.AddNew()
        row.Height = 200
        row.Cells(0).Value = "<html><span style=""background-color:red"">Second Text</span></html>"
        row = RadGridView1.Rows.AddNew()
        row.Height = 200
        row.Cells(0).Value = "<html><span style=""background-color:red"">Third Text</span></html>"
        AddHandler Me.RadGridView1.CurrentCellChanged, AddressOf RadGridView1_CurrentCellChanged
    End Sub

    Private Sub RadGridView1_CurrentCellChanged(ByVal sender As Object, ByVal e As CurrentCellChangedEventArgs)
        If e.NewCell IsNot Nothing AndAlso TypeOf e.NewCell.ColumnInfo Is GridViewRichTextColumn Then
            Dim cellElement As RichTextEditorCellElement = TryCast(Me.RadGridView1.TableElement.GetCellElement(e.NewCell.RowInfo,
                                                                    e.NewCell.ColumnInfo), RichTextEditorCellElement)

            If cellElement IsNot Nothing Then
                Dim element As RichTextEditorElement = CType((CType(cellElement.Editor, RichTextEditor)).EditorElement, RichTextEditorElement)
                Dim textBox As RadRichTextEditor = CType(element.HostedControl, RadRichTextEditor)
                Me.RichTextEditorRibbonBar1.AssociatedRichTextEditor = textBox
                Console.WriteLine(textBox.GetHashCode())
            End If
        End If
    End Sub
End Class

````

>note A complete C# and VB project is available [here](https://github.com/telerik/winforms-sdk/tree/master/GridView/RichTextGridColumn).

# See Also

* [Creating custom cells]({%slug winforms/gridview/cells/creating-custom-cells%})
* [How to Display and Edit HTML Text in GridView Cells]({%slug display-and-edit-html-text-in-grid-cells%})
