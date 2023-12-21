---
title: Getting Started
page_title: Getting Started - WinForms CollapsiblePanel Control
description: WinForms CollapsiblePanel is an expandable panel which can host controls in its content area.
slug: winforms/panels-and-labels/collapsiblepanel/getting-started
tags: getting,started
published: True
position: 3
previous_url: panels-and-labels-collapsible-panel-getting-started
---

# Getting Started with WinForms CollapsiblePanel

__RadCollapsiblePanel__ can host many controls in its controls container area, which then can be collapsed. This way you will be able to save space in your application as the control can use as much space as it needs for its header. 

In this article you will learn the basics of how to use RadCollapsiblePanel. We will recreate a scenario where you have a [RadGridView]({%slug winforms/gridview%}) which you do not want to show at all times. This is how our Form will look like when we finish if **RadCollapsiblePanel** is collapsed.

>caption Figure 1: Collapsed Panel
>
![WinForms RadTemplates Collapsed Panel](images/panels-and-labels-collapsible-panel-getting-started001.png)

And this is how it will look if the panel is expanded.

>caption Figure 2: Expanded Panel
>
![WinForms RadTemplates Expanded Panel](images/panels-and-labels-collapsible-panel-getting-started002.png)

1\. Create a **RadForm** and add a few controls (buttons in our case) on the left side of the form, but leave about 30 pixels to the form’s border. These controls will be visible only when **RadCollapsiblePanel** is collapsed.

![WinForms RadTemplates panels-and-labels-collapsible-panel-getting-started 003](images/panels-and-labels-collapsible-panel-getting-started003.png)

2\. Now drag a **RadCollapsiblePanel** control from the Toolbox of Visual Studio onto the form. Drag it to the top-left corner of the form and increase its height so it fits the height of the form. From the Property Window set the following properties

* __ExpandDirection__: *Right*

* __Anchor__: *Top, Left, Botton*

* __HeaderText__: *"ShowGrid"*

    ![WinForms RadTemplates panels-and-labels-collapsible-panel-getting-started 004](images/panels-and-labels-collapsible-panel-getting-started004.png)

3\. Increase the panel's width to at least the half of the form. After this is ready drag a **RadGridView** to the controls container of the **RadCollapsiblePanel** instance you just created and set the following properties to the grid:

* __Dock__: *Fill*

* __DataSource__: *This is optional, you can read how to bind RadGridView* [WinForms RadTemplates here]({%slug winforms/gridview/populating-with-data/databinding-radgridview%})<br>![WinForms RadTemplates panels-and-labels-collapsible-panel-getting-started 002](images/panels-and-labels-collapsible-panel-getting-started002.png)

#### Handle Events

{{source=..\SamplesCS\PanelsAndLabels\CollapsiblePanel\CollapsiblePanelGettingStarted.cs region=ExpandCollapseHandlers}} 
{{source=..\SamplesVB\PanelsAndLabels\CollapsiblePanel\CollapsiblePanelGettingStarted.vb region=ExpandCollapseHandlers}} 

````C#
void radCollapsiblePanel1_Collapsed(object sender, EventArgs e)
{
    this.radCollapsiblePanel1.HeaderText = "Show Grid";
}
void radCollapsiblePanel1_Expanded(object sender, EventArgs e)
{
    this.radCollapsiblePanel1.HeaderText = "Hide Grid";
}

````
````VB.NET
Private Sub radCollapsiblePanel1_Collapsed(sender As Object, e As EventArgs)
    Me.RadCollapsiblePanel1.HeaderText = "Show Grid"
End Sub
Private Sub radCollapsiblePanel1_Expanded(sender As Object, e As EventArgs)
    Me.RadCollapsiblePanel1.HeaderText = "Hide Grid"
End Sub

````

{{endregion}} 

Our example is ready to be tested. You can start the application and observe the following:

>caption Figure 3: End Result
>
![WinForms RadTemplates End Result](images/panels-and-labels-collapsible-panel-getting-started005.gif)


# See Also

* [Structure]({%slug winforms/panels-and-labels/collapsiblepanel/structure%})
* [Design Time]({%slug winforms/panels-and-labels/collapsiblepanel/design-time%})

## Telerik UI for WinForms Learning Resources
* [Telerik UI for WinForms CollapsiblePanel Component](https://www.telerik.com/products/winforms/collapsiblepanel.aspx)
* [Getting Started with Telerik UI for WinForms Components](https://docs.telerik.com/devtools/winforms/getting-started/first-steps)
* [Telerik UI for WinForms Setup](https://docs.telerik.com/devtools/winforms/installation-and-upgrades/installing-on-your-computer)
* [Telerik UI for WinForms Application Modernization](https://docs.telerik.com/devtools/winforms/winforms-converter/overview)
* [Telerik UI for WinForms Visual Studio Templates](https://docs.telerik.com/devtools/winforms/visual-studio-integration/visual-studio-templates)
* [Deploy Telerik UI for WinForms Applications](https://docs.telerik.com/devtools/winforms/deployment-and-distribution/application-deployment)
* [Telerik UI for WinForms Virtual Classroom(Training Courses for Registered Users)](https://learn.telerik.com/learn/course/external/view/elearning/17/telerik-ui-for-winforms)
* [Telerik UI for WinForms License Agreement)](https://www.telerik.com/purchase/license-agreement/winforms-dlw-s)

