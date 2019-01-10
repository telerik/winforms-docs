---
title: Localize print dialogs
page_title: Localize print dialogs | Telerik Presentation Framework
description: This article shows how you can localize all strings used in the provided print dialogs.
slug: winforms/telerik-presentation-framework/printing-support/localize-print-dialogs
tags: localize,print,dialogs
published: True
position: 3
previous_url: tpf-printing-support-localizing-printdialogs
---

# Localize print dialogs

To localize the print dialogs to display text and messages in a specific language:

*  All required classes for localization are defined in __Telerik.WinControls.UI.Localization__ namespace. 

* All print settings dialogs display measurements in imperial or metric units depending on the current system regional info. You only have to take care for the string representation of the units.

* Start by creating a descendant of the __PrintDialogsLocalizationProvider__ class.

*  Override the __GetLocalizedString(string id)__ method and provide a translation for the label and user messages. If a translation is not provided, the default value will be returned. This behavior is guaranteed by the call to the base __GetLocalizedString__ method in the __default__ clause of the __switch__ statement in the example.

Below is a sample implementation of an English localization provider:


#### Localizing print dialogs

{{source=..\SamplesCS\TPF\Printing support\LocalizeRadPrintDialog.cs region=localizationProvider}} 
{{source=..\SamplesVB\TPF\Printing support\LocalizeRadPrintDialog.vb region=localizationProvider}} 

````C#
class MyPrintDialogsLocalizationProvider : Telerik.WinControls.UI.PrintDialogsLocalizationProvider
{
    public override string GetLocalizedString(string id)
    {
        switch (id)
        {
            case PrintDialogsStringId.PreviewDialogTitle: return "Print Preview";
            case PrintDialogsStringId.PreviewDialogPrint: return "Print...";
            case PrintDialogsStringId.PreviewDialogPrintSettings: return "Print Settings...";
            case PrintDialogsStringId.PreviewDialogWatermark: return "Watermark...";
            case PrintDialogsStringId.PreviewDialogPreviousPage: return "Previous Page";
            case PrintDialogsStringId.PreviewDialogNextPage: return "Next Page";
            case PrintDialogsStringId.PreviewDialogZoomIn: return "Zoom In";
            case PrintDialogsStringId.PreviewDialogZoomOut: return "Zoom Out";
            case PrintDialogsStringId.PreviewDialogZoom: return "Zoom";
            case PrintDialogsStringId.PreviewDialogAuto: return "Auto";
            case PrintDialogsStringId.PreviewDialogLayout: return "Layout";
            case PrintDialogsStringId.PreviewDialogFile: return "File";
            case PrintDialogsStringId.PreviewDialogView: return "View";
            case PrintDialogsStringId.PreviewDialogTools: return "Tools";
            case PrintDialogsStringId.PreviewDialogExit: return "Exit";
            case PrintDialogsStringId.PreviewDialogStripTools: return "Tools";
            case PrintDialogsStringId.PreviewDialogStripNavigation: return "Navigation";
            case PrintDialogsStringId.WatermarkDialogTitle: return "Watermark Settings";
            case PrintDialogsStringId.WatermarkDialogButtonOK: return "OK";
            case PrintDialogsStringId.WatermarkDialogButtonCancel: return "Cancel";
            case PrintDialogsStringId.WatermarkDialogLabelPreview: return "Preview";
            case PrintDialogsStringId.WatermarkDialogButtonRemove: return "Remove watermark";
            case PrintDialogsStringId.WatermarkDialogLabelPosition: return "Position";
            case PrintDialogsStringId.WatermarkDialogRadioInFront: return "In Front";
            case PrintDialogsStringId.WatermarkDialogRadioBehind: return "Behind";
            case PrintDialogsStringId.WatermarkDialogLabelPageRange: return "Page range";
            case PrintDialogsStringId.WatermarkDialogRadioAll: return "All";
            case PrintDialogsStringId.WatermarkDialogRadioPages: return "Pages";
            case PrintDialogsStringId.WatermarkDialogLabelPagesDescription: return "(e.g. 1,3,5-12)";
            case PrintDialogsStringId.WatermarkDialogTabText: return "Text";
            case PrintDialogsStringId.WatermarkDialogTabPicture: return "Picture";
            case PrintDialogsStringId.WatermarkDialogLabelText: return "Text";
            case PrintDialogsStringId.WatermarkDialogWatermarkText: return "Watermark text";
            case PrintDialogsStringId.WatermarkDialogLabelHOffset: return "Horizontal offset";
            case PrintDialogsStringId.WatermarkDialogLabelVOffset: return "Vertical offset";
            case PrintDialogsStringId.WatermarkDialogLabelRotation: return "Rotation";
            case PrintDialogsStringId.WatermarkDialogLabelFont: return "Font:";
            case PrintDialogsStringId.WatermarkDialogLabelSize: return "Size:";
            case PrintDialogsStringId.WatermarkDialogLabelColor: return "Color:";
            case PrintDialogsStringId.WatermarkDialogLabelOpacity: return "Opacity:";
            case PrintDialogsStringId.WatermarkDialogLabelLoadImage: return "Load image:";
            case PrintDialogsStringId.WatermarkDialogCheckboxTiling: return "Tiling";
            case PrintDialogsStringId.SettingDialogTitle: return "Print Settings";
            case PrintDialogsStringId.SettingDialogButtonPrint: return "Print";
            case PrintDialogsStringId.SettingDialogButtonPreview: return "Preview";
            case PrintDialogsStringId.SettingDialogButtonCancel: return "Cancel";
            case PrintDialogsStringId.SettingDialogButtonOK: return "OK";
            case PrintDialogsStringId.SettingDialogPageFormat: return "Format";
            case PrintDialogsStringId.SettingDialogPagePaper: return "Paper";
            case PrintDialogsStringId.SettingDialogPageHeaderFooter: return "Header/Footer";
            case PrintDialogsStringId.SettingDialogButtonPageNumber: return "Page Number";
            case PrintDialogsStringId.SettingDialogButtonTotalPages: return "Total Pages";
            case PrintDialogsStringId.SettingDialogButtonCurrentDate: return "Current Date";
            case PrintDialogsStringId.SettingDialogButtonCurrentTime: return "Current Time";
            case PrintDialogsStringId.SettingDialogButtonUserName: return "User Name";
            case PrintDialogsStringId.SettingDialogLabelHeader: return "Header";
            case PrintDialogsStringId.SettingDialogLabelFooter: return "Footer";
            case PrintDialogsStringId.SettingDialogCheckboxReverse: return "Reverse on even pages";
            case PrintDialogsStringId.SettingDialogLabelPage: return "Page";
            case PrintDialogsStringId.SettingDialogLabelType: return "Type";
            case PrintDialogsStringId.SettingDialogLabelPageSource: return "Page source";
            case PrintDialogsStringId.SettingDialogLabelMargins: return "Margins (inches)";
            case PrintDialogsStringId.SettingDialogLabelOrientation: return "Orientation";
            case PrintDialogsStringId.SettingDialogLabelTop: return "Top:";
            case PrintDialogsStringId.SettingDialogLabelBottom: return "Bottom:";
            case PrintDialogsStringId.SettingDialogLabelLeft: return "Left:";
            case PrintDialogsStringId.SettingDialogLabelRight: return "Right:";
            case PrintDialogsStringId.SettingDialogRadioPortrait: return "Portrait";
            case PrintDialogsStringId.SettingDialogRadioLandscape: return "Landscape";
            case PrintDialogsStringId.SchedulerSettingsLabelPrintStyle: return "Print style";
            case PrintDialogsStringId.SchedulerSettingsDailyStyle: return "Daily Style";
            case PrintDialogsStringId.SchedulerSettingsWeeklyStyle: return "Weekly Style";
            case PrintDialogsStringId.SchedulerSettingsMonthlyStyle: return "Monthly Style";
            case PrintDialogsStringId.SchedulerSettingsDetailStyle: return "Details Style";
            case PrintDialogsStringId.SchedulerSettingsButtonWatermark: return "Watermark...";
            case PrintDialogsStringId.SchedulerSettingsLabelPrintRange: return "Print range";
            case PrintDialogsStringId.SchedulerSettingsLabelStyleSettings: return "Style settings";
            case PrintDialogsStringId.SchedulerSettingsLabelPrintSettings: return "Print settings";
            case PrintDialogsStringId.SchedulerSettingsLabelStartDate: return "Start date";
            case PrintDialogsStringId.SchedulerSettingsLabelEndDate: return "End date";
            case PrintDialogsStringId.SchedulerSettingsLabelStartTime: return "Start time";
            case PrintDialogsStringId.SchedulerSettingsLabelEndTime: return "End time";
            case PrintDialogsStringId.SchedulerSettingsLabelDateFont: return "Date heading font";
            case PrintDialogsStringId.SchedulerSettingsLabelAppointmentFont: return "Appointment font";
            case PrintDialogsStringId.SchedulerSettingsLabelLayout: return "Layout";
            case PrintDialogsStringId.SchedulerSettingsPrintPageTitle: return "Print page title";
            case PrintDialogsStringId.SchedulerSettingsPrintCalendar: return "Include calendar in the title";
            case PrintDialogsStringId.SchedulerSettingsPrintTimezone: return "Print the selected timezone";
            case PrintDialogsStringId.SchedulerSettingsPrintNotesBlank: return "Notes area (blank)";
            case PrintDialogsStringId.SchedulerSettingsPrintNotesLined: return "Notes area (lined)";
            case PrintDialogsStringId.SchedulerSettingsNonworkingDays: return "Exclude non-working days";
            case PrintDialogsStringId.SchedulerSettingsExactlyOneMonth: return "Print exactly one month";
            case PrintDialogsStringId.SchedulerSettingsLabelWeeksPerPage: return "Weeks per page";
            case PrintDialogsStringId.SchedulerSettingsNewPageEach: return "Start new page each";
            case PrintDialogsStringId.SchedulerSettingsStringDay: return "Day";
            case PrintDialogsStringId.SchedulerSettingsStringMonth: return "Month";
            case PrintDialogsStringId.SchedulerSettingsStringWeek: return "Week";
            case PrintDialogsStringId.SchedulerSettingsStringPage: return "Page";
            case PrintDialogsStringId.SchedulerSettingsStringPages: return "Pages";
            case PrintDialogsStringId.SchedulerSettingsLabelGroupBy: return "Group by:";
            case PrintDialogsStringId.SchedulerSettingsGroupByNone: return "None";
            case PrintDialogsStringId.SchedulerSettingsGroupByResource: return "Resource";
            case PrintDialogsStringId.SchedulerSettingsGroupByDate: return "Date";
            case PrintDialogsStringId.GridSettingsLabelPreview: return "Preview";
            case PrintDialogsStringId.GridSettingsLabelStyleSettings: return "Style Settings";
            case PrintDialogsStringId.GridSettingsLabelFitMode: return "Page fit mode:";
            case PrintDialogsStringId.GridSettingsLabelHeaderCells: return "Header cells";
            case PrintDialogsStringId.GridSettingsLabelGroupCells: return "Group cells";
            case PrintDialogsStringId.GridSettingsLabelDataCells: return "Data cells";
            case PrintDialogsStringId.GridSettingsLabelSummaryCells: return "Summary cells";
            case PrintDialogsStringId.GridSettingsLabelBackground: return "Background";
            case PrintDialogsStringId.GridSettingsLabelBorderColor: return "Border color";
            case PrintDialogsStringId.GridSettingsLabelAlternatingRowColor: return "Alternating row color";
            case PrintDialogsStringId.GridSettingsLabelPadding: return "Padding";
            case PrintDialogsStringId.GridSettingsPrintGrouping: return "Print grouping";
            case PrintDialogsStringId.GridSettingsPrintSummaries: return "Print summaries";
            case PrintDialogsStringId.GridSettingsPrintHiddenRows: return "Print hidden rows";
            case PrintDialogsStringId.GridSettingsPrintHiddenColumns: return "Print hidden columns";
            case PrintDialogsStringId.GridSettingsPrintHeader: return "Print header on each page";
            case PrintDialogsStringId.GridSettingsButtonWatermark: return "Watermark...";
            case PrintDialogsStringId.GridSettingsFitPageWidth: return "FitPageWidth";
            case PrintDialogsStringId.GridSettingsNoFit: return "NoFit";
            case PrintDialogsStringId.GridSettingsNoFitCentered: return "NoFitCentered";
            case PrintDialogsStringId.GridSettingsLabelPrint: return "Print";
        }
        return String.Empty;
    }
}

````
````VB.NET
Class MyPrintDialogsLocalizationProvider
    Inherits Telerik.WinControls.UI.PrintDialogsLocalizationProvider
    Public Overrides Function GetLocalizedString(id As String) As String
        Select Case id
            Case PrintDialogsStringId.PreviewDialogTitle
                Return "Print Preview"
            Case PrintDialogsStringId.PreviewDialogPrint
                Return "Print..."
            Case PrintDialogsStringId.PreviewDialogPrintSettings
                Return "Print Settings..."
            Case PrintDialogsStringId.PreviewDialogWatermark
                Return "Watermark..."
            Case PrintDialogsStringId.PreviewDialogPreviousPage
                Return "Previous Page"
            Case PrintDialogsStringId.PreviewDialogNextPage
                Return "Next Page"
            Case PrintDialogsStringId.PreviewDialogZoomIn
                Return "Zoom In"
            Case PrintDialogsStringId.PreviewDialogZoomOut
                Return "Zoom Out"
            Case PrintDialogsStringId.PreviewDialogZoom
                Return "Zoom"
            Case PrintDialogsStringId.PreviewDialogAuto
                Return "Auto"
            Case PrintDialogsStringId.PreviewDialogLayout
                Return "Layout"
            Case PrintDialogsStringId.PreviewDialogFile
                Return "File"
            Case PrintDialogsStringId.PreviewDialogView
                Return "View"
            Case PrintDialogsStringId.PreviewDialogTools
                Return "Tools"
            Case PrintDialogsStringId.PreviewDialogExit
                Return "Exit"
            Case PrintDialogsStringId.PreviewDialogStripTools
                Return "Tools"
            Case PrintDialogsStringId.PreviewDialogStripNavigation
                Return "Navigation"
            Case PrintDialogsStringId.WatermarkDialogTitle
                Return "Watermark Settings"
            Case PrintDialogsStringId.WatermarkDialogButtonOK
                Return "OK"
            Case PrintDialogsStringId.WatermarkDialogButtonCancel
                Return "Cancel"
            Case PrintDialogsStringId.WatermarkDialogLabelPreview
                Return "Preview"
            Case PrintDialogsStringId.WatermarkDialogButtonRemove
                Return "Remove watermark"
            Case PrintDialogsStringId.WatermarkDialogLabelPosition
                Return "Position"
            Case PrintDialogsStringId.WatermarkDialogRadioInFront
                Return "In Front"
            Case PrintDialogsStringId.WatermarkDialogRadioBehind
                Return "Behind"
            Case PrintDialogsStringId.WatermarkDialogLabelPageRange
                Return "Page range"
            Case PrintDialogsStringId.WatermarkDialogRadioAll
                Return "All"
            Case PrintDialogsStringId.WatermarkDialogRadioPages
                Return "Pages"
            Case PrintDialogsStringId.WatermarkDialogLabelPagesDescription
                Return "(e.g. 1,3,5-12)"
            Case PrintDialogsStringId.WatermarkDialogTabText
                Return "Text"
            Case PrintDialogsStringId.WatermarkDialogTabPicture
                Return "Picture"
            Case PrintDialogsStringId.WatermarkDialogLabelText
                Return "Text"
            Case PrintDialogsStringId.WatermarkDialogWatermarkText
                Return "Watermark text"
            Case PrintDialogsStringId.WatermarkDialogLabelHOffset
                Return "Horizontal offset"
            Case PrintDialogsStringId.WatermarkDialogLabelVOffset
                Return "Vertical offset"
            Case PrintDialogsStringId.WatermarkDialogLabelRotation
                Return "Rotation"
            Case PrintDialogsStringId.WatermarkDialogLabelFont
                Return "Font:"
            Case PrintDialogsStringId.WatermarkDialogLabelSize
                Return "Size:"
            Case PrintDialogsStringId.WatermarkDialogLabelColor
                Return "Color:"
            Case PrintDialogsStringId.WatermarkDialogLabelOpacity
                Return "Opacity:"
            Case PrintDialogsStringId.WatermarkDialogLabelLoadImage
                Return "Load image:"
            Case PrintDialogsStringId.WatermarkDialogCheckboxTiling
                Return "Tiling"
            Case PrintDialogsStringId.SettingDialogTitle
                Return "Print Settings"
            Case PrintDialogsStringId.SettingDialogButtonPrint
                Return "Print"
            Case PrintDialogsStringId.SettingDialogButtonPreview
                Return "Preview"
            Case PrintDialogsStringId.SettingDialogButtonCancel
                Return "Cancel"
            Case PrintDialogsStringId.SettingDialogButtonOK
                Return "OK"
            Case PrintDialogsStringId.SettingDialogPageFormat
                Return "Format"
            Case PrintDialogsStringId.SettingDialogPagePaper
                Return "Paper"
            Case PrintDialogsStringId.SettingDialogPageHeaderFooter
                Return "Header/Footer"
            Case PrintDialogsStringId.SettingDialogButtonPageNumber
                Return "Page Number"
            Case PrintDialogsStringId.SettingDialogButtonTotalPages
                Return "Total Pages"
            Case PrintDialogsStringId.SettingDialogButtonCurrentDate
                Return "Current Date"
            Case PrintDialogsStringId.SettingDialogButtonCurrentTime
                Return "Current Time"
            Case PrintDialogsStringId.SettingDialogButtonUserName
                Return "User Name"
            Case PrintDialogsStringId.SettingDialogLabelHeader
                Return "Header"
            Case PrintDialogsStringId.SettingDialogLabelFooter
                Return "Footer"
            Case PrintDialogsStringId.SettingDialogCheckboxReverse
                Return "Reverse on even pages"
            Case PrintDialogsStringId.SettingDialogLabelPage
                Return "Page"
            Case PrintDialogsStringId.SettingDialogLabelType
                Return "Type"
            Case PrintDialogsStringId.SettingDialogLabelPageSource
                Return "Page source"
            Case PrintDialogsStringId.SettingDialogLabelMargins
                Return "Margins (inches)"
            Case PrintDialogsStringId.SettingDialogLabelOrientation
                Return "Orientation"
            Case PrintDialogsStringId.SettingDialogLabelTop
                Return "Top:"
            Case PrintDialogsStringId.SettingDialogLabelBottom
                Return "Bottom:"
            Case PrintDialogsStringId.SettingDialogLabelLeft
                Return "Left:"
            Case PrintDialogsStringId.SettingDialogLabelRight
                Return "Right:"
            Case PrintDialogsStringId.SettingDialogRadioPortrait
                Return "Portrait"
            Case PrintDialogsStringId.SettingDialogRadioLandscape
                Return "Landscape"
            Case PrintDialogsStringId.SchedulerSettingsLabelPrintStyle
                Return "Print style"
            Case PrintDialogsStringId.SchedulerSettingsDailyStyle
                Return "Daily Style"
            Case PrintDialogsStringId.SchedulerSettingsWeeklyStyle
                Return "Weekly Style"
            Case PrintDialogsStringId.SchedulerSettingsMonthlyStyle
                Return "Monthly Style"
            Case PrintDialogsStringId.SchedulerSettingsDetailStyle
                Return "Details Style"
            Case PrintDialogsStringId.SchedulerSettingsButtonWatermark
                Return "Watermark..."
            Case PrintDialogsStringId.SchedulerSettingsLabelPrintRange
                Return "Print range"
            Case PrintDialogsStringId.SchedulerSettingsLabelStyleSettings
                Return "Style settings"
            Case PrintDialogsStringId.SchedulerSettingsLabelPrintSettings
                Return "Print settings"
            Case PrintDialogsStringId.SchedulerSettingsLabelStartDate
                Return "Start date"
            Case PrintDialogsStringId.SchedulerSettingsLabelEndDate
                Return "End date"
            Case PrintDialogsStringId.SchedulerSettingsLabelStartTime
                Return "Start time"
            Case PrintDialogsStringId.SchedulerSettingsLabelEndTime
                Return "End time"
            Case PrintDialogsStringId.SchedulerSettingsLabelDateFont
                Return "Date heading font"
            Case PrintDialogsStringId.SchedulerSettingsLabelAppointmentFont
                Return "Appointment font"
            Case PrintDialogsStringId.SchedulerSettingsLabelLayout
                Return "Layout"
            Case PrintDialogsStringId.SchedulerSettingsPrintPageTitle
                Return "Print page title"
            Case PrintDialogsStringId.SchedulerSettingsPrintCalendar
                Return "Include calendar in the title"
            Case PrintDialogsStringId.SchedulerSettingsPrintTimezone
                Return "Print the selected timezone"
            Case PrintDialogsStringId.SchedulerSettingsPrintNotesBlank
                Return "Notes area (blank)"
            Case PrintDialogsStringId.SchedulerSettingsPrintNotesLined
                Return "Notes area (lined)"
            Case PrintDialogsStringId.SchedulerSettingsNonworkingDays
                Return "Exclude non-working days"
            Case PrintDialogsStringId.SchedulerSettingsExactlyOneMonth
                Return "Print exactly one month"
            Case PrintDialogsStringId.SchedulerSettingsLabelWeeksPerPage
                Return "Weeks per page"
            Case PrintDialogsStringId.SchedulerSettingsNewPageEach
                Return "Start new page each"
            Case PrintDialogsStringId.SchedulerSettingsStringDay
                Return "Day"
            Case PrintDialogsStringId.SchedulerSettingsStringMonth
                Return "Month"
            Case PrintDialogsStringId.SchedulerSettingsStringWeek
                Return "Week"
            Case PrintDialogsStringId.SchedulerSettingsStringPage
                Return "Page"
            Case PrintDialogsStringId.SchedulerSettingsStringPages
                Return "Pages"
            Case PrintDialogsStringId.SchedulerSettingsLabelGroupBy
                Return "Group by:"
            Case PrintDialogsStringId.SchedulerSettingsGroupByNone
                Return "None"
            Case PrintDialogsStringId.SchedulerSettingsGroupByResource
                Return "Resource"
            Case PrintDialogsStringId.SchedulerSettingsGroupByDate
                Return "Date"
            Case PrintDialogsStringId.GridSettingsLabelPreview
                Return "Preview"
            Case PrintDialogsStringId.GridSettingsLabelStyleSettings
                Return "Style Settings"
            Case PrintDialogsStringId.GridSettingsLabelFitMode
                Return "Page fit mode:"
            Case PrintDialogsStringId.GridSettingsLabelHeaderCells
                Return "Header cells"
            Case PrintDialogsStringId.GridSettingsLabelGroupCells
                Return "Group cells"
            Case PrintDialogsStringId.GridSettingsLabelDataCells
                Return "Data cells"
            Case PrintDialogsStringId.GridSettingsLabelSummaryCells
                Return "Summary cells"
            Case PrintDialogsStringId.GridSettingsLabelBackground
                Return "Background"
            Case PrintDialogsStringId.GridSettingsLabelBorderColor
                Return "Border color"
            Case PrintDialogsStringId.GridSettingsLabelAlternatingRowColor
                Return "Alternating row color"
            Case PrintDialogsStringId.GridSettingsLabelPadding
                Return "Padding"
            Case PrintDialogsStringId.GridSettingsPrintGrouping
                Return "Print grouping"
            Case PrintDialogsStringId.GridSettingsPrintSummaries
                Return "Print summaries"
            Case PrintDialogsStringId.GridSettingsPrintHiddenRows
                Return "Print hidden rows"
            Case PrintDialogsStringId.GridSettingsPrintHiddenColumns
                Return "Print hidden columns"
            Case PrintDialogsStringId.GridSettingsPrintHeader
                Return "Print header on each page"
            Case PrintDialogsStringId.GridSettingsButtonWatermark
                Return "Watermark..."
            Case PrintDialogsStringId.GridSettingsFitPageWidth
                Return "FitPageWidth"
            Case PrintDialogsStringId.GridSettingsNoFit
                Return "NoFit"
            Case PrintDialogsStringId.GridSettingsNoFitCentered
                Return "NoFitCentered"
            Case PrintDialogsStringId.GridSettingsLabelPrint
                Return "Print"
        End Select
        Return [String].Empty
    End Function
End Class

````

{{endregion}} 

To apply the custom localization provider, instantiate and assign it to the current localization provider:
       
#### Assigning the Current Localization Provider

{{source=..\SamplesCS\TPF\Printing support\LocalizeRadPrintDialog.cs region=setTheLocalizationProvider}} 
{{source=..\SamplesVB\TPF\Printing support\LocalizeRadPrintDialog.vb region=setTheLocalizationProvider}} 

````C#
PrintDialogsLocalizationProvider.CurrentProvider = new MyPrintDialogsLocalizationProvider();

````
````VB.NET
PrintDialogsLocalizationProvider.CurrentProvider = New MyPrintDialogsLocalizationProvider()

````

{{endregion}} 

The code provided above illustrates the approach used to localize the __print dialogs__ and is not intended as a full translation.
        

# See Also
