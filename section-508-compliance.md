---
title: Section 508 Compliance
page_title: Section 508 Compliance - UI for WinForms Documentation
description: Section 508 Compliance
slug: winforms/section-508-compliance
tags: section,508,compliance
published: True
position: 16
---

# Section 508 Compliance

>caption  Summary Table: Voluntary Product Accessibility Template

| Criteria | Result |
| ------ | ------ |
|Section 1194.21 Software Applications and Operating Systems Accessibility|Supported. Check the detailed description.|
|Section 1194.22 Web Accessibility|Not applicable. This functionality does not apply to UI for WinForms.|
|Section 1194.23 Telecommunications Products|Not applicable. UI for WinForms is not considered a telecommunications product.|
|Section 1194.24 Video and Multimedia Products|Not applicable. UI for WinForms is not considered a video/multimedia product.|
|Section 1194.25 Self-Contained, Closed Products|Not applicable. UI for WinForms is not considered a self contained product.|
|Section 1194.26 Desktop and Portable Computers|Not applicable. The requirements of this section target to the hardware, rather than the software installed/used.|
|Section 1194.31 Functional Performance Criteria|Supported. Check the detailed description.|
|Section 1194.41 Information, Documentation and Support|Supported. Check the detailed description.|

##  Section 1194.21 Software Applications and Operating Systems Accessibility

| Criteria | Overall Result | Additional Comments |
| ------ | ------ | ------ |
|(a) When software is designed to run on a system that has a keyboard, product functions shall be executable from a keyboard where the function itself or the result of performing a function can be discerned textually.|(Partially) Supported: Most controls from UI for WinForms that accept focus provide keyboard support.||
|(b) Applications shall not disrupt or disable activated features of other products that are identified as accessibility features, where those features are developed and documented according to industry standards. Applications also shall not disrupt or disable activated features of any operating system that are identified as accessibility features where the application programming interface for those accessibility features has been documented by the manufacturer of the operating system and is available to the product developer.|Fully Supported: The controls from UI for WinForms do not disable or disrupt any system/user settings.||
|(c) A well-defined on-screen indication of the current focus shall be provided that moves among interactive interface elements as the input focus changes. The focus shall be programmatically exposed so that Assistive Technology can track focus and focus changes.|(Partially) Supported. The controls from UI for WinForms provide a well-defined on-screen indication of the current focus that moves among interactive interface elements as the input focus changes with minor exceptions.|Most of the controls from UI for WinForms provide easily customizable hover and focus states.|
|(d) Sufficient information about a user interface element including the identity, operation and state of the element shall be available to Assistive Technology. When an image represents a program element, the information conveyed by the image must also be available in text.|(Partially) Supported. The text representation of a user element can be obtained via the MSAA support of UI for WinForms with a few exceptions.|More info on which controls support MSAA you can find [here]({%slug winforms/telerik-presentation-framework/microsoft-active-accessibility-support%}).|
|(e) When bitmap images are used to identify controls, status indicators, or other programmatic elements, the meaning assigned to those images shall be consistent throughout an application's performance.|Fully Supported: The controls from UI for WinForms provide functionality that conforms to these criteria.|The controls from UI for WinForms are fully customizable via theming mechanism.|
|(f) Textual information shall be provided through operating system functions for displaying text. The minimum information that shall be made available is text content, text input caret location, and text attributes.|Not Supported. Telerik UI for WinForms uses the .NET framework functions for displaying text.||
|(g) Applications shall not override user selected contrast and color selections and other individual display attributes.|Fully Supported: The controls from UI for WinForms provide functionality that conforms to these criteria.|The controls from UI for WinForms do not override any user system setting.|
|(h) When animation is displayed, the information shall be displayable in at least one non-animated presentation mode at the option of the user.|Fully Supported: The controls from UI for WinForms provide functionality that conforms to these criteria.|The controls from UI for WinForms allows to fully disable its animations.|
|(i) Color coding shall not be used as the only means of conveying information, indicating an action, prompting a response, or distinguishing a visual element.|Fully Supported: The controls from UI for WinForms provide functionality that conforms to these criteria.|The controls from UI for WinForms are fully customizable regarding color via theming mechanism.|
|(j) When a product permits a user to adjust color and contrast settings, a variety of color selections capable of producing a range of contrast levels shall be provided.|Fully Supported: The controls from UI for WinForms provide functionality that conforms to these criteria.|The controls from UI for WinForms are fully customizable regarding color and contrast.|
|(k) Software shall not use flashing or blinking text, objects, or other elements having a flash or blink frequency greater than 2 Hz and lower than 55 Hz.|Fully Supported: The controls from UI for WinForms provide functionality that conforms to these criteria.|The controls from UI for WinForms does not use flashing or blinking with the specified frequency range.|
|(l) When electronic forms are used, the form shall allow people using Assistive Technology to access the information, field elements, and functionality required for completion and submission of the form, including all directions and cues.|Fully Supported: The controls from UI for WinForms provide functionality that conforms to these criteria.||

## Section 1194.31 Functional Performance Criteria

| Criteria | Overall Result | Additional Comments |
| ------ | ------ | ------ |
|(a) At least one mode of operation and information retrieval that does not require user vision shall be provided, or support for Assistive Technology used by people who are blind or visually impaired shall be provided.|Partially Supported. The text representation of a user element can be obtained via the MSAA support of UI for WinForms.|More info on which controls support MSAA you can find [here]({%slug winforms/telerik-presentation-framework/microsoft-active-accessibility-support%}).|
|(b) At least one mode of operation and information retrieval that does not require visual acuity greater than 20/70 shall be provided in audio and enlarged print output working together or independently, or support for Assistive Technology used by people who are visually impaired shall be provided.|Fully Supported: The controls from UI for WinForms provide functionality that conforms to these criteria.|The controls from UI for WinForms have fully customizable themes. The customization can help the host application to meet this requirement.|
|(c) At least one mode of operation and information retrieval that does not require user hearing shall be provided, or support for Assistive Technology used by people who are deaf or hard of hearing shall be provided.|Fully Supported: The controls from UI for WinForms provide functionality that conforms to these criteria.|Our controls (by themselves) do not use important audio information which explicitly requires hearing. If necessary such information could/should be provided by the developer.|
|(d) Where audio information is important for the use of a product, at least one mode of operation and information retrieval shall be provided in an enhanced auditory fashion, or support for assistive hearing devices shall be provided.|Fully Supported: The controls from UI for WinForms provide functionality that conforms to these criteria.|Our controls (by themselves) do not use important audio information. If necessary such information could/should be provided by the developer.|
|(e) At least one mode of operation and information retrieval that does not require user speech shall be provided, or support for Assistive Technology used by people with disabilities shall be provided.|Fully Supported: The controls from UI for WinForms provide functionality that conforms to these criteria.|Our controls do not require speech from the users.|
|(f) At least one mode of operation and information retrieval that does not require fine motor control or simultaneous actions and that is operable with limited reach and strength shall be provided.|Partially Supported. The text representation of a user element can be obtained via the MSAA support of UI for WinForms.|More info on which controls support UI automation you can find [here]({%slug winforms/telerik-presentation-framework/microsoft-active-accessibility-support%}).|

## Section 1194.41 Information, Documentation and Support

| Criteria | Overall Result |
| ------ | ------ |
|(a) Product Support Documentation|Fully Supported: Documentation is provided in digital format for customers on the Web and available for no-charge download at [http://www.telerik.com](http://www.telerik.com)|
|(b) Accessibility and Compatibility Features|Fully Supported: Telerik UI for WinForms has accompanying Help documentation listing accessibility and compatibility features. An individual may access and view Help topics online or may select a topic for print.|
|(c) Support Services|Fully Supported: Telerik Support is familiar with features specific for Assistance Technology and for people with disabilities.|
