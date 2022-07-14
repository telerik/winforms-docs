---
title: Getting Started
page_title: Getting Started - WinForms OfficeNavigationBar Control
description: Get started with the WinForms OfficeNavigationBar and construct your step layout navigation.   
slug: officenavigationbar-getting-started
tags: officenavigationbar
published: True
position: 2
CTAControlName: OfficeNavigationBar
---

# Getting Started

This tutorial will walk you through the creation of a sample application that contains __RadOfficeNavigationBar__.

The following picture shows the final result produced by the code of this tutorial.

![officenavigationbar-getting-started 001](images/officenavigationbar-getting-started001.png)

>note The design may vary according to the applied theme to the application. 

## Defining RadOfficeNavigationBar

To start using the __RadOfficeNavigationBar__ control, you can just populate its __Pages__ collection with __RadPageViewPage__ objects. 

{{source=..\SamplesCS\OfficeNavigationBar\OfficeNavigationBarGettingStarted.cs region=GettingStarted}} 
{{source=..\SamplesVB\OfficeNavigationBar\OfficeNavigationBarGettingStarted.vb region=GettingStarted}} 

````C#

	RadOfficeNavigationBar radOfficeNavigationBar = new RadOfficeNavigationBar();
	var page1 = new RadPageViewPage() { Text = "Mail" };
	page1.Controls.Add(new Label() {Text="Mail" });
	var page2 = new RadPageViewPage() { Text = "Calendar" };
	page2.Controls.Add(new Label() { Text = "Calendar" });
	var page3 = new RadPageViewPage() { Text = "People" };
	page3.Controls.Add(new Label() { Text = "People" });
	var page4 = new RadPageViewPage() { Text = "Tasks" };
	page4.Controls.Add(new Label() { Text = "Tasks" });
	radOfficeNavigationBar.Controls.Add(page1);
	radOfficeNavigationBar.Controls.Add(page2);
	radOfficeNavigationBar.Controls.Add(page3);
	radOfficeNavigationBar.Controls.Add(page4);
	this.Controls.Add(radOfficeNavigationBar);

````
````VB.NET

	Dim radOfficeNavigationBar As RadOfficeNavigationBar = New RadOfficeNavigationBar()
    Dim page1 = New RadPageViewPage() With {
        .Text = "Mail"
    }
    page1.Controls.Add(New Label() With {
        .Text = "Mail"
    })
    Dim page2 = New RadPageViewPage() With {
        .Text = "Calendar"
    }
    page2.Controls.Add(New Label() With {
        .Text = "Calendar"
    })
    Dim page3 = New RadPageViewPage() With {
        .Text = "People"
    }
    page3.Controls.Add(New Label() With {
        .Text = "People"
    })
    Dim page4 = New RadPageViewPage() With {
        .Text = "Tasks"
    }
    page4.Controls.Add(New Label() With {
        .Text = "Tasks"
    })
    radOfficeNavigationBar.Controls.Add(page1)
    radOfficeNavigationBar.Controls.Add(page2)
    radOfficeNavigationBar.Controls.Add(page3)
    radOfficeNavigationBar.Controls.Add(page4)
    Me.Controls.Add(radOfficeNavigationBar)


````

{{endregion}} 

# See Also

* [Design Time]({%slug officenavigationbar-design-time%}) 
 
        
