---
title: Custom painting
page_title: Custom painting | UI for WinForms Documentation
description: Custom painting
slug: winforms/ganttview-/formatting/custom-painting
tags: custom,painting
published: True
position: 3
---

# Custom painting



## 

RadGanttView offers several method of customizing the looks of the elements it is displaying. One of these methods is allowing 
          developers to directly draw over the control through its Graphics object. To enable this functionality you have to set the 
          __EnableCustomPainting__ property of the control to __true__ and to subscribe to the 
          __ItemPaint__ event.
        

Since all the elements in the graphical view of the control are arranged along the timeline and their size depends on the current 
          zoom level you need a way to know where you should draw you graphics. For this purpose we have implemented two methods which by given 
          date and time return where this time or time range should appear in coordinates.
        

The following example demonstrates how to draw an image which appears exactly 12 hours after each task which has a duration longer than 12 hours.
        #_[C#] _

	

#_[C#] _

	

#_[VB.NET] _

	



{{source=..\SamplesCS\GanttView\Formatting\CustomPainting.cs region=FormattingEventSubscribe1}} 
{{source=..\SamplesCS\GanttView\Formatting\CustomPainting.cs region=FormattingPaintEvent1}} 
````C#
this.radGanttView1.EnableCustomPainting = true;
this.radGanttView1.ItemPaint += radGanttView1_ItemPaint1;

````
````VB.NET
private void radGanttView1_ItemPaint1(object sender, GanttViewItemPaintEventArgs e)
{
    if (e.Element.Data.Items.Count == 0 && e.Element.Data.End - e.Element.Data.Start > new TimeSpan(12, 0, 0))
    {
        RectangleF rect = this.radGanttView1.GanttViewElement.GraphicalViewElement.GetDrawRectangle(e.Element.Data, e.Element.Data.End.AddHours(12));
        rect.Width = rect.Height;
        e.Graphics.DrawImage(prizeImage, rect);
    }
}

````

{{endregion}} 


![ganttview-formatting-custom-paiting 001](images/ganttview-formatting-custom-paiting001.png)

Another example demonstrating how to draw a colored rectangle which would be 10 hours in duration and will “start” 
          18 hours before each summary task.
        #_[C#] _

	

#_[C#] _

	

#_[VB.NET] _

	



{{source=..\SamplesCS\GanttView\Formatting\CustomPainting.cs region=FormattingEventSubscribe2}} 
{{source=..\SamplesCS\GanttView\Formatting\CustomPainting.cs region=FormattingPaintEvent2}} 
````C#
this.radGanttView1.ItemPaint += radGanttView1_ItemPaint2;

````
````VB.NET
private void radGanttView1_ItemPaint2(object sender, GanttViewItemPaintEventArgs e)
{
    if (e.Element.Data.Items.Count > 0)
    {
        DateTime start = e.Element.Data.Start.AddHours(-18);
        RectangleF rect = this.radGanttView1.GanttViewElement.GraphicalViewElement.GetDrawRectangle(e.Element.Data, start, start.AddHours(10));
        e.Graphics.FillRectangle(Brushes.LightBlue, rect);
    }
}

````

{{endregion}} 


![ganttview-formatting-custom-paiting 002](images/ganttview-formatting-custom-paiting002.png)

You will see that if the zoom level changes the rectangle size resizes accordingly
        ![ganttview-formatting-custom-paiting 003](images/ganttview-formatting-custom-paiting003.png)
