---
title: Mail Merge
page_title: Mail Merge
description: Mail Merge
slug: wordsprocessing-editing-mail-merge
tags: mail,merge
published: True
position: 2
---

# Mail Merge



[Mail merge](http://en.wikipedia.org/wiki/Mail_merge) is functionality allowing to produce personalized documents from a template holding fixed content and variables. 
        The variables are called [Merge Fields]({%slug radwordsprocessing-concepts-merge-fields-mergefield%}) and are replaced through the merge process
        with content from a specified data source.
      

## Inserting Merge Fields

Merge fields are a type of [Fields]({%slug wordsprocessing-concepts-fields%}) and can be added in a template
          document via [RadFlowDocumentEditor]({%slug wordsprocessing-editing-radflowdocumenteditor%})'s __InsertFIeld()__ method. 
          The method requires the code representation of the field and the result which is shown in the template before the document is mail-merged.
        

The code snippet in __Example 1__ shows how to initialize a RadFlodDocumentEditor instance and insert a merge field.
        

#### __C#__

{{source=..\SamplesCS\WordsProcessing\Editing\MailMerge.cs region=mailmerge1}}
	            
	            RadFlowDocument document = new RadFlowDocument();
	            RadFlowDocumentEditor editor = new RadFlowDocumentEditor(document);
	            editor.InsertField("MERGEFIELD FirstName", "");
	            
	{{endregion}}



#### __VB__

{{source=..\SamplesVB\WordsProcessing\Editing\MailMerge.vb region=mailmerge1}}
	
	        Dim document As New RadFlowDocument()
	        Dim editor As New RadFlowDocumentEditor(document)
	        editor.InsertField("MERGEFIELD FirstName", "")
	
	        '#End Region
	
	        Dim paragraph As New Paragraph(document)
	
	        '#Region "mailmerge2"
	
	        Dim field As New FieldInfo(document)
	
	        paragraph.Inlines.Add(field.Start)
	        paragraph.Inlines.AddRun("MERGEFIELD LastName")
	        paragraph.Inlines.Add(field.Separator)
	        paragraph.Inlines.AddRun("")
	        paragraph.Inlines.Add(field.End)
	
	        '#End Region
	
	        '#Region "mailmerge3"
	
	        Dim mailMergeDataSource As New List(Of MailMergeRecord)() From {
	            New MailMergeRecord() With {.FirstName = "Andrew", .LastName = "Fuller"},
	            New MailMergeRecord() With {.FirstName = "Nancy", .LastName = "Davolio"}
	        }
	
	        '#End Region 
	
	        '#Region "mailmerge4"
	
	        Dim mailMergeResult As RadFlowDocument = document.MailMerge(mailMergeDataSource)
	
	        '#End Region
	    End Sub
	End Class
	
	Public Class MailMergeRecord
	    Public Property FirstName() As String
	
	    Public Property LastName() As String
	
	End Class



Additionally, a field can be added to a Paragraph manually by creating a __FieldInfo__ instance and placing its start, 
          code, separator, result and end in the block. __Example 2__ shows the manual approach for adding a merge field.
        

#### __C#__

{{source=..\SamplesCS\WordsProcessing\Editing\MailMerge.cs region=mailmerge2}}
	            
	            FieldInfo field = new FieldInfo(document);
	            
	            paragraph.Inlines.Add(field.Start);
	            paragraph.Inlines.AddRun("MERGEFIELD LastName");
	            paragraph.Inlines.Add(field.Separator);
	            paragraph.Inlines.AddRun("");
	            paragraph.Inlines.Add(field.End);
	                
	{{endregion}}



#### __VB__

{{source=..\SamplesVB\WordsProcessing\Editing\MailMerge.vb region=mailmerge2}}
	
	        Dim field As New FieldInfo(document)
	
	        paragraph.Inlines.Add(field.Start)
	        paragraph.Inlines.AddRun("MERGEFIELD LastName")
	        paragraph.Inlines.Add(field.Separator)
	        paragraph.Inlines.AddRun("")
	        paragraph.Inlines.Add(field.End)
	
	        '#End Region
	
	        '#Region "mailmerge3"
	
	        Dim mailMergeDataSource As New List(Of MailMergeRecord)() From {
	            New MailMergeRecord() With {.FirstName = "Andrew", .LastName = "Fuller"},
	            New MailMergeRecord() With {.FirstName = "Nancy", .LastName = "Davolio"}
	        }
	
	        '#End Region 
	
	        '#Region "mailmerge4"
	
	        Dim mailMergeResult As RadFlowDocument = document.MailMerge(mailMergeDataSource)
	
	        '#End Region
	    End Sub
	End Class
	
	Public Class MailMergeRecord
	    Public Property FirstName() As String
	
	    Public Property LastName() As String
	
	End Class



## Performing Mail Merge

Mail merge can be performed over a template document containing merge fields. For this action the __MailMerge()__ method 
          of [RadFlowDocument]({%slug wordsprocessing-model-radflowdocument%}) needs to be used. The method accepts a collection of elements as a parameter.
        

During the operation each MergeField is replaced with the corresponding information from the data source record in a new 
          __RadFlowDocument__ instance. Every subsequent entry in the data source is appended to a single resulting document 
          which is returned by the method. The original template stays unmodified.
        

Example 3 shows a simple example data source.
        

#### __C#__

{{source=..\SamplesCS\WordsProcessing\Editing\MailMerge.cs region=mailmerge3}}
	                
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
	    
	{{endregion}}



#### __VB__

{{source=..\SamplesVB\WordsProcessing\Editing\MailMerge.vb region=mailmerge3}}
	
	        Dim mailMergeDataSource As New List(Of MailMergeRecord)() From {
	            New MailMergeRecord() With {.FirstName = "Andrew", .LastName = "Fuller"},
	            New MailMergeRecord() With {.FirstName = "Nancy", .LastName = "Davolio"}
	        }
	
	        '#End Region 
	
	        '#Region "mailmerge4"
	
	        Dim mailMergeResult As RadFlowDocument = document.MailMerge(mailMergeDataSource)
	
	        '#End Region
	    End Sub
	End Class
	
	Public Class MailMergeRecord
	    Public Property FirstName() As String
	
	    Public Property LastName() As String
	
	End Class



__Example 4__ performs the mail merge operation over a previously defined template document using the data source from 
          __Example 3__.
        

#### __C#__

{{source=..\SamplesCS\WordsProcessing\Editing\MailMerge.cs region=mailmerge4}}
	        
	            RadFlowDocument mailMergeResult = document.MailMerge(mailMergeDataSource);
	
	{{endregion}}



#### __VB__

{{source=..\SamplesVB\WordsProcessing\Editing\MailMerge.vb region=mailmerge4}}
	
	        Dim mailMergeResult As RadFlowDocument = document.MailMerge(mailMergeDataSource)
	
	        '#End Region
	    End Sub
	End Class
	
	Public Class MailMergeRecord
	    Public Property FirstName() As String
	
	    Public Property LastName() As String
	
	End Class



# See Also

 * [Fields]({%slug wordsprocessing-concepts-fields%})

 * [Merge Field]({%slug radwordsprocessing-concepts-merge-fields-mergefield%})

 * [RadFlowDocument]({%slug wordsprocessing-model-radflowdocument%})
