---
title: Structure
page_title: Structure | UI for WinForms Documentation
description: RadCommandBar is a fully theme-able tool strip that provides unprecedented flexibility
slug: winforms/commandbar/structure
tags: structure
published: True
position: 1
previous_url: commandbar-structure
---

# Structure 

>caption Fig.1 RadCommandBar's elements hierarchy

![commandbar-structure 005](images/commandbar-structure005.png)

The Telerik __RadCommandBar__ is built up of five levels of nested components:
      

* RadCommandbar

	* RadCommandBarElement

		* CommandBarRowElement (Rows Collection)

			* CommandBarStripElement (Strips Collection)

				* RadCommandBarGripButton

				* Items ( arranged in ItemsLayout)

				* RadCommandBarOverflowButton

## RadCommandBar

The __RadCommandBarElement__ object represents the overall area of the form occupied by the Telerik __RadCommandBar__.

>caption Fig.2 RadCommandBarElement

![commandbar-structure 001](images/commandbar-structure001.png)

## CommandBarRowElement

The __CommandBarRowElement__ object represents a horizontal or vertical line within the __RadCommandBarElement__ where individual strip elements are displayed.

>caption Fig.3 CommandBarRowElement

![commandbar-structure 002](images/commandbar-structure002.png)

## CommandBarStripElement

The __CommandBarStripElement__ object represents an individual toolstrip within a __CommandBarRowElement__. Descendants of the __RadCommandBarBaseItem__ are arranged within a particular __CommandBarStripElement__.

>caption Fig.4 CommandBarStripElement

![commandbar-structure 003](images/commandbar-structure003.png)

## RadCommandBarBaseItem descendants

Individual items on the __CommandBarStripElement__ are represented by a variety of elements. These include:

* CommandBarLabel

* CommandBarButton

* CommandBarToggleButton

* CommandBarSeparatorItem

* CommandBarDropDownButton

* CommandBarDropDownList

* CommandBarTextBox

* CommandBarSplitButton

* CommandBarSplitButton

>caption Fig.5 RadCommandBarBaseItem 

![commandbar-structure 004](images/commandbar-structure004.png)
