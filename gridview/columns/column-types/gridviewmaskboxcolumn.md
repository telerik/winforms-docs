---
title: GridViewMaskBoxColumn
page_title: GridViewMaskBoxColumn
description: GridViewMaskBoxColumn
slug: gridview-columns-gridviewmaskboxcolumn
tags: gridviewmaskboxcolumn
published: True
position: 12
---

# GridViewMaskBoxColumn



## 

__GridViewMaskBoxColumn__ allows *restricted* editing of text data. Each cell in
        	__GridViewMaskBoxColumn__ column displays the text of the cell __Value__ property according 
        	to the settings of the __TextAlignment__ (default is __ContentAlignment.MiddleLeft__),
        	__WrapText__ (default is __false__) and __FormatString__ properties.
      	![gridview-columns-gridviewmaskboxcolumn 001](images/gridview-columns-gridviewmaskboxcolumn001.png)

You can set a *mask* to GridViewMaskBoxColumn using its __Mask__and
      		__MaskType__ properties. You can find further information about the possible values for these properties in
      		RadMaskEditBox documentation section.
      	

#### __[C#] Adding GridViewMaskBoxColumn__

{{region addMaskBoxColumn}}
	            GridViewMaskBoxColumn maskBoxColumn = new GridViewMaskBoxColumn();
	            maskBoxColumn.Name = "Price";
	            maskBoxColumn.FieldName = "UnitPrice";
	            maskBoxColumn.HeaderText = "Unit Price";
	            maskBoxColumn.MaskType = MaskType.Numeric;
	            maskBoxColumn.Mask = "C";
	            maskBoxColumn.TextAlignment = ContentAlignment.BottomRight;
	            maskBoxColumn.FormatString = "{0:C}";
	            maskBoxColumn.DataType = typeof(decimal);
	            radGridView1.MasterTemplate.Columns.Add(maskBoxColumn);
	{{endregion}}



#### __[VB.NET] Adding GridViewMaskBoxColumn__

{{region addMaskBoxColumn}}
	        Dim maskBoxColumn As New GridViewMaskBoxColumn()
	        maskBoxColumn.Name = "Price"
	        maskBoxColumn.FieldName = "UnitPrice"
	        maskBoxColumn.HeaderText = "Unit Price"
	        maskBoxColumn.MaskType = MaskType.Numeric
	        maskBoxColumn.Mask = "C"
	        maskBoxColumn.TextAlignment = ContentAlignment.BottomRight
	        maskBoxColumn.FormatString = "{0:C}"
	        maskBoxColumn.DataType = GetType(Decimal)
	        RadGridView1.MasterTemplate.Columns.Add(maskBoxColumn)
	{{endregion}}


