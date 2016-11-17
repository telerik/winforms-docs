---
title: Alternating Row Color
page_title: Alternating Row Color | RadGridView
description: RadGridView supports alternating row color mode which allows you to easily distinguish one row from another.
slug: winforms/gridview/styling-and-appearance/alternating-row-color
tags: alternating,row,color
published: True
position: 4
previous_url: gridview-styling-and-appearance-alternating-row-color
---

# Alternating Row Color

RadGridView supports alternating row color mode which allows you to easily distinguish one row from another.

In order to enable the feature, you should set the __EnableAlternatingRowColor__ property to *true*:

#### Enable alternating row color

{{source=..\SamplesCS\GridView\StylingAndAppearance\AlternatingRowColor1.cs region=alternatingColor}} 
{{source=..\SamplesVB\GridView\StylingAndAppearance\AlternatingRowColor1.vb region=alternatingColor}} 

````C#
this.radGridView1.EnableAlternatingRowColor = true;

````
````VB.NET
Me.RadGridView1.EnableAlternatingRowColor = True

````

{{endregion}} 

In order to change the default alternating row color, set the __AlternatingRowColor__ property:

#### Changing the alternating row color

{{source=..\SamplesCS\GridView\StylingAndAppearance\AlternatingRowColor1.cs region=changeAlternatingRow}} 
{{source=..\SamplesVB\GridView\StylingAndAppearance\AlternatingRowColor1.vb region=changeAlternatingRow}} 

````C#
((GridTableElement)this.radGridView1.TableElement).AlternatingRowColor = Color.Yellow;

````
````VB.NET
CType(Me.RadGridView1.TableElement, GridTableElement).AlternatingRowColor = Color.Yellow

````

{{endregion}} 

The result is shown on the screenshot below:

![gridview-styling-and-appearance-alternating-row-color](images/gridview-styling-and-appearance-alternating-row-color.png)
# See Also
* [Four ways to customize RadGridView appearance]({%slug winforms/gridview/styling-and-appearance/four-ways-to-customize-radgridview-appearance%})

* [HTML-like Text Formatting]({%slug winforms/gridview/styling-and-appearance/html-like-text-formatting%})

* [Row Header Images]({%slug winforms/gridview/styling-and-appearance/images%})

* [Themes]({%slug winforms/gridview/styling-and-appearance/themes%})

