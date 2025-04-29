---
title: Getting Started
page_title: Getting Started - Validation Provider
description:  
slug: validation-provider-getting-started
tags: validation, provider
published: True
position: 3 
---

# Getting Started with WinForms ValidationProvider

This tutorial will help you to quickly get started using the control.

## Adding Telerik Assemblies Using NuGet

To use `RadValidationProvider` when working with NuGet packages, install the `Telerik.UI.for.WinForms.AllControls` package. The [package target framework version may vary]({%slug winforms-available-nugets%}).

Read more about NuGet installation in the [Install using NuGet Packages]({%slug winforms/nuget%}) article.

>tip With the 2025 Q1 release, the Telerik UI for WinForms has a new licensing mechanism. You can learn more about it [here]({%slug license-key%}).

## Adding Assembly References Manually

When dragging and dropping a control from the Visual Studio (VS) Toolbox onto the Form Designer, VS automatically adds the necessary assemblies. However, if you're adding the control programmatically, you'll need to manually reference the following assemblies:

* __Telerik.Licensing.Runtime__
* __Telerik.WinControls__
* __Telerik.WinControls.UI__
* __TelerikCommon__

The Telerik UI for WinForms assemblies can be install by using one of the available [installation approaches]({%slug winforms/installation-deployment-and-distribution/installing-on-your-computer%}). 

## Defining the RadValidationProvider

This article will give you getting started experience with **RadValidationProvider** without using any code.

>note The **TelerikMetro** theme is used for the screenshots in this article.

1. To start using **RadValidationProvider** just drag it from the toolbox and drop it onto the form:

	![WinForms RadValidationProvider Drag from Toolbox](images/validation-provider-getting-started001.png) 

2. Drag one **RadTextBox** and two **RadDateTimePicker** controls from the toolbox. 

	![WinForms RadValidationProvider Drag Two Controls](images/validation-provider-getting-started002.png) 

3. Open the *FilterDescriptor Collection Editor* by clicking the *Edit Validation Rules* option in the Smart tag. 

	![WinForms RadValidationProvider Edit Validation Rules](images/validation-provider-getting-started003.png) 

4. Add a **RadValidationRule**: 

	![WinForms RadValidationProvider Add RadValidationRule](images/validation-provider-getting-started004.png) 

5. Select **RadTextBox** from the **Controls** drop down list:

	![WinForms RadValidationProvider Select RadTextBox](images/validation-provider-getting-started005.png) 

6. Select the **Operator** to be *IsNotLike*, leave the **PropertyName** to be *Text* and specify the **ToolTipText**:

	![WinForms RadValidationProvider Adjust Rule](images/validation-provider-getting-started007.png) 

	>note The data type of the **Value** can be specified after entering a value first and then selecting the type from the drop down. 

	>note As of **R3 2020** RadValidationProvider supports nested PropertyNames to validate, e.g. **Text.Length**.

7. If you start the application now, focus the **RadTextBox** control, leave it empty and try to navigate to another control, the validation will fail. It would be necessary to enter some text before proceeding further:

	![WinForms RadValidationProvider Validation Fails](images/validation-provider-getting-started006.png) 

8. Add a second validation rule. But this time add a **RadValidationRuleWithTargetControl**:

	![WinForms RadValidationProvider RadValidationRuleWithTargetControl](images/validation-provider-getting-started008.png) 

9. In the **Controls** drop down list, select **radDateTimePicker1**. In the **TargetControl** drop down list, select **radDateTimePicker2**. Set the **Operator** to *IsLessThan*. Specify the **PropertyName** and **TargetControlPropertyName** to *Value* and what **ToolTipText** to be displayed when the validation failed. 

	![WinForms RadValidationProvider TargetControl](images/validation-provider-getting-started009.png) 

10. This rule will ensure that the first **RadDateTimePicker**'s value is less than the value of the second one:

	![WinForms RadValidationProvider Ensure Validation](images/validation-provider-getting-started010.png) 

In a similar way you can add a rule to validate that the second **RadDateTimePicker**'s value is greater than the value of the first one.


## See Also

* [Validation Rules]({%slug validation-provider-validation-rules%})
* [Design Time]({%slug validation-provider-design-time%})
* [Customizing Error Indication]({%slug validation-provider-customizing-error-indication%})
 
        

## Telerik UI for WinForms Learning Resources
* [Telerik UI for WinForms ValidationProvider Component](https://www.telerik.com/products/winforms/validation-provider.aspx)
* [Getting Started with Telerik UI for WinForms Components](https://docs.telerik.com/devtools/winforms/getting-started/first-steps)
* [Telerik UI for WinForms Setup](https://docs.telerik.com/devtools/winforms/installation-and-upgrades/installing-on-your-computer)
* [Telerik UI for WinForms Application Modernization](https://docs.telerik.com/devtools/winforms/winforms-converter/overview)
* [Telerik UI for WinForms Visual Studio Templates](https://docs.telerik.com/devtools/winforms/visual-studio-integration/visual-studio-templates)
* [Deploy Telerik UI for WinForms Applications](https://docs.telerik.com/devtools/winforms/deployment-and-distribution/application-deployment)
* [Telerik UI for WinForms Virtual Classroom(Training Courses for Registered Users)](https://learn.telerik.com/learn/course/external/view/elearning/17/telerik-ui-for-winforms)
* [Telerik UI for WinForms License Agreement)](https://www.telerik.com/purchase/license-agreement/winforms-dlw-s)

