---
title: Getting Started
page_title: Getting Started - WinForms DateTimePicker Control
description: WinForms DateTimePicker allows interactive selection of dates using a drop down calendar. 
slug: winforms/editors/datetimepicker/getting-started
tags: getting,started
published: True
position: 3
previous_url: editors-datetimepicker-getting-started
---

# Getting Started with WinForms DateTimePicker

This article shows how you can start using **RadDateTimePicker**.

## Adding Telerik Assemblies Using NuGet

To use `RadDateTimePicker` when working with NuGet packages, install the `Telerik.UI.for.WinForms.AllControls` package. The [package target framework version may vary]({%slug winforms-available-nugets%}).

Read more about NuGet installation in the [Install using NuGet Packages]({%slug winforms/nuget%}) article.

>tip With the 2025 Q1 release, the Telerik UI for WinForms has a new licensing mechanism. You can learn more about it [here]({%slug license-key%}).

## Adding Assembly References Manually

When dragging and dropping a control from the Visual Studio (VS) Toolbox onto the Form Designer, VS automatically adds the necessary assemblies. However, if you're adding the control programmatically, you'll need to manually reference the following assemblies:

* __Telerik.Licensing.Runtime__
* __Telerik.WinControls__
* __Telerik.WinControls.UI__
* __TelerikCommon__

The Telerik UI for WinForms assemblies can be install by using one of the available [installation approaches]({%slug winforms/installation-deployment-and-distribution/installing-on-your-computer%}). 

## Defining the RadDateTimePicker

The following tutorial demonstrates basic usage of __RadDateTimePicker__, formatting and applying themes.

1. Drop __RadDateTimePicker__ on the form.

	![WinForms RadDateTimePicker ToolBox Drag Drop](images/editors-datetimepicker-getting-started002.png)
          
1. In the __Properties__ window use the drop down calendar to set the __MinDate__ property to the first day of the current month.

	![WinForms RadDateTimePicker Properties](images/editors-datetimepicker-getting-started003.png)          

1. Set the __MaxDate__ property to be the last day of the current month.

	![WinForms RadDateTimePicker MaxDate Property](images/editors-datetimepicker-getting-started004.png)           

1. Set the __Format__ property to __Short__.

	![WinForms RadDateTimePicker Format Property](images/editors-datetimepicker-getting-started005.png)           

1. Drag __Office2010BlackTheme__ on the form

	![WinForms RadDateTimePicker ToolBox DragDrop Office2010BlackTheme](images/editors-datetimepicker-getting-started006.png)            

1. Set the __ThemeName__ property to __Office2010Black__.

	![WinForms RadDateTimePicker ThemeName Property](images/editors-datetimepicker-getting-started007.png)             

1. Press __F5__ to run the application. You will only be able to pick dates that are within the current month, the drop down calendar will display in the Office2010BlackTheme theme and the date will display in short format.

>caption Figure 1: RadDateTimePicker with the Office2010Black theme.
 
![WinForms RadDateTimePicker With The Office00Black Theme](images/editors-datetimepicker-getting-started001.png)


## See Also

* [Design Time]({%slug winforms/editors/datetimepicker/designtime%})
* [Free Form Date Time Parsing]({%slug winforms/editors/datetimepicker/free-form-date-time-parsing%})
* [MaskDateTimeProvider]({%slug winforms/editors/maskeddatetimeprovider%})
* [Properties]({%slug winforms/editors/datetimepicker/raddatetimepicker-properties%})
* [Structure]({%slug winforms/editors/datetimepicker%})
* [Specify the Minutes/Hours Step in DateTimePicker's Popup]({%slug winforms/editors/datetimepicker/getting-started%})

## Telerik UI for WinForms Learning Resources
* [Telerik UI for WinForms DateTimePicker Component](https://www.telerik.com/products/winforms/datetimepicker.aspx)
* [Getting Started with Telerik UI for WinForms Components](https://docs.telerik.com/devtools/winforms/getting-started/first-steps)
* [Telerik UI for WinForms Setup](https://docs.telerik.com/devtools/winforms/installation-and-upgrades/installing-on-your-computer)
* [Telerik UI for WinForms Application Modernization](https://docs.telerik.com/devtools/winforms/winforms-converter/overview)
* [Telerik UI for WinForms Visual Studio Templates](https://docs.telerik.com/devtools/winforms/visual-studio-integration/visual-studio-templates)
* [Deploy Telerik UI for WinForms Applications](https://docs.telerik.com/devtools/winforms/deployment-and-distribution/application-deployment)
* [Telerik UI for WinForms Virtual Classroom(Training Courses for Registered Users)](https://learn.telerik.com/learn/course/external/view/elearning/17/telerik-ui-for-winforms)
* [Telerik UI for WinForms License Agreement)](https://www.telerik.com/purchase/license-agreement/winforms-dlw-s)

