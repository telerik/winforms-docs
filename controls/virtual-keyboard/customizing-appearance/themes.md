---
title: Themes
page_title: Themes - Virtual Keyboard
description: RadVirtualKeyboard is a software component that allows the input of characters without the need for physical keys. 
slug: virtual-keyboard-themes
tags: virtual, keyboard, themes
published: True
position: 1 
---

# Themes

This help article will demonstrate a step by step tutorial how to customize the **ControlDefault** theme for **RadVirtualKeyboard** 

1. Open [VisualStyleBuilder]({%slug winforms/tools/visual-style-builder%}): Start menu (Start >> Programs >> Telerik >> UI for WinForms [version] >> Tools).

1. Export the built-in themes in a specific folder by selecting *File >> Export Built-in Themes*.

1. Load a desired theme from the just exported files by selecting *File >> Open Package*

1. Select **ToggleKey** in *Controls Structure* on the left side. The **ToggleKey** in the *Elements* section is also selected.

	![WinForms RadVirtualKeyboard Select ToggleKey](images/virtual-keyboard-themes001.png)

2. Expand the **ToggleKey** *Element* and modify the applied **BackColor** property and set the **GradientStyle** to *Solid* for the *ToggleState=On* *Element State*. 

	![WinForms RadVirtualKeyboard Customize ToggleKey](images/virtual-keyboard-themes002.png)

1. Save the theme by selecting *File >> Save As*.

1. Now, you can apply your custom theme to **RadVirtualKeyboard** by using the demonstrated approach in the following link: [Using custom themes]({%slug winforms/themes/using-custom-themes%})

# See Also 

* [Structure]({%slug winforms-virtual-keyboard-structure%})
* [Accessing and Customizing Elements]({%slug  virtual-keyboard-accessing-and-customizing-elements%})
* [Getting Started with VisualStyleBuilder]({%slug winforms/tools/visual-style-builder/getting-started%})
* [Working With Repository Items]({%slug winforms/tools/visual-style-builder/working-with-visual-style-builder/working-with-repository-items%})

 
        
