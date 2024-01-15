---
title: Getting Started
page_title: Getting Started - WinForms DataFilter Control
description: WinForms DataFilter is a control that allows you to filter your data.
slug: winforms/datafilter/getting-started
tags: data, filter, getting, started
published: True
position: 3
---

# Getting Started with WinForms DataFilter

__RadDataFilter__ is a control that allows you to filter your data. It allows you to create complex filter criteria by using unlimited number of filter conditions combined by logical operators. This article will show you how to start using this control.

1\. Add a __RadGridView__, a __RadDataFilter__ and the __TelerikMetro__ theme to a form. Set the theme of all controls to TelerikMetro.

2\. Populate the grid using the Nwind database, use the __Orders__ table as a data source. More information is available [here]({%slug  winforms/gridview/populating-with-data/tutorial:-binding-to-datatable-or-dataset%}). This way the binding source will be automatically created.

At this point your form should look like this:
    
![WinForms RadDataFilter Getting Started](images/datafilter-getting-started001.png)


3\. Open the **Smart Tag** of the **RadDataFilter** control and select the "ordersBindingSource".

![WinForms RadDataFilter Smart Tag](images/datafilter-getting-started002.png)

4\. When the user adds his filtering criteria, the control automatically produces a filter expression available in its Expression property. To apply this filter to the underlying BindingSource, the __ApplyFilter__ method should be invoked. We can use the control events to call the method when new filter is added by the user for example when an item is applied and when removed. Since the RadDataFilter control is build on top of RadTreeView we can use the NodeRemoved and the Edited events for the purpose. 

{{source=..\SamplesCS\DataFilter\DataFilterGettingStarted.cs region=Events}} 
{{source=..\SamplesVB\DataFilter\DataFilterGettingStarted.vb region=Events}}
````C#
private void RadDataFilter1_NodeRemoved(object sender, RadTreeViewEventArgs e)
{
    radDataFilter1.ApplyFilter();
}
private void RadDataFilter1_Edited(object sender, TreeNodeEditedEventArgs e)
{
    radDataFilter1.ApplyFilter();
}

````
````VB.NET
Private Sub RadDataFilter1_NodeRemoved(ByVal sender As Object, ByVal e As RadTreeViewEventArgs)
    RadDataFilter1.ApplyFilter()
End Sub
Private Sub RadDataFilter1_Edited(ByVal sender As Object, ByVal e As TreeNodeEditedEventArgs)
    RadDataFilter1.ApplyFilter()
End Sub

```` 


{{endregion}}


5\. Start the application and add some filters.

![WinForms RadDataFilter Getting Started](images/datafilter-getting-started003.gif)

# See Also 

* [End-user functionality]({%slug winforms/datafilter/end-user-functionality%})

## Telerik UI for WinForms Learning Resources
* [Getting Started with Telerik UI for WinForms Components](https://docs.telerik.com/devtools/winforms/getting-started/first-steps)
* [Telerik UI for WinForms Setup](https://docs.telerik.com/devtools/winforms/installation-and-upgrades/installing-on-your-computer)
* [Telerik UI for WinForms Application Modernization](https://docs.telerik.com/devtools/winforms/winforms-converter/overview)
* [Telerik UI for WinForms Visual Studio Templates](https://docs.telerik.com/devtools/winforms/visual-studio-integration/visual-studio-templates)
* [Deploy Telerik UI for WinForms Applications](https://docs.telerik.com/devtools/winforms/deployment-and-distribution/application-deployment)
* [Telerik UI for WinForms Virtual Classroom(Training Courses for Registered Users)](https://learn.telerik.com/learn/course/external/view/elearning/17/telerik-ui-for-winforms)
* [Telerik UI for WinForms License Agreement)](https://www.telerik.com/purchase/license-agreement/winforms-dlw-s)

