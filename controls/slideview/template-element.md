---
title: Template Element
page_title: Template Element - WinForms SlideView Control
description: This article provides information about TemplateElement in RadSlideView.
slug: slideview-template-element
tags: slideview, template, element
published: True
position: 10
---

# SlideView TemplateElement

**TemplateElement** is responsipble to display content showing the users some useful information. This is actually the visual element that represents the UI for the current item in **RadSlideView**. You can design any custom layout according to specific client needs.

### Unbound Mode

For a simple scenario with displaying Image and Text in unbound mode you can use the default TemplateElement (LightVisualElement). In unbound mode the RadSlideView control navigates through the defined fixed number of pages by setting the **NumberOfPages** property. The **TemplateUpdate** event fires after all mappings have been applied, just before the slideview template is about to change. Here is the appropriate place to change the template styles and properties considering the RadSlideView.**SelectedIndex**.

>note For more complex scenarios you can build an elements hierarchy that fits your needs. Please refer to [Telerik Presentation Framework]({%slug winforms/telerik-presentation-framework/primitives/lightvisualelement%})). 
More advanced TemplateElement example is demonstrated in the Demo application >> SlideView >> First look. 

![WinForms SlideView TemplateElement](images/slideview-template-element.png)

#### Setup template
<snippet id='slideview-gettingstartedgallery-setuptemplate-cs' />
<snippet id='slideview-gettingstartedgallery-setuptemplate-vb' />



>note For more detailed information please refer to [Unbound mode](#unbound-mode).

>important TemplateUpdate event can be used in both bound/unbound mode.

### Bound Mode

In bound mode you can use mappings, but it is important that the property type of the element and the data bound object should match. Otherwise the property will not be set (if we try to set a value of different type the RadProperty setter will throw an exception). In this case the **MappedPropertyUpdating** event needs to be handled and set the Value of the EventArgs to match the destination type.

>note For more detailed information please refer to [Data Binding]({%slug slideview-data-binding%}).

## See Also

* [Getting Started]({%slug slideview-getting-started%})
* [Structure]({%slug slideview-structure%})
* [Navigation buttons]({%slug slideview-navigation-buttons%})
