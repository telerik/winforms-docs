---
title: Update the Text of Rad Label
description: This article shows how you an dynamically update the text of RadLabel
type: how-to
page_title: Update the Text of Rad Label
slug: update-label-layout
position: 0
tags: panelsandlabels, label, update
res_type: kb
---


## Environment

|Product Version|Product|Author|
|----|----|----|
|2018.3.1016|RadLabel for WinForms|[Dimitar Karamfilov](https://www.telerik.com/blogs/author/dimitar-karamfilov)|

## Description

When performing a time-consuming operation on the UI thread the label text is not updated until the operation is finished.

## Solution 

Manually force the layout update. This way you can be sure that the proper value is displayed.

#### Update RadLabel Layout


````C#

this.radLabel1.LayoutManager.UpdateLayout();

````


If you are using a label inside a status strip use the following code.

#### Update Status SStrip Layout

````C#

radStatusStrip1.LayoutManager.UpdateLayout();
radStatusStrip1.Refresh();

````



