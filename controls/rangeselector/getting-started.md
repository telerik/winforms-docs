---
title: Getting Started
page_title: Getting Started - WinForms RangeSelector Control
description: WinForms RangeSelector provides an elegant solution for end-users to select range (in percentages) and these percentages could be mapped to any kind of visually represented data. 
slug: winforms/rangeselector/getting-started
tags: getting,started
published: True
position: 3
previous_url: rangeselector-getting-started
---

# Getting Started with WinForms RangeSelector

This tutorial demonstrates how to use __RadRangeSelector__ to get a fine grain view of the data represented in __RadChartView__.

1\. Place a __RadRangeSelector__ and __RadChartView__ controls on a form.

2\. Setup your __RadChartView__ with some data.

3\. Associate the __RadChartView__ control to __RadRangeSelector__ by setting its __AssociatedControl__ property. You can do that by one of the following ways:

* Set in code:

{{source=..\SamplesCS\RangeSelector\RangeSelectorGettingStarted.cs region=set associatedControl}} 
{{source=..\SamplesVB\RangeSelector\RangeSelectorGettingStarted.vb region=set associatedControl}} 

````C#
this.radRangeSelector1.AssociatedControl = this.radChartView1;

````
````VB.NET
Me.radRangeSelector1.AssociatedControl = Me.radChartView1

````

{{endregion}}

* Set in Property Builder at design time:

    ![WinForms RadRangeSelector Property Builder](images/rangeselector-getting-started001.png)

* Set it by using the control’s SmartTag at design time:
    ![WinForms RadRangeSelector Smart Tag ](images/rangeselector-getting-started002.png)

4\. Press F5 to run the project.
    ![WinForms RadRangeSelector Visualization](images/rangeselector-getting-started003.gif)

# See Also

* [Design Time]({%slug winforms/rangeselector/design-time%})
* [Structure]({%slug winforms/rangeselector/structure%})
* [Integration with RadChartView]({%slug winforms/rangeselector/integration-with-radchartview%})

## Telerik UI for WinForms Learning Resources
* [Telerik UI for WinForms RangeSelector Component](https://www.telerik.com/products/winforms/rangeselector.aspx)
* [Getting Started with Telerik UI for WinForms Components](https://docs.telerik.com/devtools/winforms/getting-started/first-steps)
* [Telerik UI for WinForms Setup](https://docs.telerik.com/devtools/winforms/installation-and-upgrades/installing-on-your-computer)
* [Telerik UI for WinForms Application Modernization](https://docs.telerik.com/devtools/winforms/winforms-converter/overview)
* [Telerik UI for WinForms Visual Studio Templates](https://docs.telerik.com/devtools/winforms/visual-studio-integration/visual-studio-templates)
* [Deploy Telerik UI for WinForms Applications](https://docs.telerik.com/devtools/winforms/deployment-and-distribution/application-deployment)
* [Telerik UI for WinForms Virtual Classroom(Training Courses for Registered Users)](https://learn.telerik.com/learn/course/external/view/elearning/17/telerik-ui-for-winforms)
* [Telerik UI for WinForms License Agreement)](https://www.telerik.com/purchase/license-agreement/winforms-dlw-s)

