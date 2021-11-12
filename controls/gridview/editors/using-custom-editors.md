---
title: Using custom editors
page_title: Using custom editors - WinForms GridView Control
description: WinForms GridView allows changing the default editor with a custom one. Learn how to change it with a track bar.
slug: winforms/gridview/editors/using-custom-editors
tags: using,custom,editors
published: True
position: 5
previous_url: gridview-editors-using-custom-editors
---

# Using custom editors

This following snippet demonstrates how to replace the standard spin editor with a track bar.

All grid editors inherit from __BaseGridEditor__. So, you have to inherit from this class and override several methods:

{{source=..\SamplesCS\GridView\Editors\UsingCustomEditors.cs region=trackBarEditor}} 
{{source=..\SamplesVB\GridView\Editors\UsingCustomEditors.vb region=trackBarEditor}} 

````C#
public class TrackBarEditor : BaseGridEditor
{
    public override object Value
    {
        get
        {
            TrackBarEditorElement editor = (TrackBarEditorElement)this.EditorElement;
            return editor.Value;
        }
        set
        {
            TrackBarEditorElement editor = (TrackBarEditorElement)this.EditorElement;
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
        ((TrackBarEditorElement)this.EditorElement).TrackPositionChanged += new EventHandler(TrackBarEditor_TrackPositionChanged);
    }
    public override bool EndEdit()
    {
        ((TrackBarEditorElement)this.EditorElement).TrackPositionChanged -= new EventHandler(TrackBarEditor_TrackPositionChanged);
        return base.EndEdit();
    }
    void TrackBarEditor_TrackPositionChanged(object sender, EventArgs e)
    {
        OnValueChanged();
    }
    protected override RadElement CreateEditorElement()
    {
        return new TrackBarEditorElement();
    }
}

````
````VB.NET
Public Class TrackBarEditor
    Inherits BaseGridEditor
    Public Overrides Property Value() As Object
        Get
            Dim editor As TrackBarEditorElement = CType(Me.EditorElement, TrackBarEditorElement)
            Return editor.Value
        End Get
        Set(ByVal value As Object)
            Dim editor As TrackBarEditorElement = CType(Me.EditorElement, TrackBarEditorElement)
            If value IsNot Nothing AndAlso value IsNot DBNull.Value Then
                editor.Value = Convert.ToInt32(value)
            Else
                editor.Value = 0
            End If
        End Set
    End Property
    Public Overrides Sub BeginEdit()
        MyBase.BeginEdit()
        Me.EditorElement.Focus()
        AddHandler (CType(EditorElement, TrackBarEditorElement)).TrackPositionChanged, AddressOf TrackBarEditor_TrackPositionChanged
    End Sub
    Public Overrides Function EndEdit() As Boolean
        RemoveHandler (CType(EditorElement, TrackBarEditorElement)).TrackPositionChanged, AddressOf TrackBarEditor_TrackPositionChanged
        Return MyBase.EndEdit()
    End Function
    Private Sub TrackBarEditor_TrackPositionChanged(ByVal sender As Object, ByVal e As EventArgs)
        OnValueChanged()
    End Sub
    Protected Overrides Function CreateEditorElement() As RadElement
        Return New TrackBarEditorElement()
    End Function
End Class

````

{{endregion}} 

We use the standard __RadTrackBar__ element in this example with some modification to enable keyboard navigation:

{{source=..\SamplesCS\GridView\Editors\UsingCustomEditors.cs region=trackBarEditorElement}} 
{{source=..\SamplesVB\GridView\Editors\UsingCustomEditors.vb region=trackBarEditorElement}} 

````C#
public class TrackBarEditorElement : RadTrackBarElement
{
    public TrackBarEditorElement()
    {
        this.CanFocus = true;
    }
    public event EventHandler TrackPositionChanged;
    protected override Type ThemeEffectiveType
    {
        get
        {
            return typeof(RadTrackBarElement);
        }
    }
    protected override SizeF MeasureOverride(SizeF availableSize)
    {
        int desiredHeight = 30;
        foreach (RadElement element in this.Children)
        {
            element.Measure(new SizeF(availableSize.Width, desiredHeight));
        }
        return new SizeF(1, desiredHeight);
    }
    protected override void OnPropertyChanged(RadPropertyChangedEventArgs e)
    {
        base.OnPropertyChanged(e);
        if (e.Property == RadTrackBarItem.ValueProperty
            && this.Parent != null
            && this.TrackPositionChanged != null)
        {
            this.TrackPositionChanged(this, EventArgs.Empty);
        }
    }
}

````
````VB.NET
Public Class TrackBarEditorElement
    Inherits RadTrackBarElement
    Public Sub New()
        Me.CanFocus = True
    End Sub
    Public Event TrackPositionChanged As EventHandler
    Protected Overrides ReadOnly Property ThemeEffectiveType() As Type
        Get
            Return GetType(RadTrackBarElement)
        End Get
    End Property
    Protected Overrides Function MeasureOverride(ByVal availableSize As System.Drawing.SizeF) As System.Drawing.SizeF
        Dim desiredHeight As Integer = 30
        For Each element As RadElement In Me.Children
            element.Measure(New System.Drawing.SizeF(availableSize.Width, desiredHeight))
        Next element
        Return New System.Drawing.SizeF(1, desiredHeight)
    End Function
    Protected Overrides Sub OnPropertyChanged(ByVal e As RadPropertyChangedEventArgs)
        MyBase.OnPropertyChanged(e)
        If e.Property Is RadTrackBarItem.ValueProperty AndAlso Me.Parent IsNot Nothing AndAlso Me.TrackPositionChangedEvent IsNot Nothing Then
            RaiseEvent TrackPositionChanged(Me, EventArgs.Empty)
        End If
    End Sub
End Class

````

{{endregion}} 

The __EditorRequired__ event is the correct place to replace the default editor:

{{source=..\SamplesCS\GridView\Editors\UsingCustomEditors.cs region=changingTheEditor}} 
{{source=..\SamplesVB\GridView\Editors\UsingCustomEditors.vb region=changingTheEditor}} 

````C#
void radGridView1_EditorRequired(object sender, EditorRequiredEventArgs e)
{
    if (e.EditorType == typeof(GridSpinEditor))
    {
        e.EditorType = typeof(TrackBarEditor);
    }
}

````
````VB.NET
Private Sub RadGridView1_EditorRequired(ByVal sender As Object, ByVal e As Telerik.WinControls.UI.EditorRequiredEventArgs) Handles RadGridView1.EditorRequired
    If e.EditorType Is GetType(GridSpinEditor) Then
        e.EditorType = GetType(TrackBarEditor)
    End If
End Sub

````

{{endregion}} 


>note You can find a working version of this sample in our Demo application ( *GridView -> Custom Editors* )
>

# See Also
* [API]({%slug winforms/gridview/editors/api%})

* [Customizing editor behavior]({%slug winforms/gridview/editors/customizing-editor-behavior%})

* [Data validation]({%slug winforms/gridview/editors/data-validation%})

* [Overview]({%slug winforms/gridview/editors/editors%})

* [Events]({%slug winforms/gridview/editors/events%})

* [Handling Editors' events]({%slug winforms/gridview/editors/handling-editors'-events%})

* [How to Achieve Checked RadMultiColumnComboBox]({%slug checked-multicolumncombobox%})

* [How to Use RadPopupEditor as a Custom Editor in RadGridView]({%slug use-popup-editor-as-gridview-editor%})

