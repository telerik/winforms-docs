---
title: Accessing and Customizing Elements
page_title: Accessing and Customizing Elements | UI for WinForms Documentation
description: Accessing and Customizing Elements
slug: winforms/buttons/toggleswitch/accessing-and-customizing-elements
tags: accessing,and,customizing,elements
published: True
position: 3
---

# Accessing and Customizing Elements



## Design time

You can access and modify the style for different elements in __RadToggleSwitch__ by using the 
        *Element hierarchy editor*. Before proceeding with this topic, it is recommended to get familiar with the
          [visual structure]({%slug winforms/buttons/toggleswitch/structure%}) of
        the __RadToggleSwitch__.
        
>caption Fig.1 Element hierarchy editor

![buttons-toggleswitch-accessing-and-customizing-elements 001](images/buttons-toggleswitch-accessing-and-customizing-elements001.png)

## Programmatically

You can customize the nested elements at run time as well:
>caption Fig.2

![buttons-toggleswitch-accessing-and-customizing-elements 002](images/buttons-toggleswitch-accessing-and-customizing-elements002.gif)#_[C#] Customizing elements at run time_

	



{{source=..\SamplesCS\Buttons\ToggleSwitch.cs region=CustomizeElements}} 
{{source=..\SamplesVB\Buttons\ToggleSwitch.vb region=CustomizeElements}} 

````C#
            
            this.radToggleSwitch1.OnElement.BackColor = Color.GreenYellow;
            this.radToggleSwitch1.OnElement.GradientStyle = Telerik.WinControls.GradientStyles.Solid;
            this.radToggleSwitch1.OnElement.ForeColor = Color.DarkCyan;
            
            this.radToggleSwitch1.OffElement.BackColor = Color.Red;
            this.radToggleSwitch1.OffElement.GradientStyle = Telerik.WinControls.GradientStyles.Solid;
            this.radToggleSwitch1.OffElement.ForeColor = Color.Yellow;
            
            this.radToggleSwitch1.Thumb.BackColor = Color.Aqua;
            this.radToggleSwitch1.Thumb.GradientStyle = Telerik.WinControls.GradientStyles.Solid;
            this.radToggleSwitch1.Thumb.BorderColor = Color.DarkViolet;
            
            this.radToggleSwitch1.ToggleSwitchElement.BorderColor = Color.Fuchsia;
````
````VB.NET

        Me.RadToggleSwitch1.OnElement.BackColor = System.Drawing.Color.GreenYellow
        Me.RadToggleSwitch1.OnElement.GradientStyle = Telerik.WinControls.GradientStyles.Solid
        Me.RadToggleSwitch1.OnElement.ForeColor = System.Drawing.Color.DarkCyan

        Me.RadToggleSwitch1.OffElement.BackColor = System.Drawing.Color.Red
        Me.RadToggleSwitch1.OffElement.GradientStyle = Telerik.WinControls.GradientStyles.Solid
        Me.RadToggleSwitch1.OffElement.ForeColor = System.Drawing.Color.Yellow

        Me.RadToggleSwitch1.Thumb.BackColor = System.Drawing.Color.Aqua
        Me.RadToggleSwitch1.Thumb.GradientStyle = Telerik.WinControls.GradientStyles.Solid
        Me.RadToggleSwitch1.Thumb.BorderColor = System.Drawing.Color.DarkViolet

        Me.RadToggleSwitch1.ToggleSwitchElement.BorderColor = System.Drawing.Color.Fuchsia

        '
````

{{endregion}} 



