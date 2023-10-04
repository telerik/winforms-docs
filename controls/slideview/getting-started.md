---
title: Getting Started
page_title: Getting Started - WinForms SlideView Control
description: Get started with the RadSlideView control.
slug: slideview-getting-started
tags: slideview, started
published: True
position: 2 
---

# Getting Started

This article shows how you can start using __RadSlideView__. The following result will be achieved at the end of this tutorial:

![WinForms SlideView Getting Started](images/slideview-getting-started.gif)

Follow the steps:

1\. Go ahead and add a RadSlideView and a BindingSource from the toolbox.

2\. Set __DataSource__ for the BindingSource to a collection of records where the object should contain at least one Image field. 

3\. Define __TemplateElement__ for the RadSlideView. This is actually the visual element that represents the UI for the current item. For simplicity of this example, we will use a LightVisualElement for displaying the Photo.
4\. Define a __Mapping__ for RadSlideView to link the TemplateElement with the respective data field. 
5\. Set the __BindingSource__ property of RadSlideView. 

{{source=..\SamplesCS\SlideView\GettingStartedGallery.cs region=GettingStarted}} 
{{source=..\SamplesVB\SlideView\GettingStartedGallery.vb region=GettingStarted}}

````C#
BindingSource bs = new BindingSource();
DataTable dt = new DataTable();
dt.Columns.Add("Photo", typeof(Image));
dt.Rows.Add(Properties.Resources.Burano1);
dt.Rows.Add(Properties.Resources.Burano2);
dt.Rows.Add(Properties.Resources.Burano3);
bs.DataSource = dt;                   

LightVisualElement basicTemplate = new LightVisualElement();
basicTemplate.Opacity = 0.5;
basicTemplate.ImageLayout = ImageLayout.Zoom;
this.radSlideView1.Mappings.Add(new Mapping(basicTemplate, LightVisualElement.ImageProperty, dt.Columns[0].ColumnName)); 
this.radSlideView1.TemplateElement = basicTemplate;
this.radSlideView1.BindingSource = bs;
      
````
````VB.NET

Dim bs As BindingSource = New BindingSource()
Dim dt As DataTable = New DataTable()
dt.Columns.Add("Photo", GetType(Image))
dt.Rows.Add(My.Resources.Burano1)
dt.Rows.Add(My.Resources.Burano2)
dt.Rows.Add(My.Resources.Burano3)
bs.DataSource = dt
Dim basicTemplate As LightVisualElement = New LightVisualElement()
basicTemplate.Opacity = 0.5
basicTemplate.ImageLayout = ImageLayout.Zoom
Me.radSlideView1.Mappings.Add(New Mapping(basicTemplate, LightVisualElement.ImageProperty, dt.Columns(0).ColumnName))
Me.radSlideView1.TemplateElement = basicTemplate
Me.radSlideView1.BindingSource = bs

```` 

{{endregion}}

>note More advanced TemplateElement is demonstrated in the Demo application >> SlideView >> First look example which also shows the smooth integration between RadSlideView and [RadPipsPager]({%slug pipspager-overview%}).

## See Also

* [Structure]({%slug slideview-structure%})