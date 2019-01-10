---
title: Localization
page_title: Localization | RadPdfViewer
description: RadPdfViewer can be fully localized to display text messages in a specific language.
slug: winforms/pdfviewer/localization
tags: localization
published: True
position: 12
previous_url: pdfviewer-localization
---

# Localization

To localize __RadPdfViewer__ to display any text and messages in a specific language:

* Create a custom __PdfViewerLocalizationProvider__ class.

* Override the __GetLocalizedString(string id)__ method and provide a translation for the label and user messages. If a translation is not provided, the default value will be returned. This behavior is guaranteed by the call to the base __GetLocalizedString__ method in the default clause of the switch statement in the example.

Below is a sample implementation of an English localization provider:

#### RadPdfViewer Localization

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
            case PdfViewerStringId.RotateCounterclockwiseButton:
                return "Rotate Counterclockwise";
            case PdfViewerStringId.RotateClockwiseButton:
                return "Rotate Clockwise";
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
            case PdfViewerStringId.NavigatorNoResultMessage:
                return "No results found according to the specified criteria.";
            case PdfViewerStringId.NavigatorNoResultMessageHeader:
                return "Information";
            case PdfViewerStringId.NavigatorDefaultStrip:
                return "Default strip";
            case PdfViewerStringId.PrintPreviewGroupBoxPreview:
                return "Preview";
            case PdfViewerStringId.PrintPreviewGroupBoxOrientation:
                return "Orientation";
            case PdfViewerStringId.PrintPreviewGroupBoxSettings:
                return "Settings";
            case PdfViewerStringId.PrintPreviewButtonPrint:
                return "Print";
            case PdfViewerStringId.PrintPreviewButtonCancel:
                return "Cancel";
            case PdfViewerStringId.PrintPreviewButtonWatermark:
                return "Watermark";
            case PdfViewerStringId.PrintPreviewButtonSettings:
                return "Print Settings";
            case PdfViewerStringId.PrintPreviewLabelPageSizeInches:
                return "{0:F2} x {1:F2} Inches";
            case PdfViewerStringId.PrintPreviewLabelPageSizeCm:
                return "{0:F2}cm x {1:F2}cm";
            case PdfViewerStringId.PrintPreviewLabelScale:
                return "Scale: {0}%";
            case PdfViewerStringId.PrintPreviewLabelCurrentPage:
                return "Page {0} of {1}";
            case PdfViewerStringId.PrintPreviewFormTitle:
                return "Print Preview";
            case PdfViewerStringId.PrintPreviewPrintError:
                return "Error printing the document!";
            case PdfViewerStringId.PrintPreviewRadioPortrait:
                return "Portrait";
            case PdfViewerStringId.PrintPreviewRadioLandscape:
                return "Landscape";
            case PdfViewerStringId.PrintPreviewRadioAuto:
                return "Auto";
            case PdfViewerStringId.NavigatorFitToWidthButton:
                return "Fit To Width";
            case PdfViewerStringId.NavigatorFitToPageButton:
                return "Fit Full Page";
            case PdfViewerStringId.PageThumbnailsLabel:
                return "Page Thumbnails";
            case PdfViewerStringId.SaveButton:
                return "Save As";
            case PdfViewerStringId.CloseButton:
                return "Close";
            case PdfViewerStringId.NavigatorShowSignatureButton:
                return "Signature Panel";
            case PdfViewerStringId.SignatureDialogTitle:
                return "Signature Validation Status";
            case PdfViewerStringId.SignaturePanel_Invalid:
                return "At least one signature is invalid.";
            case PdfViewerStringId.SignaturePanel_Unknown:
                return "At least one signature has problems.";
            case PdfViewerStringId.SignaturePanel_Valid:
                return "Signed and all signatures are valid.";
            case PdfViewerStringId.SignaturePropertiesDialogHeader:
                return "Signature Validation Status";
            case PdfViewerStringId.SignaturePropertiesDialogViewModel_IsDocumentModified_False:
                return "The document is not modified since this signature was applied.";
            case PdfViewerStringId.SignaturePropertiesDialogViewModel_IsDocumentModified_True:
                return "The document has been altered or corrupted since the Signature was applied.";
            case PdfViewerStringId.SignaturePropertiesDialogViewModel_SignatureIsInvalid:
                return "Signature is Invalid.";
            case PdfViewerStringId.SignaturePropertiesDialogViewModel_SignatureIsUnknown:
                return "Signature validity is Unknown.";
            case PdfViewerStringId.SignaturePropertiesDialogViewModel_SignatureIsValid:
                return "Signature is Valid, signed by ";
            case PdfViewerStringId.SignaturePropertiesDialogViewModel_SignerValidity_Unknown:
                return "The signer's identity is unknown.";
            case PdfViewerStringId.SignaturePropertiesDialogViewModel_SignerValidity_UntrustedRoot:
                return "The signer's identity is unknown because it has not been included in your list of trusted certificates and none of its parent certificates are trusted.";
            case PdfViewerStringId.SignaturePropertiesDialogViewModel_SignerValidity_Valid:
                return "The signer's identity is valid.";
            case PdfViewerStringId.SelectCertButton:
                return "Select";
            case PdfViewerStringId.SignButton:
                return "Sign";
            case PdfViewerStringId.EnterAPassTextBox:
                return "Enter a password";
            case PdfViewerStringId.SelectCertTextBox:
                return "Select certificate";
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
            Case PdfViewerStringId.RotateCounterclockwiseButton
                Return "Rotate Counterclockwise"
            Case PdfViewerStringId.RotateClockwiseButton
                Return "Rotate Clockwise"
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
            Case PdfViewerStringId.NavigatorNoResultMessage
                Return "No results found according to the specified criteria."
            Case PdfViewerStringId.NavigatorNoResultMessageHeader
                Return "Information"
            Case PdfViewerStringId.NavigatorDefaultStrip
                Return "Default strip"
            Case PdfViewerStringId.PrintPreviewGroupBoxPreview
                Return "Preview"
            Case PdfViewerStringId.PrintPreviewGroupBoxOrientation
                Return "Orientation"
            Case PdfViewerStringId.PrintPreviewGroupBoxSettings
                Return "Settings"
            Case PdfViewerStringId.PrintPreviewButtonPrint
                Return "Print"
            Case PdfViewerStringId.PrintPreviewButtonCancel
                Return "Cancel"
            Case PdfViewerStringId.PrintPreviewButtonWatermark
                Return "Watermark"
            Case PdfViewerStringId.PrintPreviewButtonSettings
                Return "Print Settings"
            Case PdfViewerStringId.PrintPreviewLabelPageSizeInches
                Return "{0:F2} x {1:F2} Inches"
            Case PdfViewerStringId.PrintPreviewLabelPageSizeCm
                Return "{0:F2}cm x {1:F2}cm"
            Case PdfViewerStringId.PrintPreviewLabelScale
                Return "Scale: {0}%"
            Case PdfViewerStringId.PrintPreviewLabelCurrentPage
                Return "Page {0} of {1}"
            Case PdfViewerStringId.PrintPreviewFormTitle
                Return "Print Preview"
            Case PdfViewerStringId.PrintPreviewPrintError
                Return "Error printing the document!"
            Case PdfViewerStringId.PrintPreviewRadioPortrait
                Return "Portrait"
            Case PdfViewerStringId.PrintPreviewRadioLandscape
                Return "Landscape"
            Case PdfViewerStringId.PrintPreviewRadioAuto
                Return "Auto"
            Case PdfViewerStringId.NavigatorFitToWidthButton
                Return "Fit To Width"
            Case PdfViewerStringId.NavigatorFitToPageButton
                Return "Fit Full Page"
            Case PdfViewerStringId.PageThumbnailsLabel
                Return "Page Thumbnails"
            Case PdfViewerStringId.SaveButton
                Return "Save As"
            Case PdfViewerStringId.CloseButton
                Return "Close"
            Case PdfViewerStringId.NavigatorShowSignatureButton
                Return "Signature Panel"
            Case PdfViewerStringId.SignatureDialogTitle
                Return "Signature Validation Status"
            Case PdfViewerStringId.SignaturePanel_Invalid
                Return "At least one signature is invalid."
            Case PdfViewerStringId.SignaturePanel_Unknown
                Return "At least one signature has problems."
            Case PdfViewerStringId.SignaturePanel_Valid
                Return "Signed and all signatures are valid."
            Case PdfViewerStringId.SignaturePropertiesDialogHeader
                Return "Signature Validation Status"
            Case PdfViewerStringId.SignaturePropertiesDialogViewModel_IsDocumentModified_False
                Return "The document is not modified since this signature was applied."
            Case PdfViewerStringId.SignaturePropertiesDialogViewModel_IsDocumentModified_True
                Return "The document has been altered or corrupted since the Signature was applied."
            Case PdfViewerStringId.SignaturePropertiesDialogViewModel_SignatureIsInvalid
                Return "Signature is Invalid."
            Case PdfViewerStringId.SignaturePropertiesDialogViewModel_SignatureIsUnknown
                Return "Signature validity is Unknown."
            Case PdfViewerStringId.SignaturePropertiesDialogViewModel_SignatureIsValid
                Return "Signature is Valid, signed by "
            Case PdfViewerStringId.SignaturePropertiesDialogViewModel_SignerValidity_Unknown
                Return "The signer's identity is unknown."
            Case PdfViewerStringId.SignaturePropertiesDialogViewModel_SignerValidity_UntrustedRoot
                Return "The signer's identity is unknown because it has not been included in your list of trusted certificates and none of its parent certificates are trusted."
            Case PdfViewerStringId.SignaturePropertiesDialogViewModel_SignerValidity_Valid
                Return "The signer's identity is valid."
            Case PdfViewerStringId.SelectCertButton
                Return "Select"
            Case PdfViewerStringId.SignButton
                Return "Sign"
            Case PdfViewerStringId.EnterAPassTextBox
                Return "Enter a password"
            Case PdfViewerStringId.SelectCertTextBox
                Return "Select certificate"
        End Select
        Return MyBase.GetLocalizedString(id)
    End Function
End Class

````

{{endregion}}

To apply the custom localization provider, instantiate and assign it to the current localization provider:

#### Changing the Localization Provider

{{source=..\SamplesCS\PdfViewer\PdfLocalization.cs region=change}} 
{{source=..\SamplesVB\PdfViewer\PdfLocalization.vb region=change}} 

````C#
PdfViewerLocalizationProvider.CurrentProvider = new MyLocalizationProvider();

````
````VB.NET
PdfViewerLocalizationProvider.CurrentProvider = New MyLocalizationProvider()

````

{{endregion}}

# See Also

* [Getting Started]({%slug winforms/pdfviewer/getting-started%})
* [Logical Structure]({%slug winforms/pdfviewer/structure/logical-structure%})
* [Visual Structure]({%slug winforms/pdfviewer/structure/visual-structure%})
* [Properties, Methods and Events]({%slug winforms/pdfviewer/properties-methods-and-events%})