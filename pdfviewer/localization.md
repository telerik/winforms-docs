---
title: Localization
page_title: Localization | UI for WinForms Documentation
description: Localization
slug: winforms/pdfviewer/localization
tags: localization
published: True
position: 11
---

# Localization

To localize __RadPdfViewer__ to display any text and messages in a specific language:

* Create a custom __PdfViewerLocalizationProvider__ class.

* Override the __GetLocalizedString(string id)__ method and provide a translation for the label and user messages. If a translation is not provided, the default value will be returned. This behavior is guaranteed by the call to the base __GetLocalizedString__ method in the default clause of the switch statement in the example.

Below is a sample implementation of an English localization provider:

{{source=..\SamplesCS\PdfViewer\PdfLocalization.cs region=localization}} 
{{source=..\SamplesVB\PdfViewer\PdfLocalization.vb region=localization}} 

````C#
public class MyLocalizationProvider : PdfViewerLocalizationProvider
{
    public override string GetLocalizedString(string id)
    {
        switch (id)
        {
            case PdfViewerStringId.ContextMenuCopy:
                return "&Copy";
            case PdfViewerStringId.ContextMenuSelectAll:
                return "Select &All";
            case PdfViewerStringId.ContextMenuDeselectAll:
                return "&Deselect All";
            case PdfViewerStringId.ContextMenuHand:
                return "&Hand";
            case PdfViewerStringId.ContextMenuSelection:
                return "&Selection";
            case PdfViewerStringId.ContextMenuPreviousPage:
                return "&Previous Page";
            case PdfViewerStringId.ContextMenuNextPage:
                return "&Next Page";
            case PdfViewerStringId.ContextMenuPrint:
                return "P&rint...";
            case PdfViewerStringId.ContextMenuFind:
                return "&Find Next";
            case PdfViewerStringId.NavigatorOpenButton:
                return "Open";
            case PdfViewerStringId.NavigatorPrintButton:
                return "Print";
            case PdfViewerStringId.NavigatorPreviousPageButton:
                return "Previous page";
            case PdfViewerStringId.NavigatorNextPageButton:
                return "Next page";
            case PdfViewerStringId.NavigatorCurrentPageTextBox:
                return "Current page";
            case PdfViewerStringId.NavigatorTotalPagesLabel:
                return "Total pages";
            case PdfViewerStringId.NavigatorZoomInButton:
                return "Zoom in";
            case PdfViewerStringId.NavigatorZoomOutButton:
                return "Zoom out";
            case PdfViewerStringId.NavigatorZoomDropDown:
                return "Zoom drop-down";
            case PdfViewerStringId.NavigatorHandToolButton:
                return "Pan";
            case PdfViewerStringId.NavigatorSelectToolButton:
                return "Selection";
            case PdfViewerStringId.NavigatorFindNextButton:
                return "Find next";
            case PdfViewerStringId.NavigatorFindPreviousButton:
                return "Find previous";
            case PdfViewerStringId.NavigatorSearchTextBox:
                return "Search";
            case PdfViewerStringId.NavigatorDefaultStrip:
                return "Default strip";
        }
        return base.GetLocalizedString(id);
    }
}

````
````VB.NET
Public Class MyLocalizationProvider
    Inherits PdfViewerLocalizationProvider
    Public Overrides Function GetLocalizedString(ByVal id As String) As String
        Select Case id
            Case PdfViewerStringId.ContextMenuCopy
                Return "&Copy"
            Case PdfViewerStringId.ContextMenuSelectAll
                Return "Select &All"
            Case PdfViewerStringId.ContextMenuDeselectAll
                Return "&Deselect All"
            Case PdfViewerStringId.ContextMenuHand
                Return "&Hand"
            Case PdfViewerStringId.ContextMenuSelection
                Return "&Selection"
            Case PdfViewerStringId.ContextMenuPreviousPage
                Return "&Previous Page"
            Case PdfViewerStringId.ContextMenuNextPage
                Return "&Next Page"
            Case PdfViewerStringId.ContextMenuPrint
                Return "P&rint..."
            Case PdfViewerStringId.ContextMenuFind
                Return "&Find Next"
            Case PdfViewerStringId.NavigatorOpenButton
                Return "Open"
            Case PdfViewerStringId.NavigatorPrintButton
                Return "Print"
            Case PdfViewerStringId.NavigatorPreviousPageButton
                Return "Previous page"
            Case PdfViewerStringId.NavigatorNextPageButton
                Return "Next page"
            Case PdfViewerStringId.NavigatorCurrentPageTextBox
                Return "Current page"
            Case PdfViewerStringId.NavigatorTotalPagesLabel
                Return "Total pages"
            Case PdfViewerStringId.NavigatorZoomInButton
                Return "Zoom in"
            Case PdfViewerStringId.NavigatorZoomOutButton
                Return "Zoom out"
            Case PdfViewerStringId.NavigatorZoomDropDown
                Return "Zoom drop-down"
            Case PdfViewerStringId.NavigatorHandToolButton
                Return "Pan"
            Case PdfViewerStringId.NavigatorSelectToolButton
                Return "Selection"
            Case PdfViewerStringId.NavigatorFindNextButton
                Return "Find next"
            Case PdfViewerStringId.NavigatorFindPreviousButton
                Return "Find previous"
            Case PdfViewerStringId.NavigatorSearchTextBox
                Return "Search"
            Case PdfViewerStringId.NavigatorDefaultStrip
                Return "Default strip"
        End Select
        Return MyBase.GetLocalizedString(id)
    End Function
End Class

````

{{endregion}}

To apply the custom localization provider, instantiate and assign it to the current localization provider:

{{source=..\SamplesCS\PdfViewer\PdfLocalization.cs region=change}} 
{{source=..\SamplesVB\PdfViewer\PdfLocalization.vb region=change}} 

````C#
PdfViewerLocalizationProvider.CurrentProvider = new MyLocalizationProvider();

````
````VB.NET
PdfViewerLocalizationProvider.CurrentProvider = New MyLocalizationProvider()

````

{{endregion}}