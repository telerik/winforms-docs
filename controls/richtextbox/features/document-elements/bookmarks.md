---
title: Bookmarks
page_title: Bookmarks - UI for WinForms Documentation
description: Bookmarks
slug: winforms/richtextbox-(obsolete)/features/document-elements/bookmarks
tags: bookmarks
published: True
position: 8
previous_url: richtextbox-features-document-elements-bookmarks
---

# Bookmarks

__Bookmarks__ are a powerful tool for marking parts of the document, which can be later retrieved and reviewed. They can be added to the document both programmatically and via the UI. You can also have [hyperlinks]({%slug winforms/richtextbox-(obsolete)/features/document-elements/hyperlink%}) pointing to the annotations in the document. This is very convenient, as it provides the means for easier navigation in the document and enables features like table of contents.

## Adding Bookmarks via the UI

__Bookmarks__ can be inserted in the document and removed through the __ManageBookmarksDialog__ of RadRichTextBox.![richtextbox-features-document-elements-bookmarks 001](images/richtextbox-features-document-elements-bookmarks001.png)

## Using Bookmarks Programmatically

The document elements that encapsulate the bookmarks functionality are __BookmarkRangeStart__ and __BookMarkRangeEnd__, which are placed at the start and the end of the bookmark respectively. Some of the useful methods that RadRichTextBox and RadDocument expose are:

* this.editor.__InsertBookmark__(string bookmarkName) – inserts a Bookmark with the name specified. If there is selection in the document, the BookmarkRangeStart will be inserted just before the first selected element and the BookmarkRangeEnd will be added at the end of the first selection range.

* this.editor.Document.__GoToBookmark__ (__string__ bookmarkName)
this.editor.Document.__GoToBookmark__ (__BookmarkRangeStart__ bookmarkStart)
Both methods move the caret to the bookmark specified. As bookmarks with the same name cannot be inserted in the same document, the name of the bookmark can be used as an identifier.

* this.editor.Document.Selection.__SelectAnnotationRange__(__AnnotationRangeStart__ annotationStart) – selects the annotation passed as parameter. Particularly useful, as most methods of RadRichTextBox and RadDocument operate on the selection. For example, if you invoke this.editor.Delete(false), the text of the Bookmark along with the Bookmark itself will be erased.

* this.editor.__DeleteBookmark__(__string__ bookmarkName)
this.editor.__DeleteBookmark__(__BookmarkRangeStart__ bookmarkRangeStart) 
These two methods remove the bookmark. The text in the document between the BookmarkRangeStart and BookmarkRangeEnd is __not__ deleted.

* this.editor.Document.__GetAllBookmarks__() – returns an IEnumerable<BookmarkRangeStart> containing all BookmarkRangeStarts.

* this.editor.Document.__EnumerateChildrenOfType__<__BookmarkRangeStart__>() – returns all Bookmarks in the document. This method can be used on document elements other than RadDocument, in case you want to detect all bookmarks in a limited part of the document, e.g. a Paragraph or a Table.

You can also add Bookmarks in a document you are creating manually. As both __BookmarkRangeStart__ and __BookMarkRangeEnd__ inherit from __Inline__, they can be added to the Inlines property of a Paragraph, just like any other Inline. You can also have document positions go to the start or end of the Bookmark and perform non-standard operations. 

For example, you can keep a Dictionary<string, string> mapping each bookmark name to another string and substitute a bookmark with the corresponding text using the following method:

{{source=..\SamplesCS\RichTextBox\Features\Document Elements\RichTextBoxBookmarks.cs region=ReplaceContentOfBookmark}} 
{{source=..\SamplesVB\RichTextBox\Features\Document Elements\RichTextBoxBookmarks.vb region=ReplaceContentOfBookmark}} 

````C#
Dictionary<string, string> bookmarksToContent = new Dictionary<string, string>();
private void ReplaceContentOfBookmark(string bookmarkName)
{
    BookmarkRangeStart bookmark = this.radRichTextBox1.Document.GetBookmarkByName(bookmarkName);
    this.radRichTextBox1.Document.Selection.SelectAnnotationRange(bookmark);
    this.radRichTextBox1.Document.Delete(false);
    this.radRichTextBox1.Insert(bookmarksToContent[bookmarkName]);
}

````
````VB.NET
Private bookmarksToContent As New Dictionary(Of String, String)()
Private Sub ReplaceContentOfBookmark(bookmarkName As String)
    Dim bookmark As BookmarkRangeStart = Me.RadRichTextBox1.Document.GetBookmarkByName(bookmarkName)
    Me.RadRichTextBox1.Document.Selection.SelectAnnotationRange(bookmark)
    Me.RadRichTextBox1.Document.Delete(False)
    Me.RadRichTextBox1.Insert(bookmarksToContent(bookmarkName))
End Sub

````

{{endregion}}

If you want to preserve the bookmarks in the document and only change the text between the BookmarkRangeStart and BookmarkRangeEnd document elements, you can do so like this:

{{source=..\SamplesCS\RichTextBox\Features\Document Elements\RichTextBoxBookmarks.cs region=ChangeAllBookmarks}} 
{{source=..\SamplesVB\RichTextBox\Features\Document Elements\RichTextBoxBookmarks.vb region=ChangeAllBookmarks}} 

````C#
private void ChangeAllBookmarks(RadRichTextBox radRichTextBox)
{
    BookmarkRangeStart[] bookmarks = radRichTextBox.Document.GetAllBookmarks().ToArray<BookmarkRangeStart>();
    DocumentPosition start = new DocumentPosition(radRichTextBox.Document);
    DocumentPosition end = new DocumentPosition(radRichTextBox.Document);
    foreach (BookmarkRangeStart item in bookmarks)
    {
        radRichTextBox.Document.GoToBookmark(item);
        start.MoveToInline(item.FirstLayoutBox as InlineLayoutBox, 0);
        end.MoveToInline(item.End.FirstLayoutBox as InlineLayoutBox, 0);
        start.MoveToNextInline();
        radRichTextBox.Document.Selection.SetSelectionStart(start);
        radRichTextBox.Document.Selection.AddSelectionEnd(end);
        radRichTextBox.Delete(false);
        radRichTextBox.Insert(bookmarksToContent[item.Name]);
    }
}

````
````VB.NET
Private Sub ChangeAllBookmarks(radRichTextBox As RadRichTextBox)
    Dim bookmarks As BookmarkRangeStart() = radRichTextBox.Document.GetAllBookmarks().ToArray()
    Dim start As New DocumentPosition(radRichTextBox.Document)
    Dim [end] As New DocumentPosition(radRichTextBox.Document)
    For Each item As BookmarkRangeStart In bookmarks
        radRichTextBox.Document.GoToBookmark(item)
        start.MoveToInline(TryCast(item.FirstLayoutBox, InlineLayoutBox), 0)
        [end].MoveToInline(TryCast(item.[End].FirstLayoutBox, InlineLayoutBox), 0)
        start.MoveToNextInline()
        radRichTextBox.Document.Selection.SetSelectionStart(start)
        radRichTextBox.Document.Selection.AddSelectionEnd([end])
        radRichTextBox.Delete(False)
        radRichTextBox.Insert(bookmarksToContent(item.Name))
    Next
End Sub

````

{{endregion}}
