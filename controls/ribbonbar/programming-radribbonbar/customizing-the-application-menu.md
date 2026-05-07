---
title: Customizing the Application Menu
page_title: Customizing the Application Menu - RadRibbonBar
description: The Application Menu is a menu that is displayed when you click on the Office Button in the upper left corner of RadRibbonBar.
slug: winforms/ribbonbar/programming-radribbonbar/customizing-the-application-menu
tags: customizing,the,application,menu
published: True
position: 4
previous_url: ribbonbar-programming-radribbonbar-customizing-the-application-menu
---

# Customizing the Application Menu

The *Application Menu* is a menu that is displayed when you click on the *Office Button* in the upper left corner of __RadRibbonBar__:

>caption Figure 1: RadRibbonBar Application Menu
![WinForms RadRibbonBar RadRibbonBar Application Menu](images/ribbonbar-programming-radribbonbar-customizing-the-application-menu000.png)

The *Application Menu *can contain the same elements as __RadMenu__. Please refer to RadMenu section of the documentation for further a more comprehensive information about __RadMenu__. In contrast to __RadMenu__, menu items can be arranged in two columns.

## Assigning an Image to the Application Menu Office Button

__RadRibbonBar.StartButtonImage__ property defines the image used in the Application Menu button. The following code assigns an image (The example assumes that the image is added to the Project Resources):

#### Assign image to start button

<snippet id='ribbonbar-customizingtheapplicationmenu-assignimagetostartbutton-cs' />
<snippet id='ribbonbar-customizingtheapplicationmenu-assignimagetostartbutton-vb' />



## Adding Items to the Application Menu

There are five types of items which you can add to the Application Menu:

|   |   |
|---|---|
| __RadMenuItem__ |A standard menu item.|
| __RadMenuButtonItem__ |A button menu item.|
| __RadMenuHeaderItem__ |A header menu item.|
| __RadMenuSeperatorItem__ |A separator.|
| __RadMenuComboItem__ |A combobox menu item.|

For example to create a new RadMenuItem and add it to the application menu use the following code:

#### Creating and add new menu item

<snippet id='ribbonbar-customizingtheapplicationmenu-addingitemstotheapplicationmenu1-cs' />
<snippet id='ribbonbar-customizingtheapplicationmenu-addingitemstotheapplicationmenu1-vb' />



## Below is the method that is referred to by the handler of the Click event. 

#### Handle the menu item click event

<snippet id='ribbonbar-customizingtheapplicationmenu-addingitemstotheapplicationmenu2-cs' />
<snippet id='ribbonbar-customizingtheapplicationmenu-addingitemstotheapplicationmenu2-vb' />



## Adding Items to the Right Column

To place items in the right column of the Application Menu use __RadRibbonBar.StartMenuRightColumnItems__ collection. This code adds a RadMenuItem to the right column. The __RadMenuItem.Enabled__ property is set to false so that items will act as labels and clicks will be disallowed. 

#### Adding items to the right column

<snippet id='ribbonbar-customizingtheapplicationmenu-addingitemstotherightcolumn-cs' />
<snippet id='ribbonbar-customizingtheapplicationmenu-addingitemstotherightcolumn-vb' />



## Adding Items with Sub Items

To create a submenu under a menu item, add items to the __Items__ collection of the first __RadMenuItem__.

This code adds a new __RadMenuItem__, __mnuPrint__, to the Start Menu. Then another three __RadMenuItems__ are created and added to __mnuPrint.Items__. Those three items, which make up the submenu, will have their own event handlers for the user click events.

#### Adding menu items with sub items

<snippet id='ribbonbar-customizingtheapplicationmenu-addingitemswithsubitems-cs' />
<snippet id='ribbonbar-customizingtheapplicationmenu-addingitemswithsubitems-vb' />



## Wrapping Items' Text

The ApplicationMenu of RadRibbonBar supports wrapping of the main and description texts of its items in the right column. To enable it, you should set the TextWrap property of the __Text__ and __Description__ parts of the menu items to true. In addition, you should set the MaxSize of these parts. Finally, you can set the width of the right column to an appropriate value by the ApplicationMenuRightColumnWidth property. Let's say that we have the following RadMenuItems in the right column:

<snippet id='ribbonbar-customizingtheapplicationmenu-menuitemstexts-cs' />
<snippet id='ribbonbar-customizingtheapplicationmenu-menuitemstexts-vb' />



By default, the menu will look like this:<br>![WinForms RadRibbonBar No WordWrap](images/ribbonbar-programming-radribbonbar-customizing-the-application-menu002.png)

So, as mentioned above, we should set the TextWrap and MaxSize properties of the Text and Description parts of the menu items:

<snippet id='ribbonbar-customizingtheapplicationmenu-settingupsizes-cs' />
<snippet id='ribbonbar-customizingtheapplicationmenu-settingupsizes-vb' />



The result in this case will be:<br>![WinForms RadRibbonBar With WordWrap](images/ribbonbar-programming-radribbonbar-customizing-the-application-menu001.png)

## Keyboard Support

The Application menu supports mnemonics and Arrows/Enter/Escape navigation.

## See Also

* [Design Time]({%slug winforms/ribbonbar/design-time%})
* [Structure]({%slug winforms/ribbonbar/structure%})
* [Getting Started]({%slug winforms/ribbonbar/getting-started%})
* [Backstage View]({%slug winforms/ribbonbar/backstage-view/overview%})
* [Themes]({%slug winforms/ribbonbar/customizing-appearance/themes%}) 
