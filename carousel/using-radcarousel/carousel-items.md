---
title: Carousel Items
page_title: Carousel Items
description: Carousel Items
slug: carousel-using-radcarousel-carousel-items
tags: carousel,items
published: True
position: 0
---

# Carousel Items



You can add to __RadCarousel__ control by using the __Items__ collection (programmatically or design-time), or by [binding to a data source]({%slug carousel-using-radcarousel-data-binding%}). You can use __RadItem__ descendants to populate the __RadCarousel____Items__ collection, for example __RadLabelElement__ or __RadButtonElement__.

## Adding Carousel Items

To add items to the carousel without [data binding]({%slug carousel-using-radcarousel-data-binding%}), use the __Add__ method of the carousel collection. The example below adds a number of different RadItem types.![carousel-using-radcorousel-carousel-items 001](images/carousel-using-radcorousel-carousel-items001.png)

#### __[C#] Adding Carousel Items__

{{region carouselItems}}
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
	{{endregion}}



#### __[VB.NET] Adding Carousel Items__

{{region carouselItems}}
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
	{{endregion}}



## Adding Carousel Items in Visual Studio design-time

You can add carousel items using the Visual Studio designer. Open the __RadCarousel__Smart Tag and choose Edit Items command.

![carousel-using-radcorousel-carousel-items 002](images/carousel-using-radcorousel-carousel-items002.png)

The __RadItem__ collection editor will open, where you can add different types of __RadElements:__![carousel-using-radcorousel-carousel-items 004](images/carousel-using-radcorousel-carousel-items004.png)

## 

Deleting Carousel Items

To delete an entry from the carousel Items collection, use the __Remove__ or __RemoveAt__ methods. Remove takes the __RadItem__ instance to be deleted and __RemoveAt__ takes the index position of the item to be deleted:
         

#### __[C#] Deleting Carousel Items__

{{region carouselDeletingItems}}
	            radCarousel1.Items.Remove(radCarousel1.Items[0]);
	            radCarousel1.Items.RemoveAt(0);
	{{endregion}}



#### __[VB.NET] Deleting Carousel Items__

{{region carouselDeletingItems}}
	        RadCarousel1.Items.Remove(RadCarousel1.Items(0))
	        RadCarousel1.Items.RemoveAt(0)
	{{endregion}}


