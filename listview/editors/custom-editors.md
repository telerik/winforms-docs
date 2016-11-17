---
title: Custom Editors
page_title: Custom Editors | RadListView
description: Telerik RadListView control is created as a result of the concord of the powerful data layer used by RadGridView and RadListControl, together with the outstanding Telerik Presentation Framework.
slug: winforms/listview/editors/custom-editors
tags: checkboxes,and,editors
published: True
position: 2 
---

# Custom Editors

This article demonstrates a sample approach how to create and replace the default editor with a track bar editor to allow editing numeric values.

>caption Figure 1: Custom track bar editor

![listview-editors-custom-editors 001](images/listview-editors-custom-editors001.png)

#### Custom editor

{{source=..\SamplesCS\ListView\ListViewCheckboxesAndEditors.cs region=MyEditor}} 
{{source=..\SamplesVB\ListView\ListViewCheckboxesAndEditors.vb region=MyEditor}} 

````C#
public class MyTrackBarEditor : BaseInputEditor
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
            
    protected override RadElement CreateEditorElement()
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
Public Class MyTrackBarEditor
    Inherits BaseInputEditor
    Public Overrides Property Value() As Object
        Get
            Dim editor As RadTrackBarElement = DirectCast(Me.EditorElement, RadTrackBarElement)
            Return editor.Value
        End Get
        Set(value As Object)
            Dim editor As RadTrackBarElement = DirectCast(Me.EditorElement, RadTrackBarElement)
            If value IsNot Nothing AndAlso value <> DBNull.Value Then
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

    Protected Overrides Function CreateEditorElement() As RadElement
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

Here is the sample code snippet how to replace the default editor with the custom one handling the **EditorRequired** event:

#### Replace default editor

{{source=..\SamplesCS\ListView\ListViewCheckboxesAndEditors.cs region=ReplaceEditor}} 
{{source=..\SamplesVB\ListView\ListViewCheckboxesAndEditors.vb region=ReplaceEditor}} 

````C#
private void RadListView_EditorRequired(object sender, ListViewItemEditorRequiredEventArgs e)
{
    //if you use DetailsView and the current column is a specific one, replace the editor
    if (this.radListView1.CurrentColumn.Name == "Quantity")
    {
      e.EditorType=typeof(MyTrackBarEditor);
    }
}

````
````VB.NET
Private Sub RadListView_EditorRequired(sender As Object, e As ListViewItemEditorRequiredEventArgs)
    'if you use DetailsView and the current column is a specific one, replace the editor
    If Me.RadListView1.CurrentColumn.Name = "Quantity" Then
        e.EditorType = GetType(MyTrackBarEditor)
    End If
End Sub

````

{{endregion}} 

# See Also

* [Default Editors]({%slug winforms/listview/editors/default-editors%})		
* [Editors Overview]({%slug winforms/listview/editors/editors%})

