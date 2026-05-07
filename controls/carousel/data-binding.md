---
title: Data Binding
page_title: Data Binding - WinForms Carousel Control
description: WinForms Carousel supports data binding. Learn how to use it.
slug: winforms/carousel/using-radcarousel/data-binding
tags: data,binding
published: True
position: 3
previous_url: carousel-using-radcarousel-data-binding, carousel/using-radcarousel/data-binding
---

# Data Binding

To bind data to __RadCarousel__:

* Set the __DataSource__ property.
          
* Handle the __NewCarouselItemCreating__ event. In the event handler, create a __RadItem__ descendant instance.
          
* Handle the __ItemDataBound__ event. In this event you have access to both the data item and to the __RadItem__ instance.
          
This same pattern holds true, regardless of the type of data being bound to.

## Example

The example below creates a generic list of an object called "Feature". "Feature" has "ID" and "Name" properties. In the __NewCarouselItemCreating__ event handler, `RadButtonElement` instances are created. In the __ItemDataBound__ event handler, the button text is assigned the "Name" property of the "Feature" object. The "ID" property of the "Feature" object is stored in the `RadButtonElement` __Tag__ property for later use in the `Click` event handler.

![WinForms RadCarousel Data Binding Example](images/carousel-using-radcorousel-carousel-data-binding001.png)

#### The Features Object

<snippet id='carousel-data-binding-creategenericlistclass-cs'/>
<snippet id='carousel-data-binding-creategenericlistclass-vb'/>

 


#### Binding RadCarousel to Generic List

<snippet id='carousel-data-binding-bindingcarousel-cs'/>
<snippet id='carousel-data-binding-bindingcarousel-vb'/>

 


# See Also

 * [Customize Appearance]({%slug winforms/carousel/customizing-appearance%})
 * [Working with items]({%slug  winforms/carousel/using-radcarousel/carousel-items%})
 * [Data Binding]({%slug winforms/carousel/using-radcarousel/data-binding%})
 * [Carousel Path]({%slug winforms/carousel/using-radcarousel/carousel-path%})
