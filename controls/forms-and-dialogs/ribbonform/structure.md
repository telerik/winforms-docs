---
title: Structure
page_title: Structure - RadRibbonForm
description: RadRibbonForm control is designed to host a RadRibbonBar control and mimic the Microsoft Office 2007 UI form style.
slug: winforms/forms-and-dialogs/ribbonform/structure
tags: ribbonform
published: True
position: 1 
---

# Structure

This article describes the inner structure and organization of the elements which build the __RadRibbonForm__ control.
        
>caption Figure 1: RadRibbonForm's elements hierarchy

![WinForms RadRibbonForm RadRibbonForm's elements hierarchy](images/forms-and-dialogs-ribbonform-structure001.png)

>caption Figure 2: RadRibbonForm's structure

![WinForms RadRibbonForm RadRibbonForm's structure](images/forms-and-dialogs-ribbonform-structure002.png)

 1. __RibbonFormElement__  
  1.1 __RibbonFormBorderPrimitive__: represents the form's border  
  1.2 __RadRibbonBar__: represents the ribbon bar    
     &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;1.2.1 __RadRibbonBarCaption__: represents the caption  
     &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;1.2.2 __RadImageButtonElement__: represents each system button.  

# See Also 

* [Getting Started]({%slug winforms/forms-and-dialogs/ribbonform/getting-started%})
