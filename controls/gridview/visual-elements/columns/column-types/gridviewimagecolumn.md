---
title: GridViewImageColumn
page_title: GridViewImageColumn - WinForms GridView Control
description: WinForms GridViewImageColumn displays read-only images for database columns of image data. 
slug: winforms/gridview/columns/column-types/gridviewimagecolumn
tags: gridviewimagecolumn
published: True
position: 11
previous_url: gridview-columns-gridviewimagecolumn
---

# GridViewImageColumn

__GridViewImageColumn__ displays *read-only* images for database columns of **Image** data type (OLE container or BLOB). 

>note RadGridView tries to convert data columns that contain unspecified binary data to an image.
>

>note Some databases such as Access use OLE image container. **RadGridView** automatically recognizes that and skips the added header.
>

Supported image formats are those supported by the `Image` class of the .NET Framework. 

![WinForms RadGridView GridViewImageColumn](images/gridview-columns-gridviewimagecolumn001.png)

#### Create GridViewImageColumn

<snippet id='gridview-gridviewimagecolumn1-addimagecolumn-cs' />
<snippet id='gridview-gridviewimagecolumn1-addimagecolumn-vb' />

If the **GridViewImageColumn** is mapped to a property coming from the **DataBoundItem** via the specified **FieldName** (used in bound mode), the cells values will be automatically populated. For unbound mode, it is possible to add Image values to cells as it is demonstrated in the following code snippet:

#### Add image value to a cell

<snippet id='gridview-gridviewimagecolumn1-addcellvalue-cs' />
<snippet id='gridview-gridviewimagecolumn1-addcellvalue-vb' />

## Image Layout

__GridViewImageColumn__ also implements resizing functionality where sizing is controlled by the __ImageLayout__ property. __ImageLayout__ can be set to one of the following: *None*, *Tile*, *Center*, *Stretch* and *Zoom*:

## Set Image Layout

* __None:__ The image is positioned at the top left corner of the cell. This value can be used in a combination with the value of the ImageAlignment property to specify the position of an image in a cell:

<snippet id='gridview-gridviewimagecolumn1-none-cs' />
<snippet id='gridview-gridviewimagecolumn1-none-vb' />

* __Tile:__ The image is repeated.

* __Center:__ The image is positioned at the cell center regardless of the ImageAlignment value.

* __Stretch:__  The image is stretched in the cell.

* __Zoom:__ The image is zoomed but the aspect ratio is preserved.


# See Also

* [Display Images in GridView Cells from URL]({%slug display-images-in-gridview-cells-from-url%})

* [How to Copy the Image in a GridView's Cell]({%slug copy-image-in-grid-cells%})

* [GridViewBrowseColumn]({%slug winforms/gridview/columns/column-types/gridviewbrowsecolumn%})

* [GridViewCalculatorColumn]({%slug winforms/gridview/columns/column-types/gridviewcalculatorcolumn%})

* [GridViewCheckBoxColumn]({%slug winforms/gridview/columns/column-types/gridviewcheckboxcolumn%})

* [GridViewColorColumn]({%slug winforms/gridview/columns/column-types/gridviewcolorcolumn%})

* [GridViewComboBoxColumn]({%slug winforms/gridview/columns/column-types/gridviewcomboboxcolumn%})

* [GridViewCommandColumn]({%slug winforms/gridview/columns/column-types/gridviewcommandcolumn%})

* [GridViewDateTimeColumn]({%slug winforms/gridview/columns/column-types/gridviewdatetimecolumn%})

* [GridViewDecimalColumn]({%slug winforms/gridview/columns/column-types/gridviewdecimalcolumn%})

* [GridViewSparklineColumn]({%slug gridview-columntypes-sparklinecolumn%})

* [How to Load SVG Images in RadGridView Column]({%slug svg-image-column-in-gridview%})

