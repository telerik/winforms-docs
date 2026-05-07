---
title: Document Variables
page_title: Document Variables - WinForms RichTextEditor Control
description: Document variables in WinForms RichTextEditor provide a mechanism to store information in the document. It is possible to define nested fields and can be used as the backbone of master-detail mail merge.      
slug: winforms/richtexteditor-/features/fields-and-document-variables/document-variables
tags: document,variables
published: True
position: 1
previous_url: richtexteditor-features-fields-and-document-variables-document-variables
---

# Document Variables

Document variables provide a mechanism to store information in the document. They also provide a convenient way to define more complicated field constructions (nested fields) and can be used as the backbone of master-detail mail merge.     

Each **RadDocument** instance has a dictionary of variables exposed by the __DocumentVariables__ property:

<snippet id='richtexteditor-documentvariables-get-cs' />
<snippet id='richtexteditor-documentvariables-get-vb' />



This collection maps string keys to object values (most often strings). The values of the fields most often are strings again and contain the text that will be inserted in the document when the variable is inserted in the document and is evaluated. Variables can be added to this collection in one of the following ways:

<snippet id='richtexteditor-documentvariables-add-cs' />
<snippet id='richtexteditor-documentvariables-add-vb' />



This code will add two variables to the document – "**Name**", which will be evaluated to "*Andrew Fuller*" and "**Job**" with a value "*Software Engineer*". The second syntax can also be used to modify the value of a variable that has already been added to the collection.
        
Removing variables from the collection can be done like this:

<snippet id='richtexteditor-documentvariables-remove-cs' />
<snippet id='richtexteditor-documentvariables-remove-vb' />



Document variables can be inserted in the document using **DocumentVariableField**. Here is an example how the above created **Name** variable can be inserted in the current document of the editor:

<snippet id='richtexteditor-documentvariables-field-cs' />
<snippet id='richtexteditor-documentvariables-field-vb' />



