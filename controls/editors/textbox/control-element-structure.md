---
title: Structure
page_title: Structure - WinForms TextBox Control
description: Get familiar with the internal elements structure of the WinForms TextBox.
slug: winforms/editors/textbox/control-element-structure
tags: control,element,structure
published: True
position: 1
previous_url: editors-textbox-control-element-structure
---

# Structure

__RadTextBoxElement__ is created for the purpose of reusability, as it is not a control, but an element (* Refer to [Telerik Presentation Framework]({%slug winforms/telerik-presentation-framework/overview%}) section about the difference. *) e.g. RadTextBoxElement can be used in __RadGridView__ control.
 
>caption RadTextBox Elements Hierarchy

![editors-textbox-control-element-structure 001](images/editors-textbox-control-element-structure001.png)

* __FillPrimitive__ and __BorderPrimitive__ set the overall background and border properties of the control.
            

* The most important node is __RadTextBoxItem__ which *hosts* the __standard__.NET TextBox control. 

# See Also

* [Properties]({%slug winforms/editors/textbox/programming-radtextbox%})
* [Design Time]({%slug winforms/editors/textbox/designtime%})
* [Adding Buttons to RadTextBox]({%slug winforms/editors/textbox/adding-buttons-to-radtextbox%})

