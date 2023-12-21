---
title: Getting Started
page_title: Getting Started - WinForms CardView Control
description: WinForms CardView is a control developed on top of Telerik Presentation Framework which provides a way for displaying and editing text data as well as performing layout modifications
slug: winforms/cardview/getting-started
tags: getting,started
published: True
position: 3
---

# Getting Started with WinForms CardView

The example below demonstrates setting up __RadCardView__ to display data from the *Northwind* database.

## Setting up the Form 

1. Create a new __Windows Forms Application__ project.
            
1. Drop a __RadCardView__ control on the form.
            

## Connecting to Data

1. Open the __Smart Tag__ of the control and in the __Choose DataSource__ drop down select *Add Project Data Source..*
![WinForms RadCardView Choose DataSource](images/radcardview-getting-started001.png)

1. In the __Data Source Configuration Wizard__, select the *Database* icon, and click *Next*.
![WinForms RadCardView Data Source Configuration Wizard](images/radcardview-getting-started002.png)

1. In the __Choose a Database Model__ page of the wizard, select the *Dataset* icon and click *Next*.
            
1. In the __Choose Your Data Connection__ dialog, click on the *New Connection* button. This will display the Add Connection dialog.

1. In the __Change Data Source dialog__, select *Microsoft Access Data Base File* from the data source list.

1. Click *OK* to close the __Change Data Source__ dialog.

1. In the __Add Connection__ dialog, click on the *Browse* button. This step will display the __Select Microsoft Access Database File__ dialog.

1. In the __Select Microsoft Access Database File__ dialog, navigate to Telerik UI for WinForms installation directory and locate the `Nwind.mdb` file within the \Examples\QuickStart\Datasources directory. Select `Nwind.mdb` and click *OK* to close the __Select Microsoft Access Database File__ dialog.

1. Click *OK* to close __Add Connection__ dialog.

1. In __Choose Your Data Connection__ page of the wizard, click *Next*. This step will display a Microsoft Visual Studio dialog that prompts to ask if you want to copy the file to your project. Click *Yes* to close the dialog.   

1. In __Save the Connection String to the Application Configuration File__ page of the wizard, click the *Next* button. 

1. In __Choose Database Objects__ page of the dialog, select the *Employees* table
![WinForms RadCardView Employees DataBase](images/radcardview-getting-started003.png)

1. Now, __RadCardView__ is bound to the *Employees* table from the *Northwind* database and should look like this screen shot below: 
![WinForms RadCardView Bound Employees](images/radcardview-getting-started004.png)

1. Press __F5__ to run the application.
![WinForms RadCardView Getting Started](images/radcardview-getting-started005.gif)
            
# See Also

* [Structure]({%slug winforms/cardview/structure%})
* [Design Time]({%slug winforms/cardview/design-time%})

## Telerik UI for WinForms Learning Resources
* [Telerik UI for WinForms CardView Component](https://www.telerik.com/products/winforms/cardview.aspx)
* [Getting Started with Telerik UI for WinForms Components](https://docs.telerik.com/devtools/winforms/getting-started/first-steps)
* [Telerik UI for WinForms Setup](https://docs.telerik.com/devtools/winforms/installation-and-upgrades/installing-on-your-computer)
* [Telerik UI for WinForms Application Modernization](https://docs.telerik.com/devtools/winforms/winforms-converter/overview)
* [Telerik UI for WinForms Visual Studio Templates](https://docs.telerik.com/devtools/winforms/visual-studio-integration/visual-studio-templates)
* [Deploy Telerik UI for WinForms Applications](https://docs.telerik.com/devtools/winforms/deployment-and-distribution/application-deployment)
* [Telerik UI for WinForms Virtual Classroom(Training Courses for Registered Users)](https://learn.telerik.com/learn/course/external/view/elearning/17/telerik-ui-for-winforms)
* [Telerik UI for WinForms License Agreement)](https://www.telerik.com/purchase/license-agreement/winforms-dlw-s)

