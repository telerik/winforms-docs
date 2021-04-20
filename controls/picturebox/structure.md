---
title: Structure
page_title: Structure - WinForms PictureBox Control
description: Get familiar with the inner structure and organization of the elements which build WinForms PictureBox.
slug: radpicturebox-structure
tags: structure
published: True
position: 1
---

# Structure

This article describes the inner structure and organization of the elements which build the **RadPictureBox** control.

Figure 1: RadPictureBox visual structure

![picturebox-structure](images/picturebox-structure001.png)

## Element Hierarchy

* **RadPictureBoxElement** -  Represents the main element in **RadPictureBox**.
* **PictureBoxCanvasElement** - Represents the element that is responsible for drawing the image.
* **PictureBoxHorizontalPanelElement** - Represents the top and bottom horizontal panels. This panel allows adding elements in three collections - left, center and right. Each of these three collections is represented by a **StackLayoutElementLite**.
* **PictureBoxVerticalPanelElement** - Represents the left and right vertical panels. This panel allows adding elements in three collections - top, center and bottom. Each of these three collections is represented by a **StackLayoutElementLite**.
* **StackLayoutElementLite** - Represents a stack layout element that arranges its children horizontally or vertically. Is also offers **ElementSpacing** property and respects the element's alignment.
* **Vertical ScrollBar** - Scrolls the image vertically.
* **Horizontal ScrollBar** - Scrolls the image horizontally.

Figure 2: RadPictureBox elements hierarchy

![picturebox-structure](images/picturebox-structure002.png)

# See Also

* [Overview]({%slug radpicturebox-overview%})
* [Getting Started]({%slug radpicturebox-getting-started%})

