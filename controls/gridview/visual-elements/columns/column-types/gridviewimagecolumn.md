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

{{source=..\SamplesCS\GridView\Columns\GridViewImageColumn1.cs region=addImageColumn}} 
{{source=..\SamplesVB\GridView\Columns\GridViewImageColumn1.vb region=addImageColumn}} 

````C#
GridViewImageColumn imageColumn = new GridViewImageColumn();
imageColumn.Name = "ImageColumn";
imageColumn.FieldName = "Photo";
imageColumn.HeaderText = "Picture";
imageColumn.ImageLayout = ImageLayout.Zoom;           
radGridView1.MasterTemplate.Columns.Insert(4, imageColumn);

````
````VB.NET
Dim imageColumn As New GridViewImageColumn
imageColumn.Name = "ImageColumn"
imageColumn.FieldName = "Photo"
imageColumn.HeaderText = "Picture"
imageColumn.ImageLayout = ImageLayout.Zoom
RadGridView1.MasterTemplate.Columns.Add(imageColumn)

````

{{endregion}} 

If the **GridViewImageColumn** is mapped to a property coming from the **DataBoundItem** via the specified **FieldName** (used in bound mode), the cells values will be automatically populated. For unbound mode, it is possible to add Image values to cells as it is demonstrated in the following code snippet:

#### Add image value to a cell

{{source=..\SamplesCS\GridView\Columns\GridViewImageColumn1.cs region=AddCellValue}} 
{{source=..\SamplesVB\GridView\Columns\GridViewImageColumn1.vb region=AddCellValue}} 

````C#
GridViewRowInfo row = this.radGridView1.Rows.AddNew();
row.Cells["ImageColumn"].Value = Properties.Resources.TV_car;

row = this.radGridView1.Rows.AddNew();
row.Cells["ImageColumn"].Value = Image.FromFile(@"..\..\logo.png");

````
````VB.NET
Dim row As GridViewRowInfo = Me.RadGridView1.Rows.AddNew()
row.Cells("ImageColumn").Value = My.Resources.TV_car1
row = Me.RadGridView1.Rows.AddNew()
row.Cells("ImageColumn").Value = Image.FromFile("..\..\logo.png")

````

{{endregion}} 

## Image Layout

__GridViewImageColumn__ also implements resizing functionality where sizing is controlled by the __ImageLayout__ property. __ImageLayout__ can be set to one of the following: *None*, *Tile*, *Center*, *Stretch* and *Zoom*:

## Set Image Layout

* __None:__ The image is positioned at the top left corner of the cell. This value can be used in a combination with the value of the ImageAlignment property to specify the position of an image in a cell:

{{source=..\SamplesCS\GridView\Columns\GridViewImageColumn1.cs region=none}} 
{{source=..\SamplesVB\GridView\Columns\GridViewImageColumn1.vb region=none}} 

````C#
imageColumn.ImageLayout = ImageLayout.None;
imageColumn.ImageAlignment = ContentAlignment.BottomRight;

````
````VB.NET
imageColumn.ImageLayout = ImageLayout.None
imageColumn.ImageAlignment = ContentAlignment.BottomRight

````

{{endregion}} 

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

