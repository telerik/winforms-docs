---
title: RadTextBoxControl vs RadTextBox
page_title: RadTextBoxControl vs RadTextBox | UI for WinForms Documentation
description: RadTextBoxControl vs RadTextBox
slug: winforms/editors/textboxcontrol/radtextboxcontrol-vs-radtextbox
tags: radtextboxcontrol,vs,radtextbox
published: True
position: 1
---

# RadTextBoxControl vs RadTextBox
 
This article will demonstrate the difference between [RadTextBox]({%slug winforms/editors/textbox%}) and RadTextBoxControl.
      

## 

The main and most important difference between RadTextBox and RadTextBoxControl is that RadTextBox is a wrapper around the standard .NET TextBox control, while RadTextBoxControl is built entirely on top of [Telerik Presentation Framework](87f43b63-7fff-4b3c-b7c7-4830f1e63903). This main difference helps avoid some of the limitations that hosted controls introduce such as unsupported clipping, higher memory usage, slower painting, etc. Follows a comparison table with the different features between these controls.
        


| RadTextBox | RadTextBoxControl |
| ------ | ------ |
|DefaultText|DefaultText|
|TextChanging|TextChanging|
|Only the borders can be themed|Fully themable|
|IME support|IME support|
|RTL support|-|
|-|[Easy customizations and enhancements]({%slug winforms/editors/textboxcontrol/creating-custom-blocks%})|
|-|[TextBlock formatting and replacement]({%slug winforms/editors/textboxcontrol/formatting-blocks%})|
|-|Localizable context menu|
|-|Supports transparency, image or gradient as background|
|-|Lightweight as it does not host control in it|
|-|Lightweight as it does not host control in it|
|-|Flexible and intuitive API|
|-|AutoComplete with data binding|
