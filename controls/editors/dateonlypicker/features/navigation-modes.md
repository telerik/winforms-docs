---
title: Navigation Modes
page_title: Navigation Modes - RadDateOnlyPicker 
description: This article shows how you can change the navigation mode of the underlying calendar
slug: editors-dateonlypicker-features-navigation-modes
tags: navigation,modes, netcore
published: True
position: 1
---

# Navigation Modes
 
The embedded __RadCalendar__ has `HeaderNavigationMode` property, which determines what will be the behavior of control when the end-users clicks on the header of __RadCalendar__. In this article we will demonstrate how to change the default navigation mode.

|HeaderNavigationMode|Design|
|----|----|
|Zoom|![WinForms RadDateOnlyPicker Zoom](images/editors-dateonlypicker-navigation-modes001.png)|
|Popup|![WinForms RadDateOnlyPicker Popup](images/editors-dateonlypicker-navigation-modes003.png)|

#### Setting the value of RadDateOnlyPicker 

{{source=..\SamplesCS\Editors\DateOnlyPicker.cs region=HeaderNavigationMode}} 
{{source=..\SamplesVB\Editors\DateOnlyPicker.vb region=HeaderNavigationMode}} 

````C#
this.radDateOnlyPicker1.DateOnlyPickerElement.Calendar.HeaderNavigationMode = HeaderNavigationMode.Zoom;

````
````VB.NET
Me.RadDateOnlyPicker1.DateOnlyPickerElement.Calendar.HeaderNavigationMode = HeaderNavigationMode.Zoom

````

{{endregion}} 

![WinForms RadDateOnlyPicker Value Property](images/editors-dateonlypicker-navigation-modes002.gif)

## See Also

* [Design Time]({%slug editors-dateonlypicker-design-time%})
* [MaskDateOnlyProvider]({%slug editors-features-maskdateonlyprovider%})
* [Properties]({%slug editors-dateonlypicker-properties%})
* [Structure]({%slug editors-dateonlypicker-structure%})
