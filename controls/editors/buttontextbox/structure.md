---
title: Structure
page_title: Structure | RadButtonTextBox
description: RadButtonTextBox is a derivative of **RadTextBox** which allows you to embed easily button elements on the left or right side of the text box.
slug: winforms/editors/buttontextbox/structure
tags: button, text, structure
published: True
position: 1
---

# Structure

This article describes the inner structure and organization of the elements which build the **RadButtonTextBox** control. 

**RadButtonTextBox** is a derivative of [RadTextBox]({%slug winforms/editors/textbox%}) and it internally uses     
        
>caption Figure 1: RadButtonTextBox's elements hierarchy

![editors-buttontextbox-structure 001](images/editors-buttontextbox-structure001.png) 

>caption Figure 2: RadButtonTextBox's structure

![editors-buttontextbox-structure 002](images/editors-buttontextbox-structure002.png)

1. **RadButtonTextBoxElement** - represents the main element.
2. **StrechedHorizontalStackLayoutPanel** - hosts the left/right button elements.
3. **RadTextBoxItem** - handles the user's keyboard input. 
 

# See Also

* [RadControlSpy]({%slug winforms/tools/controlspy%})
            
