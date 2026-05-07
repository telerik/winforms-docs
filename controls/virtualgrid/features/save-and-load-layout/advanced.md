---
title: Advanced
page_title: Advanced - RadVirtualGrid
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

<snippet id='virtualgrid-virtualgridsaveloadlayout-clearsettings-cs' />
<snippet id='virtualgrid-virtualgridsaveloadlayout-clearsettings-vb' />



>note Clearing the default settings would require all the serialization meta data to be loaded manually.
>

The code snippets below demonstrates how you can hide a particular information to be serialized: 

#### Define Data

<snippet id='virtualgrid-virtualgridsaveloadlayout-definedata-cs' />
<snippet id='virtualgrid-virtualgridsaveloadlayout-definedata-vb' />



>note Once the layout is being loaded the __LayoutLoaded__ event is being thrown in order to notify that the load process is being finished.
>






# See Also
* [Overview]({%slug winforms/virtualgrid/save-and-load-layout/overview%})

