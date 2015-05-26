---
title: Right-to-left support
page_title: Right-to-left support | UI for WinForms Documentation
description: Right-to-left support
slug: winforms/pageview/localization/right-to-left-support
tags: right-to-left,support
published: True
position: 1
---

# Right-to-left support



## 

You can present the content of your pageview instance in a right-to-left direction by setting the __RightToLeft__ property to *Yes*: 
         #_[C#]_

	



{{source=..\SamplesCS\CommandBar\FloatingStrips.cs region=rtl}} 
{{source=..\SamplesVB\CommandBar\FloatingStrips.vb region=rtl}} 

````C#
            this.radCommandBar1.RightToLeft = RightToLeft.Yes;
````
````VB.NET
        Me.RadCommandBar1.RightToLeft = Windows.Forms.RightToLeft.Yes
        '
````

{{endregion}} 




Please note that this feature reorders the not only the system buttons, but it also changes
        the order of your custom items where necessary:![pageview-localization-rtl 001](images/pageview-localization-rtl001.png)

*RadPageView in StripView mode with RightToLeft = No*![pageview-localization-rtl 002](images/pageview-localization-rtl002.png)

*RadPageView in StripView mode with RightToLeft = Yes*![pageview-localization-rtl 003](images/pageview-localization-rtl003.png)

*RadPageView in OutlookView mode with RightToLeft = No*![pageview-localization-rtl 004](images/pageview-localization-rtl004.png)

*RadPageView in OutlookView mode with RightToLeft = Yes*![pageview-localization-rtl 005](images/pageview-localization-rtl005.png)

*RadPageView in StackView mode with RightToLeft = No*![pageview-localization-rtl 006](images/pageview-localization-rtl006.png)

*RadPageView in StackView mode with RightToLeft = Yes*
