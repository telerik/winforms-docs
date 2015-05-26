---
title: Merge Field
page_title: Merge Field | UI for WinForms Documentation
description: Merge Field
slug: winforms/wordsprocessing/concepts/fields/merge-field
tags: merge,field
published: True
position: 0
---

# Merge Field



Merge field is a [Field]({%slug winforms/wordsprocessing/concepts/fields%}) element containing a reference to a data field by its name. 
        When a template document is mail merged with the values from a data source, the data field information replaces the merge field. More information on 
        the mail merge feature is available in the respective article: [Mail Merge]({%slug winforms/wordsprocessing/editing/mail-merge%}).
      

## Syntax

The syntax of a merge field is demonstrated in __Figure 1__.
        
>caption Figure 1: Merge Field Code Syntax

![radwordsprocessing-concepts-merge-field 001](images/radwordsprocessing-concepts-merge-field001.png)

## Inserting

Inserting a merge field is easily achieved through the [RadFlowDocumentEditor]({%slug winforms/wordsprocessing/editing/radflowdocumenteditor%})'s __InsertField()__ method.
          It accepts code as first argument and result as second argument.
        

__Example 1__ demonstrates how you can insert a merge field.
        #_C#_

	



{{source=..\SamplesCS\WordsProcessing\Concepts\WordsProcessingMergeField.cs region=editor}} 
{{source=..\SamplesVB\WordsProcessing\Concepts\WordsProcessingMergeField.vb region=editor}} 

````C#
            RadFlowDocumentEditor editor = new RadFlowDocumentEditor(new RadFlowDocument());
            editor.InsertField("MERGEFIELD First_Name", "Nancy Davolio");
````
````VB.NET
        Dim editor As New RadFlowDocumentEditor(New RadFlowDocument())
        editor.InsertField("MERGEFIELD First_Name", "Nancy Davolio")
        '
````

{{endregion}} 




## Switches

Switches are a way for the code fragment to specify formatting for the result of the field. More information is available in 
          the *Syntax and Switches* section of the [Fields]({%slug winforms/wordsprocessing/concepts/fields%}) article.
        

The possible switches for a merge field are:
        

* __\b "text":__ Specifies text which shall be inserted before the Merge Field in case the field is not blank.
            

* __\f "text":__ Specifies text which shall be inserted after the Merge Field in case the field is not blank.
            

__Example 2__ shows a possible use of merge field's switches.
        #_C#_

	



{{source=..\SamplesCS\WordsProcessing\Concepts\WordsProcessingMergeField.cs region=insert}} 
{{source=..\SamplesVB\WordsProcessing\Concepts\WordsProcessingMergeField.vb region=insert}} 

````C#
            editor.InsertField("MERGEFIELD First_Name \\b \"Mr. \" \\f \". \"", "");
````
````VB.NET
        editor.InsertField("MERGEFIELD First_Name \b ""Mr. "" \f "". """, "")
        '
````

{{endregion}} 




# See Also

 * [Fields]({%slug winforms/wordsprocessing/concepts/fields%})

 * [RadFlowDocumentEditor]({%slug winforms/wordsprocessing/editing/radflowdocumenteditor%})

 * [Mail Merge]({%slug winforms/wordsprocessing/editing/mail-merge%})
