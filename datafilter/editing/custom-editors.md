---
title: Custom Editors
page_title: Custom Editors | RadDataFilter
description: RadDataFilter allows you to build complex filter expressions based on the data and collection type of the source fields.  
slug: winforms/datafilter/editing/custom-editors
tags: data, filter
published: True
position: 2
---

# Custom Editors

This article demonstrates a sample approach how to create and replace the standard spin editor with a track bar editor when editing numeric fields.

All editors inherit from **BaseInputEditor**. So, you have to inherit from this class and override several methods. The default spin editor for the *ProductID* field is replaced with the custom one in the **EditorRequired** event. In the **EditorInitialized** event we limit the maximum of the track bar and show the ticks.

>caption Figure 1: Replace the default editor with a custom editor

![datafilter-custom-editors 001](images/datafilter-custom-editors001.png)

#### Custom editor

{{source=..\SamplesCS\DataFilter\DataFilterCustomEditor.cs region=CustomEditor}} 
{{source=..\SamplesVB\DataFilter\DataFilterCustomEditor.vb region=CustomEditor}}

````C#
        
public DataFilterCustomEditor()
{
    InitializeComponent();
    this.radDataFilter1.DataSource = this.productsBindingSource;
    this.radDataFilter1.EditorRequired += radDataFilter1_EditorRequired;
    this.radDataFilter1.EditorInitialized += radDataFilter1_EditorInitialized;
    this.radDataFilter1.ItemHeight = 40;
}
        
private void radDataFilter1_EditorInitialized(object sender, TreeNodeEditorInitializedEventArgs e)
{
    TrackBarEditor editor = e.Editor as TrackBarEditor;
    if (editor != null)
    {
        RadTrackBarElement element = editor.EditorElement as RadTrackBarElement;
        element.ShowTicks = true;
        element.Maximum = 10;
    }
}
        
private void radDataFilter1_EditorRequired(object sender, TreeNodeEditorRequiredEventArgs e)
{
    DataFilterCriteriaNode filterNode = e.Node as DataFilterCriteriaNode;
    if (filterNode != null && filterNode.PropertyName == "ProductID" && sender is DataFilterValueEditorElement)
    {
        e.EditorType = typeof(TrackBarEditor);
    }
}
        
public class TrackBarEditor : BaseInputEditor
{
    public override object Value
    {
        get
        {
            RadTrackBarElement editor = (RadTrackBarElement)this.EditorElement;
            return editor.Value;
        }
        set
        {
            RadTrackBarElement editor = (RadTrackBarElement)this.EditorElement;
            if (value != null && value != DBNull.Value)
            {
                editor.Value = Convert.ToInt32(value);
            }
            else
            {
                editor.Value = 0;
            }
        }
    }
    
    public override void BeginEdit()
    {
        base.BeginEdit();
        this.EditorElement.Focus();
        ((RadTrackBarElement)this.EditorElement).ValueChanged += new EventHandler(TrackBarEditor_ValueChanged);
    }
    
    void TrackBarEditor_ValueChanged(object sender, EventArgs e)
    {
        this.OnValueChanged();
    }
    
    public override bool EndEdit()
    {
        ((RadTrackBarElement)this.EditorElement).ValueChanged -= TrackBarEditor_ValueChanged;
        return base.EndEdit();
    }
    
    protected override Telerik.WinControls.RadElement CreateEditorElement()
    {
        return new RadTrackBarElement();
    }
    
    public override Type DataType
    {
        get
        {
            return typeof(int);
        }
    }
}

````
````VB.NET
Public Sub New()
    InitializeComponent()
    Me.RadDataFilter1.DataSource = Me.ProductsBindingSource
    AddHandler Me.RadDataFilter1.EditorRequired, AddressOf radDataFilter1_EditorRequired
    AddHandler Me.RadDataFilter1.EditorInitialized, AddressOf radDataFilter1_EditorInitialized
    Me.RadDataFilter1.ItemHeight = 40
End Sub
Private Sub radDataFilter1_EditorInitialized(sender As Object, e As TreeNodeEditorInitializedEventArgs)
    Dim editor As TrackBarEditor = TryCast(e.Editor, TrackBarEditor)
    If editor IsNot Nothing Then
        Dim element As RadTrackBarElement = TryCast(editor.EditorElement, RadTrackBarElement)
        element.ShowTicks = True
        element.Maximum = 10
    End If
End Sub
Private Sub radDataFilter1_EditorRequired(sender As Object, e As TreeNodeEditorRequiredEventArgs)
	Dim filterNode As DataFilterCriteriaNode = TryCast(e.Node, DataFilterCriteriaNode)
	If filterNode IsNot Nothing AndAlso filterNode.PropertyName = "ProductID" AndAlso TypeOf sender Is DataFilterValueEditorElement Then
		e.EditorType = GetType(TrackBarEditor)
	End If
End Sub
Public Class TrackBarEditor
Inherits BaseInputEditor
    Public Overrides Property Value() As Object
        Get
            Dim editor As RadTrackBarElement = DirectCast(Me.EditorElement, RadTrackBarElement)
            Return editor.Value
        End Get
        Set(value As Object)
            Dim editor As RadTrackBarElement = DirectCast(Me.EditorElement, RadTrackBarElement)
            If value IsNot Nothing AndAlso Not value.Equals(DBNull.Value) Then
                editor.Value = Convert.ToInt32(value)
            Else
                editor.Value = 0
            End If
        End Set
    End Property
    Public Overrides Sub BeginEdit()
        MyBase.BeginEdit()
        Me.EditorElement.Focus()
        AddHandler DirectCast(Me.EditorElement, RadTrackBarElement).ValueChanged, AddressOf TrackBarEditor_ValueChanged
    End Sub
    Private Sub TrackBarEditor_ValueChanged(sender As Object, e As EventArgs)
        Me.OnValueChanged()
    End Sub
    Public Overrides Function EndEdit() As Boolean
        RemoveHandler DirectCast(Me.EditorElement, RadTrackBarElement).ValueChanged, AddressOf TrackBarEditor_ValueChanged
        Return MyBase.EndEdit()
    End Function
    Protected Overrides Function CreateEditorElement() As Telerik.WinControls.RadElement
        Return New RadTrackBarElement()
    End Function
    Public Overrides ReadOnly Property DataType() As Type
        Get
            Return GetType(Integer)
        End Get
    End Property
End Class

```` 

{{endregion}}

# See Also

* [Events]({%slug winforms/datafilter/editing/events%})	
* [Default Editors]({%slug winforms/datafilter/editing/default-editors%})	
