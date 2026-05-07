---
title: Auto-Size Entire Row Text
page_title: Auto-Size Entire Row Text - RadGridView
description: This article will explain how you can measure the entire row so the row height is constant while the users are scrolling horizontally.
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

<snippet id='gridview-autosizewholerows-rowelement-cs' />
<snippet id='gridview-autosizewholerows-rowelement-vb' />

### Using the custom row element.

The final step is to replace the default row elements. This can be achieved in the __CreateRow__ event handler.

<snippet id='gridview-autosizewholerows-changerow-cs' />
<snippet id='gridview-autosizewholerows-changerow-vb' />

A complete solution which adds cached height is available in our [SDK repository](https://github.com/telerik/winforms-sdk/tree/master/GridView/AutoSizeEntireRow).
