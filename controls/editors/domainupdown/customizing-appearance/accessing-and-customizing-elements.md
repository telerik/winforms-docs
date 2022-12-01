---
title: Accessing and Customizing Elements
page_title: Accessing and Customizing Elements - RadDomainUpDown
description: RadDomainUpDown is designed to display text inside an editor like a text-box and sets a text string from a list of choices. 
slug: winforms/editors/domainupdown/accessing-and-customizing-elements
tags: domainupdown, customizing, elements
published: True
position: 0 
---

# Accessing and Customizing Elements
 
Accessing and customizing elements can be performed either at design time, or at run time. Before proceeding with this topic, it is recommended to get familiar with the [visual structure]({%slug winforms/editors/domainupdown/structure%}) of the **RadDomainUpDown**.
      
## Design time

You can access and modify the style for different elements in **RadDomainUpDown** by using the *Element hierarchy editor*.

>caption Fig.1 Element hierarchy editor

![WinForms RadDomainUpDown Element hierarchy editor](images/domainupdown-accessing-and-customizing-elements001.png)

## Programmatically

You can customize the nested elements at run time as well:

>caption Fig.2 Customize elements

![WinForms RadDomainUpDown Customize elements](images/domainupdown-accessing-and-customizing-elements002.png)

#### Customize elements 



````C#

            this.radDomainUpDown1.DomainUpDownElement.EditableElement.ForeColor = Color.Red;
            this.radDomainUpDown1.DomainUpDownElement.EditableElement.BorderColor = Color.Aqua;
            this.radDomainUpDown1.DomainUpDownElement.EditableElement.DrawBorder = true;
            this.radDomainUpDown1.DomainUpDownElement.EditableElement.BorderGradientStyle = Telerik.WinControls.GradientStyles.Solid;            


````
````VB.NET
    Me.radDomainUpDown1.DomainUpDownElement.EditableElement.ForeColor = Color.Red
    Me.radDomainUpDown1.DomainUpDownElement.EditableElement.BorderColor = Color.Aqua
    Me.radDomainUpDown1.DomainUpDownElement.EditableElement.DrawBorder = True
    Me.radDomainUpDown1.DomainUpDownElement.EditableElement.BorderGradientStyle = Telerik.WinControls.GradientStyles.Solid

````

{{endregion}} 

# See Also

* [Design Time]({%slug winforms/editors/domainupdown/design-time%}) 
* [Getting Started]({%slug winforms/editors/domainupdown/getting-started%}) 
