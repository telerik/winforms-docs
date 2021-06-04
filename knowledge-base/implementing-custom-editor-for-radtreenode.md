---
title: Implementing custom editor for RadTreeNode
description: Implementing custom editor for RadTreeNode. Check it now!
type: how-to
page_title: Implementing custom editor for RadTreeNode
slug: implementing-custom-editor-for-radtreenode
res_type: kb
---

|Product Version|Product|Author|Last modified|
|----|----|----|----|
|Q2 2010 SP2|RadTreeView for WinForms|[Stefan Stefanov](https://www.telerik.com/blogs/author/stefan-stefanov)|Sep 22, 2010|

   
## PROBLEM  

This article will demonstrate how to take advantage of a custom editor. In this case using such an editor you will allow you to change the data contained in the RadTreeNode.**Tag**.  
   
![](Images/RadTreeNodeEdit11.png)      
*Text = "Node1" Tag = "Initial Tag Text"*   
   
![](Images/RadTreeNodeEdit22.png)  
*Editing the node i.e. the tag property*  
![](Images/RadTreeNodeEdit33.png)   
*Setting "New Tag Value" as Tag value*   
   
![](Images/RadTreeNodeEdit44.png)   
*Text is back to "Node 1", Tag = "New Tag Value"*  
   
## SOLUTION  
   

You can create a custom **TextBox** editor by inheriting from **RadTextBoxItem** and implementing the **IValueEditor** interface. The following sample implementation demonstrates how to create an editor and replace the default editor for RadTreeNode. This editor behavior is as follows:   

- Initially the nodes' Text is the default text ("Node 1", "Node 2" ) or something that was explicitly set.   

- When editing a node by hitting F2, the editor displayes the text that is contained in the **Tag** property of the same node  

- After entering some data, and submitting it, the original Text value appears as text for the node, and the submitted text is now the new value for the **Tag** property  
   

1.Creating the editor:  
   
````C#
class MyEditor : RadTextBoxItem, IValueEditor 
{
    #region IValueEditor Members
     
    string oldValue;
    RadTreeNode owner;
 
    public void BeginEdit()
    {
        this.Focus();
        this.HostedControl.Focus();
    }
 
    public bool EndEdit()
    {
        this.owner.Tag = this.Text;
        this.owner.Text = oldText;
        this.owner.TreeView.EndEdit(true);
        return true;
    }
    private static readonly object ValueChangedEventKey = new object();
    protected virtual void OnValueChanged(EventArgs args)
    {
        EventHandler handler1 = (EventHandler)base.Events[ValueChangedEventKey];
        if (handler1 != null)
        {
            handler1(this, args);
        }
    }
 
    protected override void OnKeyDown(KeyEventArgs e)
    {
        base.OnKeyDown(e);
        string oldEditorValue = this.Text;
        Keys pressedKey = e.KeyCode;
        if (pressedKey == Keys.Return)
        {
            if (e.Modifiers == Keys.None)
            {
                e.SuppressKeyPress = true;
                e.Handled = true;
                this.EndEdit();
                 
                return;
            }
        }
        else if (pressedKey == Keys.Escape)
        {
            e.Handled = true;
            this.Value = this.oldValue;
            this.EndEdit();
            return;
        }
    }
 
    string oldText = "";
    public void Initialize(object owner, object value)
    {
        this.owner = (RadTreeNode)owner;
        oldText = this.owner.Text;
        this.Text = this.owner.Tag.ToString();
        this.oldValue = this.Text;
    }  
 
    public bool Validate()
    {
        return true;
    }
 
    public event ValidationErrorEventHandler ValidationError;
 
    public object Value
    {
        set
        {
            this.Text = value.ToString();
        }
        get
        {
            return this.Text;
        }
    }
 
    public event EventHandler ValueChanged;
 
    public event ValueChangingEventHandler ValueChanging;
 
    #endregion
}


````
````VB.NET
Imports Telerik.WinControls.UI
 
Public Class MyEditor
    Inherits RadTextBoxItem
    Implements IValueEditor
 
    Private oldValue As String
    Private owner As RadTreeNode
 
    Public Sub BeginEdit() Implements Telerik.WinControls.UI.IValueEditor.BeginEdit
        Me.Focus()
        Me.HostedControl.Focus()
    End Sub
 
    Public Function EndEdit() As Boolean Implements Telerik.WinControls.UI.IValueEditor.EndEdit
        Me.owner.Tag = Me.Text
        Me.owner.Text = oldText
        Me.owner.TreeView.EndEdit(True)
        Return True
    End Function
 
    Private Shared ReadOnly ValueChangedEventKey As New Object()
 
    Protected Overridable Sub OnValueChanged(ByVal args As EventArgs)
         
    End Sub
 
    Protected Overrides Sub OnKeyDown(ByVal e As KeyEventArgs)
        MyBase.OnKeyDown(e)
        Dim oldEditorValue As String = Me.Text
        Dim pressedKey As Keys = e.KeyCode
        If pressedKey = Keys.[Return] Then
            If e.Modifiers = Keys.None Then
                e.SuppressKeyPress = True
                e.Handled = True
                Me.EndEdit()
 
                Return
            End If
        ElseIf pressedKey = Keys.Escape Then
            e.Handled = True
            Me.Value = Me.oldValue
            Me.EndEdit()
            Return
        End If
    End Sub
 
    Private oldText As String = ""
 
    Public Sub Initialize(ByVal owner As Object, ByVal value As Object) Implements Telerik.WinControls.UI.IValueEditor.Initialize
        Me.owner = DirectCast(owner, RadTreeNode)
        oldText = Me.owner.Text
        Me.Text = Me.owner.Tag.ToString()
        Me.oldValue = Me.Text
    End Sub
 
    Public Function Validate() As Boolean Implements Telerik.WinControls.UI.IValueEditor.Validate
        Return True
    End Function
 
    Public Event Validated1(ByVal sender As Object, ByVal e As System.EventArgs) Implements Telerik.WinControls.UI.IValueEditor.Validated
 
    Public Event Validating1(ByVal sender As Object, ByVal e As System.ComponentModel.CancelEventArgs) Implements Telerik.WinControls.UI.IValueEditor.Validating
 
    Public Event ValidationError(ByVal sender As Object, ByVal e As Telerik.WinControls.UI.ValidationErrorEventArgs) Implements Telerik.WinControls.UI.IValueEditor.ValidationError
 
    Public Property Value() As Object Implements Telerik.WinControls.UI.IValueEditor.Value
        Get
            Return Me.Text
        End Get
        Set(ByVal value As Object)
            Me.Text = value.ToString()
        End Set
    End Property
 
    Public Event ValueChanged(ByVal sender As Object, ByVal e As System.EventArgs) Implements Telerik.WinControls.UI.IValueEditor.ValueChanged
 
    Public Event ValueChanging(ByVal sender As Object, ByVal e As Telerik.WinControls.UI.ValueChangingEventArgs) Implements Telerik.WinControls.UI.IValueEditor.ValueChanging
End Class

````


2.Changing the default editor in **RadTreeView**:

````C#
void radTreeView1_EditorRequired(object sender, EditorRequiredEventArgs e)
{
    e.EditorType = typeof(MyEditor);
    MyEditor editor = new MyEditor();
    e.Editor = editor;
}

````
````VB.NET
Private Sub RadTreeView1_EditorRequired(ByVal sender As Object, ByVal e As Telerik.WinControls.UI.EditorRequiredEventArgs) Handles RadTreeView1.EditorRequired
   e.EditorType = GetType(MyEditor)
   Dim editor As New MyEditor()
   e.Editor = editor
End Sub

````

