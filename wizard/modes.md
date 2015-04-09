---
title: Modes
page_title: Modes
description: Modes
slug: wizard-modes
tags: modes
published: True
position: 1
---

# Modes



## 

__RadWizard__ supports both* Wizard 97* and* Wizard Aero* specifications..
        	You can set the mode of the control using its __Mode__ property:
        

#### __[C#] Setting modes__

{{source=..\SamplesCS\Wizard\Modes.cs region=settingMode}}
	            this.radWizard1.Mode = WizardMode.Wizard97;
	{{endregion}}



#### __[VB.NET] Setting modes__

{{source=..\SamplesVB\Wizard\Modes.vb region=settingMode}}
	        Me.RadWizard1.Mode = WizardMode.Wizard97
	{{endregion}}



![wizard-mode 001](images/wizard-mode001.png)

The __Aero style__of __Wizard Aero mode__ can be enabled (for Windows Vista and later versions) or disabled.
			You can achieve it using the __EnableAeroStyle__ property of __RadWizard__.
		

#### __[C#] Enabling aero style__

{{source=..\SamplesCS\Wizard\Modes.cs region=EnableAeroStyle}}
	            this.radWizard1.Mode = WizardMode.Aero;
	            this.radWizard1.EnableAeroStyle = true;
	{{endregion}}



#### __[VB.NET] Enabling aero style__

{{source=..\SamplesVB\Wizard\Modes.vb region=EnableAeroStyle}}
	        Me.RadWizard1.Mode = WizardMode.Aero
	        Me.RadWizard1.EnableAeroStyle = True
	{{endregion}}



![wizard-mode 001](images/wizard-mode001.png)

Disable __Aero Style__

#### __[C#] Disable aero style__

{{source=..\SamplesCS\Wizard\Modes.cs region=disableAeroStyle}}
	            this.radWizard1.Mode = WizardMode.Aero;
	            this.radWizard1.EnableAeroStyle = false;
	{{endregion}}



#### __[VB.NET] Disable aero style__

{{source=..\SamplesVB\Wizard\Modes.vb region=disableAeroStyle}}
	        Me.RadWizard1.Mode = WizardMode.Aero
	        Me.RadWizard1.EnableAeroStyle = False
	{{endregion}}



When __RadWizard__ is in __Aero mode__ with disabled __Aero style__,
			the appearance of the control is defined by the styles in its theme.
		
