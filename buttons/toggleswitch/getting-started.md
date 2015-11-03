---
title: Getting Started
page_title: Getting Started | UI for WinForms Documentation
description: Getting Started
slug: winforms/buttons/toggleswitch/getting-started
tags: getting,started
published: True
position: 1
---

# Getting Started



## 

You can add a __RadToggleSwitch__ to your form either at design time or at run time:
        

* Adding __RadToggleSwitch__ at design time: drag a __RadToggleSwitch__ from the toolbox and drop it onto the surface of the form’s designer.
            

* Adding __RadToggleSwitch__ programmatically: create a new instance of __RadToggleSwitch__ and add it to the Form.__Controls__ collection:
            

__Adding RadToggleSwitch programmatically__


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



>caption Fig.1 RadToggleSwitch added at run time

![buttons-toggleswitch-overview 002](images/buttons-toggleswitch-overview002.png)
