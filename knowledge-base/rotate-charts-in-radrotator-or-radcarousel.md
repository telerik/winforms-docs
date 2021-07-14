---
title: Rotate charts in RadRotator or RadCarousel
description: Rotate charts in RadRotator or RadCarousel. Check it now!
type: how-to
page_title: Rotate charts in RadRotator or RadCarousel
slug: rotate-charts-in-radrotator-or-radcarousel
res_type: kb
---

|Product Version|Product|Author|Last modified|
|----|----|----|----|
|Q2 2008|RadControls for WinForms|Martin Vassilev|9/15/2008|
 
  
**HOW-TO**
Rotate a custom RadChart object by using RadRotator or RadCarousel and preserve all visual efects that hold out this controls.  
   
**SOLUTION**
Even though it is very easy to add RadChart directly by using RadHostItem, RadRotator and RadCarousel performs much better with images and/or other windowless RadItems. This is why the more suitable approach here would be to convert the charts into images and then to add these in the rotator wrapped in RadImageItems. This way the slideshow can also take advantage of the slide animation features of the RadRotator control.  

````C#
//add single chart item to the RadRotator  
{  
    RadChart myChart = ChartCreator.Create(i);  
    myChart.Size = this.radRotator1.Size;  
    Image chartAsImage = myChart.GetBitmap();  
    RadImageItem imageItem = new RadImageItem();  
    imageItem.Image = chartAsImage;  
    this.radRotator1.Items.Add(imageItem);  
}  
      
//add single chart item to the RadCarousel  
{  
    RadChart myChart = ChartCreator.Create(i);  
    myChart.Size = new Size(400, 300);  
    Image chartAsImage = myChart.GetBitmap();  
    RadImageItem imageItem = new RadImageItem();  
    imageItem.Image = chartAsImage;  
    this.radCarousel1.Items.Add(imageItem);  
}  

````
````VB.NET
'add single chart item to the RadRotator  
Dim myChart As RadChart = ChartCreator.Create(i)  
myChart.Size = Me.radRotator1.Size  
Dim chartAsImage As Image = myChart.GetBitmap()  
Dim imageItem As New RadImageItem()  
imageItem.Image = chartAsImage  
Me.radRotator1.Items.Add(imageItem)  
 
'add single chart item to the RadCarousel  
Dim myChart As RadChart = ChartCreator.Create(i)  
myChart.Size = New Size(400, 300)  
Dim chartAsImage As Image = myChart.GetBitmap()  
Dim imageItem As New RadImageItem()  
imageItem.Image = chartAsImage  
Me.radCarousel1.Items.Add(imageItem) 

```` 

