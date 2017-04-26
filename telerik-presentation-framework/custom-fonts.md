---
title: Custom Fonts
page_title: Custom Fonts | Telerik Presentation Framework
description: Shows the themes which should be used on touch enabled devices and the features available in them.  
slug: winforms/tpf/custom-fonts
tags: touch, themes
published: True
position: 27
---

# Custom Fonts

Since R2 2017 Progress Telerik UI for WinForms supports custom fonts. This means that you can use your own fonts without installing them on the local machine. 

The following steps will show how you can load and use the new font:

1\. First you need to add the font as an embedded resource. Then you can load it with the following code: 

{{source=..\SamplesCS\TPF\CustomFontsCode.cs region=LoadAndGetFont}} 
{{source=..\SamplesVB\TPF\CustomFontsCode.vb region=LoadAndGetFont}} 



{{endregion}} 


2\. Use the following properties to set the font. 

{{source=..\SamplesCS\TPF\CustomFontsCode.cs region=SetCustomFont}} 
{{source=..\SamplesVB\TPF\CustomFontsCode.vb region=SetCustomFont}} 



{{endregion}} 

The important part here is that the above properties are available for the __VisualElement__ ancestors (which are most of our elements).

The below image shows the result:

![tpf-custom-fonts001](images/tpf-custom-fonts001.png)     

# See Also