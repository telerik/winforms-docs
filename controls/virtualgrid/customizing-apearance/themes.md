---
title: Themes
page_title: Themes | RadVirtualGrid
description: All RadVirtualGrid elements can be styled in Visual Style Builder. This article shows how you can change the selected row color.
slug: winforms/virtualgrid/customizing-appearance/themes
tags: virtualgrid, themes
published: True
position: 2 
---

# Themes

This help article will demonstrate a step by step tutorial how to customize the ControlDefault theme for RadVirtualGrid. 


1. Open [VisualStyleBuilder]({%slug winforms/tools/visual-style-builder/starting-vsb%}).

1. [Export the built-in themes] ({%slug winforms/tools/visual-style-builder/working-with-visual-style-builder/loading-predefined-themes%}). in a specific folder by selecting *File >> Export Built-in Themes*.

1. Load a desired theme from the just exported files by selecting *File >> Open Package*

1. Navigate to __RadVirtualGrid__ in `Controls Structure` on the left side. Then, expand to and select __VirtualgridRowElement__. In the `Elements States` window select __VirtualGridRowElement.IsCurrent__.
    ![radvirtualgrid-customizing-appearance-themes 001](images/radvirtualgrid-customizing-appearance-themes001.png)

1. Modify the applied fill repository item.
    ![radvirtualgrid-customizing-appearance-themes 002](images/radvirtualgrid-customizing-appearance-themes002.png)

1. The following image shows the results. 
    ![radvirtualgrid-customizing-appearance-themes 003](images/radvirtualgrid-customizing-appearance-themes003.png)

1. Save the theme by selecting *File >> Save As*.

1. Now, you can apply your custom theme to __RadVirtualGrid__ by using the approach demonstrated in the following link: [Using custom themes]({%slug winforms/themes/using-custom-themes%})

# See Also
* [Formatting Data Cells]({%slug winforms/virtualgrid/cells/formatting-data-cells%})

* [Formatting Data Rows]({%slug winforms/virtualgrid/rows/formatting-data-rows%})

* [Formatting System Cells]({%slug winforms/virtualgrid/cells/formatting-system-cells%})

* [Formatting System Rows]({%slug winforms/virtualgrid/rows/formatting-system-rows%})
