---
title: Structure
page_title: Structure - RadWizard
description: RadWizard will help you differentiate a complex process into separate steps and provide your users with the ability to govern the process upon their decisions.
slug: winforms/wizard/structure
tags: structure
published: True
position: 1
previous_url: wizard-structure
---

# Structure

__RadWizardElement__ encapsulates the UI representation and functionality of __RadWizard__. This element initializes the view of the control:

* __WizardMode.Wizard97__ for the __Wizard 97 mode__.

* __WizardMode.Aero__ for __Wizard Aero mode__.

The view contains the following elements:

* __Pages__ collection – collection which contains *Internal*, *Welcome* and *Completion RadWizard* pages.

* __Page header__ – element which is located above each page and contains elements for *title text*, *header text* and *page icon*.

* __Command area__– element which is located below each page and contains command button – *Back (Wizard 97)*, *Next, Cancel, Finish,* and *Help*.

* __Welcome image__– element which contains the image of the *Welcome* page.

* __Completion image__ - element which contains the image of the *Completion* page.

* __Top element__– element which contains the *Back* button of *Wizard Aero* view.

On the screenshots below, you can see the Welcome pages for both wizard mode with the described elements in them:

>caption Figure 1: Wizard97

![WinForms RadWizard Wizard97](images/wizard-structure001.png)

>caption Figure 2: Wizard Aero

![WinForms RadWizard Wizard Aero](images/wizard-structure002.png)

## 

The following screenshots describe the inner structure and organization of the elements which build the **RadWizard** control.

>caption Figure 3: RadWizard's elements hierarchy in WizardMode.Wizard97

![WinForms RadWizard RadWizard's elements hierarchy in WizardModeWizard97](images/wizard-structure003.png) 
        
>caption Figure 4: RadWizard visual structure in WizardMode.Wizard97

![WinForms RadWizard RadWizard visual structure in WizardModeWizard97](images/wizard-structure004.png) 

# See Also

* [Design Time]({%slug winforms/wizard/design-time%})	
* [Modes]({%slug winforms/wizard/modes%})
