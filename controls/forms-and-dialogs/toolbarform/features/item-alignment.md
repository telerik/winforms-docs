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

In general case, there could be requirement to increase the size of the title bar part of the RadToolBarForm. In this case, the RadToolBarForm provides a mechanism to customize the alignment of the elements inside it. The height of the title bar can be changed by setting the __CaptionHeight__ property.

{{source=..\SamplesCS\Forms and Dialogs\RadToolbarForm1.cs region=CaptionHeight}} 
{{source=..\SamplesVB\Forms and Dialogs\RadToolbarForm1.vb region=CaptionHeight}}

````C#

this.radToolbarFormControl1.CaptionHeight = 60;


````
````VB.NET

Me.ToolbarFormControl.CaptionHeight = 60

````

{{endregion}} 

>caption Figure 1: CaptionHeight Property

![WinForms RadToolbarForm CaptionHeight](images/winforms-radtoolbarform-captionheight.png)


In __Figure 1__ the default alignment of all three parts (near, center, far) of the toolbar form are Top. Their alignment can be controled throught the __NearItemsVerticalAligment__, __CenterItemsVerticalAlignment__, __FarItemsVerticalAligment__ properties.

{{source=..\SamplesCS\Forms and Dialogs\RadToolbarForm1.cs region=VerticalAlignment}} 
{{source=..\SamplesVB\Forms and Dialogs\RadToolbarForm1.vb region=VerticalAlignment}}

````C#

this.radToolbarFormControl1.NearItemsVerticalAlignment = RadVerticalAlignment.Bottom;
this.radToolbarFormControl1.CenterItemsVerticalAlignment = RadVerticalAlignment.Center;
this.radToolbarFormControl1.FarItemsVerticalAlignment = RadVerticalAlignment.Stretch;


````
````VB.NET

Me.ToolbarFormControl.NearItemsVerticalAlignment = RadVerticalAlignment.Bottom
Me.ToolbarFormControl.CenterItemsVerticalAlignment = RadVerticalAlignment.Center
Me.ToolbarFormControl.FarItemsVerticalAlignment = RadVerticalAlignment.Stretch

````

{{endregion}}

>caption Figure 2: Vertical Alignment

![WinForms RadToolbarForm Vertical Alignment](images/winforms-radtoolbarform-vertical-alignment.png)

## Text Position

The text position in the title bar of the control can be change throught the __TextPosition__ property of the __RadToolbarFormControl__. This property is enumeration and expose four values: __Near__ (default), __CenterBefore__, __CenterAfter__, __Far__.

{{source=..\SamplesCS\Forms and Dialogs\RadToolbarForm1.cs region=TextPosition}} 
{{source=..\SamplesVB\Forms and Dialogs\RadToolbarForm1.vb region=TextPosition}}

````C#

this.radToolbarFormControl1.TextPosition = ToolbarTextPosition.CenterAfter;


````
````VB.NET

Me.ToolbarFormControl.TextPosition = ToolbarTextPosition.CenterAfter

````

{{endregion}}

__Figure 3__ shows how the text will be visualize in all four options of the __TextPosition__ property.

>caption Figure 3: Text Position

![WinForms RadToolbarForm Text Position](images/winforms-radtoolbarform-text-position.png)

## Margins

The RadToolbarFormControl expose three properties to control the margins of its item sections: __NearItemsMargin__, __CenterItemsMargin__, __FarItemsMargin__. Their default value is: __0,8,0,8__. You can use these properties to adjust the items per your needs.

{{source=..\SamplesCS\Forms and Dialogs\RadToolbarForm1.cs region=Margins}} 
{{source=..\SamplesVB\Forms and Dialogs\RadToolbarForm1.vb region=Margins}}

````C#

this.radToolbarFormControl1.NearItemsMargin = new Padding(0,8,0,0);
this.radToolbarFormControl1.CenterItemsMargin = new Padding(100,8,0,0);
this.radToolbarFormControl1.FarItemsMargin = new Padding(0,0,0,8);

````
````VB.NET

Me.ToolbarFormControl.NearItemsMargin = New Padding(0,8,0,0)
Me.ToolbarFormControl.CenterItemsMargin = New Padding(100,8,0,0)
Me.ToolbarFormControl.FarItemsMargin = New Padding(0,0,0,8)


````

{{endregion}}

>caption Figure 4: Margins

![WinForms RadToolbarForm Margins](images/winforms-radtoolbarform-margins.png)

## See Also

* [Structure]({%slug radtoolbarform-structure%})
* [Design Time]({%slug  radtoolbarform-design-time%})