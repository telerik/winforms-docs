---
title: Getting Started
page_title: Getting Started - WinForms MaskedEditBox Control
description: Learn how to configure RadMaskedEditBox with a custom phone mask and a short date pattern.
slug: winforms/editors/maskededitbox/getting-started
tags: getting,started
published: True
position: 3
previous_url: editors-maskededitbox-getting-started
---

# Getting Started with WinForms MaskedEditBox

This article shows how you can start using **RadMaskedEditBox**.

## Adding Telerik Assemblies Using NuGet

To use `RadMaskedEditBox` when working with NuGet packages, install the `Telerik.UI.for.WinForms.AllControls` package. The [package target framework version may vary]({%slug winforms-available-nugets%}).

Read more about NuGet installation in the [Install using NuGet Packages]({%slug winforms/nuget%}) article.

>tip With the 2025 Q1 release, the Telerik UI for WinForms has a new licensing mechanism. You can learn more about it [here]({%slug license-key%}).

## Adding Assembly References Manually

When dragging and dropping a control from the Visual Studio (VS) Toolbox onto the Form Designer, VS automatically adds the necessary assemblies. However, if you're adding the control programmatically, you'll need to manually reference the following assemblies:

* __Telerik.Licensing.Runtime__
* __Telerik.WinControls__
* __Telerik.WinControls.UI__
* __TelerikCommon__

The Telerik UI for WinForms assemblies can be install by using one of the available [installation approaches]({%slug winforms/installation-deployment-and-distribution/installing-on-your-computer%}). 

## Defining the RadMaskedEditBox

Here is how to quickly configure two __RadMaskedEditBox__ controls. One uses a custom phone number mask, the second as a predefined short date pattern.

>caption Figure 1: RadMaskedEditBox Setup

![WinForms RadMaskedEditBox Setup](images/editors-maskededitbox-getting-started001.png)

1. Drop two __RadMaskedEditBox__ controls on a form.            

1. In the first __RadMaskedEditBox__ set the __MaskType__ property to __Standard__ and the __Mask__ property to "(###) ###-###". *See *[Standard Masks]({%slug winforms/editors/maskededitbox/standard-masks%})* for more information on how this mask is constructed.*

1. In the second __RadMaskedEditBox__ set the __MaskType__ property to __DateTime__ and the __Mask__ property to "d". * See [Date and Time Masks]({%slug winforms/editors/maskededitbox/date-and-time-masks%})** for more information on how this mask is constructed.*

1. Press __F5__ to run the application. Notice the behavior in the first __RadMaskedEditBox__ where the literals *"("* and *")"* are jumped over and cannot be replaced by the user. Also notice that mask characters are represented by the character in the __PromptChar__ property (by default this is the underscore *"_"* character) when blank.

## See Also

* [Structure]({%slug winforms/editors/maskededitbox/structure%})
* [Smart Tag]({%slug winforms/editors/maskededitbox/design-time/smart-tag%})
* [Working with RadMaskedEditBox]({%slug winforms/editors/maskededitbox/working-with-radmaskededitbox%})

## Telerik UI for WinForms Learning Resources
* [Telerik UI for WinForms MaskedEditBox Component](https://www.telerik.com/products/winforms/maskededitbox.aspx)
* [Getting Started with Telerik UI for WinForms Components](https://docs.telerik.com/devtools/winforms/getting-started/first-steps)
* [Telerik UI for WinForms Setup](https://docs.telerik.com/devtools/winforms/installation-and-upgrades/installing-on-your-computer)
* [Telerik UI for WinForms Application Modernization](https://docs.telerik.com/devtools/winforms/winforms-converter/overview)
* [Telerik UI for WinForms Visual Studio Templates](https://docs.telerik.com/devtools/winforms/visual-studio-integration/visual-studio-templates)
* [Deploy Telerik UI for WinForms Applications](https://docs.telerik.com/devtools/winforms/deployment-and-distribution/application-deployment)
* [Telerik UI for WinForms Virtual Classroom(Training Courses for Registered Users)](https://learn.telerik.com/learn/course/external/view/elearning/17/telerik-ui-for-winforms)
* [Telerik UI for WinForms License Agreement)](https://www.telerik.com/purchase/license-agreement/winforms-dlw-s)

