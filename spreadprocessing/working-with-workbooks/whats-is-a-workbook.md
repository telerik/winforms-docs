---
title: Whats is a Workbook?
page_title: Whats is a Workbook? | UI for WinForms Documentation
description: Whats is a Workbook?
slug: winforms/spreadprocessing/working-with-workbooks/whats-is-a-workbook?
tags: whats,is,a,workbook?
published: True
position: 0
---

# Whats is a Workbook?

This article will help you get familiar with the concept of a workbook and its features.

## What is a Workbook?

The workbook lays in the core of the RadSpreadProcessing' and RadSpreadsheet document model. It is the primary document that you use to retrieve, manipulate and store data. The workbook can also be viewed as a collection of worksheets, where a worksheet is in turn defined as a collection of cells organized in rows and columns. Each workbook contains at least one worksheet and often holds several sheets with related information.

The workbook is designed to hold together multiple worksheets in order to allow efficient organization and consolidation of data. Typically, a workbook has a single theme and contains worksheets with related data. For example, an annual budget workbook may comprise four worksheets that break down the budget in quarters.
        
You can create a workbook from scratch or import an existing document. To save a document you can export its contents into a csv, txt or xlsx file. Further information is available in the [Create, Open and Save Workbooks]({%slug winforms/spreadprocessing/working-with-workbooks/create,-open-and-save-workbooks%}) article and the [Formats and Conversion]({%slug winforms/spreadprocessing/formats-and-conversion%}) section.

## What is in it?

The workbook has several important characteristics:
        

* __Collection of Worksheets:__ Each workbook maintains a collection of worksheets that allows you to add and delete worksheets. It also allows you to move worksheets within the workbook or simply iterate through them. More information about worksheets is available in the [What is a Worksheet?]({%slug winforms/spreadprocessing/working-with-worksheets/what-is-a-worksheet?%}) section.
            

* __Active Worksheet:__ The workbook exposes a property that indicates the active worksheet. Note that there is a single active worksheet in a workbook at a time. The [Activate a Worksheet]({%slug winforms/spreadprocessing/working-with-worksheets/activate-a-worksheet%}) article illustrates how to set the active worksheet.
            

* __History:__ Each workbook maintains a history stack that records all changes introduced to its content. That said, you can perform undo and redo operations effortlessly, replying on the built-in recorder. Although the tracking of changes  is done automatically, it also allows manual control over the recorded items. The history of the workbook also lets you to group several actions into a one undo step. This feature is very handy, for example, when you replace the contents of multiple cells in a single action. You will be able to find more information about the feature in the [History]({%slug winforms/spreadprocessing/features/history%})article.
            

* __Names (Named Ranges):__ the Workbook class exposes a Names property that of type NameCollection that allows you to create, update and manage names. More about the feature is available in the [Names]({%slug winforms/spreadprocessing/features/names-(named-ranges)%}) article.
            

* __Collection of Cell Styles:__ Each workbook contains a collection of cell styles. A cell style is a predefined set of formatting options, such as borders, fonts, fills and number formats, that you can apply to a cell. The concept of cell styles facilitates the process of formatting cells since it allows you to set multiple properties in one step and also serves as means for achieving consistent look. The collection of cell styles allows you to add, retrieve and delete styles. More information on the cell styles is available in the [Cell Styles]({%slug winforms/spreadprocessing/features/styling/cell-styles%}) article.
            

* __Theme:__ The workbook has a theme that allows you specify colors, fonts and a variety of graphic effect for the whole document. You will be able to find more information on the topic in the [Document Themes]({%slug winforms/spreadprocessing/features/styling/document-themes%}) article.
            

* __Find and Replace:__ The Workbook class offers friendly API that allows you to find and replace text and numbers in all worksheets it contains. For more information about the feature see the [Find and Replace]({%slug winforms/spreadprocessing/features/find-and-replace%}) article.
            

* __Protection:__ The feature lets you prevent users from modifying the structure of the workbook: adding, removing, renaming or reordering sheets. You can find more information on the topic in the [Worksheet Protection]({%slug winforms/spreadprocessing/features/protection/worksheet-protection%}) article.

![spreadprocessing-working-with-workbooks-what-is-a-workbook 001](images/spreadprocessing-working-with-workbooks-what-is-a-workbook001.png)
