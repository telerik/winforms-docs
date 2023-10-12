---
title: How to Wrap Text in the PageView Page Tabs In StripView Mode
description: Learn how to wrap text in the PageView Page Tabs in StripView mode.
type: how-to 
page_title: How to Wrap Text in the PageView Page Tabs In StripView Mode
slug: pageview-header-page-wrap
position: 0
tags: pageview, wrap,text, stripview
res_type: kb
---

## Environment
 
|Product Version|Product|Author|
|----|----|----|
|2023.3.1010|RadPageView for WinForms|[Dinko Krastev](https://www.telerik.com/blogs/author/dinko-krastev)|


## Solution

In this particular example, we will demonstrate how to wrap the text in the RadPageView page title tab in StripView mode.


![WinForms PageView WrapText Animation](images/pageview-header-page-wrap.png)

````C#  
public Form1()
{
	InitializeComponent();
	this.radPageView1.ItemSizeMode = PageViewItemSizeMode.EqualSize;
	RadPageViewStripElement element = radPageView1.ViewElement as RadPageViewStripElement;

	foreach (var item in element.Items)
	{
		item.MaxSize = new Size(100, 0);
		item.MinSize = new Size(0, 80);
		item.TextWrap = true;
	}
}

````
````VB.NET

Public Sub New()
InitializeComponent()
	Me.radPageView1.ItemSizeMode = PageViewItemSizeMode.EqualSize
	Dim element As RadPageViewStripElement = TryCast(radPageView1.ViewElement, RadPageViewStripElement)

	For Each item In element.Items
		item.MaxSize = New Size(100, 0)
		item.MinSize = New Size(0, 80)
		item.TextWrap = True
	Next
End Sub


````



