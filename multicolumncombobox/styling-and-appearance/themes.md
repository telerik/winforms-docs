---
title: Themes
page_title: Themes
description: Themes
slug: multicolumncombobox-styling-and-appearance-themes
tags: themes
published: True
position: 0
---

# Themes



## 

Since __RadMultiColumnComboBox__ is a compound control, it uses the theming of __RadGridView__. 
        Therefore, in order to make a theme for __RadMultiColumnComboBox__, you should change the styles for 
        __RadMultiColumnComboBox__ and for __RadGridView__. 
        The following example will show you how to edit the predefined __ControlDefault__ theme for the control.

1. Extract and open the __ControlDefault__ theme in __VisualStyleBuilder__.

1. First we can change the appearance of the __RadMultiColumnComboBox__ element. Let's change its 
            __BorderPrimitive ForeColor__ to *Light Green* 
            To do that we can just change the fore color of the already applied repository item style![multicolumncombobox-styling-and-appearance-theme 001](images/multicolumncombobox-styling-and-appearance-theme001.png)

1. Now we can edit the styles for the __RadGridView__. For this example we will change the selected row back color
            to a light green. This can be achieved by selecting the __GridDataCellElement__
            and changing the __BackColor__ of the __GridDataHoverCellHoverFill__ repository item.![multicolumncombobox-styling-and-appearance-theme 002](images/multicolumncombobox-styling-and-appearance-theme002.png)

1. Save the theme with some different name.

1. Load the Theme in your application. The result should look like in the below picture.![multicolumncombobox-styling-and-appearance-theme 003](images/multicolumncombobox-styling-and-appearance-theme003.png)

# See Also

 * [Load Predfined Themes]({%slug tools-visual-style-builder-working-with-visual-style-builder-loading-predefined-themes%})

 * [Using Custom Themes]({%slug themes-using-custom-themes%})
