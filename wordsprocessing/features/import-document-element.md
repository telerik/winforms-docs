---
title: Import Document Element
page_title: Import Document Element | UI for WinForms Documentation
description: Import Document Element
slug: winforms/wordsprocessing/features/import-document-element
tags: import,document,element
published: True
position: 4
---

# Import Document Element



This article explains how you could import a document element from one document into another using the API of __RadWordsProcessing__.

## DocumentElementImporter Class

__DocumentElementImporter__ class represents a utility class, which is used to import document elements from one document to another. It also handles the style repository merging.

* __Create a DocumentElementImporter__The constructor of the__DocumentElementImporter__ class accepts three parameters:

  * __targetDocument__: The __RadFlowDocument__ instance for which the elements will be prepared for inserting.
            

  * __sourceDocument__: The __RadFlowDocument__ from where the elements will be imported.
            

  * __conflictingStylesResolutionMode__: Represents the resolution mode, which will be used if a style conflict appears during the style repositories merging. Could be set to one of the values of the [ConflictingStylesResolutionMode ](http://www.telerik.com/help/winforms/t_telerik_windows_documents_flow_model_conflictingstylesresolutionmode.html) enumeration.

#### Example 1: Create DocumentElementImporter

{{source=..\SamplesCS\WordsProcessing\Editing\WordsProcessingCloneAndMerge.cs region=radwordsprocessing-editing-import-document-element_0}} 
{{source=..\SamplesVB\WordsProcessing\Editing\WordsProcessingCloneAndMerge.vb region=radwordsprocessing-editing-import-document-element_0}} 

````C#
            
Telerik.Windows.Documents.Flow.Model.DocumentElementImporter importer =
    new Telerik.Windows.Documents.Flow.Model.DocumentElementImporter(targetDocument, sourceDocument, ConflictingStylesResolutionMode.UseTargetStyle);

````
````VB.NET
Dim importer As New Telerik.Windows.Documents.Flow.Model.DocumentElementImporter(targetDocument, sourceDocument, ConflictingStylesResolutionMode.UseTargetStyle)

````

{{endregion}}

* __Use DocumentElementImporter__The __DocumentElementImporter__ class exposes the __Import<T>()__ method, which is used to prepare a document element from the source document for import into the target document. __Example 2__ demonstrates how you could work with this method, using the __DocumentElementImporter__ instance, created in __Example 1__.

#### Example 2:  Import a Document Element

{{source=..\SamplesCS\WordsProcessing\Editing\WordsProcessingCloneAndMerge.cs region=radwordsprocessing-editing-import-document-element_1}} 
{{source=..\SamplesVB\WordsProcessing\Editing\WordsProcessingCloneAndMerge.vb region=radwordsprocessing-editing-import-document-element_1}} 

````C#
            
Run run = targetDocument.EnumerateChildrenOfType<Run>().First();
Run importedRun = importer.Import<Run>(run);

````
````VB.NET
Dim run As Run = targetDocument.EnumerateChildrenOfType(Of Run)().First()
Dim importedRun As Run = importer.Import(Of Run)(run)

````

{{endregion}}

Now you could insert the imported document element into the target document through the RadFlowDocumentEditor class. How this could be achieved is described [here]({%slug winforms/wordsprocessing/editing/radflowdocumenteditor%}).

* __Style Repositories Merging__ The merging of the styles between the two documents (target and source) is executed when the Import() method is invoked for the first time.

* __Use Cases__

     In __Table 1__ is described the behavior of the __Import<T>()__ method of __DocumentElementImporter__ in different scenarios.

>caption Table 1

| Action | Result |
| ------ | ------ |
|Invoke Import() method with a document element.|Returns the document element cloned.|
|Invoke Import() method with a paragraph, which contains unpaired annotation marker (e.g. *there is a Bookmark, which is spanned between two paragraphs, one of which is passed as a parameter).* |Returns the paragraph and all its inlines cloned. __The unpaired annotation marker is cleared.__ |
|Invoke Import() method with a section, which contains paragraphs which contain by their side unpaired annotations (e.g. *there is a Bookmark, which is spanned between two paragraphs and their parent section is passed as a parameter).* |Returns the section and all its children cloned. The annotation markers are not cleared.|
|Invoke Import() method with a paragraph, which has a style, renamed during the styles merging.|Returns the paragraph and all its children cloned with the correctly renamed StyleId property.|
|Invoke Import() method with a paragraph, which has a style, renamed during the styles merging multiple times.|Returns the paragraph and all its children cloned with the correctly renamed StyleId property.|
|Invoke Import() method with a document element, which is not a child of the source document.|Throws an __InvalidOperationException.__ |

# See Also

 * [Document Model]({%slug winforms/wordsprocessing/model%})

 * [Clone and merge]({%slug winforms/wordsprocessing/editing/clone-and-merge%})
