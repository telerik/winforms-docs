---
title: Add "Check All" in the header cell for a GridViewCheckBoxColumn
description: Add "Check All" in the header cell for a GridViewCheckBoxColumn. Check it now!
type: how-to
page_title: Add "Check All" in the header cell for a GridViewCheckBoxColumn
slug: add-check-all-in-the-header-cell-for-a-gridviewcheckboxcolumn
tags: gridview, gridviewcheckboxcolumn
res_type: kb
---

|Product Version|Product|Author|Last modified|
|----|----|----|----|
|Q2 2013|RadGridView for WinForms|Martin Vassilev|August 14, 2013|
 

**HOW TO**  
Add a check box element in the header cell for **GridViewCheckBoxColumn**. Implement check/uncheck functionality.  

>note In the latest Telerik versions **GridViewCheckBoxColumn** offers **EnableHeaderCheckBox** property out of the box.
   
**DESCRIPTION**  
It is a very common scenario to use an check box column in RadGridView that allows to end user to mark RadGridView's rows for some operations. It is a valuable feature to have a "check/uncheck all" functionality integrated in the header.   
   
**SOLUTION**
In order to get the desired functionality, you can create and use a custom header cell. Add a check box element in the custom cell and implement **ToggleStateChanged** and the **ValueChanged** event. Then, create a column which uses the custom header cell.  
   
````C#
public class CheckBoxHeaderCell : GridHeaderCellElement
{
    RadCheckBoxElement checkbox;

    protected override Type ThemeEffectiveType
    {
        get
        {
            return typeof(GridHeaderCellElement);
        }
    }

    public CheckBoxHeaderCell(GridViewColumn column, GridRowElement row)
        : base(column, row)
    {

    }

    public override void Initialize(GridViewColumn column, GridRowElement row)
    {
        base.Initialize(column, row);
        column.AllowSort = false;
    }

    public override void SetContent()
    {
    }

    protected override void DisposeManagedResources()
    {
        checkbox.ToggleStateChanged -= new StateChangedEventHandler(checkbox_ToggleStateChanged);
        base.DisposeManagedResources();
    }

    protected override void CreateChildElements()
    {
        base.CreateChildElements();
        checkbox = new RadCheckBoxElement();
        checkbox.ToggleStateChanged += new StateChangedEventHandler(checkbox_ToggleStateChanged);
        this.Children.Add(checkbox);
    }

    protected override SizeF ArrangeOverride(SizeF finalSize)
    {
        SizeF size = base.ArrangeOverride(finalSize);

        RectangleF rect = GetClientRectangle(finalSize);
        this.checkbox.Arrange(new RectangleF((finalSize.Width - this.checkbox.DesiredSize.Width) / 2, (rect.Height - 20) / 2, 20, 20));

        return size;
    }

    public override bool IsCompatible(GridViewColumn data, object context)
    {
        return data.Name == "Select" && context is GridTableHeaderRowElement
            && base.IsCompatible(data, context);
    }

    private void checkbox_ToggleStateChanged(object sender, StateChangedEventArgs args)
    {
        if (!suspendProcessingToggleStateChanged)
        {
            bool valueState = false;

            if (args.ToggleState == Telerik.WinControls.Enumerations.ToggleState.On)
            {
                valueState = true;
            }
            this.GridViewElement.EditorManager.EndEdit();
            this.TableElement.BeginUpdate();
            for (int i = 0; i < this.ViewInfo.Rows.Count; i++)
            {
                this.ViewInfo.Rows[i].Cells[this.ColumnIndex].Value = valueState;
            }

            this.TableElement.EndUpdate(false);

            this.TableElement.Update(GridUINotifyAction.DataChanged);

        }
    }

    private bool suspendProcessingToggleStateChanged;
    public void SetCheckBoxState(Telerik.WinControls.Enumerations.ToggleState state)
    {
        suspendProcessingToggleStateChanged = true;
        this.checkbox.ToggleState = state;
        suspendProcessingToggleStateChanged = false;
    }

    public override void Attach(GridViewColumn data, object context)
    {
        base.Attach(data, context);
        this.GridControl.ValueChanged += new EventHandler(GridControl_ValueChanged);
    }

    public override void Detach()
    {
        if (this.GridControl != null)
        {
            this.GridControl.ValueChanged -= GridControl_ValueChanged;
        }

        base.Detach();
    }

    void GridControl_ValueChanged(object sender, EventArgs e)
    {
        RadCheckBoxEditor editor = sender as RadCheckBoxEditor;
        if (editor != null)
        {
            this.GridViewElement.EditorManager.EndEdit();
            if ((ToggleState)editor.Value == ToggleState.Off)
            {
                SetCheckBoxState(ToggleState.Off);
            }
            else if ((ToggleState)editor.Value == ToggleState.On)
            {
                bool found = false;
                foreach (GridViewRowInfo row in this.ViewInfo.Rows)
                {
                    if (row != this.RowInfo && row.Cells[this.ColumnIndex].Value == null || !(bool)row.Cells[this.ColumnIndex].Value)
                    {
                        found = true;
                        break;
                    }
                }
                if (!found)
                {
                    SetCheckBoxState(ToggleState.On);
                }
            }
        }
    }
}

````
````VB.NET
Public Class CheckBoxHeaderCell
    Inherits GridHeaderCellElement
 
    Private checkbox As RadCheckBoxElement
 
    Protected Overrides ReadOnly Property ThemeEffectiveType() As Type
        Get
            Return GetType(GridHeaderCellElement)
        End Get
    End Property
 
    Public Sub New(ByVal column As GridViewColumn, ByVal row As GridRowElement)
        MyBase.New(column, row)
 
    End Sub
 
    Public Overrides Sub Initialize(ByVal column As GridViewColumn, ByVal row As GridRowElement)
        MyBase.Initialize(column, row)
        column.AllowSort = False
    End Sub
 
 
    Public Overloads Overrides Sub SetContent()
    End Sub
 
    Protected Overrides Sub DisposeManagedResources()
        RemoveHandler checkbox.ToggleStateChanged, AddressOf checkbox_ToggleStateChanged
        MyBase.DisposeManagedResources()
    End Sub
 
    Protected Overloads Overrides Sub CreateChildElements()
        MyBase.CreateChildElements()
        checkbox = New RadCheckBoxElement()
        AddHandler checkbox.ToggleStateChanged, AddressOf checkbox_ToggleStateChanged
        Me.Children.Add(checkbox)
    End Sub
 
    Protected Overloads Overrides Function ArrangeOverride(ByVal finalSize As SizeF) As SizeF
        Dim size As SizeF = MyBase.ArrangeOverride(finalSize)
 
        Dim rect As RectangleF = GetClientRectangle(finalSize)
        Me.checkbox.Arrange(New RectangleF((finalSize.Width - Me.checkbox.DesiredSize.Width) / 2, (rect.Height - 20) / 2, 20, 20))
 
        Return size
    End Function
 
    Public Overloads Overrides Function IsCompatible(ByVal data As Telerik.WinControls.UI.GridViewColumn, ByVal context As Object) As Boolean
        Return data.Name = "Select" AndAlso TypeOf context Is GridTableHeaderRowElement AndAlso MyBase.IsCompatible(data, context)
    End Function
 
    Private Sub checkbox_ToggleStateChanged(ByVal sender As Object, ByVal args As StateChangedEventArgs)
 
        If Not suspendProcessingToggleStateChanged Then
            Dim valueState As Boolean = False
 
            If args.ToggleState = Telerik.WinControls.Enumerations.ToggleState.[On] Then
                valueState = True
            End If
            Me.GridViewElement.EditorManager.EndEdit()
            Me.TableElement.BeginUpdate()
            For i As Integer = 0 To Me.ViewInfo.Rows.Count - 1
                Me.ViewInfo.Rows(i).Cells(Me.ColumnIndex).Value = valueState
            Next
 
            Me.TableElement.EndUpdate(False)
 
 
            Me.TableElement.Update(GridUINotifyAction.DataChanged)
        End If
    End Sub
 
    Private suspendProcessingToggleStateChanged As Boolean
    Public Sub SetCheckBoxState(ByVal state As Telerik.WinControls.Enumerations.ToggleState)
        suspendProcessingToggleStateChanged = True
        Me.checkbox.ToggleState = state
        suspendProcessingToggleStateChanged = False
    End Sub
 
    Public Overrides Sub Attach(ByVal data As Telerik.WinControls.UI.GridViewColumn, ByVal context As Object)
        MyBase.Attach(data, context)
        AddHandler Me.GridControl.ValueChanged, AddressOf GridControl_ValueChanged
    End Sub
 
    Public Overrides Sub Detach()
        If Me.GridControl IsNot Nothing Then
            RemoveHandler Me.GridControl.ValueChanged, AddressOf GridControl_ValueChanged
        End If
        MyBase.Detach()
    End Sub
 
    Private Sub GridControl_ValueChanged(ByVal sender As Object, ByVal e As EventArgs)
        Dim editor As RadCheckBoxEditor = TryCast(sender, RadCheckBoxEditor)
        If editor IsNot Nothing Then
            Me.GridViewElement.EditorManager.EndEdit()
            If DirectCast(editor.Value, ToggleState) = ToggleState.Off Then
                SetCheckBoxState(ToggleState.Off)
            Else
                Dim found As Boolean = False
                For Each row As GridViewRowInfo In Me.ViewInfo.Rows
                    If row.Equals(Me.RowInfo) = False AndAlso row.Cells(Me.ColumnIndex).Value Is Nothing OrElse Not CBool(row.Cells(Me.ColumnIndex).Value) Then
 
                        found = True
                        Exit For
                    End If
                Next
                If Not found Then
                    SetCheckBoxState(ToggleState.[On])
                End If
            End If
        End If
    End Sub
 
End Class

````

>note You can download a complete VB and C# project from the following [link](https://github.com/telerik/winforms-sdk/tree/master/GridView/CheckBoxInHeader).
