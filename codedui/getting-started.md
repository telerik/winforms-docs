---
title: Getting Started
page_title: Getting Started | UI for WinForms Documentation
description: Getting Started
slug: winforms/codedui/getting-started
tags: getting,started
published: True
position: 2
previous_url: codedui-getting-started
---

# Getting Started



| RELATED VIDEOS |  |
| ------ | ------ |
|[What is new in R3 2012 Telerik UI for WinForms](http://www.telerik.com/videos/winforms/what-is-new-in-q3-2012-radcontrols-for-winforms)<br>This webinar examines the new features found in Telerik UI for WinForms. Included in the R3 2012 release is RadPivotGrid (Beta), Coded UI Testing Support, touch, legend and financial charts for RadChartView, Visual Studio 2012 compliance and much much more. Get started with Coded UI Test and Telerik UI for WinForms now! (25:02 - 31:32)|![webinar Q 32012](images/webinarQ32012.png)|
|[Getting Started with Coded UI for WinForms](http://tv.telerik.com/watch/radcontrols-for-winforms/getting-started-with-coded-ui-for-winforms)<br>Telerik UI for WinForms R3 2012 introduces full support for Coded UI Tests implementing all four Coded UI Test levels. These enhancements are available not only in Visual Studio 2010, but also in the new Visual Studio 2012. Today, we will take a look at Getting started with CodedUI testing using Telerik UI for WinForms.|![codedui-getting-started 000](images/codedui-getting-started000.png)|

This article will demonstrate how to create a simple test with RadListControl and CodedUI

1. Open the test menu by clicking the Visual Studio __Test > New Test menu__

1. Choose "Coded UI Test" and click OK.
            ![codedui-getting-started 001](images/codedui-getting-started001.png)

1. Select the first option -- "Record actions, edit UI map or add assertions"
            ![codedui-getting-started 002](images/codedui-getting-started002.png)

1. Then, start an application created with Telerik UI for WinForms - in our case this is a form with RadListControl.
            ![codedui-getting-started 003](images/codedui-getting-started003.png)

1. Once the test has been recorded, choose "Generate Code" from the Record window and then add an Assertion from Coded UI Spy
              to check the __SelectedIndex__ property value.
            ![codedui-getting-started 004](images/codedui-getting-started004.png)

1. In the generated code you can see the recorded actions aggregated into corresponding properties sets:
            ![codedui-getting-started 005](images/codedui-getting-started005.png)![codedui-getting-started 006](images/codedui-getting-started006.png)

1. You can run the test from Visual Studio nenu __Test->Run->Run Test__.
            
