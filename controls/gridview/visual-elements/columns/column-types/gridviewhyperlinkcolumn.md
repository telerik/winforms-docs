---
title: GridViewHyperlinkColumn
page_title: GridViewHyperlinkColumn - WinForms GridView Control
description: GridViewHyperlinkColumn allows WinForms GridView to display, format, edit and open hyperlinks as well as run executable files.
slug: winforms/gridview/columns/column-types/gridviewhyperlinkcolumn
tags: gridviewhyperlinkcolumn
published: True
position: 10
previous_url: gridview-columns-gridviewhyperlinkcolumn
---

# GridViewHyperlinkColumn

__GridViewHyperlinkColumn__ allows __RadGridView__ to display, format, edit and open hyperlinks as well as run executable files. The default editor of the column is __RadTextBoxEditor__.

Here is how to create and populate __GridViewHyperlinkColumn__:

<snippet id='gridview-gridviewhyperlinkcolumn1-addhyperlinkcolumn-cs' />
<snippet id='gridview-gridviewhyperlinkcolumn1-addhyperlinkcolumn-vb' />

![WinForms RadGridView GridViewHyperlinkColumn](images/gridview-columns-gridviewhyperlinkcolumn001.png)

## Behavior customization

You can choose the action to open hyperlink or run executable using the __HyperlinkOpenAction__ property of the column. It is an enumeration with the following members:

* __SingleClick:__ opens the hyperlink on single mouse click

* __DoubleClick:__ opens the hyperlink on double mouse click 

* __None:__ the user cannot open the link.

The __HyperlinkOpenArea__ property of the column determines whether to execute the hyperlink upon click on the cell or upon click on the text of the cell.
        

## Appearance

The __RadGridView__ theme could define styles for the following __GridViewHyperlinkColumn__ cells states:
        

* __Default (unvisited)__

* __Hovered__

* __Clicked__

* __Visited__

The mouse cursor transforms into ‘*hand*’ when hovering hyperlink from the column. 

## Cell Customization

The hyperlink cells can be further customized through the **CellFormating** event of the **RadGridView**. In the event handler, we can check if the **e.CellElement** property is a **GridHyperlinkCellElement** element. If yes, we can modify the look of the cell.

<snippet id='gridview-gridviewhyperlinkcolumn1-customizehyperlinkcolumncell-cs' />
<snippet id='gridview-gridviewhyperlinkcolumn1-customizehyperlinkcolumncell-vb' />

## Events

Here are the __GridViewHyperlinkColumn__ specific events:

* __HyperlinkOpening:__ cancelable event which is raised before opening the hyperlink

* __HyperlinkOpened:__ event which is raised after opening the link.

The following example demonstrates how to replace the default **GridViewTextBoxColumn** with a **GridViewHyperlinkColumn** which stores emails. When an email hyperlink is clicked, a mail message is opened in the default Mail application:

<snippet id='gridview-gridviewhyperlinkcolumn1-emailcolumn-cs' />
<snippet id='gridview-gridviewhyperlinkcolumn1-emailcolumn-vb' />

# See Also

* [GridViewBrowseColumn]({%slug winforms/gridview/columns/column-types/gridviewbrowsecolumn%})

* [GridViewCalculatorColumn]({%slug winforms/gridview/columns/column-types/gridviewcalculatorcolumn%})

* [GridViewCheckBoxColumn]({%slug winforms/gridview/columns/column-types/gridviewcheckboxcolumn%})

* [GridViewColorColumn]({%slug winforms/gridview/columns/column-types/gridviewcolorcolumn%})

* [GridViewComboBoxColumn]({%slug winforms/gridview/columns/column-types/gridviewcomboboxcolumn%})

* [GridViewCommandColumn]({%slug winforms/gridview/columns/column-types/gridviewcommandcolumn%})

* [GridViewDateTimeColumn]({%slug winforms/gridview/columns/column-types/gridviewdatetimecolumn%})

* [GridViewDecimalColumn]({%slug winforms/gridview/columns/column-types/gridviewdecimalcolumn%})

* [GridViewSparklineColumn]({%slug gridview-columntypes-sparklinecolumn%})

