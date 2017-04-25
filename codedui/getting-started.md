---
title: Getting Started
page_title: Getting Started | CodedUI
description: The CodedUI Extension for Progress&reg; Telerik&reg; UI for WinForms controls is an extension for Microsoft Visual Studio, which runs in the Visual Studio Coded UI Test process and captures information about the Rad Controls that it encounters during a test recording and then generates code to replay that test session.
slug: winforms/codedui/getting-started
tags: getting,started
published: True
position: 2
previous_url: codedui-getting-started
---

# Getting Started

| RELATED VIDEOS |  |
| ------ | ------ |
|[What is new in R3 2012 Progress&reg; Telerik&reg; UI for WinForms](http://www.telerik.com/videos/winforms/what-is-new-in-q3-2012-radcontrols-for-winforms)<br>This webinar examines the new features found in Progress&reg; Telerik&reg; UI for WinForms. Included in the R3 2012 release is RadPivotGrid (Beta), Coded UI Testing Support, touch, legend and financial charts for RadChartView, Visual Studio 2012 compliance and much much more. Get started with Coded UI Test and Progress&reg; Telerik&reg; UI for WinForms now! (25:02 - 31:32)|![webinar Q 32012](images/webinarQ32012.png)|
|[Getting Started with Coded UI for WinForms](http://tv.telerik.com/watch/radcontrols-for-winforms/getting-started-with-coded-ui-for-winforms)<br>Progress&reg; Telerik&reg; UI for WinForms R3 2012 introduces full support for Coded UI Tests implementing all four Coded UI Test levels. These enhancements are available not only in Visual Studio 2010, but also in the new Visual Studio 2012. Today, we will take a look at Getting started with CodedUI testing using Progress&reg; Telerik&reg; UI for WinForms.|![codedui-getting-started 000](images/codedui-getting-started000.png)|

This article will demonstrate how to create a simple test with **RadListControl** and CodedUI:

1\. Create a **Coded UI Test Project**:

![codedui-getting-started 007](images/codedui-getting-started007.png)

2\. Right click over the project file and select *Coded UI Test* to create a new test.

![codedui-getting-started 001](images/codedui-getting-started008.png)

3\. Alternatively, you can select *Add >> New Item* option and select *Coded UI Test* and click `Add`.

![codedui-getting-started 001](images/codedui-getting-started001.png)

4\. Select the first option - *"Record actions, edit UI map or add assertions"*

![codedui-getting-started 002](images/codedui-getting-started002.png)

>note It is necessary to set **EnableCodedUITests** property to *true* for each control that is contained in the form for which you record a CodedUI test. In R2 2017 we introduced the static RadControl.**EnableCodedUITestsDefaultValue** property which controls the default value for enabling CodedUI for all controls from UI for WinForms suite. It is recommended to set the property before calling **InitializeComponent** method. 

5\. Then, start an application created with Progress&reg; Telerik&reg; UI for WinForms - in our case this is a form with **RadListControl**.

![codedui-getting-started 003](images/codedui-getting-started003.png)

6\. Once the test has been recorded, choose "Generate Code" from the Record window and then add an Assertion from Coded UI Spy to check the __SelectedIndex__ property value.

![codedui-getting-started 004](images/codedui-getting-started004.png)

7\. In the generated code you can see the recorded actions aggregated into corresponding properties sets:

![codedui-getting-started 005](images/codedui-getting-started005.png)![codedui-getting-started 006](images/codedui-getting-started006.png)

8\. You can run the test from Visual Studio menu *Test -> Run -> Run Test*.
            
