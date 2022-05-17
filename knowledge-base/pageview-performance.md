---
title: How to Make Switching between Pages Faster in RadPageView
description: Learn how to make switching beetwen pages faster in the WinForms PageView.
type: how-to 
page_title: How to Make Switching between Pages Faster in RadPageView
slug: pageview-performance
position: 39
tags: pageview, slow, fast, performance, explorer
res_type: kb
---

## Environment
 
|Product Version|Product|Author|
|----|----|----|
|2022.2.510|RadPageView for WinForms|[Desislava Yordanova](https://www.telerik.com/blogs/author/desislava-yordanova)|


## Description

A common requirement is to improve the time for switching between the pages in RadPageView.

## Solution

**RadPageView** loads its pages on demand. Hence, when you click a page tab for the first time, its content will be loaded at this point of requesting. Then, every next switching to this page is expected to be faster and smoother. Thus, RadPageView will be loaded faster when starting the application, but it will need more time when selecting a page for the first time.

You can force all the pages to be loaded when initializing the form by making each page visible and thus the page selection will be faster for the end user when clicking a tab. A sample approach is demonstrated here
 

````C#  
    foreach (RadPageViewPage page in this.radPageView1.Pages)
    {
        page.Visible = true;
    }

````
````VB.NET
    For Each page As RadPageViewPage In Me.radPageView1.Pages
        page.Visible = True
    Next

````

# See Also

* [RadGridViewDragDropService]({%slug winforms/gridview/radgridviewdragdropservice%})
