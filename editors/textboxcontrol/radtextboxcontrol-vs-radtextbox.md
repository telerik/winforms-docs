---
title: RadTextBoxControl vs RadTextBox
page_title: RadTextBoxControl vs RadTextBox
description: RadTextBoxControl vs RadTextBox
slug: editors-textboxcontrol-radtextboxcontrol-vs-radtextbox
tags: radtextboxcontrol,vs,radtextbox
published: True
position: 0
---

# RadTextBoxControl vs RadTextBox



This article will demonstrate the difference between
        [RadTextBox]({%slug editors-textbox-overview%}) and RadTextBoxControl.
      

## 

The main and most important difference between RadTextBox and RadTextBoxControl is that RadTextBox
          is a wrapper around the standard .NET TextBox control, while RadTextBoxControl is built entirely on top
          of [Telerik Presentation Framework](87f43b63-7fff-4b3c-b7c7-4830f1e63903). This
          main difference helps avoid some of the limitations that hosted controls introduce such as unsupported
          clipping, higher memory usage, slower painting, etc.
          Follows a comparison table with the different features between these controls.
        
<table><th><tr><td>

RadTextBox</td><td>

RadTextBoxControl</td></tr></th><tr><td>

DefaultText</td><td>

DefaultText</td></tr><tr><td>

TextChanging</td><td>

TextChanging</td></tr><tr><td>

Only the borders can be themed</td><td>

Fully themable</td></tr><tr><td>

IME support</td><td>

IME support</td></tr><tr><td>

RTL support</td><td>

-</td></tr><tr><td>

-</td><td>

[Easy customizations and enhancements]({%slug editors-textboxcontrol-creating-custom-blocks%})</td></tr><tr><td>

-</td><td>

[TextBlock formatting and replacement]({%slug editors-textboxcontrol-formatting-blocks%})</td></tr><tr><td>

-</td><td>

Localizable context menu</td></tr><tr><td>

-</td><td>

Supports transparency, image or gradient as background</td></tr><tr><td>

-</td><td>

Lightweight as it does not host control in it</td></tr><tr><td>

-</td><td>

Lightweight as it does not host control in it</td></tr><tr><td>

-</td><td>

Flexible and intuitive API</td></tr><tr><td>

-</td><td>

AutoComplete with data binding</td></tr></table>
