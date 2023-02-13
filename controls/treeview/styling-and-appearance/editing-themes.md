---
title: Editing Themes
page_title: Editing Themes - RadTreeView
description: This article shows how you can style RadTreeView by extracting and modifying one of the existing themes.
slug: winforms/treeview/editing-themes
tags: themes
published: True
position: 3
---

# Editing Themes

This help article will demonstrate a step by step tutorial how to customize the ControlDefault theme for __RadTreeView__. 

1. Open [VisualStyleBuilder]({%slug winforms/tools/visual-style-builder%}): Start menu (Start >> Programs >> Telerik >> UI for WinForms [version] >> Tools).

1. Export the built-in themes in a specific folder by selecting *File >> Export Built-in Themes*.

1. Load a desired theme from the just exported files by selecting *File >> Open Package*

1. Select __TreeNodeElement__ in *Controls Structure* on the left side. Then, select __FullRowSelect.MouseOver__ in the *Element States* section.

    ![WinForms RadTreeView VSB Controls Structure](images/treeview-customizing-appearance-themes001.png)

1. Modify the applied *fill* repository item. 

    ![WinForms RadTreeView VSB Fill Repository](images/treeview-customizing-appearance-themes002.png)
    The result is illustrated below. The new fill color is applied when hovering the item:

    ![WinForms RadTreeView VSB Color](images/treeview-customizing-appearance-themes003.png)

1. Save the theme by selecting *File >> Save As*.

1. Now, you can apply your custom theme to __RadTreeView__ by using the demonstrated approach in the following link: [Using custom themes]({%slug winforms/themes/using-custom-themes%})



# See Also 

* [Getting Started with VisualStyleBuilder]({%slug winforms/tools/visual-style-builder/getting-started%})
* [Working With Repository Items]({%slug winforms/tools/visual-style-builder/working-with-visual-style-builder/working-with-repository-items%})
