---
title: Overview
page_title: Overview - Validation Provider
description: RadValidationProvider is a component which provides data validation management for editors in bound and unbound mode.  
slug: validation-provider-overview
tags: validation, provider
published: True
position: 0 
CTAControlName: ValidationProvider
---

# WinForms ValidationProvider Overview

**RadValidationProvider** is a component which provides data validation management for editors in bound and unbound mode. 
It allows users to create various validation rules and associate them with editors derived from the **RadEditorControl** class. With **RadValidationProvider** users are not required to write any code for validation. 

{% if site.has_cta_panels == true %}
{% include cta-panel-overview.html %}
{% endif %}

![WinForms RadValidationProvider Overview](images/validation-provider-overview001.png) 

## Key Features

The main features are listed below:

* **Validation with Multiple Rules**: there are three types of validation rules (**RadValidationRule**, **RadCompositeValidationRule**, **RadValidationRuleWithSecondControl**). This allows adding complex validation logic containing simpler validations rules.

* **Validate against another control**: perform data validation considering the value of another control, e.g. two **RadDateTimePicker** controls for start/end date selection. You can provide easy data validation ensuring that  the start date is less than the end date. 

* **Validation Modes**: control when the validation will be triggered, e.g. when the text is changed, programmatically, etc.

* **Design Time Experience**: *FilterDescriptor Collection Editor* provides rich design time experience for adding different types of validation rules. 

* **Error Indication**: when the validation fails, an error icon should be displayed next to the control with error text and tool tip under the control. The error icon position can be customized as well. 



## Telerik UI for WinForms Learning Resources
* [Telerik UI for WinForms ValidationProvider Homepage](https://www.telerik.com/products/winforms/validation-provider.aspx)
* [Get Started with the Telerik UI for WinForms ValidationProvider]({%slug validation-provider-getting-started%})
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

# See Also

* [Getting Started]({%slug validation-provider-getting-started%})
* [Validation Rules]({%slug validation-provider-validation-rules%})
* [Design Time]({%slug validation-provider-design-time%})
* [Customizing Error Indication]({%slug validation-provider-customizing-error-indication%})
 
        
