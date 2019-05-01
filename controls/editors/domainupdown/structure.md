---
title: Structure
page_title: Structure | RadDomainUpDown
description: RadDomainUpDown is designed to display text inside an editor like a text-box and sets a text string from a list of choices.  
slug: winforms/editors/domainupdown/structure
tags: domainupdown, structure
published: True
position: 1 
---
 
This article describes the inner structure and organization of the elements which build the **RadDomainUpDown** control.

**RadDomainUpDown** is a derivative of a **RadDropDownList**. Unlike **RadDropDownList**, **RadDomainUpDown** doesn't show a popup with the items:

>caption Figure 1: RadDomainUpDown's elements hierarchy

![domainupdown-structure 001](images/domainupdown-structure001.png)


>caption Figure 2: RadDomainUpDown's structure

![domainupdown-structure 002](images/domainupdown-structure002.png)

* **RadDomainUpDownElement** - the main element that holds the stack container of all inner elements. 
	* **RadDropDownListEditableAreaElement** - holds the text and image when the **ReadOnly** property is set to *true*;
		1. **RadSpinElementUpButton** - a button element that moves to the previous item in the list.
		2. **RadSpinElementDownButton** - a button element that moves to the next item in the list. 
		3. **RadDropDownTextBoxElement** - holds the text when the **ReadOnly** property is set to *false*. It handles the user's input and allows entering free input. 


# See Also

* [Design Time]({%slug winforms/editors/domainupdown/designtime%}) 
* [Getting Started]({%slug winforms/editors/domainupdown/getting-started%}) 