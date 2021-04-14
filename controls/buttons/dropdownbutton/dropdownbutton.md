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

# DropDownButton

__RadDropDownButton__ provides a menu-like interface opened from a button.

{% if site.has_cta_panels == true %}
{% include cta-panel-overview.html %}
{% endif %}

![buttons-dropdownbutton-overview 001](images/buttons-dropdownbutton-overview001.png)

Each of the items of __RadDropDownButton__ can be set to perform an action when it is clicked. In addition, the items can contain other items, allowing you to create any hierarchy that fits your needs of sub-items. 

__RadDropDownButton__ is visually indistinguishable from __RadSplitButton__, but there is an important programmatic distinction. On __RadSplitButton__ the __DefaultItem__ property indicates the item whose __Click__ event should be triggered when the button is clicked. If you want a button that does something when clicked as well as when a selection is made from the menu, you should use a __RadSplitButton__ instead of a __RadDropDownButton__.
