---
title: Properties  
page_title: Properties - WinForms BindingNavigator Control
description: Get familiar with the most important properties of WinForms BindingNavigator.
slug: winforms/bindingnavigator/properties 
tags:  bindingnavigator, properties
published: True 
position: 4 
---

# Properties

This articles list the most important properties of __RadBindingNavigator__.

* __BindingSource:__ Use this property to assign the binding source.

* __CountItemFormat:__ Gets or sets the CountItemFormat format string.

* __AutoHandleAddNew:__ Gets or sets a value indicating whether the control 
will handle internally the creation of new items. When this property is set to false you should subscribe to the add new button `Click` event and manually add the item to the data source.

* __BindingNavigatorElement:__ The binding navigator element gives access to the following properties:
    - FirstButton
    - PreviousButton
    - CurrentNumberTextBox
    - PageLabel
    - NextButton
    - LastButton
    - AddNewButton
    - DeleteButton
    - MoveFirstItemButtonImage
    - MovePreviousItemButtonImage
    - MoveNextItemButtonImage
    - MoveLastItemButtonImage
    - AddNewButtonImage
    - DeleteButtonImage
    - ButtonDisplayStyle - Gets or sets a value indicating, whether the buttons will display images or glyphs.(introduced in R2 2021)
    - ButtonGlyphSize - Gets or sets the font size of the glyphs when the ButtonDisplayStyle property is set to BindingNavigatorButtonDisplayStyle.Glyph.(introduced in R2 2021)
    

## See Also

 * [Customizing Appearance]({%slug winforms/bindingnavigator/customizing-radbindingnavigator-%})
 * [Structure]({%slug winforms/bindingnavigator/structure%})
