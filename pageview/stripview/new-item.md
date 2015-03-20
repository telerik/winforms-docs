---
title: New Item
page_title: New Item
description: New Item
slug: pageview-stripview-new-item
tags: new,item
published: True
position: 2
---

# New Item



RadPageView supports a special kind of page item that prompts the end-user to create a new page at runtime by clicking
        that item. Let's call the item "NewItem". When the NewItem is clicked, a special event is fired where the developer can decide
        what exactly should be done - in the context of RadPageView usually a new RadPageViewPage is being created.
       ![pageview-stripview-new-item 001](images/pageview-stripview-new-item001.png)

## Enabling the NewItem

You can easily show the NewItem by setting the __NewItemVisibility__ property of the RadPageViewStripElement.
          This property is of the enum type StripViewNewItemVisibility and has the following possible values:
        

* __Hidden__ (default value): The NewItem is hidden.
              

* __Front__: The NewItem appears in front of the other page items in the items strip area.
             ![pageview-stripview-new-item 002](images/pageview-stripview-new-item002.png)

* __End__: The NewItem appears at the end of the row of page items in the items strip area.
              ![pageview-stripview-new-item 003](images/pageview-stripview-new-item003.png)              
                Here is how to set the NewItemVisibility property:
                

#### __[C#]__

{{region settingNewItemVisibility}}
	            RadPageViewStripElement stripElement = this.radPageView1.ViewElement as RadPageViewStripElement;
	            stripElement.NewItemVisibility = StripViewNewItemVisibility.End;
	{{endregion}}



#### __[VB.NET]__

{{region settingNewItemVisibility}}
	        Dim stripElement As RadPageViewStripElement = TryCast(Me.RadPageView1.ViewElement, RadPageViewStripElement)
	        stripElement.NewItemVisibility = StripViewNewItemVisibility.End
	        '#EndRegion
	
	        stripElement.NewItemVisibility = StripViewNewItemVisibility.Hidden
	        stripElement.NewItemVisibility = StripViewNewItemVisibility.Front
	
	        AddHandler RadPageView1.NewPageRequested, AddressOf radPageView1_NewPageRequested
	    End Sub
	
	    '#region newPageRequested
	    Private Sub radPageView1_NewPageRequested(ByVal sender As Object, ByVal e As EventArgs)
	        Dim pageView As RadPageView = TryCast(sender, RadPageView)
	        Dim stripElement As RadPageViewStripElement = TryCast(pageView.ViewElement, RadPageViewStripElement)
	
	        Dim page As New RadPageViewPage()
	        page.Text = "New Page"
	        pageView.Pages.Add(page)
	
	        pageView.SelectedPage = page
	        pageView.ViewElement.EnsureItemVisible(stripElement.NewItem)
	    End Sub
	{{endregion}}



## Handling the clicked NewItem

When the NewItem is clicked by the end-user, RadPageView throws an event called __NewPageRequested__.
          There you can
          create a new RadPageViewPage instance and add it to RadPageView. In the following code snippet we create a new RadPageViewPage,
          add it to RadPageView, select the newly created page, and make sure that the page item is fully visible by calling the
          EnsureItemVisible method.
        

#### __[C#]__

{{region newPageRequested}}
	        void radPageView1_NewPageRequested(object sender, EventArgs e)
	        {
	            RadPageView pageView = sender as RadPageView;
	            RadPageViewStripElement stripElement = pageView.ViewElement as RadPageViewStripElement;
	
	            RadPageViewPage page = new RadPageViewPage();
	            page.Text = "New Page";
	            pageView.Pages.Add(page);
	
	            pageView.SelectedPage = page;
	            pageView.ViewElement.EnsureItemVisible(stripElement.NewItem);
	        }
	{{endregion}}



#### __[VB.NET]__

{{region newPageRequested}}
	    Private Sub radPageView1_NewPageRequested(ByVal sender As Object, ByVal e As EventArgs)
	        Dim pageView As RadPageView = TryCast(sender, RadPageView)
	        Dim stripElement As RadPageViewStripElement = TryCast(pageView.ViewElement, RadPageViewStripElement)
	
	        Dim page As New RadPageViewPage()
	        page.Text = "New Page"
	        pageView.Pages.Add(page)
	
	        pageView.SelectedPage = page
	        pageView.ViewElement.EnsureItemVisible(stripElement.NewItem)
	    End Sub
	{{endregion}}



The result is shown on the screenshot below:![pageview-stripview-new-item 004](images/pageview-stripview-new-item004.png)
