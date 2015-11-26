---
title: Document Variables
page_title: Document Variables | UI for WinForms Documentation
description: Document Variables
slug: winforms/wordsprocessing/concepts/fields/document-variables
tags: document,variables
published: True
position: 2
---

# Document Variables

Document variables provide a mechanism to store information in the document in a key-value format. The Document Variable field is a [field]({%slug winforms/wordsprocessing/concepts/fields%}) element used to access and display the value which corresponds to the given field-argument. The argument is the name of the variable.
      

## DocumentVariableCollection

[RadFlowDocument]({%slug winforms/wordsprocessing/model/radflowdocument%}) has a __DocumentVariableCollection__ property which holds document variable records. The collection maps string keys to string values. You can add a record in it through an indexer or with the collection's __Add()__ method. __Example 1__ demonstrates both approaches.

{{source=..\SamplesCS\WordsProcessing\Concepts\WordsProcessingDocumentVariables.cs region=document}} 
{{source=..\SamplesVB\WordsProcessing\Concepts\WordsProcessingDocumentVariables.vb region=document}} 

````C#
RadFlowDocument document = new RadFlowDocument();
document.DocumentVariables["Job"] = "Software Engineer";
document.DocumentVariables.Add("Name", "Nancy Davolio");

````
````VB.NET
Dim document As New RadFlowDocument()
document.DocumentVariables("Job") = "Software Engineer"
document.DocumentVariables.Add("Name", "Nancy Davolio")

````

{{endregion}} 

The code in __Example 1__ adds two document variables – *"Name"*, which will be evaluated to *"Nancy Davolio"*, and *"Job"* with *"Software Engineer"* value.

The same two methods can be used to modify the value of an existing variable in the collection.
        

Removing defined variables can be achieved by using the __Remove()__ method of the variables collection. It accepts the name of the variable as a parameter.

{{source=..\SamplesCS\WordsProcessing\Concepts\WordsProcessingDocumentVariables.cs region=remove}} 
{{source=..\SamplesVB\WordsProcessing\Concepts\WordsProcessingDocumentVariables.vb region=remove}} 

````C#
document.DocumentVariables.Remove("Job");

````
````VB.NET
document.DocumentVariables.Remove("Job")

````

{{endregion}} 

## Syntax

The syntax of a document variable field code is pretty simple as demonstrated on __Figure 1__.
        
>caption Figure 1: Document Variable Field Code Syntax

![radwordsprocessing-concepts-document-variables 001](images/radwordsprocessing-concepts-document-variables001.png)

## Inserting

A __DocumentVariable__ field can be inserted through [RadFlowDocumentEditor]({%slug winforms/wordsprocessing/editing/radflowdocumenteditor%})'s __InsertField()__ method. More information on fields is available in the [Fields]({%slug winforms/wordsprocessing/concepts/fields%}) article. __Example 3__ shows insertion of the field created in __Example 1__.

>warning A variable needs to be included in the document variables collection of the document before you insert it.
>

# See Also

 * [Fields]({%slug winforms/wordsprocessing/concepts/fields%})

 * [RadFlowDocument]({%slug winforms/wordsprocessing/model/radflowdocument%})
