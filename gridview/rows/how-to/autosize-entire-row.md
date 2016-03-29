---
title: Auto-Size Entire Row text
page_title: Adding and Inserting Rows | UI for WinForms Documentation
description: Adding and Inserting Rows
slug: winforms/gridview/rows/how-to/auto-size
tags: auto-size,rows
published: True
position: 0
---


# Auto-size entire row height.

It is common to use the rows auto-size functionality when the cells have multi-line text. However by default the grid measures only the visible cells text. So when the users scrolls horizontally the row height might be adjusted dynamically. This article will explain how you can measure the entire row so the row height is constant while the users are scrolling horizontally.

### Create custom row element.

In order to return the proper rows height to the grid you need to create a custom row element. Then you should override the __MeasureOverride__ method. You need this method in order to measure all cells not just the visual ones. Then you can return the proper height. In order to speed the measure process, you can check the height only of the cells that are not visible. 

#### Sample implementation for the custom row element.

{{source=..\SamplesCS\GridView\Rows\AddingAndInsertingRows.cs region=addNewRow}} 
{{source=..\SamplesVB\GridView\Rows\AddingAndInsertingRows.vb region=addNewRow}} 

{{endregion}} 


### Using the custom row element.

The final step is to replace the default row elements. This can achieved in the __Create__ row event handler.

{{source=..\SamplesCS\GridView\Rows\AddingAndInsertingRows.cs region=addNewRow}} 
{{source=..\SamplesVB\GridView\Rows\AddingAndInsertingRows.vb region=addNewRow}} 

{{endregion}} 