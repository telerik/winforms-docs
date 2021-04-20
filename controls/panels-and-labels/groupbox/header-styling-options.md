---
title: Header Styling Options
page_title: Header Styling Options - WinForms GroupBox Control
description: Learn what are the header styling options supported by WinForms GroupBox.
slug: winforms/panels-and-labels/groupbox/styling-options
tags: header,styling,options
published: True
position: 4
previous_url: panels-and-labels-groupbox-header-styling-options
---

# Header Styling Options

This article describes how the header can be manipulated to change the overall appearance of the control by using the styling properties.

## Introduction To Styling

![panels-and-labels-groupbox-overview 002](images/panels-and-labels-groupbox-overview002.png)

The most important RadGroupBox layout styling options include the following:

* **GroupBoxStyle**: There are two defined styles, *Standard* and *Office*. The styles are defined in **RadGroupBoxStyle** enumeration.

* **HeaderAlignment**: Header alignment options are defined in **HeaderAlignment** enumeration, *Near*, *Center*, and *Far*.

* **HeaderPosition**: Header position options are defined in **HeaderPosition** enumeration, *Top*, *Left*, *Bottom*, and *Right*.

* **HeaderMargin**: Defines the header margin.

* **FooterVisibility**: Defines the footer visibility. Its default value is *Collapsed*.

The most important **Header** and **Footer** styling options include the following ones:

* **HeaderImage**

* **FooterImage**

* **HeaderImageAlignment**

* **FooterImageAlignment**

* **HeaderText**

* **FooterText**

* **HeaderTextAlignment**

* **FooterTextAlignment**

* **HeaderTextImageRelation**

* **FooterTextImageRelation**

Please refer to [ImageAndTextLayoutPanel]({%slug winforms/telerik-presentation-framework/layout/predefined-layout-panels/imageandtextlayoutpanel%}) documentation section about further details of those properties.

All these properties can be set in **Visual Style Builder**. Furthermore, the control can be customized on a very fine-grained level using the *Visual Style Builder* to set any other property in the control hierarchy. Please refer to [Structure]({%slug winforms/panels-and-labels/groupbox/structure%}) section for more details.

##  Header Position

The **HeaderPosition** can be set to *Top*, *Right*, *Bottom*, and *Left*:<br>![panels-and-labels-groupbox-header-styling-options 001](images/panels-and-labels-groupbox-header-styling-options001.png)

## Header Alignment

**HeaderAlignment** takes *Near*, *Center*, and *Far *values:<br>![panels-and-labels-groupbox-header-styling-options 002](images/panels-and-labels-groupbox-header-styling-options002.png)

>note **HeaderAlignment** is not taken into consideration when the **GroupBoxStyle** is set to *Office*. In this case the header occupies the whole width or height of the control. You may use **HeaderTextAlignment** and **HeaderImageAlignment** properties in this case.
>

## Group Box Style

There are two styles - *Standard *and *Office*:<br>![panels-and-labels-groupbox-header-styling-options 003](images/panels-and-labels-groupbox-header-styling-options003.png)

## Footer Visibility 

Footer can be *Visible, Collapsed, and Hidden:*<br>![panels-and-labels-groupbox-header-styling-options 004](images/panels-and-labels-groupbox-header-styling-options004.png)

Note: The default value is *Collapsed*.

## Header and Footer Images

The text and image relation can be set with the familiar properties: *HeaderImageAndTextRelation*, *HeaderImageAlignment*, and *HeaderTextAlignment*:<br>![panels-and-labels-groupbox-header-styling-options 005](images/panels-and-labels-groupbox-header-styling-options005.png)

There are corresponding footer properties.

# See Also

* [Structure]({%slug winforms/panels-and-labels/groupbox/structure%})
* [Accessing and Customizing Elements]({%slug winforms/panels-and-labels/groupbox/customizing-appearance/accessing-and-customizing-elements %})
* [Themes]({%slug winforms/panels-and-labels/groupbox/customizing-appearance/accessing-and-customizing-elements %})