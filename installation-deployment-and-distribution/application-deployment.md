---
title: Application Deployment
page_title: Application Deployment
description: Application Deployment
slug: winforms/installation-deployment-and-distribution/application-deployment
tags: application,deployment
published: True
position: 2
previous_url: installation-deployment-and-distribution-application-deployment
---

# Application Deployment

When you use Telerik controls in your WinForms application, your application must have references to several of Telerik assemblies. These references are automatically added to your project when you drag and drop controls or component on your form. There are three assemblies required in general and the rest are added only if you are using a specific control that requires some other assembly. In sum, most of the time you will not have to add references to all Telerik assemblies. Also in general, the assembly references will be added automatically and they will refer to the assemblies installed in the GAC by Telerik WinForms installer.       

>note *RadMarkupEditor* and *RadMarkupDialog* require a reference to *Microsoft.mshtml* assembly and if you need to use them at Run Time you will need to distribute this assembly to the end user computers as well. You do not need to do anything on your developer machine, because Visual Studio provides the required assembly. Also if your application does not use the editor or the dialog, you do not need a reference to this assembly.        

## Deployment Strategies

### X-Copy

This is the simplest strategy. For each Telerik assembly reference in the Solution Explorer, open its context menu, click on properties and in the property grid set the *Copy Local* property of the reference to __True.__

![installation-deployment-and-distribution-application-deployment 001](images/installation-deployment-and-distribution-application-deployment001.png)

Thus these Telerik assemblies will be copied to your *Release/Bin*, *Debug/Bin* folders. You application deployment consists of copying the exe, dlls, xmls files to your client machines which in the simpler case will be manual copy and in the more advanced scenario will be a copy by your installer.

### GAC

As noted above, Telerik assemblies are installed in the GAC by Telerik installer on the developer machines. You may choose to insert Telerik assemblies in the GAC of your client machines too by following the instructions in the [Add/Remove RadControls to the Global Assembly Cache (GAC)]({%slug winforms/installation-deployment-and-distribution/application-deploymentadd-remove-radcontrols-to-the-global-assembly-cache-(gac)%}) section.      

>note Please do not use Telerik installer to install Telerik assemblies in the GACs of your clients' machines. Telerik installer should be used only for the developers' machines.


### ClickOnce 

By default, when preparing a ClickOnce distribution of a Windows Forms Application, VS uses its default settings, which assume that all project assemblies located in the GAC of the local machine are also available on the remote server. By default, the __CopyLocal__ property for assemblies located in the GAC is set to *false*, and they are marked as prerequisites in the application manifest (meaning that ClickOnce expects these to already be present in the remote machine's GAC. As a result, the application does not pack them). This is may cause problems if the assemblies are not registered in the remote server's GAC.
              
Here are several simple steps on how to deploy a Windows Forms Application using ClickOnce:

1. Open your project in Visual Studio.

1. Go to your project's __Properties__.
                

1. Go to the __Publish__ item.
                

1. Click on the __Application Files...__ button - it will open a list of files that are required by the distribution.
                

1. There is a small checkbox at the bottom left corner of the opened __Application Files__ form. If it is not checked, tick it to see all files required by the distribution.
                

1. You will see all the required assemblies (that are registered in the GAC) probably with a publish status of __Prerequisite(Auto)__ - this means that the installation assumes the assemblies will be available in the target machine GAC before the installation takes place.
                

1. Change the __Publish Status__ field of the required assemblies from *Prerequisite* to __Include__ and accept all changes.
                

1. Republish the project to check that all is OK.

## Running an Application from a Network Drive

If your WinForms application is using Telerik controls and is located on a *network drive* and Telerik assemblies are also located on the *network drive* you will not be able to run your application because of security attributes set to TelerikCommon assembly. In such a case, you need to copy the whole program locally and run it. Please note that this does not apply to publishing your application with ClickOnce on a *network drive -* there should be no problem publishing your application on a *network drive*.
        
## Assemblies that you should redistribute in all scenarios 

* TelerikCommon.dll

* Telerik.WinControls.dll

## Assemblies that you need to redistribute depending on which controls you use in your application
      
<table><tr><th>Control Name</th><th>Assembly</th></tr>
<tr><td>

<b>CustomShape</b></td><td>

Telerik.WinControls.dll</td></tr><tr><td>

<b>RadApplicationMenu</b></td><td>

Telerik.WinControls.UI.dll</td></tr><tr><td>

<b>RadBreadCrumb</b></td><td>

Telerik.WinControls.UI.dll</td></tr><tr><td>

<b>RadBulletGraph</b></td><td>

Telerik.WinControls.UI.dll</td></tr><tr><td>

<b>RadButton</b></td><td>

Telerik.WinControls.UI.dll</td></tr><tr><td>

<b>RadCalendar</b></td><td>

Telerik.WinControls.UI.dll</td></tr><tr><td>

<b>RadCarousel</b></td><td>

Telerik.WinControls.UI.dll</td></tr><tr><td>

<b>RadCheckBox</b></td><td>

Telerik.WinControls.UI.dll</td></tr><tr><td>

<b>RadCheckedListBox</b></td><td>

Telerik.WinControls.UI.dll</td></tr><tr><td>

<b>RadColorDialog</b></td><td>

Telerik.WinControls.dll</td></tr><tr><td>

<b>RadContextMenu</b></td><td>

Telerik.WinControls.UI.dll</td></tr><tr><td>

<b>RadContextMenuManager</b></td><td>

Telerik.WinControls.UI.dll</td></tr><tr><td>

<b>RadChart</b></td><td>

Telerik.WinControls.RadChart.dll</td></tr><tr><td>

<b>RadDataFilter</b></td><td>

Telerik.WinControls.UI.dll</td></tr><tr><td>

<b>RadDateTimePicker</b></td><td>

Telerik.WinControls.UI.dll</td></tr><tr><td>

<b>RadDiagram</b></td><td>

Telerik.WinControls.RadDiagram.dll</td></tr><tr><td>

<b>RadDock</b></td><td>

Telerik.WinControls.RadDock.dll</td></tr><tr><td>

<b>RadDropDownButton</b></td><td>

Telerik.WinControls.UI.dll</td></tr><tr><td>

<b>RadForm</b></td><td>

Telerik.WinControls.UI.dll</td></tr><tr><td>

<b>RadGridView</b></td><td>

Telerik.WinControls.GridView.dll</td></tr><tr><td>

<b>RadHScrollBar</b></td><td>

Telerik.WinControls.UI.dll</td></tr><tr><td>

<b>RadLabel</b></td><td>

Telerik.WinControls.UI.dll</td></tr><tr><td>

<b>RadLinearGauge</b></td><td>

Telerik.WinControls.UI.dll</td></tr><tr><td>

<b>RadMaskedEditBox</b></td><td>

Telerik.WinControls.UI.dll</td></tr><tr><td>

<b>RadMenu</b></td><td>

Telerik.WinControls.UI.dll</td></tr><tr><td>

<b>RadMultiColumnComboBox</b></td><td>

Telerik.WinControls.GridView.dll</td></tr><tr><td>

<b>RadPanel</b></td><td>

Telerik.WinControls.UI.dll</td></tr><tr><td>

<b>RadProgressBar</b></td><td>

Telerik.WinControls.UI.dll</td></tr><tr><td>

<b>RadRadioButton</b></td><td>

Telerik.WinControls.UI.dll</td></tr><tr><td>

<b>RadRepeatButton</b></td><td>

Telerik.WinControls.UI.dll</td></tr><tr><td>

<b>RadRibbonBar</b></td><td>

Telerik.WinControls.UI.dll</td></tr><tr><td>

<b>RadRibbonForm</b></td><td>

Telerik.WinControls.UI.dll</td></tr><tr><td>

<b>RadRotator</b></td><td>

Telerik.WinControls.UI.dll</td></tr><tr><td>

<b>RadScheduler</b></td><td>

Telerik.WinControls.Scheduler.dll</td></tr><tr><td>

<b>RadSpinEditor</b></td><td>

Telerik.WinControls.UI.dll</td></tr><tr><td>

<b>RadSplitButton</b></td><td>

Telerik.WinControls.UI.dll</td></tr><tr><td>

<b>RadStatusStrip</b></td><td>

Telerik.WinControls.UI.dll</td></tr><tr><td>

<b>RadTextBox</b></td><td>

Telerik.WinControls.UI.dll</td></tr><tr><td>

<b>RadThemeManager</b></td><td>

Telerik.WinControls.dll</td></tr><tr><td>

<b>RadTitleBar</b></td><td>

Telerik.WinControls.UI.dll</td></tr><tr><td>

<b>RadToggleButton</b></td><td>

Telerik.WinControls.UI.dll</td></tr><tr><td>

<b>RadTrackBar</b></td><td>

Telerik.WinControls.UI.dll</td></tr><tr><td>

<b>RadVScrollBar</b></td><td>

Telerik.WinControls.UI.dll</td></tr><tr><td>

<b>RadWaitingBar</b></td><td>

Telerik.WinControls.UI.dll</td></tr><tr><td>

<b>RadRating</b></td><td>

Telerik.WinControls.UI.dll</td></tr><tr><td>

<b>ShapedForm</b></td><td>

Telerik.WinControls.UI.dll</td></tr><tr><td>

<b>SchedulerBindingDataSource</b></td><td>

Telerik.WinControls.Scheduler.dll</td></tr><tr><td>

<b>RadShortcuts</b></td><td>

Telerik.WinControls.dll</td></tr><tr><td>

<b>AquaTheme</b></td><td>

Telerik.WinControls.Themes.Aqua.dll</td></tr><tr><td>

<b>DesertTheme</b></td><td>

Telerik.WinControls.Themes.Desert.dll</td></tr><tr><td>

<b>Office2007Black</b></td><td>

Telerik.WinControls.Themes.Office2007Black.dll</td></tr><tr><td>

<b>Office2007Silver</b></td><td>

Telerik.WinControls.Themes.Office2007Silver.dll</td></tr><tr><td>

<b>TelerikMetroTheme</b></td><td>

Telerik.WinControls.Themes.TelerikMetro.dll</td></tr><tr><td>

<b>BreezeTheme</b></td><td>

Telerik.WinControls.Themes.Breeze.dll</td></tr><tr><td>

<b>HighContrastBlackTheme</b></td><td>

Telerik.WinControls.Themes.HighContrastBlack.dll</td></tr><tr><td>

<b>Office2010Black</b></td><td>

Telerik.WinControls.Themes.Office2010BlackTheme.dll</td></tr><tr><td>

<b>Office2010Blue</b></td><td>

Telerik.WinControls.Themes.Office2010BlueTheme.dll</td></tr><tr><td>

<b>Office2010Silver</b></td><td>

Telerik.WinControls.Themes.Office2010SilverTheme.dll</td></tr><tr><td>

<b>Office2010Black</b></td><td>

Telerik.WinControls.Themes.Office2010BlackTheme.dll</td></tr><tr><td>

<b>Windows7</b></td><td>

Telerik.WinControls.Themes.Windows7.dll</td></tr><tr><td>

<b>RadMarkupDialog</b></td><td>

Telerik.WinControls.UI.RadMarkupDialog.dll</td></tr><tr><td>

<b>RadDropDownList</b></td><td>

Telerik.WinControls.UI.dll</td></tr><tr><td>

<b>RadListControl</b></td><td>

Telerik.WinControls.UI.dll</td></tr><tr><td>

<b>RadListView</b></td><td>

Telerik.WinControls.UI.dll</td></tr><tr><td>

<b>RadTreeView</b></td><td>

Telerik.WinControls.UI.dll</td></tr><tr><td>

<b>RadDesktopAlert</b></td><td>

Telerik.WinControls.UI.dll</td></tr><tr><td>

<b>RadSeparator</b></td><td>

Telerik.WinControls.UI.dll</td></tr><tr><td>

<b>RadWizard</b></td><td>

Telerik.WinControls.UI.dll</td></tr><tr><td>

<b>RadProgressBar</b></td><td>

Telerik.WinControls.UI.dll</td></tr><tr><td>

<b>RadOageView</b></td><td>

Telerik.WinControls.UI.dll</td></tr><tr><td>

<b>RadSplitContainer</b></td><td>

Telerik.WinControls.UI.dll</td></tr><tr><td>

<b>RadGroupBox</b></td><td>

Telerik.WinControls.UI.dll</td></tr><tr><td>

<b>RadPanel</b></td><td>

Telerik.WinControls.UI.dll</td></tr><tr><td>

<b>RadScrollablePanel</b></td><td>

Telerik.WinControls.UI.dll</td></tr><tr><td>

<b>RadRichTextBox</b></td><td>

Telerik.WinControls.RichTextBox.dll</td></tr><tr><td>

<b>RadRichTextEditor</b></td><td>

Telerik.WinControls.RichTextEditor.dll</td></tr><tr><td>

<b>RadSpellChecker</b></td><td>

Telerik.WinControls.SpellChecker.dll</td></tr><tr><td>

<b>RadPropertyGrid</b></td><td>

Telerik.WinControls.UI.dll</td></tr><tr><td>

<b>RadRangeSelector</b></td><td>

Telerik.WinControls.UI.dll</td></tr><tr><td>

<b>RadReminder</b></td><td>

Telerik.WinControls.Scheduler.dll</td></tr><tr><td>

<b>RadSchedulerReminder</b></td><td>

Telerik.WinControls.Scheduler.dll</td></tr><tr><td>

<b>RadSchedulerNavigator</b></td><td>

Telerik.WinControls.Scheduler.dll</td></tr><tr><td>

<b>RadCommandBar</b></td><td>

Telerik.WinControls.UI.dll</td></tr><tr><td>

<b>RadMessageBox</b></td><td>

Telerik.WinControls.UI.dll</td></tr><tr><td>

<b>RadAutoCompleteBox</b></td><td>

Telerik.WinControls.UI.dll</td></tr><tr><td>

<b>RadTextBoxControl</b></td><td>

Telerik.WinControls.UI.dll</td></tr><tr><td>

<b>RadChartView</b></td><td>

Telerik.WinControls.ChartView.dll</td></tr><tr><td>

<b>RadPivotGrid</b></td><td>

Telerik.WinControls.RadPivotGrid.dll</td></tr><tr><td>

<b>RadPivotFieldList</b></td><td>

Telerik.WinControls.RadPivotGrid.dll</td></tr><tr><td>

<b>RadPdfViewer</b></td><td>

Telerik.WinControls.PdfViewer.dll</td></tr><tr><td>

<b>RadGanttView</b></td><td>

Telerik.WinControls.UI.dll</td></tr><tr><td>

<b>RadBindingNavigator</b></td><td>

Telerik.WinControls.UI.dll</td></tr><tr><td>

<b>RadCollapsiblePanel</b></td><td>

Telerik.WinControls.UI.dll</td></tr><tr><td>

<b>RadDataEntry</b></td><td>

Telerik.WinControls.UI.dll</td></tr><tr><td>

<b>RadRadialGauge</b></td><td>

Telerik.WinControls.UI.dll</td></tr><tr><td>

<b>RadCheckedDropDownList</b></td><td>

Telerik.WinControls.UI.dll</td></tr><tr><td>

<b>Office2013Dark</b></td><td>

Telerik.WinControls.Themes.Office2013Dark.dll</td></tr><tr><td>

<b>Office2013Light</b></td><td>

Telerik.WinControls.Themes.Office2013Light.dll</td></tr><tr><td>

<b>TelerikMetroBlue</b></td><td>

Telerik.WinControls.Themes.TelerikMetroBlue.dll</td></tr><tr><td>

<b>TelerikMetroTouch</b></td><td>

Telerik.WinControls.Themes.TelerikMetroTouch.dll</td></tr><tr><td>
<b>Material</b></td><td>

Telerik.WinControls.Themes.Material.dll</td></tr><tr><td>

<b>VisualStudio2012Dark</b></td><td>

Telerik.WinControls.Themes.VisualStudio2012Dark.dll</td></tr><tr><td>

<b>VisualStudio2012Light</b></td><td>

Telerik.WinControls.Themes.VisualStudio2012Light.dll</td></tr><tr><td>

<b>Windows8</b></td><td>

Telerik.WinControls.Themes.Windows8.dll</td></tr>

<tr><td><b>RadToggleSwitch</b></td><td>Telerik.WinControls.UI.dll</td></tr>
<tr><td><b>RadLayoutControl</b></td><td>Telerik.WinControls.UI.dll</td></tr>
<tr><td><b>RadPopupEditor</b></td><td>Telerik.WinControls.UI.dll</td></tr>
<tr><td><b>RadDataLayout</b></td><td>Telerik.WinControls.UI.dll</td></tr>
<tr><td><b>RadVirtualGrid</b></td><td>Telerik.WinControls.GridView.dll</td></tr>

<tr><td><b>RadPanorama</b></td><td>Telerik.WinControls.UI.dll</td></tr>
<tr><td><b>RadBrowseEditor</b></td><td>Telerik.WinControls.UI.dll</td></tr>
<tr><td><b>RadCalculatorDropDown</b></td><td>Telerik.WinControls.UI.dll</td></tr>
<tr><td><b>RadColorBox</b></td><td>Telerik.WinControls.UI.dll</td></tr>
<tr><td><b>RadTimePicker</b></td><td>Telerik.WinControls.UI.dll</td></tr>
<tr><td><b>RadClock</b></td><td>Telerik.WinControls.UI.dll</td></tr>
<tr><td><b>RadPdfViewerNavigator</b></td><td>Telerik.WinControls.PdfViewer.dll</td></tr>
<tr><td><b>RadCardView</b></td><td>Telerik.WinControls.UI.dll</td></tr>
<tr><td><b>RadMap</b></td><td>Telerik.WinControls.RadMap.dll</td></tr>
</table>
