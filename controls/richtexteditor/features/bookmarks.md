---
title: Bookmarks
page_title: Bookmarks - WinForms RichTextEditor Control
description: Bookmarks in WinForms RichTextEditor are a powerful tool for marking parts of the document, which can be later retrieved and reviewed. 
slug: winforms/richtexteditor-/features/bookmarks
tags: bookmarks
published: True
position: 9
previous_url: richtexteditor-features-bookmarks
---

# Bookmarks

__Bookmarks__ are a powerful tool for marking parts of the document, which can be later retrieved and reviewed. They can be added to the document both programmatically and via the UI. You can also have [hyperlinks]({%slug winforms/richtexteditor-/features/hyperlink%}) pointing to the annotations in the document. This is very convenient, as it provides the means for easier navigation in the document and enables features like table of contents.
      
## Adding Bookmarks via the UI

__Bookmarks__ can be inserted in the document and removed through the __ManageBookmarksDialog__, which is opened on pressing the **Bookmark** button in the **Insert** tab of the default **RadRichTextEditorRibbonUI**.

![WinForms RadRichTextEditor Adding Bookmarks ](images/richtexteditor-features-bookmarks001.png)

As all pop-ups that **RadRichTextEditor** uses, the **ManageBookmarksDialog** can be completely replaced by another, user-defined dialog implementing an interface.

## Using Bookmarks Programmatically

The document elements that encapsulate the bookmarks functionality are __BookmarkRangeStart__ and __BookMarkRangeEnd__, which are placed at the start and the end of the bookmark respectively. Some of the useful methods that **RadRichTextEditor** and **RadDocument** expose are:
        
* __InsertBookmark__(__string bookmarkName__) – inserts a bookmark with the name specified. If there is selection in the document, the **BookmarkRangeStart** will be inserted just before the first selected element and the **BookmarkRangeEnd** will be added at the end of the first selection range.
            
* Document.__GoToBookmark__(__string bookmarkName__) / Document.__GoToBookmark__(__BookmarkRangeStart bookmarkStart__): Both methods move the caret to the bookmark specified. As bookmarks with the same name cannot be inserted in the same document, the name of the bookmark can be used as an identifier.
            
* Document.Selection.__SelectAnnotationRange__(__AnnotationRangeStart annotationStart__) – selects the annotation passed as parameter. Particularly useful, as most methods of **RadRichTextEditor** and **RadDocument** operate on the selection. For example, if you invoke Delete(false), the text of the bookmark along with the bookmark itself will be erased.
            
* __DeleteBookmark__(__string bookmarkName__) / __DeleteBookmark__(__BookmarkRangeStart bookmarkRangeStart__): These two methods remove the bookmark. The text in the document between the **BookmarkRangeStart** and **BookmarkRangeEnd** is __not__ deleted.
            
* Document.__GetAllBookmarks__() – returns an **IEnumerable&lt;BookmarkRangeStart&gt;** containing all **BookmarkRangeStarts**.
            
* Document.__EnumerateChildrenOfType&lt;BookmarkRangeStart&gt;()__ – returns all bookmarks in the document. This method can be used on document elements other than **RadDocument**, in case you want to detect all bookmarks in a limited part of the document, e.g. a **Paragraph** or a **Table**.
            
You can also add bookmarks in a document you are creating manually. As both __BookmarkRangeStart__ and __BookMarkRangeEnd__ inherit from __Inline__, they can be added to the **Inlines** property of a **Paragraph**, just like any other **Inline**. You can also have document positions go to the start or end of the bookmark and perform non-standard operations.

<snippet id='richtexteditor-bookmarks-bookmarkruntime-cs' />
<snippet id='richtexteditor-bookmarks-bookmarkruntime-vb' />



For example, you can keep a **Dictionary<string, string>** mapping each bookmark name to another string and substitute a bookmark with the corresponding text using the following method:

<snippet id='richtexteditor-bookmarks-replace-cs' />
<snippet id='richtexteditor-bookmarks-replace-vb' />



If you want to preserve the bookmarks in the document and only change the text between the **BookmarkRangeStart** and **BookmarkRangeEnd** document elements, you can do so like this:

<snippet id='richtexteditor-bookmarks-change-cs' />
<snippet id='richtexteditor-bookmarks-change-vb' />



