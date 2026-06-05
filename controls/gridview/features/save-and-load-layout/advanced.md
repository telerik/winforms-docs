---
title: Advanced
page_title: Advanced - RadGridView
description: Customize the layout serialization by specifying which properties to be serialized. 
slug: winforms/gridview/save-and-load-layout/advanced
tags: advanced
published: True
position: 2
previous_url: gridview-save-and-load-layout-advanced
---

# Advanced

RadGridView serialization API provides a wide range of options that enable the programmer to customize the serialized content in a flexible manner. Based on the principles of the standard Microsoft .NET XML serialization approach, the API can be easily used for implementing different serialization scenarios. 

This article demonstrates how to alter the default serialization procedure and explicitly define the properties to be serialized.

Here are several properties to have in mind:

* __XmlSerializationInfo:__ This property of gets the serialization information used by the __SaveLayout__ and __LoadLayout__ methods. It contains all RadGridView data that should persist between application states.

* __XmlSerializationInfo.DisregardOriginalSerializationVisibility:__ this property determines whether the serialization engine should take the default serialization attributes or the custom serialization metadata provided by the programmer. To define a custom collection of properties, set the property to *true*.

* __XmlSerializationInfo.SerializationMetadata:__ this property returns a collection of __PropertySerializationMetadata__ objects, which contains information about the type, name and serialization method of the corresponding property. You need to clear the collection in order to be sure that only the serialization instructions will be considered.

Here is a snippet clearing the default settings:

<snippet id='gridview-advanced-preparation-cs' />
<snippet id='gridview-advanced-preparation-vb' />

>note Clearing the default settings would require all the serialization meta data to be loaded manually.
>

The first property to add for serialization is the MasterGridViewTemplate, which contains RadGridView’s data and its structure. Please note that the MasterGridViewTemplate property is of type GridViewTemplate and that the __DesignerSerializationVisibilityAttribute__ works exactly as the standard Microsoft .NET Framework attribute.

<snippet id='gridview-advanced-serializationmetadataradgridview-cs' />
<snippet id='gridview-advanced-serializationmetadataradgridview-vb' />

You can use the same approach to add the child templates. Additionally, you may want to add the __Caption__ property of the template.

<snippet id='gridview-advanced-serializationmetadatachildtemplates-cs' />
<snippet id='gridview-advanced-serializationmetadatachildtemplates-vb' />

Since the __Columns__ property points to a complex object, you should set the __DesignerSerializationVisibilityAttribute__ attribute to __Content__. In this way, the serialization engine will automatically detect that Columns points to a collection and will enumerate its items. Further, for each column you should define the properties to be stored in the XML output. In the following snippet the serialized properties are __UniqueName__ and __Width__. By specifying the __GridViewDataColumn__ type you tell the serializer that this instruction should be considered each time an object of this type is found. Please note that the __DesignerSerializationVisibilityAttribute__ attribute is set to __Visibility__, because the value of the property should be serialized.

<snippet id='gridview-advanced-serializationmetadatagridviewdatacolumn-cs' />
<snippet id='gridview-advanced-serializationmetadatagridviewdatacolumn-vb' />

Further, you may want to save information concerning grouping, sorting, filtering. Here is a sample snippet:

<snippet id='gridview-advanced-serializationmetadataoperations-cs' />
<snippet id='gridview-advanced-serializationmetadataoperations-vb' />

# See Also
* [Save/Load layout buttons in the Property Grid]({%slug winforms/gridview/save-and-load-layout/load-layout-buttons-in-the-property-grid%})

* [Overview]({%slug winforms/gridview/save-and-load-layout/overview%})

