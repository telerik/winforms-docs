---
title: Customizing Appearance
page_title: Customizing Appearance | RadTimeSpanPicker
description: RadTimeSpanPicker is a UI component that provides a full control over picking a specific time span and duration.
slug: radtimespanpicker-customizing-appearance
tags: radtimespanpicker
published: True
position: 0
---


# Customizing Appearance

Accessing and customizing elements can be performed either at design time, or at run time. To format the items in the drop down you will need to handle the VisualItemFormatting event at in the code behind.

## Design Time

You can access and modify the style for the different elements in the editable area of __RadTimeSpanPicker__ by using the Element hierarchy editor.

>tip In order to access the Element hierarchy editor select RadFontDropDownList and click the small arrow on the top right position in order to open the Smart Tag. Then, click the Edit UI Elements.

![radtimespanpicker-appearance001](images/radtimespanpicker-appearance001.png)


## Formating Items

The drop down consist of several ListControlElements which represent the time span components. To change their styles you need to handle the __VisualItemFormatting__ event. 

#### Formating Items in the Popup

{{source=..\SamplesCS\Editors\TimeSpanCode.cs region=Formatting}} 
{{source=..\SamplesVB\Editors\TimeSpanCode.vb region=Formatting}} 

{{endregion}} 

Here is the result.

![radtimespanpicker-appearance002](images/radtimespanpicker-appearance002.png)

# See Also

*[Themes]({%slug radtimespanpicker-themes%})