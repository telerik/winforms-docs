---
title: Document Variables
page_title: Document Variables
description: Document Variables
slug: radwordsprocessing-concepts-document-variables
tags: document,variables
published: True
position: 1
---

# Document Variables



Document variables provide a mechanism to store information in the document in a key-value format. The Document Variable field 
        is a [field]({%slug wordsprocessing-concepts-fields%}) element used to access and display the value which corresponds to the given field-argument. 
        The argument is the name of the variable.
      

## DocumentVariableCollection

[RadFlowDocument]({%slug wordsprocessing-model-radflowdocument%}) has a __DocumentVariableCollection__ property which holds document variable records. 
          The collection maps string keys to string values. You can add a record in it through an indexer or with the collection's __Add()__ method. 
          __Example 1__ demonstrates both approaches.
        

#### __C#__

{{source=..\SamplesCS\WordsProcessing\Concepts\WordsProcessingDocumentVariables.cs region=document}}
	            RadFlowDocument document = new RadFlowDocument();
	            document.DocumentVariables["Job"] = "Software Engineer";
	            document.DocumentVariables.Add("Name", "Nancy Davolio");
	{{endregion}}



#### __VB__

{{source=..\SamplesVB\WordsProcessing\Concepts\WordsProcessingDocumentVariables.vb region=document}}
	        Dim document As New RadFlowDocument()
	        document.DocumentVariables("Job") = "Software Engineer"
	        document.DocumentVariables.Add("Name", "Nancy Davolio")
	{{endregion}}



The code in __Example 1__ adds two document variables – *"Name"*, which will be evaluated to 
          *"Nancy Davolio"*, and *"Job"* with *"Software 
          Engineer"* value.
        

The same two methods can be used to modify the value of an existing variable in the collection.
        

Removing defined variables can be achieved by using the __Remove()__ method of the variables collection. It accepts the name of the variable 
          as a parameter.
        

#### __C#__

{{source=..\SamplesCS\WordsProcessing\Concepts\WordsProcessingDocumentVariables.cs region=remove}}
	            document.DocumentVariables.Remove("Job");
	{{endregion}}



#### __VB__

{{source=..\SamplesVB\WordsProcessing\Concepts\WordsProcessingDocumentVariables.vb region=remove}}
	        document.DocumentVariables.Remove("Job")
	{{endregion}}



## Syntax

The syntax of a document variable field code is pretty simple as demonstrated on __Figure 1__.
        

Figure 1: Document Variable Field Code Syntax![radwordsprocessing-concepts-document-variables 001](images/radwordsprocessing-concepts-document-variables001.png)

## Inserting

A __DocumentVariable__ field can be inserted through [RadFlowDocumentEditor]({%slug wordsprocessing-editing-radflowdocumenteditor%})'s 
          __InsertField()__ method. More information on fields is available in the [Fields]({%slug wordsprocessing-concepts-fields%}) article.
          __Example 3__ shows insertion of the field created in __Example 1__.
        

#### __C#__

{{source=..\SamplesCS\WordsProcessing\Concepts\WordsProcessingDocumentVariables.cs region=insert}}
	            editor.InsertField("DOCVARIABLE Name", "Nancy Davolio");
	{{endregion}}



#### __VB__





# See Also

 * [Fields]({%slug wordsprocessing-concepts-fields%})

 * [RadFlowDocument]({%slug wordsprocessing-model-radflowdocument%})
