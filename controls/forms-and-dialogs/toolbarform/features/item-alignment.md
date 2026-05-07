---
title: Item Alignment
page_title: Item Alignment - WinForms ToolbarForm
description: WinForms ToolbarForm allows to align its items in the title bar.
slug: radtoolbarform-features-item-alignment
tags: radtoolbarform,alignment
published: True
position: 3
---

# Item Alignment

In general case, there could be a requirement to increase the size of the title bar part of the RadToolBarForm. In this case, RadToolBarForm provides a mechanism to customize the alignment of the elements inside it. The height of the title bar can be changed by setting the __CaptionHeight__ property.

<snippet id='toolbarform-radtoolbarform1-captionheight-cs' />
<snippet id='toolbarform-radtoolbarform1-captionheight-vb' />

 

>caption Figure 1: CaptionHeight Property

![WinForms RadToolbarForm CaptionHeight](images/winforms-radtoolbarform-captionheight.png)


In __Figure 1__ the default alignment of all three parts (near, center, far) of the toolbar form are Top. Their alignment can be controled throught the __NearItemsVerticalAligment__, __CenterItemsVerticalAlignment__, __FarItemsVerticalAligment__ properties.

<snippet id='toolbarform-radtoolbarform1-verticalalignment-cs' />
<snippet id='toolbarform-radtoolbarform1-verticalalignment-vb' />



>caption Figure 2: Vertical Alignment

![WinForms RadToolbarForm Vertical Alignment](images/winforms-radtoolbarform-vertical-alignment.png)

## Text Position

The text position in the title bar of the control can be change throught the __TextPosition__ property of the __RadToolbarFormControl__. This property is enumeration and expose four values: __Near__ (default), __CenterBefore__, __CenterAfter__, __Far__.

<snippet id='toolbarform-radtoolbarform1-textposition-cs' />
<snippet id='toolbarform-radtoolbarform1-textposition-vb' />



__Figure 3__ shows how the text will be visualize in all four options of the __TextPosition__ property.

>caption Figure 3: Text Position

![WinForms RadToolbarForm Text Position](images/winforms-radtoolbarform-text-position.png)

## Margins

The RadToolbarFormControl exposes three properties to control the margins of its items sections: __NearItemsMargin__, __CenterItemsMargin__, __FarItemsMargin__. Their default value is: __0,8,0,8__. You can use these properties to adjust the items per your needs.

<snippet id='toolbarform-radtoolbarform1-margins-cs' />
<snippet id='toolbarform-radtoolbarform1-margins-vb' />



>caption Figure 4: Margins

![WinForms RadToolbarForm Margins](images/winforms-radtoolbarform-margins.png)

## See Also

* [Structure]({%slug radtoolbarform-structure%})
* [Design Time]({%slug  radtoolbarform-design-time%})