---
title: Populating with Data Programmatically
page_title: Populating with Data Programmatically - RadGanttView
description: You can manually populate RadGanttView with the summary items, task items and milestone items.
slug: winforms/ganttview-/working-with-data/populating-with-data-programmatically
tags: populating,with,data,programmatically
published: True
position: 2
previous_url: ganttview-working-with-data-populating-with-data-programmatically
---

# Populating with Data Programmatically

__RadGanttview__ supports unbound mode as well, which means that you can manually populate it with the summary items, task items and milestone items (if needed). Then just set up the links between tasks and you have your gantt setup. The following example starts by setting the desired start and end range of the graphical element and then we are adding a few task items with sub items. At the end we are adding the links between the items.
        

<snippet id='ganttview-populatingwithdataprogrammatically-populatedata-cs' />
<snippet id='ganttview-populatingwithdataprogrammatically-populatedata-vb' />




![WinForms RadGanttView ganttview-working-with-data-populating-with-data-programmatically 001](images/ganttview-working-with-data-populating-with-data-programmatically001.png)

Now we can just add the desired columns to be displayed in __GanttViewTextViewElement__. During the column initialization we will pass a string to specify the __FieldName__ so the column will know which fields of the tasks to display. In addition this string will also be used as header text.

<snippet id='ganttview-populatingwithdataprogrammatically-addcolumns-cs' />
<snippet id='ganttview-populatingwithdataprogrammatically-addcolumns-vb' />



![WinForms RadGanttView Populating Data Programmatically](images/ganttview-working-with-data-populating-with-data-programmatically002.png)

# See Also  

* [Binding to Database]({%slug winforms/ganttview-/working-with-data/binding-to-database%})
* [Data Binding Basics]({%slug winforms/ganttview-/working-with-data/data-binding-basics%})
* [Importing XML from MS Project]({%slug winforms/ganttview-/working-with-data/importing-xml-from-ms-project%})
* [Link Type Converter]({%slug winforms/ganttview-/working-with-data/link-type-converter%})
* [Adding new items]({%slug winforms/ganttview-/working-with-data/adding-new-items%})
