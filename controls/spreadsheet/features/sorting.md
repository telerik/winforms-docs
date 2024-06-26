---
title: Sorting
page_title: Sorting - WinForms Spreadsheet Control
description: Sorting in WinForms Spreadsheet allows the user to arrange the data according to one or more sorting conditions.
slug: radspreadsheet-features-sorting
tags: freeze,panes
published: True
position: 3
---

# Sorting

This article describes what is sorting and how to work with it through the **RadSpreadsheet**.

## What Is Sorting?

The sorting feature allows the user to arrange the data according to one or more sorting conditions. More than one condition may be applied to each column of the range.

The conditions are applied in order. The range is first sorted according to the first condition. If there are repeating values in the column to which the first condition is applied, the next condition is used to sort these rows.

A brief description of each type of sorting condition can be found in the **RadSpreadProcessing** section of the documentation [here](http://docs.telerik.com/devtools/document-processing/libraries/radspreadprocessing/features/sorting).

## Sorting Dialog

The sorting dialog provides access to all sorting functionality. Through it you can add, remove and rearrange all types of sorting conditions. Figure 1 shows the dialog.

>caption Figure 1: Sorting dialog

![WinForms RadSpreadsheet Sorting dialog](images/spreadsheet-features-sorting001.png) 

On top of the dialog shown in Figure 1 you can take advantage of the following options.

* Add Level: Adds a new sorting condition.
* Delete Level: Removes the selected sorting condition.
* Copy Level: Copies the sorting condition.
* Arrow keys: Arrange the sorting conditions in the order you’d like them to be applied.

The sorted range is the range which was selected when the dialog was open, so you need to select the desired range before opening the dialog.

## Adding Values Sort Condition

There are a few ways to add a values sort condition. The sorting dialog allows most control over the process. In order to use the dialog to add a values sort condition, you need to perform the following steps:

1. Select the range you would like to be sorted.
* Open the sorting dialog.
* In the Column drop down menu, specify by which column you would like the range to be sorted.
* In the Sort On drop down menu, specify "Values".
* In the Order drop down menu specify the desired order: Ascending, i.e. Smallest to Largest or Descending, i.e. Largest to Smallest.
* Press OK.

Another option to add a values sort condition is to use the sorting buttons next to the button which opens the sort dialog.

>caption Figure 2: Sorting buttons

![WinForms RadSpreadsheet Sorting buttons](images/spreadsheet-features-sorting002.png) 

These buttons in Figure 2 automatically add a values sort condition to the first column of the selected range. If you use the first button the order will be ascending, and for the second - descending.

## Adding Custom Sort Condition

You can add a custom sort condition through the sorting dialog. You need to perform the following steps:

1. Select the range you would like to be sorted.
* Open the sorting dialog.
* In the Column drop down menu, specify by which column you would like the range to be sorted.
* In the Sort On drop down menu, specify "Values".
*  In the Order drop down menu specify Custom.
* These steps will open a new dialog in which you can specify the custom list according to which you'd like to have the values ordered. You can use one of the predefined, or enter your values in the List entries text box as demonstrated on Figure 3 and chose Add.

	>caption Figure 3: Custom Lists Dialog

	![WinForms RadSpreadsheet Custom Lists Dialog](images/spreadsheet-features-sorting003.png)
* Press OK to go back to the sorting dialog.
* Press OK to close the dialog and apply the sorting

## Adding Color Sort Condition

You can add a fill or fore color sort condition through the sorting dialog by following these steps:

1. Select the range you would like to be sorted.
* Open the sorting dialog.
* In the Column drop down menu, specify by which column you would like the range to be sorted.
* In the Sort On drop down menu, specify "FillColor" or "FontColor".
* Two new drop down menus shown on Figure 4 will appear.

	>caption Figure 4:  Sorting Dialog Color Condition

	![WinForms RadSpreadsheet Sorting Dialog Color Condition](images/spreadsheet-features-sorting004.png)

* Use the first of the drop down menus to specify the color
* Use the second of the drop down menus to specify whether rows with this color should be ordered on the top or on the bottom of the sort order.
* Press OK.

The other way to add a sort condition is through the filtering popup. When you open the filtering popup, you will find a *Sort by Color* option shown on Figure 5 , which will be enabled if you have different fore colors or fill colors in the column of the filtered range. Choosing a color will automatically set the rows with this fill color or fore color on the top of the sort order.

>caption Figure 5: Filtering Popus Sorting by Color

![WinForms RadSpreadsheet Filtering Popup Sorting by Color](images/spreadsheet-features-sorting005.png)

## See Also

* [Model Filtering](https://docs.telerik.com/devtools/document-processing/libraries/radspreadprocessing/features/filtering)
* [Filtering]({%slug radspreadsheet-features-filtering%})







