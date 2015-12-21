---
title: Data Representation
page_title: Data Representation | UI for WinForms Documentation
description: Data Representation
slug: winforms/dropdown,-listcontrol-and-checkeddropdownlist/listcontrol/data-representation
tags: data,representation
published: True
position: 4
---

# Data Representation
 
## 

This article requires that readers are familiar with the workings of the TPF property system.

RadListControl  represents a data source by creating an internal logical item that is associated with every data record. This logical item is of type RadListDataItem and it inherits from RadObject which means that it offers the full power and flexibility that the TPF property system provides.

RadListDataItem initially has the most basic visual properties required which are used for synchronization between the visuals and the data when a RadListVisualItem is mapped to the data item.  These properties are TextImageRelation, ImageAlignment, TextAlignment, TextOrientation, Image, Font and ForeColor. Users can add additional properties by inheriting from RadListDataItem declaring them in the custom data item. For example: 

{{source=..\SamplesCS\DropDownListControl\ListControl\ListControl1.cs region=customDataItem}} 
{{source=..\SamplesVB\DropDownListControl\ListControl\ListControl1.vb region=customDataItem}} 

````C#
public class CustomDataItem : RadListDataItem
{
    public static readonly RadProperty AvailableProperty = RadProperty.Register("Available", typeof(bool), typeof(CustomDataItem), new RadElementPropertyMetadata(false));
    public bool Available
    {
        get
        {
            return (bool)this.GetValue(CustomDataItem.AvailableProperty);
        }
        set
        {
            this.SetValue(CustomDataItem.AvailableProperty, value);
        }
    }
}

````
````VB.NET
Public Class CustomDataItem
    Inherits RadListDataItem
    Public Shared ReadOnly AvailableProperty As RadProperty = RadProperty.Register("Available", GetType(Boolean), GetType(CustomDataItem), New RadElementPropertyMetadata(False))
    Public Property Available() As Boolean
        Get
            Return CBool(Me.GetValue(CustomDataItem.AvailableProperty))
        End Get
        Set(ByVal value As Boolean)
            Me.SetValue(CustomDataItem.AvailableProperty, value)
        End Set
    End Property
End Class

````

{{endregion}} 
 
Once we have the custom data item with the additional information we can convince RadListControl to use our class when creating logical items by using the ItemDataBinding event. Consider the following code snippet:  

{{source=..\SamplesCS\DropDownListControl\ListControl\ListControl1.cs region=itemDataBinding}} 
{{source=..\SamplesVB\DropDownListControl\ListControl\ListControl1.vb region=itemDataBinding}} 

````C#
void radListControl1_ItemDataBinding(object sender, ListItemDataBindingEventArgs args)
{
    args.NewItem = new CustomDataItem();
}

````
````VB.NET
Private Sub radListControl1_ItemDataBinding(ByVal sender As Object, ByVal args As ListItemDataBindingEventArgs)
    args.NewItem = New CustomDataItem()
End Sub

````

{{endregion}} 
 
With this in place we have modified RadListControl to use our type of logical objects which will provide the ability to display custom visual elements, a checkbox for example, in the visual representation of the data items. The next topic describes how to extend the visual items and how to provide the visual synchronization of the additional properties defined for the data item.
