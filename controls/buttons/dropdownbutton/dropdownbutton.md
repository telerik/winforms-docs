---
title: Overview
page_title: DropDownButton - WinForms DropDownButton Control
description: WinForms DropDownButton provides a menu-like interface open from a button. Each of the items of RadDropDownButton can be set to perform an action when clicked.
slug: winforms/buttons/dropdownbutton
tags: dropdownbutton
published: True
position: 0
CTAControlName: DropDownButton
previous_url: buttons-dropdownbutton-overview
---

# WinForms DropDownButton Overview

__RadDropDownButton__ provides a menu-like interface opened from a button.

{% if site.has_cta_panels == true %}
{% include cta-panel-overview.html %}
{% endif %}

![WinForms RadButtons buttons-dropdownbutton-overview 001](images/buttons-dropdownbutton-overview001.png)

Each of the items of __RadDropDownButton__ can be set to perform an action when it is clicked. In addition, the items can contain other items, allowing you to create any hierarchy that fits your needs of sub-items. 


## Telerik UI for WinForms Learning Resources
* [Telerik UI for WinForms DropDownButton Homepage](https://www.telerik.com/products/winforms/dropdownbutton.aspx)
* [Get Started with the Telerik UI for WinForms DropDownButton]({%slug winforms/buttons/dropdownbutton/getting-started%})
* [Telerik UI for WinForms API Reference](https://docs.telerik.com/devtools/winforms/api/)
* [Getting Started with Telerik UI for WinForms Components]({%slug winforms/getting-started/first-steps%})
* [Telerik UI for WinForms Virtual Classroom (Training Courses for Registered Users)](https://learn.telerik.com/learn/course/external/view/elearning/17/TelerikUIforWinForms) 
* [Telerik UI for WinForms Forum](https://www.telerik.com/forums/winforms)
* [Telerik UI for WinForms Knowledge Base](https://docs.telerik.com/devtools/winforms/knowledge-base)

__RadDropDownButton__ is visually indistinguishable from __RadSplitButton__, but there is an important programmatic distinction. On __RadSplitButton__ the __DefaultItem__ property indicates the item whose __Click__ event should be triggered when the button is clicked. If you want a button that does something when clicked as well as when a selection is made from the menu, you should use a __RadSplitButton__ instead of a __RadDropDownButton__.
