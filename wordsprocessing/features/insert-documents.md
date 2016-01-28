---
title: Insert Documents
page_title: Insert Documents | UI for WinForms Documentation
description: Insert Documents
slug: winforms/wordsprocessing/features/insert-documents
tags: insert,documents
published: True
position: 1
previous_url: wordsprocessing-editing-insert-documents
---

# Insert Documents



With __RadWordsProcessing__, you have the ability to insert a document into another document at specified position.

## Inserting Documents at a Specific Position

You could merge documents at a specific position using the __InsertDocument()__ method of the [RadFlowDocumentEditor]({%slug winforms/wordsprocessing/editing/radflowdocumenteditor%}) class. When called, this method inserts the source document at the current editor position.

* __public void InsertDocument(RadFlowDocument sourceDocument)__

* __public void InsertDocument(RadFlowDocument sourceDocument, InsertDocumentOptions insertOptions)__

  * The *sourceDocument* variable represents the document, which should be inserted (merged) at the specified location.

    * [InsertDocumentOptions ](http://www.telerik.com/help/winforms/t_telerik_windows_documents_flow_model_editing_insertdocumentoptions.html): Represents the options, which should be used while inserting is performed. This class contains information about:

      * [ConflictingStylesResolutionMode ](http://www.telerik.com/help/winforms/t_telerik_windows_documents_flow_model_conflictingstylesresolutionmode.html): Determines how conflicts between styles should be resolved (rename the style of the source or keep the target settings). The default value is *RenameSourceStyle*.

      * InsertLastParagraphMarker: Determines whether the last paragraph marker (last paragraph formatting) should be inserted. If the value is *true*, then a new paragraph with same formatting will be inserted. Otherwise, only the inlines from that paragraph will be inserted. The default value is *true*.

__Example 1__ demonstrates how to use the __InsertDocument()__ method.

#### Example 1: Insert Source Document into Target Document

{{source=..\SamplesCS\WordsProcessing\Editing\WordsProcessingCloneAndMerge.cs region=radwordsprocessing-editing-insert-documents_0}} 
{{source=..\SamplesVB\WordsProcessing\Editing\WordsProcessingCloneAndMerge.vb region=radwordsprocessing-editing-insert-documents_0}} 

````C#
    
Telerik.Windows.Documents.Flow.Model.Editing.InsertDocumentOptions options = new Telerik.Windows.Documents.Flow.Model.Editing.InsertDocumentOptions();
options.ConflictingStylesResolutionMode = ConflictingStylesResolutionMode.UseTargetStyle;
options.InsertLastParagraphMarker = true;
	
Telerik.Windows.Documents.Flow.Model.Editing.RadFlowDocumentEditor editor = new Telerik.Windows.Documents.Flow.Model.Editing.RadFlowDocumentEditor(targetDocument);
editor.InsertDocument(sourceDocument, options);

````
````VB.NET
        
Dim options As New Telerik.Windows.Documents.Flow.Model.Editing.InsertDocumentOptions()
options.ConflictingStylesResolutionMode = ConflictingStylesResolutionMode.UseTargetStyle
options.InsertLastParagraphMarker = True
Dim editor As New Telerik.Windows.Documents.Flow.Model.Editing.RadFlowDocumentEditor(targetDocument)
editor.InsertDocument(sourceDocument, options)

````

{{endregion}}

## Behavior

__Table 1__ lists some scenarios where the InsertDocument() method could be used.

>caption Table 1

| Action | Result |
| ------ | ------ |
|Insert the source document in an empty document (without any sections).|All of the content of the source document will be inserted in the target one. The section properties will be obtained from the source document.|
|Insert the source document between runs. Source document contains a single section.|All of the blocks (Paragraphs and Tables) in the source document’s section will be inserted at the specific location. The section properties will be omitted. This means if the target document page orientation is portrait and the source is landscape, the result document will have portrait orientation.|
|Insert the source document between runs. Source document contains multiple sections.|All of the blocks in the source document’s first section will be inserted at the current editor position. All the next sections from the source will be inserted as well as separate sections. The last section in the result document will have section properties of the section from the target document where the editor position is when the InsertDocument() method is invoked.|
|Insert the source document at the beginning of the target document. Source document contains single section.|All of the blocks in the source document’s section will be inserted at the specific location. The section properties will be omitted. This means if the target document page orientation is portrait and the source is landscape, the result document will have portrait orientation.|
|Insert the source document at the beginning of the target document. Source document contains multiple sections.|All of the blocks in the source document’s first section will be inserted at the specific location. The whole next sections from the source document will be inserted as well as separate sections. The last section in the result document will have section properties of the insert target section.|
|Insert the source document at the end of the target document. Source document contains single section.|All of the blocks in the source document’s section will be inserted at the specific location. The section properties will be omitted. This means if the target document page orientation is portrait and the source is landscape, the result document will have portrait orientation.|
|Insert the source document at the end of the target document. Source document contains multiple sections.|Same as the above.|
|Insert the source document in a table cell.|An __InvalidOperationException__ is thrown.|
|Source document contains no Sections.|An __ArgumentException__ is thrown.|

# See Also

 * [RadFlowDocumentEditor]({%slug winforms/wordsprocessing/editing/radflowdocumenteditor%})

 * [Clone and Merge]({%slug winforms/wordsprocessing/editing/clone-and-merge%})

 * [Section]({%slug winforms/wordsprocessing/model/section%})

 * [Paragraph]({%slug winforms/wordsprocessing/model/paragraph%})
