---
title: Visual Style Builder
page_title: Visual Style Builder | UI for WinForms Documentation
description: Visual Style Builder
slug: winforms/themes/visual-style-builder
tags: visual,style,builder
published: True
position: 0
---

# Visual Style Builder

## 

VisualStyleBuilder provides the key flexibility behind the Telerik UI for WinForms. Visual Style Builder runs within the Visual Studio design environment or as a stand alone application. With Visual Style Builder you can:

* Set properties 

* Inherit properties 

* Animate changes 

* Save themes 

## Set Properties

Using Visual Style Builder you can alter, at design-time or run time, a predefined set of properties of a control. Because all Telerik controls are composed of primitives, this customization can be applied at a very fine level of detail. For example, if you are working with a RadMenu control you can easily change the background color used for submenu items without changing the color used for main menu items.

Run time changes to property values can be tied to the state of a control. For example, it is possible to have the font size used for the text on a tab change when the tab is selected, when the mouse passes over the tab, or when the user clicks on the tab (or in response to any combination of these events).

![themes-visualstylebuilder 010](images/themes-visualstylebuilder010.png)

## Inherit Properties

When working with complex controls in Visual Style Builder, you can inherit property values (such as colors, or fonts) from parent elements to child elements, or override them at the child element level. Consider the Telerik RadRibbonBar control, which is composed of many individual elements including the tiny pieces that make up the tabs, groups, controls, menu items, and other parts of the user interface. If you want to change the overall color scheme for the Telerik RadRibbonBar, you can make a few property settings to the elements near the top of the [logical tree of elements](B1E2132D-B4E3-472D-8F7C-33A6B3CDDF8D) and let those settings be inherited by all the child elements. On the other hand, if you want the individual tabs to stand out from your overall color scheme, you can override the main colors for the tabs only, while still allowing everything else to continue to inherit the basic colors.
        

For additional information about Visual Style Builder, please refer to  [this documentation section]({%slug winforms/tools/visual-style-builder/getting-started%}).
        


| RELATED VIDEOS |  |
| ------ | ------ |
|[What's New in Visual Style Builder for Q1 2010](http://tv.telerik.com/winforms/visualstylebuilder/whats-new-visual-style-builder-q1-2010)<br>In this video, you will learn about all of the incredible new features included with the Q1 2010 version of Visual Style Builder. (Runtime: 15:13)|![themes-visualstylebuilder 008](images/themes-visualstylebuilder008.png)|[Styling Basics with Visual Style Builder for WinForms](http://tv.telerik.com/winforms/visualstylebuilder/styling-basics-with-visual-style-builder-winforms)<br>In this video, you will learn how to create a basic theme using repositories in Visual Style Builder for WinForms. You will then learn how to use this theme in your Telerik UI for WinForms based applications. (Runtime: 09:12)|![themes-visualstylebuilder 011](images/themes-visualstylebuilder011.png)
|[Introduction to the Visual Style Builder for WinForms](http://tv.telerik.com/winforms/visualstylebuilder/introduction-new-visual-style-builder-winforms)<br>In this recorded webinar, you will learn how to build themes using the latest version of Visual Style Builder. You will also learn what Theme Repositories are and how they make creating themes easier. (Runtime: 42:56)|![themes-visualstylebuilder 009](images/themes-visualstylebuilder009.png)
|[Changing Themes at Run Time with Telerik UI for WinForms](http://tv.telerik.com/winforms/visualstylebuilder/changing-themes-at-run-time-with-radcontrols-winforms)<br>In this video, you will learn how to give your users the ability to choose between Telerik themes and custom themes at run time. (Runtime: 08:42)|![themes-visualstylebuilder 008](images/themes-visualstylebuilder008.png)
|[Episode 1: Creating a Custom Theme for the RadScrollBar Component of RadScheduler](http://tv.telerik.com/watch/winforms/episode-1-creating-custom-skin-for-radscheduler-with-visual-style-builder-for-winforms)<br>This video is the first in a series of videos about creating a custom skin for RadScheduler using Visual Style Builder for WinForms.In this video, you will learn how to begin using Visual Style Builder. You will also learn what components make up the RadScheduler. Finally, you will learn how to create a theme for the RadScrollBar component of RadScheduler.|![themes-visualstylebuilder 001](images/themes-visualstylebuilder001.png)|
|[Episode 2: Creating a Custom Theme for the RadScheduler Component of RadScheduler](http://tv.telerik.com/watch/winforms/episode-2-creating-custom-skin-for-radscheduler-with-visual-style-builder)<br>This video is the second in a series of videos about creating a custom skin for RadScheduler using Visual Style Builder for WinForms. In this video, you will learn how to create a custom theme for the actual RadScheduler component.|![themes-visualstylebuilder 002](images/themes-visualstylebuilder002.png)|
|[Episode 3: Creating a Custom Theme for the RadForm Component of RadScheduler](http://tv.telerik.com/watch/winforms/episode-3-creating-custom-skin-for-radscheduler-with-visual-style-builder-for-winforms)<br>This video is the third in a series of videos about creating a custom skin for RadScheduler using Visual Style Builder for WinForms. In this video, you will learn how to create a custom theme for the RadForm component of the EditAppointmentDialog.|![themes-visualstylebuilder 003](images/themes-visualstylebuilder003.png)|
|[Episode 4: Creating a Custom Theme for the RadTextBox Component of RadScheduler](http://tv.telerik.com/watch/winforms/episode-4-creating-custom-skin-for-radscheduler-with-visual-style-builder-for-winforms)<br>This video is the fourth in a series of videos about creating a custom skin for RadScheduler using Visual Style Builder for WinForms. In this video, you will learn how to create a custom theme for the RadTextBox component contained within the EditAppointmentDialog.|![themes-visualstylebuilder 004](images/themes-visualstylebuilder004.png)|
|[Episode 5: Creating a Custom Theme for the RadDropDownList Component of RadScheduler](http://tv.telerik.com/watch/winforms/episode-5-creating-custom-theme-for-raddropdownlist-component-radscheduler)<br>This video is the fifth in a series of videos about creating a custom skin for RadScheduler using Visual Style Builder for WinForms. In this video, you will learn how to create a custom theme for the RadDropDownList component contained within the EditAppointmentDialog.|![themes-visualstylebuilder 005](images/themes-visualstylebuilder005.png)|
|[ Episode 6: Creating a Custom Theme for the RadDateTimePicker Component of RadScheduler ](http://tv.telerik.com/watch/winforms/episode-6-creating-custom-theme-for-raddatetimepicker-component-radscheduler)<br> This video is the sixth in a series of videos about creating a custom skin for RadScheduler using Visual Style Builder for WinForms. In this video, you will learn how to create a custom theme for the RadDateTimePicker component contained within the EditAppointmentDialog.|![themes-visualstylebuilder 006](images/themes-visualstylebuilder006.png)|
|[Episode 7: Creating a Custom Theme for the RadSpinEditor, RadButton, and RadSeparator Components of RadScheduler](http://tv.telerik.com/watch/winforms/episode-7-creating-custom-theme-for-radspineditor-radbutton-radseparator-components-radscheduler)<br>This video is the seventh in a series of videos about creating a custom skin for RadScheduler using Visual Style Builder for WinForms. In this video, you will learn how to create a custom theme for the RadSpinEditor, RadButton, and RadSeparator components contained within the EditAppointmentDialog.|![themes-visualstylebuilder 007](images/themes-visualstylebuilder007.png)|
