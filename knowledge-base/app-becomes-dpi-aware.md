---
title: App becomes DPI-aware at runtime
description: App becomes DPI-aware at runtime
type: how-to
page_title: App becomes DPI-aware at runtime
slug: app-becomes-dpi-aware
position: 0
tags: dpi, hdpi
res_type: kb
---

# Problem

Your application becomes smaller when exporting data or it is using cross platform controls (**RadPdfViewer**, **RadRichTextEditor**, **RadSpreadsheetEditor**, **RadDiagram**, the Document Processing Library). This happens because we are using WPF assemblies where the DPI awareness is enabled at assembly level. When a type from such assembly is initialized the application becomes DPI aware and the controls will became smaller. 

# Solution

There are two approaches in this case. 

1\. Make your application DPI aware explicitly - with this approach your app will look smaller when started. It will not look blurry on HDPI displays. Detailed information is available [here]({%slug winforms/telerik-presentation-framework/dpi-support%}).

2\. Make your application DPI unaware - this approach works only on Windows 10. If you intend to use your application on machines where the DPI scaling is larger than 100 percent, you should explicitly set the application to be DPI-unaware:

````C#
private void workbookTestButton_Click(object sender, EventArgs e)
{
    SetProcessDpiAwareness(_Process_DPI_Awareness.Process_DPI_Unaware);
    Workbook wb = new Workbook();
}
  
[DllImport("shcore.dll")]
static extern int SetProcessDpiAwareness(_Process_DPI_Awareness value);
  
enum _Process_DPI_Awareness
{
    Process_DPI_Unaware = 0,
    Process_System_DPI_Aware = 1,
    Process_Per_Monitor_DPI_Aware = 2
}
````
````VB.NET
Private Sub workbookTestButton_Click(ByVal sender As Object, ByVal e As EventArgs)
    SetProcessDpiAwareness(_Process_DPI_Awareness.Process_DPI_Unaware)
    Dim wb As New Workbook()
End Sub

<DllImport("shcore.dll")>
Shared Function SetProcessDpiAwareness(ByVal value As _Process_DPI_Awareness) As Integer
End Function

Friend Enum _Process_DPI_Awareness
    Process_DPI_Unaware = 0
    Process_System_DPI_Aware = 1
    Process_Per_Monitor_DPI_Aware = 2
End Enum

````

>note Both of the above approaches does not affect the application when the scaling is set to 100%. 

