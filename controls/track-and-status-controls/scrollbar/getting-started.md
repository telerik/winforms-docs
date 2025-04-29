---
title: Getting Started
page_title: Getting Started - WinForms ScrollBar Control
description: Learn how using Telerik scrollbars is a bit more intricate compared to using the standard scroll bars because you have to handle scroll event manually.
slug: winforms/track-and-status-controls/scrollbar/getting-started
tags: getting,started
published: True
position: 2
previous_url: track-and-status-controls-scrollbar-getting-started
---

# Getting Started with WinForms ScrollBar

This tutorial will help you to quickly get started using the control.

## Adding Telerik Assemblies Using NuGet

To use `RadScrollBar` when working with NuGet packages, install the `Telerik.UI.for.WinForms.AllControls` package. The [package target framework version may vary]({%slug winforms-available-nugets%}).

Read more about NuGet installation in the [Install using NuGet Packages]({%slug winforms/nuget%}) article.

>tip With the 2025 Q1 release, the Telerik UI for WinForms has a new licensing mechanism. You can learn more about it [here]({%slug license-key%}).

## Adding Assembly References Manually

When dragging and dropping a control from the Visual Studio (VS) Toolbox onto the Form Designer, VS automatically adds the necessary assemblies. However, if you're adding the control programmatically, you'll need to manually reference the following assemblies:

* __Telerik.Licensing.Runtime__
* __Telerik.WinControls__
* __Telerik.WinControls.UI__
* __TelerikCommon__

The Telerik UI for WinForms assemblies can be install by using one of the available [installation approaches]({%slug winforms/installation-deployment-and-distribution/installing-on-your-computer%}). 

## Defining the RadScrollBar

Using Telerik scroll bars is a bit more intricate compared to using the standard scroll bars because you have to handle scroll event manually. The rest of this article demonstrates how you can use two panels to implement scrolling for the content of the second panel.

1\. Add a **RadPanel** to your form (*TelerikMetro* theme was used for both panels. This theme is contained in the Miscellaneous theme component):

![WinForms RadScrollBar Add RadPanel](images/track-and-status-controls-scroll-bar-getting-started001.png)

2\. Add a **RadVScrollbar** in the panel and dock it to the *Right*:

![WinForms RadScrollBar Add RadVScrollbar](images/track-and-status-controls-scroll-bar-getting-started002.png)

3\. Add another **RadPanel** in the already added one and set its height to the *total* height you want to be available upon scrolling. This value can be statics e.g. *1000* pixels or dynamic determined by the scrollable content. For the purpose, of this example it is set to *1000* pixels. 

![WinForms RadScrollBar Add Second RadPanel](images/track-and-status-controls-scroll-bar-getting-started003.png)

4\. The next step is to add controls to the second **RadPanel** (the controls which are to be scrolled):

#### Adding controls to the panel

{{source=..\SamplesCS\TrackAndStatus\ScrollBar\ScrollGettingStarted.cs region=buttons}} 
{{source=..\SamplesVB\TrackAndStatus\ScrollBar\ScrollGettingStarted.vb region=buttons}} 

````C#
for (int i = 1; i < 15; i++)
{
    RadButton button = new RadButton();
    button.Location = new Point(30, i * 30 + 5 * i);
    button.Size = new Size(70, 30);
    button.Text = "RadButton" + i.ToString();
    this.radPanel2.Controls.Add(button);
}

````
````VB.NET
For i As Integer = 1 To 14
    Dim button As New RadButton()
    button.Location = New Point(30, i * 30 + 5 * i)
    button.Size = New Size(70, 30)
    button.Text = "RadButton" & i.ToString()
    Me.RadPanel2.Controls.Add(button)
Next i

````

{{endregion}} 

>note You can add controls by drag and drop at design time as well.
>

![WinForms RadScrollBar Panel with Buttons](images/track-and-status-controls-scroll-bar-getting-started004.png)

5\. Then, subscribe to the **Scroll** event of the vertical scroll bar and assign its negated value to the **Top** property of the second **RadPanel**:

#### Handling the Scroll event

{{source=..\SamplesCS\TrackAndStatus\ScrollBar\ScrollGettingStarted.cs region=scroll}} 
{{source=..\SamplesVB\TrackAndStatus\ScrollBar\ScrollGettingStarted.vb region=scroll}} 

````C#
void radVScrollBar1_Scroll(object sender, ScrollEventArgs e)
{
    this.radPanel2.Top = -this.radVScrollBar1.Value;
}

````
````VB.NET
Private Sub radVScrollBar1_Scroll(ByVal sender As Object, ByVal e As ScrollEventArgs)
    Me.RadPanel2.Top = -Me.RadVScrollBar1.Value
End Sub

````

{{endregion}} 

6\. The last required step is to set the __Maximum__ property of the scroll bar to reflect the size of the __scrollable height__ which is the __total height__ of the scrollable content minus the __visible height__. For the example of this section in particular, that is the height of the second panel minus the height of the first panel.

#### Specify RadVScrollBar's maximum

{{source=..\SamplesCS\TrackAndStatus\ScrollBar\ScrollGettingStarted.cs region=maximum}} 
{{source=..\SamplesVB\TrackAndStatus\ScrollBar\ScrollGettingStarted.vb region=maximum}} 

````C#
this.radVScrollBar1.Maximum = this.radPanel2.Size.Height - this.radPanel1.Size.Height;

````
````VB.NET
Me.RadVScrollBar1.Maximum = Me.RadPanel2.Size.Height - Me.RadPanel1.Size.Height

````

{{endregion}} 

![WinForms RadScrollBar Scroll Controls](images/track-and-status-controls-scroll-bar-getting-started005.png)

## See Also

* [Properties, Methods and Events]({%slug winforms/track-and-status-controls/scrollbar/programming-radscrollbars%})	

## Telerik UI for WinForms Learning Resources
* [Telerik UI for WinForms ScrollBar Component](https://www.telerik.com/products/winforms/radvscrollbar.aspx)
* [Getting Started with Telerik UI for WinForms Components](https://docs.telerik.com/devtools/winforms/getting-started/first-steps)
* [Telerik UI for WinForms Setup](https://docs.telerik.com/devtools/winforms/installation-and-upgrades/installing-on-your-computer)
* [Telerik UI for WinForms Application Modernization](https://docs.telerik.com/devtools/winforms/winforms-converter/overview)
* [Telerik UI for WinForms Visual Studio Templates](https://docs.telerik.com/devtools/winforms/visual-studio-integration/visual-studio-templates)
* [Deploy Telerik UI for WinForms Applications](https://docs.telerik.com/devtools/winforms/deployment-and-distribution/application-deployment)
* [Telerik UI for WinForms Virtual Classroom(Training Courses for Registered Users)](https://learn.telerik.com/learn/course/external/view/elearning/17/telerik-ui-for-winforms)
* [Telerik UI for WinForms License Agreement)](https://www.telerik.com/purchase/license-agreement/winforms-dlw-s)

