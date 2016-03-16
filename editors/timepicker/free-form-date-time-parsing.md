---
title: Free Form Date Time Parsing
page_title: Free Form Date Time Parsing | UI for WinForms Documentation
description: Free Form Date Time Parsing
slug: winforms/editors/timepicker/free-form-date-time-parsing
tags: free,form,date,time,parsing
published: True
position: 5
previous_url: editors-timepicker-enable-free-form-date-time-parsing
---

# Free Form Date Time Parsing
 

From Q2 2014 we introduced new MaskType of RadMaskedEditBox that is designed to work with DateTime objects and it is not format restricted as the old one. With the new MaskType RadMaskedEditBox tries to parse the input string to valid DateTime object by using very complex logic.  Read more about this parsing logic here(Link to Parse Date article for RadMaskedEditBox)
      

The embedded text editor of RadTimePicker is RadMaskedEditBox. So if you want to take the advantages from new DateTime parsing logic the only thing that you should to do is to change the MaskType of embedded editor.
       
{{source=..\SamplesCS\Editors\TimePicker1.cs region=FreeFormDateTimeTimePicker}} 
{{source=..\SamplesVB\Editors\TimePicker1.vb region=FreeFormDateTimeTimePicker}} 

````C#
            
this.radTimePicker1.TimePickerElement.MaskedEditBox.MaskType = MaskType.FreeFormDateTime;

````
````VB.NET
Me.RadTimePicker1.TimePickerElement.MaskedEditBox.MaskType = MaskType.FreeFormDateTime
'#End Region
End Sub
'#Region "CellFormatting"
Private Sub radTimePicker1_TimeCellFormatting(sender As Object, e As Telerik.WinControls.UI.TimeCellFormattingEventArgs)
e.Element.GradientStyle = Telerik.WinControls.GradientStyles.Solid
e.Element.Margin = New Windows.Forms.Padding(2)
If e.IsMinute Then
    'set minute cells specific properties
    e.Element.BackColor = Color.Lime
Else
    'set hours cells specific properties
    e.Element.BackColor = Color.Green
End If
End Sub
'#End Region
'#region LocalizationProvider
Class MyTimePickerLocalizationProvider
Inherits RadTimePickerLocalizationProvider
Public Overrides Function GetLocalizedString(id As String) As String
    Select Case id
        Case RadTimePickerStringId.HourHeaderText
            Return "Hours"
        Case RadTimePickerStringId.MinutesHeaderText
            Return "Minutes"
        Case RadTimePickerStringId.CloseButtonText
            Return "Close"
        Case Else
            Return String.Empty
    End Select
End Function
End Class

````

{{endregion}} 
 

## 
