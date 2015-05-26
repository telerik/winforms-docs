---
title: Activate a Worksheet
page_title: Activate a Worksheet | UI for WinForms Documentation
description: Activate a Worksheet
slug: winforms/spread-processing/working-with-worksheets/activate-a-worksheet
tags: activate,a,worksheet
published: True
position: 2
---

# Activate a Worksheet



Typically, a single workbook in the document model contains several worksheets. However, only one worksheet can be active at a time. When you open a workbook using RadSpreadsheet's UI, the control visualizes the cells of the active worksheet. Introducing any changes to the workbook through the control's UI, such as data entry or formatting, causes the active worksheet to be affected.
      

## 

The workbook offers API that lets you change the __ActiveWorksheet__ effortlessly. The __Workbook__ class exposes an __ActiveWorksheet__ property that gets and sets the active worksheet. Additionally, the workbook has an __ActiveSheetChanged__ event that is triggered whenever the ActiveWorksheet is changed. Note that the first worksheet added to the workbook is set as the active worksheet by default. Each worksheet added afterwards is not set as the active one.
        

__Example 1__ creates a new workbook from scratch and subscribes to its __ActiveSheetChanged__ event. Further, the code adds two worksheets. Note that when the first worksheet is added it is automatically selected as the active worksheet, because it is the only worksheet in the workbook. That said, adding the first worksheet also triggers the __ActiveSheetChanged__ event. When the second worksheet is added, however, the active worksheet is not changed and, thus, the event is not thrown. Later, the snippet sets the second worksheet to be the active one, which triggers the __ActiveSheetChanged__ event:
        #_[C#] Example 1: Change active sheet_

	



{{source=..\SamplesCS\RadSpreadProcessing\WorkingWithWorksheets\RadSpreadProcessingActivateAWorksheet.cs region=radspreadprocessing-working-with-worksheets-activate-worksheet_0}} 
{{source=..\SamplesVB\RadSpreadProcessing\WorkingWithWorksheets\RadSpreadProcessingActivateAWorksheet.vb region=radspreadprocessing-working-with-worksheets-activate-worksheet_0}} 

````C#
        public void ActivateWorksheetDemo()
        {
            Workbook workbook = new Workbook();

            workbook.ActiveSheetChanged += this.Workbook_ActiveSheetChanged;

            workbook.Worksheets.Add();
            workbook.Worksheets.Add();

            workbook.ActiveWorksheet = workbook.Worksheets[1];
        }

        private void Workbook_ActiveSheetChanged(object sender, EventArgs e)
        {
            // the active worksheet is changed
        }
````
````VB.NET
    Public Sub ActivateWorksheetDemo()
        Dim workbook As New Workbook()

        AddHandler workbook.ActiveSheetChanged, AddressOf Me.Workbook_ActiveSheetChanged

        workbook.Worksheets.Add()
        workbook.Worksheets.Add()

        workbook.ActiveWorksheet = workbook.Worksheets(1)
    End Sub

    Private Sub Workbook_ActiveSheetChanged(sender As Object, e As EventArgs)
        ' the active worksheet is changed
    End Sub
    '
````

{{endregion}} 



