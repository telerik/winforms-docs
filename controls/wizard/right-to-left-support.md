---
title: Right-to-Left Support
page_title: Right-to-Left Support | RadWizard
description: RadWizard will help you differentiate a complex process into separate steps and provide your users with the ability to govern the process upon their decisions.
slug: winforms/wizard/right-to-left-support
tags: right-to-left,support
published: True
position: 6
previous_url: wizard-right-to-left
---

# Right-to-Left support

__RadWizard__ also supports __RightToLeft__ alignment of its elements:

![wizard-rtl 001](images/wizard-rtl001.png)

You can enable the right-to-left functionality, by setting the __RightToLeft__ property to *True*:
			
#### Setting Right-to-Left mode

{{source=..\SamplesCS\Wizard\WizardStructure.cs region=RTL}} 
{{source=..\SamplesVB\Wizard\WizardStructure.vb region=RTL}} 

````C#
this.radWizard1.RightToLeft = RightToLeft.Yes;
this.radLabel1.RightToLeft = RightToLeft.Yes;
this.radLabel1.Text = "Welcome page of RadWizard in RightToLeft mode.";

````
````VB.NET
RadWizard1.RightToLeft = System.Windows.Forms.RightToLeft.Yes
RadLabel1.RightToLeft = System.Windows.Forms.RightToLeft.Yes
RadLabel1.Text = "Welcome page of RadWizard in RightToLeft mode."

````

{{endregion}} 

# See Also

* [Localization]({%slug winforms/wizard/localization%})	

