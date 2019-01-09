---
title: Themes
page_title: Themes | RadFontDropDownList
description: RadFontDropDownList represents a drop down list with built-in fonts that are installed on the system.
slug: winforms/editors/fontdropdownlist/accessing-and-customizing-elements/themes
tags: formatting,items, themes
published: True
position: 2 
---

# Themes

This help article will demonstrate a step by step tutorial how to customize the ControlDefault theme for **RadFontDropDownList**. 

1. Open [VisualStyleBuilder]({%slug winforms/tools/visual-style-builder%}): Start menu (Start >> Programs >> Telerik >> UI for WinForms [version] >> Tools).

1. Export the built-in themes in a specific folder by selecting *File >> Export Built-in Themes*.

1. Load a desired theme from the just exported files by selecting *File >> Open Package*

1. Select **RadListView** in *Controls Structure* on the left side. Then, right click to open the context menu and select *DetailsView mode*.

	![fontdropdownlist-customizing-appearance-themes 001](images/fontdropdownlist-customizing-appearance-themes001.png)

1. Modify the applied *fill* repository item for the **DetailListViewVisualItem** for the **Current.Selected** state. 

	![fontdropdownlist-customizing-appearance-themes 002](images/fontdropdownlist-customizing-appearance-themes002.png)
	
1. Save the theme by selecting *File >> Save As*.

1. Now, you can apply your custom theme to **RadFontDropDownList** by using the demonstrated approach in the following link: [Using custom themes]({%slug winforms/themes/using-custom-themes%})

>note If you need to customize the elements in some of the other views, you can switch the view by right click on **RadListView**:

![fontdropdownlist-customizing-appearance-themes 003](images/fontdropdownlist-customizing-appearance-themes003.png)

# See Also 

* [Getting Started with VisualStyleBuilder]({%slug winforms/tools/visual-style-builder/getting-started%})
* [Working With Repository Items]({%slug winforms/tools/visual-style-builder/working-with-visual-style-builder/working-with-repository-items%})
