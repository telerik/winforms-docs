---
title: Getting Started
page_title: Getting Started - WinForms PipsPager Control
description: Get started with the WinForms PipsPager control.
slug: pipspager-getting-started
tags: pipspager
published: True
position: 3 
---

# Getting Started

 This article shows how you can start using __RadPipsPager__. The following result will be achieved at the end of this tutorial:

![WinForms PipsPager Getting Started](images/pipspager-getting-started.gif)

RadPipsPager allows you to navigate the records of any collection by settings its __BindingSource__ property. Usually, it is used together with a [RadSlideView]({%slug slideview-overview%}).

Follow the steps:

Follow the steps:

1\. Go ahead and add a RadSlideView, a RadPipsPager and a BindingSource from the toolbox.

2\. Set __DataSource__ for the BindingSource to a collection of records. 

3\. Define __TemplateElement__ for the RadSlideView. This is actually the visual element that represents the UI for the current item. For simplicity of this example, we will use a LightVisualElement for displaying the Title.

4\. Define a __Mapping__ for RadSlideView to link the TemplateElement with the respective data field. 

5\. Set the __BindingSource__ property of RadSlideView and RadPipsPager. 

{{source=..\SamplesCS\SlideView\GettingStartedGallery.cs region=PipsSlider}} 
{{source=..\SamplesVB\SlideView\GettingStartedGallery.vb region=PipsSlider}}

````C#

BindingSource source = new BindingSource();
DataTable table = new DataTable();
table.Columns.Add("Title", typeof(string));
table.Rows.Add("Venice");
table.Rows.Add("Rome");
table.Rows.Add("Florence");

this.radSlideView1.BindingSource = source;
this.radPipsPager1.BindingSource = source;
this.radPipsPager1.ButtonsVisibility = ButtonsVisibility.Visible;
this.radSlideView1.ButtonsVisibility = ButtonsVisibility.VisibleOnMouseOver;
source.DataSource = table;

LightVisualElement titleTemplate = new LightVisualElement();
titleTemplate.ForeColor = Color.DarkGray;
titleTemplate.DrawText = true;
titleTemplate.Font = new Font("Verdana", 12f, FontStyle.Bold);
this.radSlideView1.Mappings.Add(new Mapping(titleTemplate, LightVisualElement.TextProperty, table.Columns[0].ColumnName));
this.radSlideView1.TemplateElement = titleTemplate;
      
````
````VB.NET

 Dim source As BindingSource = New BindingSource()
Dim table As DataTable = New DataTable()
table.Columns.Add("Title", GetType(String))
table.Rows.Add("Venice")
table.Rows.Add("Rome")
table.Rows.Add("Florence")
Me.radSlideView1.BindingSource = source
Me.radPipsPager1.BindingSource = source
Me.radPipsPager1.ButtonsVisibility = ButtonsVisibility.Visible
Me.radSlideView1.ButtonsVisibility = ButtonsVisibility.VisibleOnMouseOver
source.DataSource = table
Dim titleTemplate As LightVisualElement = New LightVisualElement()
titleTemplate.ForeColor = Color.DarkGray
titleTemplate.DrawText = True
titleTemplate.Font = New Font("Verdana", 12.0F, FontStyle.Bold)
Me.radSlideView1.Mappings.Add(New Mapping(titleTemplate, LightVisualElement.TextProperty, table.Columns(0).ColumnName))
Me.radSlideView1.TemplateElement = titleTemplate

```` 

{{endregion}}

>note More advanced TemplateElement is demonstrated in the Demo application >> SlideView/ PipsPager >> First look example which also shows the smooth integration between RadSlideView and [RadPipsPager]({%slug pipspager-overview%}).


## See Also

* [Structure]({%slug pipspager-structure%})