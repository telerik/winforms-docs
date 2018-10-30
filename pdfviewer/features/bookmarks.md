---
title: Bookmarks (Outlines)
page_title: Bookmarks (Outlines)
description: Bookmarks (Outlines)
slug: radpdfviewer-features-bookmarks
tags: bookmarks, outlines
published: True
position: 0
---

# Bookmarks (Outlines)

**RadPdfViewer** enables you to open documents and show the bookmarks they contain in a bookmarks panel. Bookmarks or Outlines are a tree-structured hierarchy that the reader presents as a visual table of contents separated from the actual content as a side panel. The Bookmark items allow users, by interacting with them, to navigate through parts of the document and/or invoke different actions.  

>tip The Bookmarks (Outlines) functionality is available as of **R3 2018 SP1**. 


>caption Figure 1: Bookmarks in RadPdfViewer

![RadPdfViewer_Bookmarks_01](images/RadPdfViewer_Bookmarks_01.png)


## Visualizing Bookmarks

In **RadPdfViewer**, the bookmarks are shown via using a **RadTreeView** simulating a navigation pane. This is a control representing an area that can display different navigation panels, including the Bookmarks of the PDF document which serve as a table of contents. The bookmarks are displayed in the same container in which you can find the [thumbnails]({%slug winforms/pdfviewer/thumbnails%}). The **ThumbnailListWidth** property controls the width of the panel that hosts the thumbnails and the bookmarks.

You can access the tree-view that visualizes the bookmarks by the ContainerElement.**BookmarksTree** property. Each **RadTreeNode** stores in its **Tag** property the associated **Telerik.Windows.Documents.Fixed.Model.Navigation.BookmarkItem**. Each **BookmarkItem** offers the following properties:
* **Title** - gets or set the title of the bookmark item.
* **Destination** - gets or sets the Telerik.Windows.Documents.Fixed.Model.Navigation.Destination associated with the bookmark.
* **IsExpanded** - gets or sets a value indicating whether the bookmark is expanded. 

## Methods

The following public methods are exposed to **RadPdfViewer**:

* **ShowBookmarks** - shows the Pdf document's bookmarks.
* **HideBookmarks** - hides the Pdf document's Bookmarks
* **GetCurrentBookmark** - gets the nearest bookmark from the Pdf document's. 
* **SyncCurrentBookmark** - syncs the nearest bookmark from the Pdf document's to the tree.


## See Also

* [Thumbnails]({%slug winforms/pdfviewer/thumbnails%})
* [Digital Signature]({%slug radpdfviewer-features-digital-signature%})
