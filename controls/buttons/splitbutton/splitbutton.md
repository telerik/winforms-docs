---
title: Overview
page_title: SplitButton | UI for WinForms Documentation
description: RadSplitButton provides a menu-like interface contained within a button that can be placed anywhere on a form.
slug: winforms/buttons/splitbutton
tags: splitbutton
published: True
position: 0
CTAControlName: RadSplitButton
previous_url: buttons-splitbutton-overview
---

# SplitButton

__RadSplitButton__ provides a menu-like interface contained within a button that can be placed anywhere on a form.

{% if site.has_cta_panels == true %}
{% include cta-panel-overview.html %}
{% endif %}

![buttons-splitbutton-overview 001](images/buttons-splitbutton-overview001.png)

Each of the items on the __RadSplitButton__ can be set to perform an action when clicked. In addition, the items can contain other items, allowing you to create any hierarchy that fits your needs. Like a standard button, you control the displayed text by setting the __Text__ property. Unlike a standard button, __RadSplitButton__ displays drop-down items when clicked, so handling the __Click__ event is not appropriate. Instead, work directly with the events of the items. To learn how to create and use items see [Gettied Started with Telerik RadSplitButton Items]({%slug winforms/buttons/splitbutton/working-with-radsplitbutton-items%}).

__RadSplitButton__ is visually indistinguishable from [RadDropDownButton]({%slug winforms/buttons/dropdownbutton%}), but there is an important programmatic distinction. On __RadSplitButton__ you set a __DefaultItem__ property to indicate the item whose __Click__ event should be triggered when the button is clicked. The functionality of __RadSplitButton__ is "split" between the button itself and the dropdown menu.
