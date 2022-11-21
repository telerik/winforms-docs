---
title: Setting Metadata to Influence Layout
page_title: Setting Metadata to Influence Layout - Telerik Presentation Framework
description: With Telerik Presentation Framework you can use the RadProperties metadata to change the layout.
slug: winforms/telerik-presentation-framework/layout/setting-metadata-to-influence-layout
tags: setting,metadata,to,influence,layout
published: True
position: 10
previous_url: tpf-layout-setting-metadata-to-influence-layout
---

# Setting Metadata to Influence Layout

When a property of an element has an effect on the size of the element or the ordering of its children, appropriate metadata has to be added to its declaration as a dependency property to trigger the appropriate stage of the layout process.

* __AffectsLayout:__ Specifies that the property triggers a change in the ordering of child elements. Used to trigger a layout update whenever the property changes.

* __InvalidatesLayout:__ Used in the old layout system to invalidate the layout of an element when the property value changes.

* __AffectMeasure:__ Specifies that the property triggers a change in the size of the element. Used to trigger a layout update whenever the property changes.

* __AffectsArrange:__ Equivalent to AffectsLayout.

The example code below shows a __RightToLeft__ dependency property with the __AffectsLayout__ and __InvalidatesLayout__ included in the call to __RadPropertyRegister__. 

#### Adding metadata

{{source=..\SamplesCS\TPF\Layouts\CascadeLayoutPanel.cs region=addingMetadata}} 
{{source=..\SamplesVB\TPF\Layouts\CascadeLayoutPanel.vb region=addingMetadata}} 

````C#
public static RadProperty RTLProperty = RadProperty.Register(
    "RTL", typeof(bool), typeof(BoxLayout), new RadElementPropertyMetadata(
    false, ElementPropertyOptions.AffectsLayout | ElementPropertyOptions.InvalidatesLayout));

````
````VB.NET
Public Shared RTLProperty As RadProperty = RadProperty.Register("RTL", GetType(Boolean), GetType(BoxLayout), New RadElementPropertyMetadata(False, ElementPropertyOptions.AffectsLayout Or ElementPropertyOptions.InvalidatesLayout))

````

{{endregion}} 

>note The metadata is consumed when the RadElement __OnPropertyChanged__ method is fired, the RadElement __RadPropertyMetaData__ is evaluated and methods are called based on the type of metadata present.
>


# See Also
* [Clipping]({%slug winforms/telerik-presentation-framework/layout/clipping%})

* [Custom Layouts]({%slug winforms/telerik-presentation-framework/layout/custom-layouts%})

* [Element Offset Calculations]({%slug winforms/telerik-presentation-framework/layout/element-offset-calculations%})

* [Layout Activation]({%slug winforms/telerik-presentation-framework/layout/layout-activation%})

* [Layout Logic]({%slug winforms/telerik-presentation-framework/layout/layout-logic%})

* [Layout Overview]({%slug winforms/telerik-presentation-framework/layout/layout-overview%})

* [Layout Structure]({%slug winforms/telerik-presentation-framework/layout/layout-structure%})

* [RadControl Testing Considerations]({%slug winforms/telerik-presentation-framework/layout/radcontrol-testing-considerations%})

