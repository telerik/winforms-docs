---
title: Overview
page_title: Model | UI for WinForms Documentation
description: Model
slug: winforms/wordsprocessing/model
tags: model
published: True
position: 0
previous_url: wordsprocessing-model 
---

# Model



[RadFlowDocument]({%slug winforms/wordsprocessing/model/radflowdocument%}) describes flow document (document designed to dynamically adjust its layout according to the available size). This article explains in details the structure of __RadFlowDocument__'s document model.
      

## Document Elements

RadFlowDocument can contain various types of document elements, all of them inheriting [DocumentElementBase ](http://www.telerik.com/help/winforms/t_telerik_windows_documents_flow_model_documentelementbase.html) abstract class. The hierarchy is presented in the following diagram, where abstract classes are denoted in blue:

![wordsprocessing-model 004](images/wordsprocessing-model004.png)

Every document element is associated with an instance of __RadFlowDocument__ since its creation. This link is permanent and  attempts to move document elements from one document to another result in exception; cloning can be used instead to create deep copy of an element associated to another instance of RadFlowDocument. Current associated document is stored in the [Document](http://www.telerik.com/help/winforms/p_telerik_windows_documents_flow_model_documentelementbase_document.html) property.
        

## Composition of Document Elements

__RadFlowDocument__ represents a tree of document elements containing each other through a set of properties and collections. Possible containments are described in the following diagram, where document elements are denoted in black, collections in orange, and properties in green:

![wordsprocessing-model 005](images/wordsprocessing-model005.png)

* RadFlowDocument contains collection of [Sections](http://www.telerik.com/help/winforms/p_telerik_windows_documents_flow_model_radflowdocument_sections.html).
            

* [Section]({%slug winforms/wordsprocessing/model/section%}) contains collection of [Blocks](http://www.telerik.com/help/winforms/properties_t_telerik_windows_documents_flow_model_blockbase.html) (Paragraphs and Tables), as well as three Headers and three Footers – one default, one for even pages and one for first section page.
            

* [Paragraph]({%slug winforms/wordsprocessing/model/paragraph%}) contains collection of [Inlines](http://www.telerik.com/help/winfroms/properties_t_telerik_windows_documents_flow_model_inlinebase.html) – [Runs]({%slug winforms/wordsprocessing/model/run%}), [ImageInlines]({%slug winforms/wordsprocessing/model/imageinline%}), [FloatingImages]({%slug winforms/wordsprocessing/model/floatingimage%}) and [FieldCharacters]({%slug winforms/wordsprocessing/model/fieldcharacter%}).
            

* [Table]({%slug winforms/wordsprocessing/model/table%}) contains collection of TableRows.
            

* [TableRow]({%slug winforms/wordsprocessing/model/tablerow%})  contains collection of TableCells.
            

* [TableCell]({%slug winforms/wordsprocessing/model/tablecell%}) contains collection of Blocks.
            

* [Headers and Footers]({%slug winforms/wordsprocessing/model/headers-and-footers%}) contain collection of Blocks.
            

### Common ways for traversing the links between document elements

Relationships between document elements can be additionally traversed using:
            

* [Parent](http://www.telerik.com/help/winforms/p_telerik_windows_documents_flow_model_documentelementbase_parent.html) property. This property contains reference to document's parent and is automatically set when element is added/removed as a child of another element.
                

* [EnumerateChildrenOfType<T>](http://www.telerik.com/help/winforms/methods_t_telerik_windows_documents_flow_model_documentelementbase.html) method. This method can be used to recursively traverse document tree and return all children of given type __T__.
                

# See Also

 * [RadFlowDocument]({%slug winforms/wordsprocessing/model/radflowdocument%})

 * [RadFlowDocument API Reference](http://www.telerik.com/help/winforms/allmembers_t_telerik_windows_documents_flow_model_radflowdocument.html)

 * [Clone and Merge]({%slug winforms/wordsprocessing/editing/clone-and-merge%})
