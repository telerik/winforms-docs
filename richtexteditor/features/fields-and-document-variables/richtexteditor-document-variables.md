---
title: Document Variables
page_title: Document Variables
description: Document Variables
slug: richtexteditor-features-fields-and-document-variables-document-variables
tags: document,variables
published: True
position: 1
---

# Document Variables



Document variables provide a mechanism to store information in the document.
        They also provide a convenient way to define more complicated field constructions
        (nested fields) and can be used as the backbone of master-detail mail merge.
      

## 

Each RadDocument instance has a dictionary of variables exposed by the __DocumentVariables__ property:
        

#### __[C#] __

{{source=..\SamplesCS\RichTextEditor\Features\DocumentVariables.cs region=get}}
	            
	            Telerik.WinForms.Documents.Model.DocumentVariableCollection variables = this.radRichTextEditor1.Document.DocumentVariables;
	            
	{{endregion}}



#### __[VB.NET] __

{{source=..\SamplesVB\RichTextEditor\Features\DocumentVariables.vb region=get}}
	
	        Dim variables As Telerik.WinForms.Documents.Model.DocumentVariableCollection = Me.radRichTextEditor1.Document.DocumentVariables
	
	        '#End Region
	
	        '#Region "add"
	
	        Me.radRichTextEditor1.Document.DocumentVariables.Add("Name", "Andrew Fuller")
	        Me.radRichTextEditor1.Document.DocumentVariables("Job") = "Software Engineer"
	
	        '#End Region
	
	        '#Region "remove"
	
	        Me.radRichTextEditor1.Document.DocumentVariables.Remove("Name")
	
	        '#End Region
	
	        '#Region "field"
	
	        Dim docVariable As New Telerik.WinForms.Documents.Model.DocumentVariableField() With {.VariableName = "Name"}
	        Me.radRichTextEditor1.InsertField(docVariable)
	
	        '#End Region
	    End Sub
	End Class



This collection maps string keys to object values (most often strings). The values of the fields most often are strings again and
          contain the text that will be inserted in the document when the variable is inserted in the document and is evaluated.
          Variables can be added to this collection in one of the following ways:
        

#### __[C#] __

{{source=..\SamplesCS\RichTextEditor\Features\DocumentVariables.cs region=add}}
	
	            this.radRichTextEditor1.Document.DocumentVariables.Add("Name", "Andrew Fuller");
	            this.radRichTextEditor1.Document.DocumentVariables["Job"] = "Software Engineer";
	            
	{{endregion}}



#### __[VB.NET] __

{{source=..\SamplesVB\RichTextEditor\Features\DocumentVariables.vb region=add}}
	
	        Me.radRichTextEditor1.Document.DocumentVariables.Add("Name", "Andrew Fuller")
	        Me.radRichTextEditor1.Document.DocumentVariables("Job") = "Software Engineer"
	
	        '#End Region
	
	        '#Region "remove"
	
	        Me.radRichTextEditor1.Document.DocumentVariables.Remove("Name")
	
	        '#End Region
	
	        '#Region "field"
	
	        Dim docVariable As New Telerik.WinForms.Documents.Model.DocumentVariableField() With {.VariableName = "Name"}
	        Me.radRichTextEditor1.InsertField(docVariable)
	
	        '#End Region
	    End Sub
	End Class



This code will add two variables to the document – "Name", which will be evaluated to "Andrew Fuller" and "Job" with a value
          "Software Engineer". The second syntax can also be used to modify the value of a variable that has already been added to the collection.
        

Removing variables from the collection can be done like this:

#### __[C#] __

{{source=..\SamplesCS\RichTextEditor\Features\DocumentVariables.cs region=remove}}
	            
	            this.radRichTextEditor1.Document.DocumentVariables.Remove("Name");
	        
	{{endregion}}



#### __[VB.NET] __

{{source=..\SamplesVB\RichTextEditor\Features\DocumentVariables.vb region=remove}}
	
	        Me.radRichTextEditor1.Document.DocumentVariables.Remove("Name")
	
	        '#End Region
	
	        '#Region "field"
	
	        Dim docVariable As New Telerik.WinForms.Documents.Model.DocumentVariableField() With {.VariableName = "Name"}
	        Me.radRichTextEditor1.InsertField(docVariable)
	
	        '#End Region
	    End Sub
	End Class



Document variables can be inserted in the document using DocumentVariableField. Here is an example how the above created Name variable can be
          inserted in the current document of the editor:
        

#### __[C#] __

{{source=..\SamplesCS\RichTextEditor\Features\DocumentVariables.cs region=field}}
	
	            Telerik.WinForms.Documents.Model.DocumentVariableField docVariable = new Telerik.WinForms.Documents.Model.DocumentVariableField() { VariableName = "Name" };
	            this.radRichTextEditor1.InsertField(docVariable);
	
	{{endregion}}



#### __[VB.NET] __

{{source=..\SamplesVB\RichTextEditor\Features\DocumentVariables.vb region=field}}
	
	        Dim docVariable As New Telerik.WinForms.Documents.Model.DocumentVariableField() With {.VariableName = "Name"}
	        Me.radRichTextEditor1.InsertField(docVariable)
	
	        '#End Region
	    End Sub
	End Class


