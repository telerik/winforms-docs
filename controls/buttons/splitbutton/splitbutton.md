---
title: Overview
page_title: SplitButton - UI for WinForms Documentation
description: RadSplitButton provides a menu-like interface contained within a button that can be placed anywhere on a form.
slug: winforms/buttons/splitbutton
tags: splitbutton
published: True
position: 0
CTAControlName: SplitButton
previous_url: buttons-splitbutton-overview
---

# WinForms SplitButton Overview

__RadSplitButton__ provides a menu-like interface contained within a button that can be placed anywhere on a form.

{% if site.has_cta_panels == true %}
{% include cta-panel-overview.html %}
{% endif %}

![WinForms RadSplitButton Overview](images/buttons-splitbutton-overview001.png)

Each of the items on the __RadSplitButton__ can be set to perform an action when clicked. In addition, the items can contain other items, allowing you to create any hierarchy that fits your needs. Like a standard button, you control the displayed text by setting the __Text__ property. Unlike a standard button, __RadSplitButton__ displays drop-down items when clicked, so handling the __Click__ event is not appropriate. Instead, work directly with the events of the items. To learn how to create and use items see [Gettied Started with Telerik RadSplitButton Items]({%slug winforms/buttons/splitbutton/working-with-radsplitbutton-items%}).

__RadSplitButton__ is visually indistinguishable from [RadDropDownButton]({%slug winforms/buttons/dropdownbutton%}), but there is an important programmatic distinction. On __RadSplitButton__ you set a __DefaultItem__ property to indicate the item whose __Click__ event should be triggered when the button is clicked. The functionality of __RadSplitButton__ is "split" between the button itself and the dropdown menu.

## Telerik UI for WinForms Learning Resources
* [Telerik UI for WinForms SplitButton Homepage](https://www.telerik.com/products/winforms/buttons.aspx)
* [Get Started with the Telerik UI for WinForms SplitButton]({%slug winforms/buttons/splitbutton/working-with-radsplitbutton-items%})
* [Telerik UI for WinForms API Reference](https://docs.telerik.com/devtools/winforms/api/)
* [Getting Started with Telerik UI for WinForms Components]({%slug winforms/getting-started/first-steps%})
* [Telerik UI for WinForms Virtual Classroom (Training Courses for Registered Users)](https://learn.telerik.com/learn/course/external/view/elearning/17/TelerikUIforWinForms) 
* [Telerik UI for WinForms Forum](https://www.telerik.com/forums/winforms)

## Telerik UI for WinForms Additional Resources
* [Telerik UI for WinForms Product Overview](https://www.telerik.com/products/winforms.aspx)
* [Telerik UI for WinForms Blog](https://www.telerik.com/blogs/desktop-winforms)
* [Telerik UI for WinForms Videos](https://www.telerik.com/videos/product/winforms)
* [Telerik UI for WinForms Roadmap](https://www.telerik.com/support/whats-new/winforms/roadmap)
* [Telerik UI for WinForms Pricing](https://www.telerik.com/purchase/individual/winforms.aspx)
* [Telerik UI for WinForms Code Library](https://www.telerik.com/support/code-library/winforms)
* [Telerik UI for WinForms Support](https://www.telerik.com/support/winforms)
* [What’s New in Telerik UI for WinForms](https://www.telerik.com/support/whats-new/winforms)

* [Telerik UI for WinForms Knowledge Base](https://docs.telerik.com/devtools/winforms/knowledge-base)
