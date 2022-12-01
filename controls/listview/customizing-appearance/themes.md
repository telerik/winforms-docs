---
title: Themes
page_title: Themes - RadListView
description: Telerik RadListView control is created as a result of the concord of the powerful data layer used by RadGridView and RadListControl, together with the outstanding Telerik Presentation Framework.
slug: winforms/listview/accessing-and-customizing-elements/themes
tags: formatting,items
published: True
position: 2 
---

# Themes

This help article will demonstrate a step by step tutorial how to customize the ControlDefault theme for __RadListView__. 

1. Open [VisualStyleBuilder]({%slug winforms/tools/visual-style-builder%}): Start menu (Start >> Programs >> Telerik >> UI for WinForms [version] >> Tools).

1. Export the built-in themes in a specific folder by selecting *File >> Export Built-in Themes*.

1. Load a desired theme from the just exported files by selecting *File >> Open Package*

1. Select __SimpleListViewgroupVisualItem__ in *Controls Structure* on the left side. Then, select __IsHotTracking__ in the *Element States* section.

	![WinForms RadListView listview-customizing-appearance-themes 001](images/listview-customizing-appearance-themes001.png)

1. Modify the applied *fill* repository item. 

	![WinForms RadListView listview-customizing-appearance-themes 002](images/listview-customizing-appearance-themes002.png)
	The result is illustrated below. The new fill color is applied when hovering the item:

	![WinForms RadListView listview-customizing-appearance-themes 004](images/listview-customizing-appearance-themes004.png)

1. Save the theme by selecting *File >> Save As*.

1. Now, you can apply your custom theme to __RadListView__ by using the demonstrated approach in the following link: [Using custom themes]({%slug winforms/themes/using-custom-themes%})

>note If you need to customize the elements in some of the other views, you can switch the view by right click on **RadListView**:


![WinForms RadListView listview-customizing-appearance-themes 003](images/listview-customizing-appearance-themes003.png)


# See Also 

* [Getting Started with VisualStyleBuilder]({%slug winforms/tools/visual-style-builder/getting-started%})
* [Working With Repository Items]({%slug winforms/tools/visual-style-builder/working-with-visual-style-builder/working-with-repository-items%})
