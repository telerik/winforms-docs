---
title: Custom Values in GridViewComboBoxColumn
description: Besides the items available in the popup one should be able to enter any value.
type: how-to
page_title:  Custom Values in GridViewComboBoxColumn
slug: free-text-in-combobox-column
position: 0
tags: gridview, gridviewcomboboxcolumn
ticketid: 111111
res_type: kb
---


## Environment
<table>
    <tr>
        <td>Product Version</td>
        <td>2018.1 220</td>
    </tr>
    <tr>
        <td>Product</td>
        <td>RadGridView for WinForms</td>
    </tr>
</table>

## Description

By default one cannot add values that are not contained in the popup when GridViewComboBoxColumn is used. This article demonstrates how you can add any value and still be able to chose from predefined options.

## Solution

Firs you need to add a custom editor, this way you can override the __Value__ property and return the text when no value is selected.

#### Use Custom editor

{{source=..\SamplesCS\KnowledgeBase\CustomComboBoxColumn.cs region=CustomEditor}} 
{{source=..\SamplesVB\KnowledgeBase\CustomComboBoxColumn.vb region=CustomEditor}}
````C#
class CustomDropDownListEditor : RadDropDownListEditor
{
    public override object Value
    {
        get
        {
            object result = base.Value;
            if (result == null || string.IsNullOrEmpty(result.ToString()))
            {
                var editor = this.EditorElement as RadDropDownListElement;
                return editor.Text;
            }
            return result;
        }
        set
        {
            base.Value = value;
            var editor = this.EditorElement as RadDropDownListElement;
            if (editor.SelectedValue == null)
            {
                editor.TextBox.TextBoxItem.Text = value.ToString();
            }
        }
    }
    public override void BeginEdit()
    {
        base.BeginEdit();
        var editor = this.EditorElement as RadDropDownListElement;
        editor.DropDownStyle = Telerik.WinControls.RadDropDownStyle.DropDown;
    }
}

````
````VB.NET
Friend Class CustomDropDownListEditor
    Inherits RadDropDownListEditor
    Public Overrides Property Value() As Object
        Get
            Dim result As Object = MyBase.Value
            If result Is Nothing OrElse String.IsNullOrEmpty(result.ToString()) Then
                Dim editor = TryCast(Me.EditorElement, RadDropDownListElement)
                Return editor.Text
            End If
            Return result
        End Get
        Set(ByVal value As Object)
            MyBase.Value = value
            Dim editor = TryCast(Me.EditorElement, RadDropDownListElement)
            If editor.SelectedValue Is Nothing Then
                editor.TextBox.TextBoxItem.Text = value.ToString()
            End If
        End Set
    End Property
    Public Overrides Sub BeginEdit()
        MyBase.BeginEdit()
        Dim editor = TryCast(Me.EditorElement, RadDropDownListElement)
        editor.DropDownStyle = Telerik.WinControls.RadDropDownStyle.DropDown
    End Sub
End Class

````



{{endregion}}

Once the editor is ready you can change it by using the __EditorRequired__ event.

#### Change Default Editor

{{source=..\SamplesCS\KnowledgeBase\CustomComboBoxColumn.cs region=ChangeEditor}} 
{{source=..\SamplesVB\KnowledgeBase\CustomComboBoxColumn.vb region=ChangeEditor}}
````C#
private void RadGridView1_EditorRequired(object sender, EditorRequiredEventArgs e)
{
    if (e.EditorType == typeof(RadDropDownListEditor))
    {
        e.EditorType = typeof(CustomDropDownListEditor);
    }
}

````
````VB.NET
Private Sub RadGridView1_EditorRequired(ByVal sender As Object, ByVal e As EditorRequiredEventArgs)
    If e.EditorType Is GetType(RadDropDownListEditor) Then
        e.EditorType = GetType(CustomDropDownListEditor)
    End If
End Sub

````



{{endregion}}

The final step is to create a custom column. This is necessary because the text is formated by looking in the DataSource of the column. 

#### Create Custom Column

{{source=..\SamplesCS\KnowledgeBase\CustomComboBoxColumn.cs region=CustomColumn}} 
{{source=..\SamplesVB\KnowledgeBase\CustomComboBoxColumn.vb region=CustomColumn}}
````C#
class CustomGridViewComboBoxColumn : GridViewComboBoxColumn
{
    public override object GetLookupValue(object cellValue)
    {
        object result = base.GetLookupValue(cellValue);
        if (result == null)
        {
            return cellValue;
        }
        return result;
    }
}

````
````VB.NET
Friend Class CustomGridViewComboBoxColumn
    Inherits GridViewComboBoxColumn
    Public Overrides Function GetLookupValue(ByVal cellValue As Object) As Object
        Dim result As Object = MyBase.GetLookupValue(cellValue)
        If result Is Nothing Then
            Return cellValue
        End If
        Return result
    End Function
End Class

````



{{endregion}}

That is all now you will be able to add any value in the GridViewComBoxColumn. A complete Visual Studio solution is available [here](https://github.com/telerik/winforms-sdk/tree/master/GridView/CustomValuesInGridViewComboBoxColumn). 