---
title: Overview
page_title: Overview - WinForms MaskedEditBox Control
description: WinForms MaskedEditBox is a themeable text box that formats and constrains text to a predefined pattern or a pattern you define. 
slug: winforms/editors/maskededitbox
tags: maskededitbox
published: True
position: 0
CTAControlName: MaskedEditBox
previous_url: editors-maskededitbox-overview
---

# WinForms MaskedEditBox Overview

__RadMaskedEditBox__ is a themeable text box that formats and constrains text to a predefined pattern or a pattern you define. __RadMaskedEditBox__ also handles globalization for date and time edits. Date and Time masks allow the user to navigate using the up and down arrow keys.

{% if site.has_cta_panels == true %}
{% include cta-panel-overview.html %}
{% endif %}

>caption Figure 1: RadMaskedEditBox Types

![WinForms RadMaskedEditBox Types](images/editors-maskededitbox-overview001.png)

The __MaskType__ property defines what type of mask would be used in the masked box:

>caption Figure 2: MaskType Property

![WinForms RadMaskedEditBox MaskType Property](images/editors-maskededitbox-overview002.png)

* __None__

* __[DateTime]({%slug winforms/editors/maskededitbox/date-and-time-masks%})__

* __[Numeric]({%slug winforms/editors/maskededitbox/numeric-masks%})__

* __[Standard]({%slug winforms/editors/maskededitbox/standard-masks%})__

* __Regex__: For example mask __[A-z]__ will check for at least one symbol in this range (A-z) in __RadMaskEditBox__’s text:

>caption Figure 3: Regex Mask

![WinForms RadMaskedEditBox Regex Mask](images/editors-maskededitbox-overview003.png)

* __IP__: Allows user to input only __3__ digits in __0-255__ range in __four__ groups.

>caption Figure 4: IP Mask

![WinForms RadMaskedEditBox IP Mask](images/editors-maskededitbox-overview004.png)

* __Email__: Validate user input for the valid mail. If this email is not valid will notify user with validation icon:

>caption Figure 5: Email Mask

![WinForms RadMaskedEditBox Email Mask](images/editors-maskededitbox-overview005.png)


>note The **RegexMaskTextBoxProvider**, **EMailMaskTextBoxProvider**, and **IPMaskTextBoxProvider** have an **ErrorMessage** property which can be set so that the displayed text with the message is localized.

Additional features supported by __RadMaskedEditoBox__ are:

* __Null value support__

* __Easy navigation between text parts of DateTimeMask__


## Telerik UI for WinForms Learning Resources
* [Telerik UI for WinForms MaskedEditBox Homepage](https://www.telerik.com/products/winforms/maskededitbox.aspx)
* [Get Started with the Telerik UI for WinForms MaskedEditBox]({%slug winforms/editors/maskededitbox/getting-started%})
* [Telerik UI for WinForms API Reference](https://docs.telerik.com/devtools/winforms/api/)
* [Getting Started with Telerik UI for WinForms Components]({%slug winforms/getting-started/first-steps%})
* [Telerik UI for WinForms Virtual Classroom (Training Courses for Registered Users)](https://learn.telerik.com/learn/course/external/view/elearning/17/TelerikUIforWinForms) 
* [Telerik UI for WinForms Forum](https://www.telerik.com/forums/winforms)
* [Telerik UI for WinForms Knowledge Base](https://docs.telerik.com/devtools/winforms/knowledge-base)


## Telerik UI for WinForms Additional Resources
* [Telerik UI for WinForms Product Overview](https://www.telerik.com/products/winforms.aspx)
* [Telerik UI for WinForms Blog](https://www.telerik.com/blogs/desktop-winforms)
* [Telerik UI for WinForms Videos](https://www.telerik.com/videos/product/winforms)
* [Telerik UI for WinForms Roadmap](https://www.telerik.com/support/whats-new/winforms/roadmap)
* [Telerik UI for WinForms Pricing](https://www.telerik.com/purchase/individual/winforms.aspx)
* [Telerik UI for WinForms Code Library](https://www.telerik.com/support/code-library/winforms)
* [Telerik UI for WinForms Support](https://www.telerik.com/support/winforms)
* [What’s New in Telerik UI for WinForms](https://www.telerik.com/support/whats-new/winforms)

## See Also

* [Structure]({%slug winforms/editors/maskededitbox/structure%})
* [Smart Tag]({%slug winforms/editors/maskededitbox/design-time/smart-tag%})
* [Getting Started]({%slug winforms/editors/maskededitbox/getting-started%})
