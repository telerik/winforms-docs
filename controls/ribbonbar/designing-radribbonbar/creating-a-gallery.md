---
title: Creating a Gallery
page_title: Creating a Gallery - RadRibbonBar
description: RadGalleryElement allows the user to choose among large number of visual items
slug: winforms/ribbonbar/getting-started/creating-a-gallery
tags: creating,a,gallery
published: True
position: 8
previous_url: ribbonbar-creating-a-gallery
---

# Creating a Gallery

__RadGalleryElement__ allows the user to choose among large number of visual items. In its default collapsed view, a gallery shows a single row of its items, as well as an up arrow and a down arrow that scroll to other rows of items. Special properties allow you to specify the number of visible rows and columns of items in the collapsed view. 

>caption Figure 1: Collapsed Gallery 
![WinForms RadRibbonBar Collapsed Gallery](images/ribbonbar-creating-a-gallery001.png)

The gallery also has a drop-down arrow which sets the element into expanded view. In this view the gallery shows a popup containing all of its items, organized in groups.

>caption Figure 2: Expanded Plain Tables
![WinForms RadRibbonBar Expanded Plain Tables](images/ribbonbar-creating-a-gallery002.png)

>caption Figure 3: Expanded Built-In
![WinForms RadRibbonBar Expanded Built-In](images/ribbonbar-creating-a-gallery003.png)

## Creating a Gallery

To create a gallery, first, select a RadRibbonbar group, click its smart tag, and choose the Edit Items option. When the *RadItem Collection Editor *pops up, click the arrow of the Add button and select the *RadGalleryElement* option. Click OK to save the changes and the gallery should appear in your ribbon group.

## Gallery properties

* __MaxColumns__: The property specifies the number of columns to appear in the gallery in its collapsed view.

* __MaxRows__: The property sets the number of rows to be shown in the gallery in its collapsed view

* __MaxDropDownColumns__: The property assigns the maximum number of columns that may appear in the gallery drop-down

* __MinDropDownColumns__: The property sets the minimum number of columns to be displayed in the gallery drop-down

## Adding Items

You can add items to the gallery at design-time using the following steps:

1. Select the **RadGalleryElement** control.

1. Go to the *Properties* window and navigate to the **Items** property, then click the ellipsis button

1. In the *RadItem Collection Editor*, click the **Add** button and a **RadGalleryItem** will appear

1. Use the property sheet to set the text and image properties of the newly created RadGalleryItem

1. Click the OK button to save the changes

Alternatively, you can add the items at run-time. Here is a sample snippet:

<snippet id='ribbonbar-creatingagallery-snippet1-cs' />
<snippet id='ribbonbar-creatingagallery-snippet1-vb' />



## Adding Groups

Groups organize the items within a gallery into distinct sections. Groups are not visible when the gallery is in collapsed view. They appear in the gallery popup as blocks of items under the same title. For example, in the screenshot above the Plain Tables and Built-In are the titles of gallery groups. The Plain Tables group contains a single item and the Built-In group contains plenty. The following screenshot has six groups: Black Items, Blue Items, Red Items, Green Items, Purple Items, Orange Items. <br>![WinForms RadRibbonBar Adding Groups Gallery](images/ribbonbar-creating-a-gallery003.png)

To add a group at design-time, please follow these steps:

1. Select the **RadGalleryElement**

1. Go to the *Properties* windows and navigate to the **Groups** property, then click the ellipsis button

1. In the *RadItem Collection Editor* click the **Add** button and a new **RadGalleryGroupItem** will appear in the dialog

1. Set the **Text** property of the newly created group

1. Navigate to its **Items** property and click the ellipsis button 

1. When the *Items Collection Editor* opens you can choose which **RadGalleryItems** to be associated with this group. Each time you click **Add**, one of the items that you already created will be added to the group. Click **Remove** to exclude items from the group.

1. Click **OK** to save the group items

1. Click **OK** to save the group

Alternatively, you can add the items at run-time. Here is a sample snippet:

<snippet id='ribbonbar-creatingagallery-snippet2-cs' />
<snippet id='ribbonbar-creatingagallery-snippet2-vb' />



## Creating Filters

A gallery filter is a set of groups. Filters appear as options of a drop-down list, docked at the top of the gallery popup. They allow the user to choose the combination of groups to be displayed in the popup. For example, the following screenshot contains three filters. The All filter displays all groups; the Red, Orange and Green Items filter shows the items in groups Red, Orange and Green; the Blue and Purple Items lists the items in the Blue and Purple groups.

![WinForms RadRibbonBar Gallery Filter](images/ribbonbar-creating-a-gallery004.png)

To create a filter, follow these steps:

1. Select the **RadGalleryElement**

1. Go to the *Properties* window, navigate to the **Filters** property, and click the ellipsis button

1. In the *RadItem Collection Editor* click the **Add** button and a new filter will appear in the dialog

1. Set the **Text** property of the newly created filter

1. Navigate to the **Items** property of the **RadGalleryGroupFilter**, then click the ellipsis button

1. When the Items Collection Editor opens you can choose which **RadGalleryGroupItems** to be associated with this filter. Each time you click **Add**, one of the groups that you already created will be added to the filter. Click Remove to exclude groups from the filter. Note that one group can be assigned to more than one filters

1. Click OK to save the filter items

1. Click OK to save the filter

Alternatively, you can create a filter at run-time. Here is a sample snippet:

<snippet id='ribbonbar-creatingagallery-snippet3-cs' />
<snippet id='ribbonbar-creatingagallery-snippet3-vb' />



## Creating Tools

Tools are items that appear in the popup beneath the groups. They do not belong to groups and are always displayed, regardless of the applied filter.

To add a Tool at design-time please follow these steps:

1. Select the **RadGalleryElement**

1. Go to the *Properties* window, navigate to the **Tools** property, and click the ellipsis button

1. In the *RadItem Collection Editor* click the Add button to add an item. Currently, you can add a **RadMenuItem**, **RadMenuButtonItem** and **RadMenuComboItem**

1. Use the *Properties* window to set the properties of the new tool

1. Click **OK** to save the changes

You can also create tools at run-time. Here is a sample snippet:

<snippet id='ribbonbar-creatingagallery-snippet4-cs' />
<snippet id='ribbonbar-creatingagallery-snippet4-vb' />



## See Also

* [Design Time]({%slug winforms/ribbonbar/design-time%})
* [Structure]({%slug winforms/ribbonbar/structure%})
* [Getting Started]({%slug winforms/ribbonbar/getting-started%})
* [Backstage View]({%slug winforms/ribbonbar/backstage-view/overview%})
* [Themes]({%slug winforms/ribbonbar/customizing-appearance/themes%})
