---
title: Reflecting changes in custom themes in design time
description: Reflecting changes in custom themes in design time. Check it now!
type: how-to
page_title: Reflecting changes in custom themes in design time
slug: reflecting-changes-in-custom-themes-in-design-time
tags: common, theme
res_type: kb
---

|Article relates to|Product|Author|Last modified|  
|----|----|----|----|
|RadControls for WinForms|Telerik UI for WinForms|Iordan Pavlov|May 23, 2007| 

## How To  

Reflect changes in your custom themes in design time when developing applications using RadControls.  
   
## Solution
 
Themes for RadControls are loaded on application basis when first needed. This means that when a form containing RadControls is loaded in design time all needed themes are loaded and applied to the controls in the form. If any changes are made to a theme used by these controls they will not be reflected until the application or Visual Studio  is restarted.


