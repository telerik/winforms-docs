---
title: How to Sort Fields Section in the RadPivotFieldList
description: This article shows how to sort fields section in the RadPivotFieldList
type: how-to
page_title:  How to Sort Fields Section in the RadPivotFieldList
slug: pivotgrid-sort-fielddlist
position: 29
tags: pivotgrid, fielddlist, sort, fields
res_type: kb
---

## Environment
|Product Version|Product|Author|
|----|----|----|
|2023.2.718|RadPivotGrid for WinForms|[Dinko Krastev](https://www.telerik.com/blogs/author/dinko-krastev)|


## Description

An example demonstrating how to sort fields section in the RadPivotFieldList.

![pivotgrid-sort-fielddlist 001](images/pivotgrid-sort-fielddlist.PNG)

## Solution

The RadPivotFieldList internally hosts a RadTreeView control responsible for displaying the logical ContainerNodes objects. In order to have the items sorted, you would need to define a SortOrder to the __RadPivotFieldList.FieldsControl__ object. A suitable place to perform this task is the event handler of the RadPivotGrid.UpdateCompleted event. 

````C#


	private void radPivotGrid1_UpdateCompleted(object sender, EventArgs e)
	{
		this.radPivotFieldList1.FieldsControl.SortOrder = System.Windows.Forms.SortOrder.Ascending;
	}


````
````VB.NET


	Private Sub radPivotGrid1_UpdateCompleted(sender As Object, e As EventArgs)
	    Me.RadPivotFieldList1.FieldsControl.SortOrder = System.Windows.Forms.SortOrder.Ascending
	End Sub



````


