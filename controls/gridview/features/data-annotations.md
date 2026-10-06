---
title: Data Annotations
page_title: Data Annotations in WinForms GridView - Configure Generated Columns
description: Configure RadGridView columns with BrowsableAttribute, DisplayAttribute, DisplayFormatAttribute, EditableAttribute, DisplayNameAttribute, and ReadOnlyAttribute. Control column generation, headers, order, grouping, formatting, and editability.
components: ["gridview"]
slug: winforms/gridview/features/data-annotations
tags: RadGridView, WinForms, data annotations, System.ComponentModel.DataAnnotations, auto-generated columns, DisplayAttribute, DisplayFormatAttribute, BrowsableAttribute, EditableAttribute, DisplayNameAttribute, ReadOnlyAttribute
published: True
---

# Data Annotations

RadGridView reads supported attributes from properties of bound .NET objects to configure generated columns, headers, formatting, and editability. The attributes described here come from `System.ComponentModel` and `System.ComponentModel.DataAnnotations`.

## Configure Generated Columns

When `AutoGenerateColumns` is enabled, RadGridView creates columns from the public properties of the bound objects. The supported attributes control whether a property appears, the generated column's caption and position, grouping labels, formatting, and editability. For matching manually created columns, `Display`, `DisplayFormat`, and `Editable` metadata is applied when the corresponding column property has not been explicitly set. `Browsable(false)` hides a matching manual column unless its visibility was explicitly set.

The following example applies the supported attributes to a bound model:

```csharp
using System.ComponentModel;
using System.ComponentModel.DataAnnotations;

public class Product
{
	[Display(Name = "Product name", ShortName = "Name", Order = 0, GroupName = "Inventory")]
	public string Name { get; set; }

	[Display(Name = "Unit price", Order = 1, GroupName = "Inventory")]
	[DisplayFormat(DataFormatString = "{0:C2}", NullDisplayText = "Not set", ApplyFormatInEditMode = true)]
	public decimal? UnitPrice { get; set; }

	[Editable(AllowEdit = false)]
	public string SKU { get; set; }

	[DisplayName("Created by")]
	public string CreatedBy { get; set; }

	[ReadOnly(true)]
	public string ImportBatch { get; set; }

	[Display(AutoGenerateField = false)]
	public string InternalCode { get; set; }

	[Browsable(false)]
	public string InternalNotes { get; set; }
}
```

Bind a collection of `Product` objects to RadGridView. The `InternalCode` property is omitted from auto-generated columns, and `InternalNotes` is not browsable. The other attributes configure the generated columns as described below.

## Supported Attributes

| Attribute | RadGridView behavior |
|---|---|
| `Browsable(false)` | Excludes the property from automatic column generation. A matching manually created column is hidden unless its `IsVisible` value was explicitly set. |
| `Display(Name = "...")` | Sets the column header. Resource-backed names are supported by setting `ResourceType` to the resource class and `Name` to the resource property key. |
| `Display(ShortName = "...")` | Sets the column header when `Name` is not specified. If both are specified, `Name` takes precedence. |
| `Display(Order = n)` | Orders automatically generated columns by the specified value. Properties without an order follow ordered properties; properties with the same order retain their original property order. |
| `Display(AutoGenerateField = false)` | Excludes the property from automatic column generation. It does not remove a matching manually created column. |
| `Display(GroupName = "...")` | Supplies the group label in grouped row headers and the group panel. It does not replace the column header. |
| `DisplayFormat(DataFormatString = "...")` | Sets the column's display format. |
| `DisplayFormat(NullDisplayText = "...")` | Sets the text displayed for a null value. |
| `DisplayFormat(ApplyFormatInEditMode = true)` | Applies `DataFormatString` while editing as well as displaying. For decimal columns, standard `C`, `E`, `F`, `N`, and `P` formats with an explicit precision, such as `{0:C3}`, also set the column's decimal places. |
| `Editable(AllowEdit = false)` | Makes the generated or metadata-configured column read-only. Setting `AllowEdit = true` does not make an otherwise read-only property editable. |
| `DisplayName("...")` (`System.ComponentModel`) | Sets the generated column header using component-model metadata. |
| `ReadOnly(true)` (`System.ComponentModel`) | Makes the generated column read-only based on the property's component-model metadata. |

## See Also

* [Generating columns]({%slug winforms/gridview/columns/generating-columns%})
* [Data formatting]({%slug winforms/gridview/columns/data-formatting%})
