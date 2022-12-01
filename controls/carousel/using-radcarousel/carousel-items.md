---
title: Working with Items 
page_title: Working with Items - WinForms Carousel Control
description: Learn how one can add/remove items with code in WinForms Carousel.
slug: winforms/carousel/using-radcarousel/carousel-items
tags: carousel,items
published: True
position: 1
previous_url: carousel-using-radcarousel-carousel-items
---

# Carousel Items
 
You can add items to __RadCarousel__ control by using the __Items__ collection (programmatically or design-time), or by [binding to a data source]({%slug winforms/carousel/using-radcarousel/data-binding%}). You can use __RadItem__ descendants to populate the __RadCarousel.Items__ collection, for example __RadLabelElement__ or __RadButtonElement__.

### Adding Carousel Items

To add items to the carousel without [data binding]({%slug winforms/carousel/using-radcarousel/data-binding%}), use the __Add__ method of the carousel collection. The example below adds a number of different RadItem types.

![WinForms RadCarousel carousel-using-radcorousel-carousel-items 001](images/carousel-using-radcorousel-carousel-items001.png)

#### Adding Items 

{{source=..\SamplesCS\Carousel\CarouselItems.cs region=carouselItems}} 
{{source=..\SamplesVB\Carousel\CarouselItems.vb region=carouselItems}} 

````C#
radCarousel1.Items.Add(new RadButtonElement("My Button"));
RadCheckBoxElement checkbox = new RadCheckBoxElement();
checkbox.Text = "My Checkbox";
radCarousel1.Items.Add(checkbox);
RadRadioButtonElement radio1 = new RadRadioButtonElement();
radio1.Text = "Choice 1";
radio1.ToggleState = ToggleState.On;
RadRadioButtonElement radio2 = new RadRadioButtonElement();
radio2.Text = "Choice 2";
RadRadioButtonElement radio3 = new RadRadioButtonElement();
radio3.Text = "Choice 3";
radCarousel1.Items.Add(radio1);
radCarousel1.Items.Add(radio2);
radCarousel1.Items.Add(radio3);

````
````VB.NET
RadCarousel1.Items.Add(New RadButtonElement("My Button"))
Dim checkbox As New RadCheckBoxElement()
checkbox.Text = "My Checkbox"
RadCarousel1.Items.Add(checkbox)
Dim radio1 As New RadRadioButtonElement()
radio1.Text = "Choice 1"
radio1.ToggleState = ToggleState.On
Dim radio2 As New RadRadioButtonElement()
radio2.Text = "Choice 2"
Dim radio3 As New RadRadioButtonElement()
radio3.Text = "Choice 3"
RadCarousel1.Items.Add(radio1)
RadCarousel1.Items.Add(radio2)
RadCarousel1.Items.Add(radio3)

````

{{endregion}} 
 
### Deleting Items

To delete an entry from the carousel __Items__ collection, use the __Remove__ or __RemoveAt__ methods. __Remove__ takes the __RadItem__ instance to be deleted and __RemoveAt__ takes the index position of the item to be deleted:
        
#### Deleting Carousel Items 

{{source=..\SamplesCS\Carousel\CarouselItems.cs region=carouselDeletingItems}} 
{{source=..\SamplesVB\Carousel\CarouselItems.vb region=carouselDeletingItems}} 

````C#
radCarousel1.Items.Remove(radCarousel1.Items[0]);
radCarousel1.Items.RemoveAt(0);

````
````VB.NET
RadCarousel1.Items.Remove(RadCarousel1.Items(0))
RadCarousel1.Items.RemoveAt(0)

````

{{endregion}} 


# See Also

 * [Customize Appearance]({%slug winforms/carousel/customizing-appearance%})
 * [Data Binding]({%slug winforms/carousel/using-radcarousel/data-binding%})
 * [Carousel Path]({%slug winforms/carousel/using-radcarousel/carousel-path%})
