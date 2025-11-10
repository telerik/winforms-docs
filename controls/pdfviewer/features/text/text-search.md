---
title: Text Search
page_title: Text Search - WinForms PdfViewer Control
description: WinForms PdfViewer supports search both through the UI and programmatically.
slug: winforms/pdfviewer/text/text-search
tags: text, search
published: True
position: 2
previous_url: pdfviewer-text-text-search
---

# Text Search

**RadPdfViewer** provides comprehensive text search functionality that supports both UI and programmatic search operations. Users can search for specific text within PDF documents using plain text strings or a regex for the search criteria.

## Search through the UI

In order to be able to select text from the UI, you can use [PdfViewerNavigator]({%slug winforms/pdfviewer/pdfviewernavigator%}). 

**RadPdfViewerNavigator** provides a built-in search functionality that allows users to search for text within PDF documents through an intuitive user interface. The navigator includes a search textbox and navigation buttons to find and navigate through search results.

    ![WinForms RadPdfViewer Search](../images/pdfviewer-text-search.png)

## Programmatic Search

**RadPdfViewer** provides a comprehensive set of Find methods for programmatic text search. These methods allow you to search for text throughout the document or within specific ranges, with various search options.

### Find() Overloads

The Find method searches forward through the document:

* **Find(string text)** - Finds the specified text in the current document using default search options.

* **Find(string text, TextSearchOptions options)** - Finds the specified text using specified search options that control case sensitivity, whole word matching, and other parameters.

* **Find(string text, TextSearchOptions options, TextPosition startPosition)** - Finds the specified text starting from a specific position. The search begins from the provided start position and moves forward through the document.

* **Find(string text, TextSearchOptions options, TextRange range)** - Finds the specified text within a specific range. The search is limited to the text content within the provided range boundaries.

### FindPrevious() Overloads

The FindPrevious methods search backward through the document:

* **FindPrevious(string text)** - Finds the previous occurrence of the specified text using default search options. The search begins from the current selection or position and moves backward.

* **FindPrevious(string text, TextSearchOptions options)** - Finds the previous occurrence using specified search options. The search moves backward through the document.

* **FindPrevious(string text, TextSearchOptions options, TextPosition startPosition)** - Finds the previous occurrence starting from a specific position. The search begins from the provided start position and moves backward.

* **FindPrevious(string text, TextSearchOptions options, TextRange range)** - Finds the previous occurrence within a specific range. The search moves backward through the text content within the provided range boundaries.

### FindAll() Overloads

The FindAll methods return all occurrences of the search text:

* **FindAll(string text)** - Finds all occurrences of the specified text in the document using default search options.

* **FindAll(string text, TextSearchOptions options)** - Finds all occurrences using specified search options. Returns all matching results found throughout the entire document.

* **FindAll(string text, TextSearchOptions options, TextPosition startPosition)** - Finds all occurrences starting from a specific position. Returns all matching results from the start position to the end of the document.

* **FindAll(string text, TextSearchOptions options, TextRange range)** - Finds all occurrences within a specific range. Returns all matching results found within the boundaries of the provided text range.

### SearchResult class

All Find methods return a **SearchResult** object (or a collection of SearchResult objects for `FindAll()`). This class exposes the following public members that provide information about the results.
    * **TextRange**: An object describing the start and end positions of the match. This object exposed the following properties.
    * **StartPosition**: An object that contains the start index and location of the current match.
    * **EndPosition**: An object that contains the end index and location of the current match.
    * **Result**: A string value representing the match.
    * **GetWordBoundingRect()**: Gets the rectangle of the current match.
    * **GetResultPage()**: Gets the page where the current result is.
    * **SearchResult.NotFound** is returned when no match is found.

#### Example: Searching in a document

{{source=..\SamplesCS\PdfViewer\PdfTextManipulation.cs region=Find}} 
{{source=..\SamplesVB\PdfViewer\PdfTextManipulation.vb region=Find}} 

````C#
SearchResult result = this.radPdfViewer1.Find("RadPdfViewer", TextSearchOptions.Default);
 if (result == SearchResult.NotFound)
 {
     RadMessageBox.Show("String not found");
 }
 else
 {
     this.radPdfViewer1.Select(result);
 }

````
````VB.NET
SearchResult result = this.radPdfViewer1.Find("RadPdfViewer", TextSearchOptions.Default);
 if (result == SearchResult.NotFound)
 {
     RadMessageBox.Show("String not found");
 }
 else
 {
     this.radPdfViewer1.Select(result);
 }

````

{{endregion}}

### TextSearchOptions

The **TextSearchOptions** class provides several properties to control the search behavior:

- **CaseSensitive** - Determines whether the search is case-sensitive
- **UseRegularExpression** - Enables regular expression pattern matching
- **WholeWordsOnly** - Matches only complete words

# See Also

* [Getting Started]({%slug winforms/pdfviewer/getting-started%})
* [Logical Structure]({%slug winforms/pdfviewer/structure/logical-structure%})
* [Visual Structure]({%slug winforms/pdfviewer/structure/visual-structure%})
* [Properties, Methods and Events]({%slug winforms/pdfviewer/properties-methods-and-events%})