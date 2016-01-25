---
title: Structure
page_title: Structure | UI for WinForms Documentation
description: Structure
slug: winforms/commandbar/structure
tags: structure
published: True
position: 1
previous_url: commandbar-structure
---

# Structure



The Telerik RadCommandBar is built up of five levels of nested components:
      

* RadCommandbar

	* RadCommandBarElement

		* CommandBarRowElement (Rows Collection)

			* CommandBarStripElement (Strips Collection)

				* RadCommandBarGripButton

				* Items ( arranged in ItemsLayout)

				* RadCommandBarOverflowButton

## RadCommandBar

The RadCommandBarElement object represents the overall area of the form occupied by the Telerik RadCommandBar.

![commandbar-structure 001](images/commandbar-structure001.png)

## CommandBarRowElement

The CommandBarRowElement object represents a horizontal or vertical line within the RadCommandBarElement where individual strip elements are displayed.

![commandbar-structure 002](images/commandbar-structure002.png)

## CommandBarStripElement

The CommandBarStripElement object represents an individual toolstrip within a CommandBarRowElement. Descendants of the RadCommandBarBaseItem are arranged within a particular CommandBarStripElement.

![commandbar-structure 003](images/commandbar-structure003.png)

## RadCommandBarBaseItem descendants

Individual items on the CommandBarStripElement are represented by a variety of elements. These include:

* CommandBarLabel

* CommandBarButton

* CommandBarToggleButton

* CommandBarSeparatorItem

* CommandBarDropDownButton

* CommandBarDropDownList

* CommandBarTextBox

* CommandBarSplitButton

* CommandBarSplitButton

![commandbar-structure 004](images/commandbar-structure004.png)
