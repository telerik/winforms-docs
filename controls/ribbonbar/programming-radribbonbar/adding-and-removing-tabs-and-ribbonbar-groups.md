---
title: Adding and Removing Tabs and RibbonBar Groups
page_title: Adding and Removing Tabs and RibbonBar Groups - RadRibbonBar
description: You can manipulate RadRibbonBar tabs and groups at run time by using the appropriate collections.
slug: winforms/ribbonbar/programming-radribbonbar/adding-and-removing-tabs-and-ribbonbar-groups
tags: adding,and,removing,tabs,and,ribbonbar,groups
published: True
position: 0
previous_url: ribbonbar-programming-radribbonbar-adding-and-removing-tabs-and-ribbonbar-groups
---

# Adding and Removing Tabs and RibbonBar Groups

You can manipulate __RadRibbonBar__ tabs and groups at run time by using the appropriate collections.

## Adding a Tab

To add a tab to __RadRibbonBar__, follow the four steps below:

1. Create a new Telerik.WinControls.UI.RibbonTab object and set its properties.

1. Call the __Add__ method of the RadRibbonBar.CommandTabs collection, passing the Telerik.WinControls.UI.RibbonTab object.

#### Adding a tab to RadRibbonBar

<snippet id='ribbonbar-addingandremovingtabsandribbonbargroups-addingatab-cs' />
<snippet id='ribbonbar-addingandremovingtabsandribbonbargroups-addingatab-vb' />



To add multiple tabs in a single operation, call __AddRange__ method of __RadRibbonBar.CommandTabs__ collection.

#### Adding multiple tabs to RadRibbonBar

<snippet id='ribbonbar-addingandremovingtabsandribbonbargroups-addmultipletabs-cs' />
<snippet id='ribbonbar-addingandremovingtabsandribbonbargroups-addmultipletabs-vb' />



## Removing a Tab

To remove a tab, call the __Remove__ method of the __CommandTabs__ collection, specifying the __RibbonTab__ that you wish to remove:

#### Remove a Tab from RadRibbonBar

<snippet id='ribbonbar-addingandremovingtabsandribbonbargroups-removingatab-cs' />
<snippet id='ribbonbar-addingandremovingtabsandribbonbargroups-removingatab-vb' />



To remove a tab by index, you can use __RemoveAt__ method:

#### Remove a Tab by Index

<snippet id='ribbonbar-addingandremovingtabsandribbonbargroups-removeatabbytabindex-cs' />
<snippet id='ribbonbar-addingandremovingtabsandribbonbargroups-removeatabbytabindex-vb' />



## Adding a RibbonBar Group

To add a RibbonBar group to a tab, you follow the steps below:

1.Create a new __RadRibbonBarGroup__ object and set its properties.
            

2.Call the __Add__ method of the __RadRibbonBar.CommandTab.Items__ collection, passing the __RadRibbonBarGroup__ object.

#### Create and Setup New RadRibbonBarGroup

<snippet id='ribbonbar-addingandremovingtabsandribbonbargroups-addingaribbonbargroup-cs' />
<snippet id='ribbonbar-addingandremovingtabsandribbonbargroups-addingaribbonbargroup-vb' />



To add multiple RibbonBar groups in a single operation, call the __AddRange__ method of __RadRibbonBar.CommandTab.Items__ collection:

#### Add Multiple RadRibbonBarGroups

<snippet id='ribbonbar-addingandremovingtabsandribbonbargroups-addingmultipleribbonbargroups-cs' />
<snippet id='ribbonbar-addingandremovingtabsandribbonbargroups-addingmultipleribbonbargroups-vb' />



## Removing a RibbonBar Group

To remove a group, call the __Remove__ method of the __CommandTab.Items__ collection, specifying the __RadRibbonBarGroup__ that you wish to be removed:

#### Remove RadRibbonBarGroup

<snippet id='ribbonbar-addingandremovingtabsandribbonbargroups-removearibbonbargroup-cs' />
<snippet id='ribbonbar-addingandremovingtabsandribbonbargroups-removearibbonbargroup-vb' />



To remove a group by index, you can use the __RemoveAt__ method:

#### Remove RadRibbonBarGroup by Index

<snippet id='ribbonbar-addingandremovingtabsandribbonbargroups-removeachunkbyindex-cs' />
<snippet id='ribbonbar-addingandremovingtabsandribbonbargroups-removeachunkbyindex-vb' />



## See Also

* [Design Time]({%slug winforms/ribbonbar/design-time%})
* [Structure]({%slug winforms/ribbonbar/structure%})
* [Getting Started]({%slug winforms/ribbonbar/getting-started%})
* [Backstage View]({%slug winforms/ribbonbar/backstage-view/overview%})
* [Themes]({%slug winforms/ribbonbar/customizing-appearance/themes%}) 
