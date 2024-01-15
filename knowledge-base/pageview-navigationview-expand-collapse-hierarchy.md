---
title: Collapsing SubPage Items in RadPageView Navigation Mode with Hierarchy
description: Learn how to collapse all subpage items in RadPageView Navigation Mode with Hierarchy.
type: how-to
page_title: How to Collapse SubPage Items in RadPageView Navigation Mode with Hierarchy
slug: collapse-subpage-items-radpageview-navigation-mode-hierarchy
tags: radpageview, winforms, navigation, collapse, subpage items, hierarchy
res_type: kb
---

## Environment
 
|Product Version|Product|Author|
|----|----|----|
|2023.3.1114|UI for WinForms|[Dinko Krastev](https://www.telerik.com/blogs/author/dinko-krastev)|

## Description

When using RadPageView in Navigation Mode with Hierarchy, you may want to collapse all subpage items at Form Load. This tutorial explains how to achieve this in your WinForms application.

## Solution

To collapse all subpage items in RadPageView Navigation Mode with Hierarchy, follow these steps:

1. Add the following code snippet in the Form Load event:

````C#

RadPageViewNavigationViewElement navigationElement = this.radPageView1.ViewElement as RadPageViewNavigationViewElement;
foreach (RadPageViewNavigationViewItem item in navigationElement.Items)
{
    item.IsExpanded = false;
}

````
````VB.NET

Dim navigationElement As RadPageViewNavigationViewElement = TryCast(Me.radPageView1.ViewElement, RadPageViewNavigationViewElement)

For Each item As RadPageViewNavigationViewItem In navigationElement.Items
    item.IsExpanded = False
Next


````

2. Run your application.

Now, at Form Load, all the subpage items in the RadPageView Navigation Mode with Hierarchy will be collapsed.

## Notes

- Make sure to replace `radPageView1` with the name of your RadPageView control.

## See Also

- [RadPageView for WinForms Documentation](https://docs.telerik.com/devtools/winforms/controls/pageview/overview)
