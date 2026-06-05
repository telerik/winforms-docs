---
title: Formatting GridViewCommandColumn
page_title: Formatting GridViewCommandColumn - WinForms GridView Control
description: WinForms GridView allows you to use the cell formating in order to change the styles of the buttons used in the GridViewCommandColumn.
slug: winforms/gridview/cells/formatting-command-column
tags: formatting,cells
published: True
position: 1
---
# Change the appearance of the buttons in GridViewCommandColumn  

Sometimes, you may need to change the appearance of the buttons that appear in the cells of the GridViewCommandColumn. These buttons are children of the RadGridView cells, so in order to access them, you should take them from the Children collection of the visual cells. We will demonstrate how this should be done by analyzing the following case.

Let's say that you have a number of employees. Only one employee is Vice President of the company, while the others are managers and sales representatives. In RadGridView you have a GridViewCommandColumn, the buttons of which allow the end-users to edit the details of all records, except the one that belongs to the Vice President. So, depending on the value of the Title cell, you should set the __Enabled__ property of the respective RadButtonElement to *true* or *false*. Here is how we can achieve that:

<snippet id='gridview-formattingcellsbuttons-buttoncell-cs' />
<snippet id='gridview-formattingcellsbuttons-buttoncell-vb' />

>caption Figure 1: Styling the command cell button. 

![WinForms RadGridView Styling Command Cell Button](images/gridview-cells-formatting-cells-command-cell001.png)

# See Also

* [Hiding Child Tabs when no Data is Available]({%slug winforms/gridview/cells/formatting-child-tabs%})

* [Formating Group Rows]({%slug winforms/gridview/cells/formatting-group-rows%})

* [Style Property]({%slug winforms/gridview/cells/style%})

