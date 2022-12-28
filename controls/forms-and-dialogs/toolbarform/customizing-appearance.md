---
title: Customizing Appearance
page_title: Customizing Appearance - WinForms ToolbarForm
description: Learn how to customize the style of the WinForms ToolbarForm.
slug: radtoolbarform-customizing-appearance
tags: radtoolbarform, appearance, customize, style, change
published: True
position: 5
---

## Customizing Appearance

### Design Time

You can access and modify the style for the different elements in the **RadToolbarFormControl** by using the *Element hierarchy editor*. Select RadToolbarFormControl and click the small arrow on the top right position in order to open the Smart Tag. Then, select the *Edit UI Elements* option:

![WinForms RadToolbarForm Customizing Appearance at Design Time](images/toolbarform-customizing-appearance001.png) 

### Programmatically

The following example demonstrates how you can access the **CaptionFill** and change its back color.

{{source=..\SamplesCS\Forms and Dialogs\RadToolbarForm1.cs region=CustomizeStyle}} 
{{source=..\SamplesVB\Forms and Dialogs\RadToolbarForm1.vb region=CustomizeStyle}}

````C#

this.ToolbarFormControl.ToolbarFormControlElement.CaptionFill.BackColor = Color.Red;
this.ToolbarFormControl.ToolbarFormControlElement.CaptionFill.GradientStyle = GradientStyles.Solid;
this.ToolbarFormControl.ToolbarFormControlElement.CaptionTextElement.ForeColor = Color.White;

````
````VB.NET

Me.ToolbarFormControl.ToolbarFormControlElement.CaptionFill.BackColor = Color.Red
Me.ToolbarFormControl.ToolbarFormControlElement.CaptionFill.GradientStyle = GradientStyles.Solid
Me.ToolbarFormControl.ToolbarFormControlElement.CaptionTextElement.ForeColor = Color.White

```` 

{{endregion}} 

![WinForms RadToolbarForm Change CaptionFill](images/toolbarform-customizing-appearance002.png)

# See Also

* [Structure]({%slug radtoolbarform-structure%})
* [Design Time]({%slug radtoolbarform-design-time%})
* [Adding Items Programmatically]({%slug radtoolbarform-adding-items-programmatically%})