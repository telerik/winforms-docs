---
title: Getting Started
page_title: Getting Started - WinForms ChartView Control
description: WinForms ChartView is a control developed on top of Telerik Presentation Framework. It incorporates various series types handling different business scenarios.
slug: winforms/chartview/getting-started
tags: getting,started
published: True
position: 5
---

# Getting Started with WinForms ChartView

This article shows how you can start using **RadChartView**.

## Adding Telerik Assemblies Using NuGet

To use `RadChartView` when working with NuGet packages, install the `Telerik.UI.for.WinForms.AllControls` package. The [package target framework version may vary]({%slug winforms-available-nugets%}).

Read more about NuGet installation in the [Install using NuGet Packages]({%slug winforms/nuget%}) article.

>tip With the 2025 Q1 release, the Telerik UI for WinForms has a new licensing mechanism. You can learn more about it [here]({%slug license-key%}).

## Adding Assembly References Manually

When dragging and dropping a control from the Visual Studio (VS) Toolbox onto the Form Designer, VS automatically adds the necessary assemblies. However, if you're adding the control programmatically, you'll need to manually reference the following assemblies:

* __Telerik.Licensing.Runtime__
* __Telerik.WinControls__
* __Telerik.WinControls.UI__
* __TelerikCommon__

The Telerik UI for WinForms assemblies can be install by using one of the available [installation approaches]({%slug winforms/installation-deployment-and-distribution/installing-on-your-computer%}). 

## Defining the RadChartView

The example below demonstrates setting up __RadChartView__ to display data from the *Northwind* database.

### Setting up the Form 

1. Create a new __Windows Application__ project.
            
1. Drop a __RadChartView__ control on the form.

### Connecting to Data

1. Open the __Smart Tag__ of the control and in the __Cooose DataSource__ drop down select *Add Project Data Source..*
![WinForms RadChartView Data Smart Tag](images/radchartview-getting-started001.png)

1. In the __Data Source Configuration Wizard__, select the *Database* icon, and click *Next*.
![WinForms RadChartView Data Source Configuration Wizard](images/radchartview-getting-started002.png)

1. In the __Choose a Database Model__ page of the wizard, select the *Dataset* icon and click *Next*.
            
1. In the __Choose Your Data Connection__ dialog, click on the *New Connection* button. This will display the Add Connection dialog.

1. In the __Change Data Source dialog__, select *Microsoft Access Data Base File* from the data source list.

1. Click *OK* to close the __Change Data Source__ dialog.

1. In the __Add Connection__ dialog, click on the *Browse* button. This step will display the __Select Microsoft Access Database File__ dialog.

1. In the __Select Microsoft Access Database File__ dialog, navigate to Telerik UI for WinForms installation directory and locate the Nwind.mdb file within the \Examples\QuickStart\Datasources directory. Select Nwind.mdb and click *OK* to close the __Select Microsoft Access Database File__ dialog.

1. Click *OK* to close __Add Connection__ dialog.

1. In __Choose Your Data Connection__ page of the wizard, click *Next*. This step will display a Microsoft Visual Studio dialog that prompts to ask if you want to copy the file to your project. Click *Yes* to close the dialog.   

1. In __Save the Connection String to the Application Configuration File__ page of the wizard, click the *Next* button. 

1. In __Choose Database Objects__ page of the dialog, select the *Employees* table
![WinForms RadChartView Choose Database Employees Objects](images/radchartview-getting-started003.png)

1. Back in the __Smart Tag__ of the control click on the *Series* drop-down button and open the __ChartSeries Collection Editor__ dialog. Add a new __BarSeries__.
![WinForms RadChartView ChartSeries Collection Editor](images/radchartview-getting-started004.png)

1. Set the __CategoryMember__ and __ValueMember__ fields to *LastName* and *Extension* respectively. Make sure that the __DataSource__ property points the *Employees* binding source instance.
![WinForms RadChartView Set CategoryMember ValueMember](images/radchartview-getting-started005.gif)

1. Press __F5__ to run the application.
![WinForms RadChartView Getting Started](images/radchartview-getting-started006.png)
            
## See Also

* [Design Time]({%slug winforms/chartview/design-time/smart-tag%})
* [Property Builder]({%slug winforms/chartview/design-time/property-builder%})

## Telerik UI for WinForms Learning Resources
* [Telerik UI for WinForms ChartView Component](https://www.telerik.com/products/winforms/chartview.aspx)
* [Getting Started with Telerik UI for WinForms Components](https://docs.telerik.com/devtools/winforms/getting-started/first-steps)
* [Telerik UI for WinForms Setup](https://docs.telerik.com/devtools/winforms/installation-and-upgrades/installing-on-your-computer)
* [Telerik UI for WinForms Application Modernization](https://docs.telerik.com/devtools/winforms/winforms-converter/overview)
* [Telerik UI for WinForms Visual Studio Templates](https://docs.telerik.com/devtools/winforms/visual-studio-integration/visual-studio-templates)
* [Deploy Telerik UI for WinForms Applications](https://docs.telerik.com/devtools/winforms/deployment-and-distribution/application-deployment)
* [Telerik UI for WinForms Virtual Classroom(Training Courses for Registered Users)](https://learn.telerik.com/learn/course/external/view/elearning/17/telerik-ui-for-winforms)
* [Telerik UI for WinForms License Agreement)](https://www.telerik.com/purchase/license-agreement/winforms-dlw-s)

