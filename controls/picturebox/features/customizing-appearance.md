---
title: Customizing appearance
page_title: Customizing appearance
description: Customizing appearance
slug: radpicturebox-customizing-appearance
tags: customizin-appearance
published: True
position: 4
---

# Customizing appearance

**RadPictureBox** can be customized. It offers a set of predefind panels *TopPanel*, *BottomPanel*, *LeftPanel*, and *RightPanel* that allows adding different elements to its item's collections in order to achieve a better user experience. 

> **TopPanel** and **BottomPanel** have RightItems, CenterItems, and LeftItems collections.         
**LeftPanel** and **RightPanel** have TopItems, BottomItems, and CenterItems collectios.
>

#### Adding buttons to panels

{{source=..\SamplesCS\RadPictureBox\PictureBoxGettingStarted.cs region=Panels}} 
{{source=..\SamplesVB\RadPictureBox\PictureBoxGettingStarted.vb region=Panels}} 
````C#
RadButtonElement button = new RadButtonElement("Add New");
button.SvgImage = RadSvgImage.FromFile(@"..//..//PictureBox//symbol-add.svg");
button.TextImageRelation = TextImageRelation.ImageBeforeText;
this.radPictureBox1.TopPanel.LeftItems.Add(button);

button = new RadButtonElement("Download");
button.SvgImage = RadSvgImage.FromFile(@"..//..//PictureBox//symbol-download.svg");
button.TextImageRelation = TextImageRelation.ImageBeforeText;
this.radPictureBox1.TopPanel.RightItems.Add(button);

button = new RadButtonElement("Favourites");
button.SvgImage = RadSvgImage.FromFile(@"..//..//PictureBox//heart-filled.svg");
button.TextImageRelation = TextImageRelation.ImageBeforeText;
this.radPictureBox1.TopPanel.CenterItems.Add(button);

````
````VB.NET
Dim button As RadButtonElement = New RadButtonElement("Add New")
button.SvgImage = RadSvgImage.FromFile("..//..//PictureBox//symbol-add.svg")
button.TextImageRelation = TextImageRelation.ImageBeforeText
Me.RadPictureBox1.TopPanel.LeftItems.Add(button)

button = New RadButtonElement("Download")
button.SvgImage = RadSvgImage.FromFile("..//..//PictureBox//symbol-download.svg")
button.TextImageRelation = TextImageRelation.ImageBeforeText
Me.RadPictureBox1.TopPanel.RightItems.Add(button)

button = New RadButtonElement("Favourites")
button.SvgImage = RadSvgImage.FromFile("..//..//PictureBox//heart-filled.svg")
button.TextImageRelation = TextImageRelation.ImageBeforeText
Me.RadPictureBox1.TopPanel.CenterItems.Add(button)

````

{{endregion}}

![picturebox-getting-started3](images/customizing-appearance001.png)

### Panel Display Mode

**PictureBoxPanelDisplayMode** enumeration defines three ways of displaying the panels: 
- *Always*: The panels will be displayed always.
- *OnMouseHover*: The panels will be displayed only when the mouse is over the picture box. When the mouse moves out of the control the panels will auto hide.
- *None*: The panels will not be displayed. Suitable to manually manage when the panels will be displayed.

The display mode can be changed through **PanelDisplayMode** property.

#### Setting PanelDisplayMode to be always visible

{{source=..\SamplesCS\RadPictureBox\PictureBoxGettingStarted.cs region=PanelDisplayMode}} 
{{source=..\SamplesVB\RadPictureBox\PictureBoxGettingStarted.vb region=PanelDisplayMode}} 
````C#
this.radPictureBox1.PanelDisplayMode = PictureBoxPanelDisplayMode.Always;

````
````VB.NET
Me.RadPictureBox1.PanelDisplayMode = PictureBoxPanelDisplayMode.Always

````

{{endregion}}

### Panel Overflow Mode 

If you have horizontal as well as vertical panel displayed in **RadPictureBox** you can define which one to overflow. This can be done by setting the **PanelOverflowMode** property to **PictureBoxPanelOverflowMode**.*HorizontalOverVertical* or **PictureBoxPanelOverflowMode**.*VerticalOverHorizontal*.

#### Setting PanelOverflowMode

{{source=..\SamplesCS\RadPictureBox\PictureBoxGettingStarted.cs region=PanelOverflowMode}} 
{{source=..\SamplesVB\RadPictureBox\PictureBoxGettingStarted.vb region=PanelOverflowMode}} 
````C#
this.radPictureBox1.PanelOverflowMode = PictureBoxPanelOverflowMode.HorizontalOverVertical;

````
````VB.NET
Me.RadPictureBox1.PanelOverflowMode = PictureBoxPanelOverflowMode.HorizontalOverVertical

````

{{endregion}}


# See Also

* [Structure]({%slug radpicturebox-structure%})
