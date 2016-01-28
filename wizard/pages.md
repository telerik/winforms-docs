---
title: Pages
page_title: Pages | UI for WinForms Documentation
description: Pages
slug: winforms/wizard/pages
tags: pages
published: True
position: 3
previous_url: wizard-pages
---

# Pages

## 

__RadWizard__ contains collection of __WizardPage__ elements. The pages are __Internal (WizardPage), Welcome (WizardWelcomePage)__, and __Completion (WizardCompletionPage)__.
        

Each wizard page contains a __ContentArea__ which hosts WinForms controls. Below is an example of a page containing several controls:

![wizard-pages 001](images/wizard-pages001.png)

You can define the __Page header’s title__ and __header text__ by using the __Title__ and __Header__ properties of the page.
		

__RadWizard__ allows you to customize the elements of its __Page header__. You can use the properties of the control to apply preferences for all pages or use the properties of a page to customize it.
		

The exposed in __RadWizard__ properties for customization of the __Page header__ are:

* __PageTitleTextVisibility__ - defines the visibility of the __Page header's title element__.
			  

* __PageHeaderTextVisibility__ - defines the visibility of the __Page header's header element__.
			  

* __PageHeaderIcon__ - defines the __Page header icon__.
			  

* __PageHeaderIconAlignment__ - defines the __Page header icon__ alignment.
			  

The __Page header__ customization properties of the page are considered if its __CustomizePageHeader__ property has value *true*.  They have higher priority than the defined in the control. You can use the following properties to customize the __Page header__ of a particular page:

* __TitleVisibility__ - defines the visibility of the __Page header's title element__ for the particular page.

* __HeaderVisibility__ - defines the visibility of the __Page header's header element__ for the particular page.

* __Icon__ - defines the __Page header icon__ for the particular page.

The __Welcome__ and __Completion__ pages of __RadWizard__ have an image before its __ContentArea__. These images are defined and customized using similar to the explained above approach.

The exposed in __RadWizard__ properties for customization of the __welcome images__ are:

* __WelcomeImage__ - defines the image of the welcome pages.

* __HideWelcomeImage__ - defines whether the image of the welcome pages should be visible.

* __WelcomeImageLayout__ - defines the layout of the welcome pages image.

* __WelcomeImageBackgroundShape__ - defines the background image shape of the welcome pages. It is usually defined in the control theme.

The __Welcome page’s WelcomeImage__ property defines the image for the particular __Welcome page__ with higher priority than the __RadWizard WelcomeImage__ property.

You can use the same set of properties to customize the image of the __Completion pages__.
        
