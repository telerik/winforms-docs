---
title: Using Templates
page_title: Using Templates | UI for WinForms Documentation
description: Using Templates
slug: winforms/calendar/customizing-appearance/using-templates
tags: using,templates
published: True
position: 1
---

# Using Templates


__RadCalendar__ provides a collection of dynamic templates that customize the presentation of calendar days on a "per day" basis. The templates can contain any type of control or simple image and are particularly useful if you want to implement a scheduler-like interface with extra-information, such as images that illustrate events, links to additional sources, etc. This behavior is supported using the RadCalendar __SpecialDays__ collection of __RadCalendarDay__ objects. __RadCalendarDay__ has a __TemplateItem__ property of type __RadHostItem__ that accepts a __Control__ in the constructor. 

In the example below a __PictureBox__ control is created and assigned an image from an __ImageList__. A new instance of __RadHostItem__ is created passing the picture box in its constructor.  Finally we set the __TemplateItem__ property of the special day.  When the day is rendered the associated image is displayed in the cell for that day. The example assumes that you have an instance of ImageList on the form populated with at least one image and at least one special day added to the __SpecialDays__ collection of __RadCalendar__. The image used here is "Sunset.jpg" typically found in \My Documents\My Pictures\Sample Pictures.

![calendar-customizing-appearance-using-templates 001](images/calendar-customizing-appearance-using-templates001.png)

#### Assigning a TemplateItem 


{{source=..\SamplesCS\Calendar\Calendar1.cs region=templateItem}} 
{{source=..\SamplesVB\Calendar\Calendar1.vb region=templateItem}} 

````C#
PictureBox pictureBox = new PictureBox();
pictureBox.SizeMode = PictureBoxSizeMode.StretchImage;
pictureBox.Image = imageList1.Images[0];
RadHostItem hostItem = new RadHostItem(pictureBox);
radCalendar1.SpecialDays[0].TemplateItem = hostItem;

````
````VB.NET
Dim pictureBox As New PictureBox()
pictureBox.SizeMode = PictureBoxSizeMode.StretchImage
pictureBox.Image = ImageList1.Images(0)
Dim hostItem As New RadHostItem(pictureBox)
RadCalendar1.SpecialDays(0).TemplateItem = hostItem

````

{{endregion}} 



