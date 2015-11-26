---
title: Modes
page_title: Modes | UI for WinForms Documentation
description: Modes
slug: winforms/wizard/modes
tags: modes
published: True
position: 2
---

# Modes


__RadWizard__ supports both* Wizard 97* and* Wizard Aero* specifications..	You can set the mode of the control using its __Mode__ property:


#### Setting modes

{{source=..\SamplesCS\Wizard\Modes.cs region=settingMode}} 
{{source=..\SamplesVB\Wizard\Modes.vb region=settingMode}} 

````C#
this.radWizard1.Mode = WizardMode.Wizard97;

````
````VB.NET
Me.RadWizard1.Mode = WizardMode.Wizard97

````

{{endregion}} 

![wizard-mode 001](images/wizard-mode001.png)

The __Aero style__ of __Wizard Aero mode__ can be enabled (for Windows Vista and later versions) or disabled. You can achieve it using the __EnableAeroStyle__ property of __RadWizard__.

#### Enabling aero style

{{source=..\SamplesCS\Wizard\Modes.cs region=EnableAeroStyle}} 
{{source=..\SamplesVB\Wizard\Modes.vb region=EnableAeroStyle}} 

````C#
this.radWizard1.Mode = WizardMode.Aero;
this.radWizard1.EnableAeroStyle = true;

````
````VB.NET
Me.RadWizard1.Mode = WizardMode.Aero
Me.RadWizard1.EnableAeroStyle = True

````

{{endregion}} 

![wizard-mode 001](images/wizard-mode001.png)

#### Disable __Aero Style__

{{source=..\SamplesCS\Wizard\Modes.cs region=disableAeroStyle}} 
{{source=..\SamplesVB\Wizard\Modes.vb region=disableAeroStyle}} 

````C#
this.radWizard1.Mode = WizardMode.Aero;
this.radWizard1.EnableAeroStyle = false;

````
````VB.NET
Me.RadWizard1.Mode = WizardMode.Aero
Me.RadWizard1.EnableAeroStyle = False

````

{{endregion}} 

When __RadWizard__ is in __Aero mode__ with disabled __Aero style__, 
the appearance of the control is defined by the styles in its theme.
		
