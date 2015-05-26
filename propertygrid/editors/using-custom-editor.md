---
title: Using custom editor
page_title: Using custom editor | UI for WinForms Documentation
description: Using custom editor
slug: winforms/propertygrid/editors/using-custom-editor
tags: using,custom,editor
published: True
position: 4
---

# Using custom editor



## 

This following snippet demonstrates how to create and replace the standard spin editor with a track bar editor.
        

All property grid editors inherit from __BaseInputEditor__. So, you have to inherit from
        	this class and override several methods:
        #_[C#] Creating custom editor_

	



{{source=..\SamplesCS\PropertyGrid\Editors\PropertyGridUsingCustomEditor.cs region=CustomEditor}} 
{{source=..\SamplesVB\PropertyGrid\Editors\PropertyGridUsingCustomEditor.vb region=CustomEditor}} 

````C#
    public class PropertyGridTrackBarEditor : BaseInputEditor
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
            get { return typeof(int); }
        }
    }
````
````VB.NET
Public Class PropertyGridTrackBarEditor
    Inherits BaseInputEditor
    Public Overrides Property Value() As Object
        Get
            Dim editor As RadTrackBarElement = CType(Me.EditorElement, RadTrackBarElement)
            Return editor.Value
        End Get
        Set(ByVal value As Object)
            Dim editor As RadTrackBarElement = CType(Me.EditorElement, RadTrackBarElement)
            If Not value Is Nothing AndAlso Not value Is DBNull.Value Then
                editor.Value = Convert.ToInt32(value)
            Else
                editor.Value = 0
            End If
        End Set
    End Property

    Public Overrides Sub BeginEdit()
        MyBase.BeginEdit()

        Me.EditorElement.Focus()
        AddHandler (CType(EditorElement, RadTrackBarElement)).ValueChanged, AddressOf TrackBarEditor_ValueChanged
    End Sub

    Private Sub TrackBarEditor_ValueChanged(ByVal sender As Object, ByVal e As EventArgs)
        Me.OnValueChanged()
    End Sub

    Public Overrides Function EndEdit() As Boolean
        RemoveHandler (CType(Me.EditorElement, RadTrackBarElement)).ValueChanged, AddressOf TrackBarEditor_ValueChanged
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
'
````

{{endregion}} 




The __EditorRequired__ event is the correct place to replace the default editor:#_[C#] Replace editor_

	



{{source=..\SamplesCS\PropertyGrid\Editors\PropertyGridUsingCustomEditor.cs region=replaceEditor}} 
{{source=..\SamplesVB\PropertyGrid\Editors\PropertyGridUsingCustomEditor.vb region=replaceEditor}} 

````C#
        void radPropertyGrid1_EditorRequired(object sender, PropertyGridEditorRequiredEventArgs e)
        {
            if (e.EditorType == typeof(PropertyGridSpinEditor))
            {
                e.EditorType = typeof(PropertyGridTrackBarEditor);
            }

        }
````
````VB.NET
    Private Sub radPropertyGrid1_EditorRequired(ByVal sender As Object, ByVal e As PropertyGridEditorRequiredEventArgs)
        If e.EditorType Is GetType(PropertyGridSpinEditor) Then
            e.EditorType = GetType(PropertyGridTrackBarEditor)
        End If
    End Sub
    '
````

{{endregion}} 


![propertygrid-editors-using-custom-editor](images/propertygrid-editors-using-custom-editor.png)
