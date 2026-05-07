---
title: TextView item formatting
page_title: TextView item formatting - RadGanttView
description: RadGanttView offers two events for formatting the text view part.
slug: winforms/ganttview-/formatting/textview-item-formatting
tags: textview,item,formatting
published: True
position: 0
previous_url: ganttview-formatting-textviewitem-cellformatting
---

# TextView Item Formatting

__RadGanttView__ offers two events for formatting the text view part. The __TextViewItemFormatting__ event  is fired for each item (row) and the __TextViewCellFormatting__ is fired for every cell.

Here is an example demonstrating how to use the event to make all summary items have a green back color and all tasks a yellow one.
 
<snippet id='ganttview-textviewitemcellformatting-textviewitemformatting-cs' />
<snippet id='ganttview-textviewitemcellformatting-textviewitemformatting-vb' />




![WinForms RadGanttView TextView Item Formatting](images/ganttview-formatting-textviewitem-cellformatting001.png)

Another example showing how to change the fore color of the cells in the `Title` column for all types of tasks that start on an even day of the month.
        
<snippet id='ganttview-textviewitemcellformatting-textviewcellformatting-cs' />
<snippet id='ganttview-textviewitemcellformatting-textviewcellformatting-vb' />



![WinForms RadGanttView Cells Color](images/ganttview-formatting-textviewitem-cellformatting002.png)


# See Also

* [GraphicalView item formatting]({%slug winforms/ganttview-/formatting/graphicalview-item-formatting%})
* [GraphicalView Link Item formatting]({%slug winforms/ganttview-/formatting/graphicalview-link-item-formatting%})
* [Custom Painting]({%slug winforms/ganttview-/formatting/custom-painting%})
* [Themes]({%slug winforms/ganttview/themes%})
* [Timeline item formatting]({%slug winforms/ganttview-/formatting/timeline-item-formatting%})
