---
title: Working with Content Controls
page_title:  Working with Content Controls - RadRichTextEditor
description: This article show you you can access the content controls in code
slug: radrichtexteditor-features-working-with-content-controls
tags: content controls, richtexteditor
published: True
position: 1
---

# Working with Content Controls

This article shows some examples of how you can access a content control and modify their properties from the code. In general, the content controls are marked with annotations and you can manipulate them as such. Detailed information is available here: [Manipulating Annotations]({%slug winforms/richtexteditor-/document-elements/annotations/manipulating-annotations%}) 

## Manipulate existing content controls

### Get the content controls. 

The content controls can be retrieved by using the __GetAnnotationMarkersOfType__ method. This is demonstrated in the following example. 

#### Example 1: Get all Content Controls

<snippet id='richtexteditor-contentcontrols-iteratecontentcontrols-cs' />
<snippet id='richtexteditor-contentcontrols-iteratecontentcontrols-vb' />



### Set content controls properties.

This example shows how you can iterate the items and add an item to a existing ComboBox content control. 

#### Example 2: Adding items to a ComboBox or a DropDownList

<snippet id='richtexteditor-contentcontrols-additemstocombo-cs' />
<snippet id='richtexteditor-contentcontrols-additemstocombo-vb' />



## Insert new content controls

New content controls can be inserted trough one of the overloads of the __InsertStructuredDocumentTag__ method accessible from __RadRichTextEditor__ and [RadDocumentEditor]({%slug winforms/richtexteditor-/features/raddocumenteditor%}):

#### Example 3: Inserting a content control

<snippet id='richtexteditor-contentcontrols-insertcontentcontrol-cs' />
<snippet id='richtexteditor-contentcontrols-insertcontentcontrol-vb' />



#### Example 4: Inserting a content control using content control type

<snippet id='richtexteditor-contentcontrols-insertcontentcontrolusingtype-cs' />
<snippet id='richtexteditor-contentcontrols-insertcontentcontrolusingtype-vb' />



#### Example 5: Inserting a content control using content control properties

<snippet id='richtexteditor-contentcontrols-insertcontentcontrolusingproperties-cs' />
<snippet id='richtexteditor-contentcontrols-insertcontentcontrolusingproperties-vb' />



# See Also
* [Content Controls Overview]({%slug radrichtexteditor-features-content-controls%})
