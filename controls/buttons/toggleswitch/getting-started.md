---
title: Getting Started
page_title: Getting Started - WinForms ToggleSwitch Control
description: WinForms ToggleSwitch is a control designed to represent two states - e.g. true/false, On/Off, etc.
slug: winforms/buttons/toggleswitch/getting-started
tags: getting,started
published: True
position: 3
previous_url: buttons-toggleswitch-getting-started
---

# Getting Started with WinForms ToggleSwitch

You can add a __RadToggleSwitch__ to your form either at design time or at run time:
        

## Design Time

1. Drag a __RadToggleSwitch__ from the toolbox and drop it onto the surface of the form’s designer.
2. Double click the __RadToggleSwitch__ at design time in order to generate the __ValueChanged__ event handler.
            
## Run Time

Adding __RadToggleSwitch__ programmatically: create a new instance of __RadToggleSwitch__ and add it to the Form.__Controls__ collection:
            

#### Adding RadToggleSwitch programmatically 


{{source=..\SamplesCS\Buttons\ToggleSwitch.cs region=AddProgrammatically}} 
{{source=..\SamplesVB\Buttons\ToggleSwitch.vb region=AddProgrammatically}} 

````C#
            
Telerik.WinControls.UI.RadToggleSwitch toggleSwitch = new Telerik.WinControls.UI.RadToggleSwitch();
this.Controls.Add(toggleSwitch);

````
````VB.NET
Dim toggleSwitch As New Telerik.WinControls.UI.RadToggleSwitch()
Me.Controls.Add(toggleSwitch)

````

{{endregion}} 



>caption Figure 1: RadToggleSwitch added at run time

![WinForms RadToggleSwitch Added at Run Time](images/buttons-toggleswitch-overview002.png)
