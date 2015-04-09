---
title: Alternating Row Color
page_title: Alternating Row Color
description: Alternating Row Color
slug: gridview-styling-and-appearance-alternating-row-color
tags: alternating,row,color
published: True
position: 4
---

# Alternating Row Color



## 

RadGridView supports alternating row color mode which allows you to easily distinguish one row from another. 



In order to enable the feature, you should set the EnableAlternatingRowColor property to true:

#### __[C#] Enable alternating row color__

{{source=..\SamplesCS\GridView\StylingAndAppearance\AlternatingRowColor1.cs region=alternatingColor}}
	            this.radGridView1.EnableAlternatingRowColor = true;
	{{endregion}}



#### __[VB.NET] Enable alternating row color__

{{source=..\SamplesVB\GridView\StylingAndAppearance\AlternatingRowColor1.vb region=alternatingColor}}
	        Me.RadGridView1.EnableAlternatingRowColor = True
	{{endregion}}



In order to change the default alternating row color, set the AlternatingRowColor property:

#### __[C#] Changing the alternating row color__

{{source=..\SamplesCS\GridView\StylingAndAppearance\AlternatingRowColor1.cs region=changeAlternatingRow}}
	            ((GridTableElement)this.radGridView1.TableElement).AlternatingRowColor = Color.Yellow;
	{{endregion}}



#### __[VB.NET] Changing the alternating row color__

{{source=..\SamplesVB\GridView\StylingAndAppearance\AlternatingRowColor1.vb region=changeAlternatingRow}}
	        CType(Me.RadGridView1.TableElement, GridTableElement).AlternatingRowColor = Color.Yellow
	{{endregion}}



The result is shown on the screenshot below:![](images/gridview-styling-and-appearance-alternating-row-color.png)
