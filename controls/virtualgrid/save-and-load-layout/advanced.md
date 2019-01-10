---
title: Advanced
page_title: Advanced | RadVirtualGrid
description: This article shows how you can customize the save layout operation.
slug: winforms/virtualgrid/save-and-load-layout/advanced
tags: save-and-load-layout, advanced
published: True
position: 1
---

# Advanced

__RadVirtualGrid__`s serialization API provides a wide range of options that enable the developer to customize the serialized content in a flexible manner. Based on the principles of the standard Microsoft .NET XML serialization approach, the API can be easily used for implementing different serialization scenarios. 

This article demonstrates how to alter the default serialization procedure and explicitly define the properties to be serialized.

Here are several properties to have in mind:

* __RadVirtualGrid.XmlSerializationInfo:__ This property of RadGridView gets the serialization information used by the SaveLayout and LoadLayout methods. It contains all RadGridView data that should persist between application states.

* __RadVirtualGrid.XmlSerializationInfo.DisregardOriginalSerializationVisibility:__  This property determines whether the serialization engine should take the default serialization attributes or the custom serialization metadata provided by the programmer. To define a custom collection of properties, set the property to true.

* __RadVirtualGrid.XmlSerializationInfo.SerializationMetadata:__ This property returns a collection of PropertySerializationMetadata objects, which contains information about the type, name and serialization method of the corresponding property. You need to clear the collection in order to be sure that only the serialization instructions will be considered.

Here is a snippet clearing the default settings:

#### Clear Default Settings

{{source=..\SamplesCS\VirtualGrid\SaveLoadLayout\VirtualGridSaveLoadLayout.cs region=ClearSettings}} 
{{source=..\SamplesVB\VirtualGrid\SaveLoadLayout\VirtualGridSaveLoadLayout.vb region=ClearSettings}} 

````C#
private void ClearSettings(object sender, EventArgs e)
{
    this.radVirtualGrid1.XmlSerializationInfo.DisregardOriginalSerializationVisibility = true;
    this.radVirtualGrid1.XmlSerializationInfo.SerializationMetadata.Clear();
}

````
````VB.NET
Private Sub ClearSettings(sender As Object, e As EventArgs)
    Me.RadVirtualGrid1.XmlSerializationInfo.DisregardOriginalSerializationVisibility = True
    Me.RadVirtualGrid1.XmlSerializationInfo.SerializationMetadata.Clear()
End Sub

````

{{endregion}} 

>note Clearing the default settings would require all the serialization meta data to be loaded manually.
>

The code snippets below demonstrates how you can hide a particular information to be serialized: 

#### Define Data

{{source=..\SamplesCS\VirtualGrid\SaveLoadLayout\VirtualGridSaveLoadLayout.cs region=DefineData}} 
{{source=..\SamplesVB\VirtualGrid\SaveLoadLayout\VirtualGridSaveLoadLayout.vb region=DefineData}} 

````C#
private void DefineData(object sender, EventArgs e)
{
    //Hide items
    this.radVirtualGrid1.XmlSerializationInfo.SerializationMetadata.Add(typeof(VirtualGridViewInfo), "CustomColumns", new DesignerSerializationVisibilityAttribute(DesignerSerializationVisibility.Hidden));
    this.radVirtualGrid1.XmlSerializationInfo.SerializationMetadata.Add(typeof(VirtualGridViewInfo), "ColumnDataTypes", new DesignerSerializationVisibilityAttribute(DesignerSerializationVisibility.Hidden));
    this.radVirtualGrid1.XmlSerializationInfo.SerializationMetadata.Add(typeof(VirtualGridTableViewState), "ItemSizes", new DesignerSerializationVisibilityAttribute(DesignerSerializationVisibility.Hidden));
    this.radVirtualGrid1.XmlSerializationInfo.SerializationMetadata.Add(typeof(VirtualGridTableViewState), "ItemCount", new DesignerSerializationVisibilityAttribute(DesignerSerializationVisibility.Hidden));
    //Sort Descriptors            
    this.radVirtualGrid1.XmlSerializationInfo.SerializationMetadata.Add(typeof(VirtualGridViewInfo), "SortDescriptors", DesignerSerializationVisibilityAttribute.Hidden);
    this.radVirtualGrid1.XmlSerializationInfo.SerializationMetadata.Add(typeof(SortDescriptor), "Direction", DesignerSerializationVisibilityAttribute.Hidden);
    //Filter Descriptors           
    this.radVirtualGrid1.XmlSerializationInfo.SerializationMetadata.Add(typeof(VirtualGridViewInfo), "FilterDescriptors", DesignerSerializationVisibilityAttribute.Hidden);
    this.radVirtualGrid1.XmlSerializationInfo.SerializationMetadata.Add(typeof(FilterDescriptor), "PropertyName", DesignerSerializationVisibilityAttribute.Hidden);
    this.radVirtualGrid1.XmlSerializationInfo.SerializationMetadata.Add(typeof(FilterDescriptor), "Operator", DesignerSerializationVisibilityAttribute.Hidden);
    this.radVirtualGrid1.XmlSerializationInfo.SerializationMetadata.Add(typeof(FilterDescriptor), "Value", DesignerSerializationVisibilityAttribute.Hidden);
    this.radVirtualGrid1.XmlSerializationInfo.SerializationMetadata.Add(typeof(FilterDescriptor), "IsFilterEditor", DesignerSerializationVisibilityAttribute.Hidden);
}

````
````VB.NET
Private Sub DefineData(sender As Object, e As EventArgs)
    'Hide items
    Me.RadVirtualGrid1.XmlSerializationInfo.SerializationMetadata.Add(GetType(VirtualGridViewInfo), "CustomColumns", New DesignerSerializationVisibilityAttribute(DesignerSerializationVisibility.Hidden))
    Me.RadVirtualGrid1.XmlSerializationInfo.SerializationMetadata.Add(GetType(VirtualGridViewInfo), "ColumnDataTypes", New DesignerSerializationVisibilityAttribute(DesignerSerializationVisibility.Hidden))
    Me.RadVirtualGrid1.XmlSerializationInfo.SerializationMetadata.Add(GetType(VirtualGridTableViewState), "ItemSizes", New DesignerSerializationVisibilityAttribute(DesignerSerializationVisibility.Hidden))
    Me.RadVirtualGrid1.XmlSerializationInfo.SerializationMetadata.Add(GetType(VirtualGridTableViewState), "ItemCount", New DesignerSerializationVisibilityAttribute(DesignerSerializationVisibility.Hidden))
    'Sort Descriptors            
    Me.RadVirtualGrid1.XmlSerializationInfo.SerializationMetadata.Add(GetType(VirtualGridViewInfo), "SortDescriptors", DesignerSerializationVisibilityAttribute.Hidden)
    Me.RadVirtualGrid1.XmlSerializationInfo.SerializationMetadata.Add(GetType(SortDescriptor), "Direction", DesignerSerializationVisibilityAttribute.Hidden)
    'Filter Descriptors           
    Me.RadVirtualGrid1.XmlSerializationInfo.SerializationMetadata.Add(GetType(VirtualGridViewInfo), "FilterDescriptors", DesignerSerializationVisibilityAttribute.Hidden)
    Me.RadVirtualGrid1.XmlSerializationInfo.SerializationMetadata.Add(GetType(FilterDescriptor), "PropertyName", DesignerSerializationVisibilityAttribute.Hidden)
    Me.RadVirtualGrid1.XmlSerializationInfo.SerializationMetadata.Add(GetType(FilterDescriptor), "Operator", DesignerSerializationVisibilityAttribute.Hidden)
    Me.RadVirtualGrid1.XmlSerializationInfo.SerializationMetadata.Add(GetType(FilterDescriptor), "Value", DesignerSerializationVisibilityAttribute.Hidden)
    Me.RadVirtualGrid1.XmlSerializationInfo.SerializationMetadata.Add(GetType(FilterDescriptor), "IsFilterEditor", DesignerSerializationVisibilityAttribute.Hidden)
End Sub

````

{{endregion}} 

>note Once the layout is being loaded the __LayoutLoaded__ event is being thrown in order to notify that the load process is being finished.
>






# See Also
* [Overview]({%slug winforms/virtualgrid/save-and-load-layout/overview%})

