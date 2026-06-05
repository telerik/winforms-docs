---
title: Title
page_title: Title - RadGridView
description: Describes how you can show the grid view caption label.
slug: winforms/gridview/caption
tags: gridview, caption, title
published: True
position: 16
---

## Title

Since R3 2018 SP1 RadGridView supports displaying a Title(Caption). By default the Title is displayed on top. The position and the alignment of the title text can be easily changed. 

![WinForms RadGridView Title Text](images/gridview-caption001.png)

## Showing the Title

To show the title just set the __TitleText__ property. In addition the following snippet shows how you can set the font and the ForeColor.

<snippet id='gridview-gridtitle-showtitle-cs' />
<snippet id='gridview-gridtitle-showtitle-vb' />

>note If the **TitleText** is set to an empty string, the GridViewElement.**TitleLabelElement** is collapsed. Otherwise, it is always shown and if you need to hide it, it is necessary to manage the GridViewElement.TitleLabelElement.**Visibility** property. 

## Changing the Position of the Title

To change the position you can use the __TitlePosition__ property. In addition you can set the __FlipText__ property. The __TitleLabelElement__ property allows you to access the actual label element. This element is a [LightVisualElement]({%slug winforms/telerik-presentation-framework/primitives/lightvisualelement%}) which is capable of displaying text and image.


<snippet id='gridview-gridtitle-position-cs' />
<snippet id='gridview-gridtitle-position-vb' />

# See Also

* [Getting Started]({%slug winforms/gridview/getting-started%})

* [Overview]({%slug winforms/gridview%})
