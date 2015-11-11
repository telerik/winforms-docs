---
title: Control Element Structure
page_title: Control Element Structure | UI for WinForms Documentation
description: Control Element Structure
slug: winforms/editors/textbox/control-element-structure
tags: control,element,structure
published: True
position: 2
---

# Control Element Structure



__RadTextBoxElement__ is created for the purpose of reusability, as it is not a control, but an element (* Refer to [Telerik Presentation Framework]({%slug winforms/telerik-presentation-framework/overview%}) section about the difference. *) e.g. RadTextBoxElement can be used in RadGridView control.
      

## 

This image shows the Control Element Structure of the Telerik RadTextBox as displayed by __Visual Style Builder__:
        
![editors-textbox-control-element-structure 001](images/editors-textbox-control-element-structure001.png)

* __FillPrimitive__ and __BorderPrimitive__ set the overall background and border properties of the control.
            

* The most important node is __RadTextBoxItem__ which *hosts* the __standard__.NET TextBox control. There are several implications because of that:
            

* The first is that this node cannot be themed

* And the second is that events hierarchy is broken at that place e.g. mouse click in the text box field does not propagate to the root element (RadTextBox control).
                

You can use the following code snippet to access RadTextBoxItem and subscribe to the click event:

#### Subscribing for the click event of the RadTextBoxItem 

{{source=..\SamplesCS\Editors\TextBox1.cs region=subscribeForTextBoxItemClickEvent}} 
{{source=..\SamplesVB\Editors\TextBox1.vb region=subscribeForTextBoxItemClickEvent}} 

````C#
            this.radTextBox1.TextBoxElement.TextBoxItem.Click += new EventHandler(TextBoxItem_Click);
````
````VB.NET
        AddHandler RadTextBox1.TextBoxElement.TextBoxItem.Click, AddressOf TextBoxItem_Click
        '
````

{{endregion}} 



