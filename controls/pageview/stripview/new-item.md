---
title: New Item
page_title: New Item - RadPageView
description: RadPageView is yet another great addition to the Telerik UI for WinForms suite. As the name implies, this control layouts pages of subcontrols in different views.
slug: winforms/pageview/stripview/new-item
tags: new,item
published: True
position: 3
previous_url: pageview-stripview-new-item
---

# New Item

**RadPageView** supports a special kind of page item that prompts the end-user to create a new page at run time by clicking that item. Let's call the item *NewItem*. When the *NewItem* is clicked, a special event is fired where the developer can decide what exactly should be done - in the context of **RadPageView** usually a new **RadPageViewPage** is being created.

![WinForms RadPageView New Item Button](images/pageview-stripview-new-item001.png)

## Enabling the NewItem

You can easily show the *NewItem* by setting the __NewItemVisibility__ property of the **RadPageViewStripElement**. This property is of the enum type **StripViewNewItemVisibility** and has the following possible values:

* __Hidden__ (default value): The *NewItem* is hidden.

* __Front__: The *NewItem* appears in front of the other page items in the items strip area.

![WinForms RadPageView New Item Front](images/pageview-stripview-new-item002.png)

* __End__: The *NewItem* appears at the end of the row of page items in the items strip area. 

![WinForms RadPageView New Item End](images/pageview-stripview-new-item003.png)   
        
Here is how to set the **NewItemVisibility** property:

<snippet id='pageview-newitem-settingnewitemvisibility-cs' />
<snippet id='pageview-newitem-settingnewitemvisibility-vb' />



## Handling the Clicked NewItem

When the **NewItem** is clicked by the end-user, **RadPageView** throws an event called __NewPageRequested__.  There you can create a new **RadPageViewPage** instance and add it to **RadPageView**. In the following code snippet we create a new **RadPageViewPage**, add it to **RadPageView**, select the newly created page, and make sure that the page item is fully visible by calling the **EnsureItemVisible** method.

<snippet id='pageview-newitem-newpagerequested-cs' />
<snippet id='pageview-newitem-newpagerequested-vb' />



The result is shown on the screenshot below:

![WinForms RadPageView NewPageRequested Event Handler](images/pageview-stripview-new-item004.png)

# See Also

* [Fitting Items]({%slug winforms/pageview/stripview/fitting-items%})	
* [Scrolling and Overflow (strip buttons)]({%slug winforms/pageview/stripview/scrolling-and-overflow-(strip-buttons)%})	
* [Strip Element Properties]({%slug winforms/pageview/stripview/strip-element-properties%})	
