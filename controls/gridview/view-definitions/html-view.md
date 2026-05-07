---
title: HTML View
page_title: HTML View - WinForms GridView Control
description: WinForms GridView allows you to define the cells/rows layout configuration using similar to the HTML tables syntax.
slug: winforms/gridview/view-definitions/html-view
tags: html,view
published: True
position: 3
previous_url: gridview-viewdefinitions-html-view
---

# HTML View

The name of this view may lead to some confusion. __RadGridView__ does not support HTML rendering, and there are no plans to support it. This view enables using row layout similar to the one existing in HTML tables. In fact, you can take an existing HTML table and use its HTML code in RadGridView. Sometimes this can save a lot of work. Just change the cell text to be the unique name of the desired column.

![WinForms RadGridView HTML View](images/gridview-viewdefinitions-html-view001.png)

To use an HTML view we should instantiate HtmlViewDefinition and add the desired rows and cells.

#### Add rows and cells

<snippet id='gridview-htmlview1-addrowsandcells-cs' />
<snippet id='gridview-htmlview1-addrowsandcells-vb' />

The __HtmlViewDefinition__ adds row and column spanning feature like in HTML table. This features enables spanning cells across more than one column or row. To specify a column spanning, set the __ColSpan__ property of the __CellDefinition__:

#### Set column spans

<snippet id='gridview-htmlview1-setcolspan-cs' />
<snippet id='gridview-htmlview1-setcolspan-vb' />

The __RowSpan__ property sets the row spanning:

#### Set row spans

<snippet id='gridview-htmlview1-setrowspan-cs' />
<snippet id='gridview-htmlview1-setrowspan-vb' />

You have to set the __Height__ property of the __RowDefinition__ to change the row height:

#### Set row height.

<snippet id='gridview-htmlview1-setrowheight-cs' />
<snippet id='gridview-htmlview1-setrowheight-vb' />

#### Using HTML-like syntax:

````HTML
    <table>
    <tr>
       <td>CustomerID</td>
       <td>CompanyName</td>
       <td rowspan="2">City</td>
       <td rowspan="2">Country</td>
    </tr>
    <tr>
       <td colspan="2">Phone</td>
    </tr>
    </table>
````

#### Use HTML template

<snippet id='gridview-htmlview1-usehtmltemplate-cs' />
<snippet id='gridview-htmlview1-usehtmltemplate-vb' />

At the end simply set the __ViewDefinitions__ property to the newly created __ViewDefinition__ instance.

<snippet id='gridview-htmlview1-settheviewdefinition-cs' />
<snippet id='gridview-htmlview1-settheviewdefinition-vb' />

>caution You need to assign the view definition to the *ViewDefinition* property of RadGridView as described in the [overview section]({%slug winforms/gridview/view-definitions/overview%}).
>

>caution You need to either create the columns manually or supply a data source which will generate them.
>

## See Also
* [Column Groups View]({%slug winforms/gridview/view-definitions/column-groups-view%})

* [Overview]({%slug winforms/gridview/view-definitions/overview%})

* [Table View]({%slug winforms/gridview/view-definitions/table-view%})

