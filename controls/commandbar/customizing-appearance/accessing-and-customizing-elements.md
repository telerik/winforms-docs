---
title: Accessing and Customizing Elements
page_title: Accessing and Customizing Elements - UI for WinForms Documentation
description: RadCommandBar is a fully theme-able tool strip that provides unprecedented flexibility
slug: winforms/commandbar/accessing-and-customizing-elements
tags: elements, customize
published: True
position: 0
---

# Design time

You can access and modify the style for different elements in __RadCommandBar__ by selecting the element and customizing its look by the *Properties* section in Visual Studio 

>caption Figure 1: Customizing CommandBarStripElement's border at design time.

![WinForms RadCommandBar Customizing CommandBarStripElement's border at design time](images/commandbar-appearance-accessing-and-customizing-elements001.png)

## Programmatically

You can customize the elements at run time as well:
>caption Figure 2: Customize elements

![WinForms RadCommandBar Customize elements](images/commandbar-appearance-accessing-and-customizing-elements002.png)

#### Customize elements at run time

{{source=..\SamplesCS\CommandBar\FloatingStrips.cs region=AccessingCustomizingElements}} 
{{source=..\SamplesVB\CommandBar\FloatingStrips.vb region=AccessingCustomizingElements}} 

````C#
this.radCommandBar1.Rows[0].BackColor = Color.Lime;
this.radCommandBar1.Rows[0].DrawFill = true;
this.radCommandBar1.Rows[0].GradientStyle = Telerik.WinControls.GradientStyles.Solid;
this.radCommandBar1.Rows[0].Strips[0].BackColor = Color.Yellow;
this.radCommandBar1.Rows[0].Strips[0].BorderColor = Color.Red;

````
````VB.NET
Me.RadCommandBar1.Rows(0).BackColor = Color.Lime
Me.RadCommandBar1.Rows(0).DrawFill = True
Me.RadCommandBar1.Rows(0).GradientStyle = Telerik.WinControls.GradientStyles.Solid
Me.RadCommandBar1.Rows(0).Strips(0).BackColor = Color.Yellow
Me.RadCommandBar1.Rows(0).Strips(0).BorderColor = Color.Red

````

{{endregion}} 
 
