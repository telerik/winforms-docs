---
title: Adding and Removing Groups and Buttons
page_title: Adding and Removing Groups and Buttons - RadRibbonBar
description: You can manipulate groups and buttons of RadRibbonBar at run time by using the appropriate objects and collections.
slug: winforms/ribbonbar/programming-radribbonbar/adding-and-removing-groups-and-buttons
tags: adding,and,removing,groups,and,buttons
published: True
position: 1
previous_url: ribbonbar-programming-radribbonbar-adding-and-removing-groups-and-buttons
---

# Adding and Removing Groups and Buttons

You can manipulate groups and buttons of __RadRibbonBar__ at run time by using the appropriate objects and collections.

## Adding a Button

To add a button to a RibbonBar group of __RadRibbonBar__, create a new __RadButtonElement__ and add it to __RadRibbonBarGroup.Items__ collection:

#### Add a button to RadRibbonBarGroup

<snippet id='ribbonbar-addingandremovinggroupsandbuttons-addingabutton-cs' />
<snippet id='ribbonbar-addingandremovinggroupsandbuttons-addingabutton-vb' />



Like the other collections, you can add multiple buttons in a single operation by using the appropriate __AddRange__ method:

#### Add multiple buttons to RadRibbonBarGroup

<snippet id='ribbonbar-addingandremovinggroupsandbuttons-addmultiplebuttons-cs' />
<snippet id='ribbonbar-addingandremovinggroupsandbuttons-addmultiplebuttons-vb' />



## Removing a Button

To remove a button, call the __Remove__ method of RadRibbonBarGroup.__Items__ collection, specifying the __RadButtonElement__ that you wish to be removed:

#### Remove a button from RadRibbonBarGroup

<snippet id='ribbonbar-addingandremovinggroupsandbuttons-removeabutton-cs' />
<snippet id='ribbonbar-addingandremovinggroupsandbuttons-removeabutton-vb' />



To remove a button by index, you can use the __RemoveAt__ method:

#### Remove a button from RadRibbonBarGroup by index

<snippet id='ribbonbar-addingandremovinggroupsandbuttons-removeabuttonbyindex-cs' />
<snippet id='ribbonbar-addingandremovinggroupsandbuttons-removeabuttonbyindex-vb' />



## Adding a Button Group with Buttons

To add a new button group with buttons to a RibbonBar group of __RadRibbonBar__, follow these steps:

1. Create a new __RadRibbonBarButtonGroup__ object and set its properties. 

1. Create a __RadButtonElement__ objects and set their properties. 

1. Add the __RadButtonElement__ objects to the RadButtonBarGroup.__Items__ collection. 

1. Add the __RadButtonBarGroup__ object to the RadRibbonBarGroup.__Items__ collection. 

#### Add button group with buttons

<snippet id='ribbonbar-addingandremovinggroupsandbuttons-addingbuttongroupwithbuttons-cs' />
<snippet id='ribbonbar-addingandremovinggroupsandbuttons-addingbuttongroupwithbuttons-vb' />



## See Also

* [Design Time]({%slug winforms/ribbonbar/design-time%})
* [Structure]({%slug winforms/ribbonbar/structure%})
* [Getting Started]({%slug winforms/ribbonbar/getting-started%})
* [Backstage View]({%slug winforms/ribbonbar/backstage-view/overview%})
* [Themes]({%slug winforms/ribbonbar/customizing-appearance/themes%}) 
