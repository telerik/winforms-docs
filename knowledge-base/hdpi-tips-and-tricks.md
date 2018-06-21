---
title: HDPI Tips and Tricks
description: This article discusses some of the common cases when one uses HDPI.
type: how-to
page_title: HDPI Tips and Tricks
slug: hdpi-tips-and-tricks
position: 0
tags: dpi, scaling
ticketid: 0
res_type: kb
---


## Environment
<table>
    <tr>
        <td>Product Version</td>
        <td>2018.1 220</td>
    </tr>
    <tr>
        <td>Product</td>
        <td>RadChartView for WinForms</td>
    </tr>
</table>


## HDPI Tips and Tricks

Telerik UI for WinForms has built-in supports for HDPI. This means that when your application is executed on a system where the scaling settings are different that 100% it will be scaled.


### Enabling the scaling

There are more than one way to enable/disable the scaling. They are discusses here: [DPI support]({%slug winforms/telerik-presentation-framework/dpi-support%}). The important part is that enabling the DPI awareness in the manifest file will break the ClickOnce installer. This can be avoided by using .NET 4.7 and setting this in the app.config file. 

### Disabling the scaling

When you have an existing application which is DPI aware and this already handled. Or if you do not want to use the build in scaling you can disable it. This can be achieved by setting the static __EnableDpiScaling__ property. You should set it in your main form before calling the __InitializeComponent__ method:

````C#
public partial class RadForm1 : Telerik.WinControls.UI.RadForm
{
    public RadForm1()
    {
        RadControl.EnableDpiScaling = false;
        InitializeComponent();
    }
}

````
````VB.NET
Partial Public Class RadForm1
    Inherits Telerik.WinControls.UI.RadForm

    Public Sub New()
        RadControl.EnableDpiScaling = False
        InitializeComponent()
    End Sub
End Class

````

### Standard Form vs RadForm

When using the standard form some controls may not be scaled properly. [RadForm]({%slug winforms/forms-and-dialogs/form%}) however handles the scaling and will scale the child controls.  

### Using UserControls in your application

When you are using UserControl its contents may be scaled twice. In this case please set the __AutoScaleMode__ of the user control to __None__.

### Developing on HDPI 

Your development machine has HDPI monitor and the scaling setting are larger than 100%. This can cause issues with the layout because opening the designer on such machines will set the __AutoScaleDimensions__ property (the default value is SizeF(6F, 13F)) This property is used when a scaling factor is calculated and passed to your application. And if a wrong factor is passed the application can look smaller or larger then it should be. Please make sure that this property has its default value (__SizeF(6F, 13F)__).

There is a feature request for this as well: [WinForms Designer DPI Lock](https://visualstudio.uservoice.com/forums/121579-visual-studio-ide/suggestions/7373263-winforms-designer-dpi-lock)

### Application becomes DPI aware at runtime.

Telerik’s document processing library (RadSpreadProcessing, RadWordProecessing or RadPdfProcessing) is referencing assemblies which are used in WPF. All WPF-based applications are DPI-aware by default and this is declared in the manifests of the WPF assemblies. Therefore, if you use the document processing library in WinForms applications that are not DPI-aware, they might suddenly become DPI-aware at run time when you instantiate a type from the DPL assemblies (when the DPL assemblies are loaded by the CLR, this will also load the WPF assemblies which they depend on, which in turn will make the application DPI-aware). If you intend to use your application on machines where the DPI scaling is larger than 100 percent, you should explicitly set the application to be DPI-unaware:

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

### Using TableLayoutPanel

Consider using TableLayoutPanel when creating a DPI-aware application. Here is why:
* The controls do not have specific location and size. This way when the form is resized the controls will fit in the available space. 
* You can easily set Margin between the controls instead of using anchoring.
* THe application will look better when it is scaled.   

This approach is used in the [ERP demo application](https://www.telerik.com/blogs/new-erp-demo-app-available-telerik-ui-for-winforms).


## See Also

* [DPI-support]({%slug winforms/telerik-presentation-framework/dpi-support%})
* [WinForms Scaling at Large DPI Settings–Is It Even Possible?](https://www.telerik.com/blogs/winforms-scaling-at-large-dpi-settings-is-it-even-possible-)
* [High DPI support in Windows Forms](https://docs.microsoft.com/en-us/dotnet/framework/winforms/high-dpi-support-in-windows-forms)