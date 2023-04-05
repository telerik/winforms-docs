---
title: Getting Started
page_title: Getting Started - WinForms TimeSpanPicker Control
description: WinForms TimeSpanPicker is a UI component that provides a full control over picking a specific time span and duration. 
slug: radtimespanpicker-getting-started
tags: radtimespanpicker
published: True
position: 3
---

# Getting Started with WinForms TimeSpanPicker

This topic will walk you through the process of creating of __RadTimeSpanPicker__.


1\. Create a blank new application and drop __RadTimeSpanPicker__ on the form. The layout should look like this.

![WinForms RadTimeSpanPicker Layout](images/radtimespanpicker-getting-started001.png)

2\. In the code behind set the value of the control. 

{{source=..\SamplesCS\Editors\TimeSpanCode.cs region=getting-started}} 
{{source=..\SamplesVB\Editors\TimeSpanCode.vb region=getting-started}}
````C#
this.radTimeSpanPicker1.Value = TimeSpan.FromDays(5);

````
````VB.NET
Me.radTimeSpanPicker1.Value = TimeSpan.FromDays(5)

```` 

{{endregion}} 

3\. You can start the application and enter a new value.

![WinForms RadTimeSpanPicker Getting Started](images/radtimespanpicker-getting-started002.png)

# See Also

* [Structure]({%slug radtimespanpicker-structure%})
* [Properties Methods and Events]({%slug radtimespanpicker-properties%})


