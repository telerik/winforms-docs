---
title: Hyperlink
page_title: Hyperlink | UI for WinForms Documentation
description: Hyperlink
slug: winforms/spread-processing/features/hyperlink
tags: hyperlink
published: True
position: 8
---

# Hyperlink

__Hyperlinks__ enable quick access to web pages, places in the workbook or email addresses. This article demonstrates how to use the feature in terms of the API exposed by the document model.

* [HyperlinkCollection](#hyperlinkcollection)

* [Add Hyperlink](#add-hyperlink)

* [Search for Hyperlink](#search-for-hyperlink)

* [Remove Hyperlink](#remove-hyperlink)

## HyperlinkCollection

Each worksheet object maintains a collection of the hyperlinks it contains. This collection can be reached through the __Hyperlinks__ property of the Worksheet class. This property is of type __HyperlinkCollection__ and facilitates the process of searching, adding and removing hyperlinks.

The __SpreadsheetHyperlink__ class is the representation of hyperlink in the document model. The class exposes the following properties:

* __Range__: Property of type CellRange; indicates the range of cells that holds the hyperlink info.

* __HyperlinkInfo__: Property of type __HyperlinkInfo__; indicates the type of the hyperlink (Url, MailTo, InDocument) and contains information about the target of the hyperlink. As the description of __HyperlinkInfo__ suggests, there are three supported types of hyperlinks:

* __Url__: The Url hyperlink refers to a page on the internet.

* __MailTo__: The MailTo hyperlink contains an e-mail address and, optionally, a subject.

* __InDocument__: The InDocument hyperlink holds a reference to a cell range in string format, e.g. A1:B3.

Depending on the type of the hyperlink, the __HyperlinkInfo__ object may contain additional information about the target. The class exposes the string properties Address, EmailSubject, ScreenTip and SubAddress and each hyperlink type requires a set of these properties to be filled. Note, however, that some of them are mutually exclusive. For example, if you have a Url hyperlink, you do not need to specify the EmailSubject.

You can create instances of each of those types, using the static methods of the __HyperlinkInfo__ class.

__Example 1__ creates a hyperlink to a web address.

#### Example 1: Create link to web address

{{source=..\SamplesCS\RadSpreadProcessing\Features\RadSpreadProcessingHyperlink.cs region=radspreadprocessing-features-hyperlink_0}} 
{{source=..\SamplesVB\RadSpreadProcessing\Features\RadSpreadProcessingHyperlink.vb region=radspreadprocessing-features-hyperlink_0}} 

````C#
            HyperlinkInfo webAddres = HyperlinkInfo.CreateHyperlink("http://telerik.com", "Telerik");
````
````VB.NET
        Dim webAddres As HyperlinkInfo = HyperlinkInfo.CreateHyperlink("http://google.com", "Google")
        '
````

{{endregion}} 

__Example 2__ creates a hyperlink to a cell range somewhere in the document.

#### Example 2: Create link to place in the document

{{source=..\SamplesCS\RadSpreadProcessing\Features\RadSpreadProcessingHyperlink.cs region=radspreadprocessing-features-hyperlink_1}} 
{{source=..\SamplesVB\RadSpreadProcessing\Features\RadSpreadProcessingHyperlink.vb region=radspreadprocessing-features-hyperlink_1}} 

````C#
            HyperlinkInfo inDocument = HyperlinkInfo.CreateInDocumentHyperlink("A1:B3", "Go to A1:B3");
````
````VB.NET
        Dim inDocument As HyperlinkInfo = HyperlinkInfo.CreateInDocumentHyperlink("A1:B3", "Go to A1:B3")
        '
````

{{endregion}} 

__Example 3__ create a hyperlink to an email address.

#### Example 3: Create link to email address

{{source=..\SamplesCS\RadSpreadProcessing\Features\RadSpreadProcessingHyperlink.cs region=radspreadprocessing-features-hyperlink_2}} 
{{source=..\SamplesVB\RadSpreadProcessing\Features\RadSpreadProcessingHyperlink.vb region=radspreadprocessing-features-hyperlink_2}} 

````C#
            HyperlinkInfo mailto = HyperlinkInfo.CreateMailtoHyperlink("someOne@someCompany.com", "someSubject", "Mail to someOne");
````
````VB.NET
        Dim mailto As HyperlinkInfo = HyperlinkInfo.CreateMailtoHyperlink("someOne@someCompany.com", "someSubject", "Mail to someOne")
        '
````

{{endregion}} 

## Add Hyperlink

To add a hyperlink, you need to specify a cell range that will contain the hyperlink and a hyperlink info that will determine the type of the hyperlink.

__Example 4__ assigns the hyperlink created in __Example 1__ to A1:
        
#### Example 4: Add hyperlink

{{source=..\SamplesCS\RadSpreadProcessing\Features\RadSpreadProcessingHyperlink.cs region=radspreadprocessing-features-hyperlink_3}} 
{{source=..\SamplesVB\RadSpreadProcessing\Features\RadSpreadProcessingHyperlink.vb region=radspreadprocessing-features-hyperlink_3}} 

````C#
            CellIndex a1Index = new CellIndex(0, 0);
            SpreadsheetHyperlink spreadsheetHyperlink = worksheet.Hyperlinks.Add(a1Index, webAddres);
````
````VB.NET
        Dim a1Index As New CellIndex(0, 0)
        Dim spreadsheetHyperlink As SpreadsheetHyperlink = worksheet.Hyperlinks.Add(a1Index, webAddres)
        '
````

{{endregion}} 

## Search for Hyperlink

There are several ways you can retrieve hyperlinks from the __HyperlinkCollection__ depending on their position relative to a given cell range.
__Example 5__ defines two indexes and then a cell range out of those indexes.
        
#### Example 5: Define cell range

{{source=..\SamplesCS\RadSpreadProcessing\Features\RadSpreadProcessingHyperlink.cs region=radspreadprocessing-features-hyperlink_4}} 
{{source=..\SamplesVB\RadSpreadProcessing\Features\RadSpreadProcessingHyperlink.vb region=radspreadprocessing-features-hyperlink_4}} 

````C#
            CellIndex a1Index = new CellIndex(0, 0);
            CellIndex b3Index = new CellIndex(2, 1);
            CellRange a1b3Range = new CellRange(a1Index, b3Index);
````
````VB.NET
        Dim a1Index As New CellIndex(0, 0)
        Dim b3Index As New CellIndex(2, 1)
        Dim a1b3Range As New CellRange(a1Index, b3Index)
        '
````

{{endregion}} 

1. __Example 6__ gets all hyperlinks the ranges of which are contained in the cell range from __Example 5__.

#### Example 6: Get hyperlinks in cell range

{{source=..\SamplesCS\RadSpreadProcessing\Features\RadSpreadProcessingHyperlink.cs region=radspreadprocessing-features-hyperlink_5}} 
{{source=..\SamplesVB\RadSpreadProcessing\Features\RadSpreadProcessingHyperlink.vb region=radspreadprocessing-features-hyperlink_5}} 

````C#
            IEnumerable<SpreadsheetHyperlink> containingHyperlinks = worksheet.Hyperlinks.GetContainingHyperlinks(a1b3Range);
````
````VB.NET
        Dim containingHyperlinks As IEnumerable(Of SpreadsheetHyperlink) = worksheet1.Hyperlinks.GetContainingHyperlinks(a1b3Range)
        '
````

{{endregion}} 

>note The __GetContainingHyperlinks()__ method has an overload which accepts a collection of cell ranges.
>

1. __Example 7__ gets all hyperlinks the ranges of which intersect with the cell range from __Example 5__.

#### Example 7: Get hyperlinks intersecting with cell range

{{source=..\SamplesCS\RadSpreadProcessing\Features\RadSpreadProcessingHyperlink.cs region=radspreadprocessing-features-hyperlink_6}} 
{{source=..\SamplesVB\RadSpreadProcessing\Features\RadSpreadProcessingHyperlink.vb region=radspreadprocessing-features-hyperlink_6}} 

````C#
            IEnumerable<SpreadsheetHyperlink> intersectingHyperlinks = worksheet.Hyperlinks.GetIntersectingHyperlinks(a1b3Range);
````
````VB.NET
        Dim intersectingHyperlinks As IEnumerable(Of SpreadsheetHyperlink) = worksheet1.Hyperlinks.GetIntersectingHyperlinks(a1b3Range)
        '
````

{{endregion}} 

1. __Example 8__ gets the last added hyperlink that intersects with the cell range from __Example 5__.

#### 8: Get last hyperlink intersecting with cell range_

{{source=..\SamplesCS\RadSpreadProcessing\Features\RadSpreadProcessingHyperlink.cs region=radspreadprocessing-features-hyperlink_7}} 
{{source=..\SamplesVB\RadSpreadProcessing\Features\RadSpreadProcessingHyperlink.vb region=radspreadprocessing-features-hyperlink_7}} 

````C#
            bool canGetHyperlink = worksheet.Hyperlinks.TryGetHyperlink(a1Index, out spreadsheetHyperlink);
````
````VB.NET
        Dim canGetHyperlink As Boolean = worksheet1.Hyperlinks.TryGetHyperlink(a1Index, spreadsheetHyperlink1)
        '
````

{{endregion}} 

>note The __TryGetHyperlink__ method has an overload that accepts a __CellIndex__ instead of __CellRange__ .
>

1. __Example 9__ gets the hyperlink which range matches the cell range from __Example 5__.

#### Example 9: Get hyperlink exactly matching cell range

{{source=..\SamplesCS\RadSpreadProcessing\Features\RadSpreadProcessingHyperlink.cs region=radspreadprocessing-features-hyperlink_8}} 
{{source=..\SamplesVB\RadSpreadProcessing\Features\RadSpreadProcessingHyperlink.vb region=radspreadprocessing-features-hyperlink_8}} 

````C#
            bool canGetHyperlinkExact = worksheet.Hyperlinks.TryGetHyperlinkExact(a1b3Range, out spreadsheetHyperlink);
````
````VB.NET
        Dim canGetHyperlinkExact As Boolean = worksheet1.Hyperlinks.TryGetHyperlinkExact(a1b3Range, spreadsheetHyperlink1)
        '
````

{{endregion}} 

## Remove Hyperlink

To remove a hyperlink you need to retrieve a __SpreadsheetHyperlink__ object and then remove it from the hyperlinks collection.

__Example 10__ removes a hyperlink.

#### Example 10: Remove hyperlink

{{source=..\SamplesCS\RadSpreadProcessing\Features\RadSpreadProcessingHyperlink.cs region=radspreadprocessing-features-hyperlink_9}} 
{{source=..\SamplesVB\RadSpreadProcessing\Features\RadSpreadProcessingHyperlink.vb region=radspreadprocessing-features-hyperlink_9}} 

````C#
            SpreadsheetHyperlink spreadsheetHyperlink;
            if (worksheet.Hyperlinks.TryGetHyperlink(a1Index, out spreadsheetHyperlink))
            {
                worksheet.Hyperlinks.Remove(spreadsheetHyperlink);
            }
````
````VB.NET
        Dim spreadsheetHyperlink1 As SpreadsheetHyperlink
        If worksheet1.Hyperlinks.TryGetHyperlink(a1Index, spreadsheetHyperlink1) Then
            worksheet1.Hyperlinks.Remove(spreadsheetHyperlink1)
        End If
        '
````

{{endregion}}
