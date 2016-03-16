---
title: Mail Merge
page_title: Mail Merge | UI for WinForms Documentation
description: Mail Merge
slug: winforms/wordsprocessing/editing/mail-merge
tags: mail,merge
published: True
position: 5
previous_url: wordsprocessing-editing-mail-merge
---

# Mail Merge

[Mail merge](http://en.wikipedia.org/wiki/Mail_merge) is functionality allowing to produce personalized documents from a template holding fixed content and variables. The variables are called [Merge Fields]({%slug winforms/wordsprocessing/concepts/fields/merge-field%}) and are replaced through the merge process with content from a specified data source.
      

## Inserting Merge Fields

Merge fields are a type of [Fields]({%slug winforms/wordsprocessing/concepts/fields%}) and can be added in a template document via [RadFlowDocumentEditor]({%slug winforms/wordsprocessing/editing/radflowdocumenteditor%})'s __InsertFIeld()__ method. The method requires the code representation of the field and the result which is shown in the template before the document is mail-merged.

The code snippet in __Example 1__ shows how to initialize a RadFlodDocumentEditor instance and insert a merge field.

{{source=..\SamplesCS\WordsProcessing\Editing\MailMerge.cs region=mailmerge1}} 
{{source=..\SamplesVB\WordsProcessing\Editing\MailMerge.vb region=mailmerge1}} 

````C#
            
RadFlowDocument document = new RadFlowDocument();
RadFlowDocumentEditor editor = new RadFlowDocumentEditor(document);
editor.InsertField("MERGEFIELD FirstName", "");

````
````VB.NET
Dim document As New RadFlowDocument()
Dim editor As New RadFlowDocumentEditor(document)
editor.InsertField("MERGEFIELD FirstName", "")

````

{{endregion}} 

Additionally, a field can be added to a Paragraph manually by creating a __FieldInfo__ instance and placing its start, code, separator, result and end in the block. __Example 2__ shows the manual approach for adding a merge field.

{{source=..\SamplesCS\WordsProcessing\Editing\MailMerge.cs region=mailmerge2}} 
{{source=..\SamplesVB\WordsProcessing\Editing\MailMerge.vb region=mailmerge2}} 

````C#
            
FieldInfo field = new FieldInfo(document);
            
paragraph.Inlines.Add(field.Start);
paragraph.Inlines.AddRun("MERGEFIELD LastName");
paragraph.Inlines.Add(field.Separator);
paragraph.Inlines.AddRun("");
paragraph.Inlines.Add(field.End);

````
````VB.NET
Dim field As New FieldInfo(document)
paragraph.Inlines.Add(field.Start)
paragraph.Inlines.AddRun("MERGEFIELD LastName")
paragraph.Inlines.Add(field.Separator)
paragraph.Inlines.AddRun("")
paragraph.Inlines.Add(field.End)

````

{{endregion}} 

## Performing Mail Merge

Mail merge can be performed over a template document containing merge fields. For this action the __MailMerge()__ method of [RadFlowDocument]({%slug winforms/wordsprocessing/model/radflowdocument%}) needs to be used. The method accepts a collection of elements as a parameter.
        

During the operation each MergeField is replaced with the corresponding information from the data source record in a new __RadFlowDocument__ instance. Every subsequent entry in the data source is appended to a single resulting document which is returned by the method. The original template stays unmodified.

Example 3 shows a simple example data source.

{{source=..\SamplesCS\WordsProcessing\Editing\MailMerge.cs region=mailmerge3}} 
{{source=..\SamplesVB\WordsProcessing\Editing\MailMerge.vb region=mailmerge3}} 

````C#
    
List<MailMergeRecord> mailMergeDataSource = new List<MailMergeRecord>()
            {
    new MailMergeRecord()
    {
        FirstName = "Andrew",
        LastName = "Fuller"
    },
    new MailMergeRecord()
    {
        FirstName = "Nancy",
        LastName = "Davolio"
    },
};

````
````VB.NET
Dim mailMergeDataSource As New List(Of MailMergeRecord)() From {
    New MailMergeRecord() With {.FirstName = "Andrew", .LastName = "Fuller"},
    New MailMergeRecord() With {.FirstName = "Nancy", .LastName = "Davolio"}
}

````

{{endregion}} 

__Example 4__ performs the mail merge operation over a previously defined template document using the data source from  __Example 3__.

{{source=..\SamplesCS\WordsProcessing\Editing\MailMerge.cs region=mailmerge4}} 
{{source=..\SamplesVB\WordsProcessing\Editing\MailMerge.vb region=mailmerge4}} 

````C#
        
RadFlowDocument mailMergeResult = document.MailMerge(mailMergeDataSource);

````
````VB.NET
Dim mailMergeResult As RadFlowDocument = document.MailMerge(mailMergeDataSource)

````

{{endregion}} 

# See Also

 * [Fields]({%slug winforms/wordsprocessing/concepts/fields%})

 * [Merge Field]({%slug winforms/wordsprocessing/concepts/fields/merge-field%})

 * [RadFlowDocument]({%slug winforms/wordsprocessing/model/radflowdocument%})
