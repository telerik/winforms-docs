---
title: Customizing composite filter dialog
page_title: Customizing composite filter dialog - WinForms GridView Control
description: Learn how to access the Composite Filter Dialog instance and change its properties.
slug: winforms/gridview/filtering/composite-filter-dialog
tags: composite,filtering
published: True
position: 9
---


## Customizing composite filter dialog

When you select the *Custom* item from the filter menu (*Available Filter* menu in Excel-like filtering), an appropriate dialog for creating a custom filter is shown. 

>caption Figure 1: Custom filter

![WinForms RadGridView Custom filter](images/gridview-filtering-composite-filter-dialog003.png)

Since *R1 2017 SP*, a **CompositeDataFilterForm** is shown. This dialog uses a [RadDataFilter]({%slug winforms/datafilter/overview%}) allowing the user to compose a complex filter expression.

>caption Figure 2: CompositeDataFilterForm

![WinForms RadGridView CompositeDataFilterForm](images/gridview-filtering-composite-filter-dialog002.png)

 In the previous versions a __CompositeFilterForm__ is displayed. The __CreateCompositeFilterDialog__ event is fired before the custom filter dialog is created. It allows you to create the default dialog and customize it or initialize your own implementation of the composite filter dialog.

#### Specify default filter dialog

{{source=..\SamplesCS\GridView\Filtering\Filtering.cs region=DefaultFilterDialog}} 
{{source=..\SamplesVB\GridView\Filtering\Filtering.vb region=DefaultFilterDialog}} 

````C#
Font f = new Font("Arial", 12, FontStyle.Italic);
private void radGridView1_CreateCompositeFilterDialog(object sender, GridViewCreateCompositeFilterDialogEventArgs e)
{
    CompositeFilterForm filterDialog = new CompositeFilterForm();
    filterDialog.Font = f;
    e.Dialog = filterDialog;
}

````
````VB.NET
Private f As New Font("Arial", 12, FontStyle.Italic)
Private Sub radGridView1_CreateCompositeFilterDialog(sender As Object, e As GridViewCreateCompositeFilterDialogEventArgs)
    Dim filterDialog As New CompositeFilterForm()
    filterDialog.Font = f
    e.Dialog = filterDialog
End Sub

````

{{endregion}} 


>caption Figure 3: CompositeFilterForm

![WinForms RadGridView CompositeFilterForm](images/gridview-filtering-composite-filter-dialog001.png)

# See Also
* [Basic Filtering]({%slug winforms/gridview/filtering/basic-filtering%})

* [Custom Filtering]({%slug winforms/gridview/filtering/custom-filtering%})

* [Events]({%slug winforms/gridview/filtering/events%})

* [Excel-like filtering]({%slug winforms/gridview/filtering/excel-like-filtering%})

* [FilterExpressionChanged Event]({%slug winforms/gridview/filtering/filterexpressionchanged-event%})

* [Filtering Row]({%slug winforms/gridview/filtering/filtering-row%})

* [Put a filter cell into edit mode programmatically]({%slug winforms/gridview/filtering/put-a-filter-cell-into-edit-mode-programmatically%})

* [Setting Filters Programmatically (composite descriptors)]({%slug winforms/gridview/filtering/setting-filters-programmatically-(composite-descriptors)%})

