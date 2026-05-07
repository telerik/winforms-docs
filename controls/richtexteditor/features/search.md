---
title: Search
page_title: Search - RadRichTextEditor
description: RadRichTextEditor is a control that is able to display and edit rich-text content including formatted text arranged in pages, paragraphs, spans (runs), tables, etc.
slug: winforms/richtexteditor-/features/search
tags: search
published: True
position: 9
previous_url: richtexteditor-features-search
---

# Search

__RadRichTextEditor__ supports searching the contents of the document along with providing some methods for manipulating the selection. Used in combination, they become quite a powerful tool enabling scenarios like highlighting of specific parts of the document or replacing words and collocations.
        
>tip To learn more about the selection API read the [Selection]({%slug winforms/richtexteditor-/features/selection%}) topic.
>

The simplest scenario – finding a string in the content of the document can be implemented with the following code:

<snippet id='richtexteditor-search-search-cs' />
<snippet id='richtexteditor-search-search-vb' />



Note that the __FindAll()__ method of the DocumentTextSearch class takes a string as an argument, but regards it as a regular expression. For example, searching __“[a-z]*control[a-z]*”__ will find all words that contain the word "control" as a substring. Thus, if you have the word "Telerik UI" in the document, executing the __SelectAllMatches("control")__ will result in only these six letters being selected, as opposed to the whole word "Telerik UI" being selected when __SelectAllMatches("[a-z]*control[a-z]*")__.
        
You can use all kinds of regular expressions, such as __"(asp|silverlight)\s*control(s)?"__ (which would match both "ASP Controls" and "SilverlightControl"), __[a-z]*(.)\1[a-z]*__ (which finds all words that have a doubled letter), and basically   everything else you can come up with. Make sure to use correct expressions if you want to utilize this functionality, or escape the string in case you want a simple search for a word that can contain special symbols like "?", "+", "{" etc. This can be automatically done by invoking the following code before proceeding with the search.

<snippet id='richtexteditor-search-regex-cs' />
<snippet id='richtexteditor-search-regex-vb' />



Selecting the results of the search is particularly useful, as most formatting commands that are executed on __RadRichTextEditor__ (or its document) are selection-based, i.e. they operate on the currently selected parts of the document. You can use that fact by invoking one of these commands after having selected the words in the document. Here is an example.
 
<snippet id='richtexteditor-search-style-cs' />
<snippet id='richtexteditor-search-style-vb' />



Most of the time, you would like to remove the selection at the end of the operations, which is done by calling the __Clear()__ method of the __DocumentSelection__ object.

<snippet id='richtexteditor-search-clear-cs' />
<snippet id='richtexteditor-search-clear-vb' />



>caution You should have in mind that performing these actions in __DocumentContentChanged__ event handler will not only raise performance issues, but will also produce an infinite loop, as the changes of the formatting are also considered document changes.
>

On a side note, the find and select functionality can be extended in order to implement a replace of all occurrences matching the searched string with another string. Here is a sample code:

<snippet id='richtexteditor-search-allmatches-cs' />
<snippet id='richtexteditor-search-allmatches-vb' />



There is a need to create new __TextRanges__ with document positions that track the changes to the document, because the deletion and  insertion affects the document positions. The document positions created using the 2-parameter constructor with the second parameter set to "*true*" keep their relative position as the document changes. They, however, have to be manually disposed of, as they subscribe to events in order to track the changes to the document and must detach their handlers at the end of their use. This is done using the __Dispose__ method. If you skip that step, there will be memory leaks in your application.
        
# See Also

* [How to Search and Highlight Text in RichTextEditor]({%slug rte-highligh-search-text%})
