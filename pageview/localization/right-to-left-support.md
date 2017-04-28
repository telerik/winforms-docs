---
title: Right-to-left support
page_title: Right-to-left support | RadPageView
description: RadPageView is yet another great addition to the Telerik UI for for WinForms suite. As the name implies, this control layouts pages of subcontrols in different views.
slug: winforms/pageview/localization/right-to-left-support
tags: right-to-left,support
published: True
position: 1
previous_url: pageview-localization-rtl
---

# Right-to-left support
 
You can present the content of your **RadPageView** instance in a right-to-left direction by setting the __RightToLeft__ property to *Yes*: 

{{source=..\SamplesCS\CommandBar\FloatingStrips.cs region=rtl}} 
{{source=..\SamplesVB\CommandBar\FloatingStrips.vb region=rtl}} 

````C#
            
this.radCommandBar1.RightToLeft = RightToLeft.Yes;

````
````VB.NET
Me.RadCommandBar1.RightToLeft = Windows.Forms.RightToLeft.Yes

````

{{endregion}} 

Please note that this feature reorders not only the system buttons, but it also changes the order of your custom items where necessary:

>caption Figure 1: *RadPageView in StripView mode with RightToLeft = No*

![pageview-localization-rtl 001](images/pageview-localization-rtl001.png)

>caption Figure 2: *RadPageView in StripView mode with RightToLeft = Yes*

![pageview-localization-rtl 002](images/pageview-localization-rtl002.png)

>caption Figure 3: *RadPageView in OutlookView mode with RightToLeft = No*

![pageview-localization-rtl 003](images/pageview-localization-rtl003.png)

>caption Figure 4: *RadPageView in OutlookView mode with RightToLeft = Yes*

![pageview-localization-rtl 004](images/pageview-localization-rtl004.png)

>caption Figure 5: *RadPageView in StackView mode with RightToLeft = No*

![pageview-localization-rtl 005](images/pageview-localization-rtl005.png)

>caption Figure 6: *RadPageView in StackView mode with RightToLeft = Yes*

![pageview-localization-rtl 006](images/pageview-localization-rtl006.png)

# See Also

* [Localization]({%slug winforms/pageview/localization/localization%})	