---
title: Getting Started (RadButtons)
page_title: Getting Started (RadButtons) - RadShortcut
description: Almost each application uses the so called “Shortcuts” – a keyboard combination that triggers a specific action.
slug: winforms/shortcuts/getting-started-(radbuttons)
tags: getting,started,(radbuttons)
published: True
position: 2
previous_url: shortcuts-getting-started-(radbuttons)
---

# Getting Started with WinForms Shortcuts (RadButtons)

As stated in the [Overview]({%slug winforms/shortcuts%}) article, **RadShortcuts** are assigned at **RadItem** level. That said, you can't assign a shortcut directly to a **RadControl** (**RadButton** for example). Instead, you should assign the shortcut to the main element of a **RadControl**. For example, considering our buttons, you can assign shortcuts to them as it is shown below:

#### Assigning shortcuts

{{source=..\SamplesCS\Shortcuts\Form2.cs region=buttonsShortcuts}} 
{{source=..\SamplesVB\Shortcuts\Form2.vb region=buttonsShortcuts}} 

````C#
this.radButton1.ButtonElement.Shortcuts.Add(new RadShortcut(Keys.Control, Keys.B));
this.radRadioButton1.ButtonElement.Shortcuts.Add(new RadShortcut(Keys.Control, Keys.R));
this.radSplitButton1.DropDownButtonElement.Shortcuts.Add(new RadShortcut(Keys.Control, Keys.S));
this.radToggleButton1.ButtonElement.Shortcuts.Add(new RadShortcut(Keys.Control, Keys.T));

````
````VB.NET
Me.RadButton1.ButtonElement.Shortcuts.Add(New RadShortcut(Keys.Control, Keys.B))
Me.RadRadioButton1.ButtonElement.Shortcuts.Add(New RadShortcut(Keys.Control, Keys.R))
Me.RadSplitButton1.DropDownButtonElement.Shortcuts.Add(New RadShortcut(Keys.Control, Keys.S))
Me.RadToggleButton1.ButtonElement.Shortcuts.Add(New RadShortcut(Keys.Control, Keys.T))

````

{{endregion}} 

# See Also

* [Getting Started (RadMenuItems)]({%slug winforms/shortcuts/getting-started-(radmenuitems)%})	
* [Assigning Global RadShortcuts]({%slug winforms/shortcuts/assigning-global-radshortcuts%})	




## Telerik UI for WinForms Learning Resources
* [Telerik UI for WinForms Shortcut Component](https://www.telerik.com/products/winforms/shortcuts.aspx)
* [Getting Started with Telerik UI for WinForms Components](https://docs.telerik.com/devtools/winforms/getting-started/first-steps)
* [Telerik UI for WinForms Setup](https://docs.telerik.com/devtools/winforms/installation-and-upgrades/installing-on-your-computer)
* [Telerik UI for WinForms Application Modernization](https://docs.telerik.com/devtools/winforms/winforms-converter/overview)
* [Telerik UI for WinForms Visual Studio Templates](https://docs.telerik.com/devtools/winforms/visual-studio-integration/visual-studio-templates)
* [Deploy Telerik UI for WinForms Applications](https://docs.telerik.com/devtools/winforms/deployment-and-distribution/application-deployment)
* [Telerik UI for WinForms Virtual Classroom(Training Courses for Registered Users)](https://learn.telerik.com/learn/course/external/view/elearning/17/telerik-ui-for-winforms)
* [Telerik UI for WinForms License Agreement)](https://www.telerik.com/purchase/license-agreement/winforms-dlw-s)

