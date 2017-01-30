---
title: Adding and Customizing Elements
page_title: Adding and Customizing Elements | RadRibbonBar
description: A RibbonBar group may contain button groups or elements. Button groups in turn can contain other button groups or elements. You can add, remove, and customize any of these building blocks by code.
slug: winforms/ribbonbar/programming-radribbonbar/adding-and-customizing-elements
tags: adding,and,customizing,elements
published: True
position: 2
previous_url: ribbonbar-programming-radribbonbar-adding-and-customizing-elements
---

# Adding and Customizing Elements

A RibbonBar group may contain button groups or elements. Button groups in turn can contain other button groups or elements. You can add, remove, and customize any of these building blocks by code.

## Customizing Button Groups

To customize a __RadRibbonBarButtonGroup__ object, you can use these properties:

* __Orientation__ property can be set to System.Windows.Forms.Orientation.*Horizontal* or System.Windows.Forms.Orientation.*Vertical*. This determines how elements within the button group will be laid out. 

* __ShowBorder__ property can be set to *True* or *False* to turn the border of the button group to on or off.

* __MinSize__ property determines the minimum size of the button group. 

In order to add button groups or elements to a button group, use RadRibbonBarButtonGroup.Items.__Add__ or RadRibbonBarButtonGroup.Items.__AddRange__ methods.

## Customizing Elements

You can add a variety of elements to RadRibbonBarGroup.__Items__ or RadRibbonBarButtonGroup.__Items__ collection:

* Button elements

* Check box elements

* Drop-down button elements

* Repeat button elements

* Split button elements

* Toggle button elements

* Image button elements 

## Customizing Button Elements

The button element represents a simple button displaying text, an image, or both. To customize the __RadButtonElement__, you can use these properties:

|   |   |
|---|---|
| __DisplayStyle__ property can be set to __Text__ , __Image__ , or __ImageAndText__ to determine the visual appearance of the button.|
| __Text__ property sets the caption displayed on the button.|
| __Image__ , __ImageIndex__ , and __ImageKey__ properties determine the image displayed on the button.|
| __TextImageRelation__ property sets the relative position of the text and the image if __DisplayStyle__ is set to __ImageAndText__ .|
| __ImageAlignment__ property sets the alignment of the image displayed on the button.|
| __TextAlignment__ property sets the alignment of the text displayed on the button.|
| __TextOrientation__ property can be set to either to __Horizontal__ or __Vertical__ .|

## Customizing Check Box Elements

The check box element represents a check box with a caption. To customize the __RadCheckBoxElement__, you can use these properties:

* __DisplayStyle__ property can be set to __Text__, __Image__, or __ImageAndText__ to determine the visual appearance of the control.

* __Text__ property sets the caption displayed next to the check box.

* __Image__, __ImageIndex__, and __ImageKey__ properties set the image displayed next to the check box.

* __TextImageRelation__ property sets the relative position of text and the image if the __DisplayStyle__ is set to __ImageAndText__.

* __ImageAlignment__ property sets the alignment of the image displayed in the control.

* __TextAlignment__ property sets the alignment of the text displayed in the control. 

* __CheckAlignment__ property sets the alignment of the check box in the control.

* __TextOrientation__ property can be set to __Horizontal__ or __Vertical__.

* __IsChecked__ property sets the initial state of the check box if the __IsThreeState__ property is False.

* __ToggleState__ property sets the initial state of the check box if the __IsThreeState__ property is True.

* __IsThreeState__ property controls whether the check box will display the indeterminate (gray) state. 

## Customizing Drop-down Button Elements

The drop-down button element represents a button with a drop-down list of items that appear when the button is pushed. To customize the __RadDropDownButtonElement__, you can use these properties:

* __DisplayStyle__ property can be set to __Text__, __Image__, or __ImageAndText__ to determine the visual appearance of the button.

* __Text__ property sets the caption displayed on the button.

* __Image__, __ImageIndex__, and __ImageKey__ properties set the image displayed on the button.

* __TextImageRelation__ property sets the relative position of text and image if the __DisplayStyle__ is set to __ImageAndText__.

* __ImageAlignment__ property sets the alignment of the image displayed on the button.

* __TextAlignment__ property sets the alignment of the text displayed on the button.

* __TextOrientation__ property can be set to __Horizontal__ or __Vertical__. 

* __ClickMode__ property specifies when the button __Click__ event should fire.

* __Items__ collection contains the items to display in the drop-down list. 

## Customizing Repeat Button Elements

The repeat button element represents a button whose __Click__ event fires repeatedly when the button is pushed and held. To customize a __RadRepeatButtonElement__ object, you can use these properties:

* __DisplayStyle__ property can be set to __Text__, __Image__, or __ImageAndText__ to determine the visual appearance of the button.

* __Text__ property sets the caption displayed on the button.

* __Image__, __ImageIndex__, and __ImageKey__ properties set the image displayed on the button.

* __TextImageRelation__ property sets the relative position of text and the image if the __DisplayStyle__ is set to __ImageAndText__.

* __ImageAlignment__ property sets the alignment of the image displayed on the button.

* __TextAlignment__ property sets the alignment of the text displayed on the button.

* __TextOrientation__ property can be set to either __Horizontal__ or __Vertical__.

* __Delay__ property sets the number of milliseconds before the first __Click__ event is fired. 

* __Interval__ property sets the number of milliseconds between the __Click__ events. 

## Customizing Split Button Elements

The split button element represents a button with a menu of items that appear when the arrow of the button is clicked. To customize the __RadSplitButtonElement__, you can use these properties:

* __DisplayStyle__ property can be set to __Text__, __Image__, or __ImageAndText__ to determine the visual appearance of the button.

* __Text__ property sets the caption displayed on the button.

* __Image__, __ImageIndex__, and __ImageKey__ properties set the image displayed on the button. 

* __TextImageRelation__ property sets the relative position of text and image if the __DisplayStyle__ is set to __ImageAndText__.

* __ImageAlignment__ property sets the alignment of the image displayed on the button. 

* __TextAlignment__ property sets the alignment of the text displayed on the button. 

* __TextOrientation__ property can be set to __Horizontal__ or __Vertical__. 

* __ClickMode__ property specifies when the button __Click__ event is fired. 

* __Items__ collection contains the items to be displayed in the drop-down menu.  

## Customizing Toggle Button Elements

The toggle button element represents a button that toggles between two states. To customize the __RadToggleButtonElement__, you can use these properties:

* __DisplayStyle__ property can be set to __Text__, __Image__, or __ImageAndText__ to determine the visual appearance of the button.

* __Text__ property sets the caption displayed on the button. 

* __Image__, __ImageIndex__, and __ImageKey__ properties set the image displayed on the button. 

* __TextImageRelation__ property sets the relative position of text and the image if the __DisplayStyle__ is set to __ImageAndText__. 

* __ImageAlignment__ property sets the alignment of the image displayed on the button. 

* __TextAlignment__ property sets the alignment of the text displayed on the button. 

* __TextOrientation__ property can be set to either __Horizontal__ or __Vertical__. 

* __ToggleState__ property sets the initial state of the button. 

## Customizing Image Button Elements

The image button element represents a button that displays multiple images. To customize a __RadImageButtonElement__ object, you can use these properties:

* The __DisplayStyle__ property can be set to __Text__, __Image__, or __ImageAndText__ to determine the visual appearance of the button. 

* The __Text__ property sets the caption to display on the button. 

* The __Image__, __ImageIndex__, and __ImageKey__ properties set the image to display on the button. 

* The __ImageClicked__, __ImageIndexClicked__, and __ImageKeyClicked__ properties set the image to display on the button when it is clicked. 

* The __ImageHovered__, __ImageIndexHovered__, and __ImageKeyHovered__ properties set the image to display on the button when the mouse is hovered over it. 

* The __TextImageRelation__ property sets the relative position of text and image if the __DisplayStyle__ is set to __ImageAndText__. 

* The __ImageAlignment__ property sets the alignment of the image displayed on the button. 

* The __TextAlignment__ property sets the alignment of the text displayed on the button. 

* The __TextOrientation__ property can be set to __Horizontal__ or __Vertical__.
 
## See Also

* [Design Time]({%slug winforms/ribbonbar/design-time%})
* [Structure]({%slug winforms/ribbonbar/structure%})
* [Getting Started]({%slug winforms/ribbonbar/getting-started%})
* [Backstage View]({%slug winforms/ribbonbar/backstage-view/overview%})
* [Themes]({%slug winforms/ribbonbar/customizing-appearance/themes%}) 