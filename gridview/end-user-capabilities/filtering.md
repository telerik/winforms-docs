---
title: Filtering
page_title: Filtering | RadGridView
description: this article shows how the end user can use the built-in filtering functionality. 
slug: winforms/gridview/end-user-capabilities/filtering
tags: filtering
published: True
position: 5
previous_url: gridview-end-user-capabilities-filtering
---

# Filtering

## Single Column Filtering

When filtering is enabled, each __GridViewDataColumn__ column displays a filter box beneath the corresponding header. The user can click the filter icon to display a drop-down list of comparison criteria (e.g. "Starts with", "Equals"...). The user can click in the textbox next to the filter button to enter a comparison value. When the user presses __Enter__ (or moves the focus off the comparison value textbox), only records that match the criteria are listed in the column. Some criteria comparisons from the drop down list do not require a comparison value, i.e. __Is empty, Is not empty, Is null, Is not null__.

![gridview-end-user-capabilities-filtering 001](images/gridview-end-user-capabilities-filtering001.png)

## Complex Filters

The user can select Custom from the drop down list to display a dialog that allows a more complex filter to be built. In this dialog the user can select comparison criteria from the drop down list on the left and enter a value in the textbox on the right.  Then a second criteria and value pair can be entered. Between the two criteria is a radio button with choices for "And" and "Or". If the user leaves the value at the default "And", both criteria must be true for a given record to display. The condition can be inverted using the
"Not" option.

![gridview-end-user-capabilities-filtering 002](images/gridview-end-user-capabilities-filtering002.png)
# See Also
* [Column Chooser]({[%slug winforms/gridview/end-user-capabilities/column-chooser%]}

* [Editing Behavior]({[%slug winforms/gridview/end-user-capabilities/editing-behavior%]}

* [Grouping]({[%slug winforms/gridview/end-user-capabilities/grouping%]}

* [Keyboard Support]({[%slug winforms/gridview/end-user-capabilities/keyboard-support%]}

* [Printing Support]({[%slug winforms/gridview/end-user-capabilities/printing-support%]}

* [Reordering Rows]({[%slug winforms/gridview/end-user-capabilities/reordering-rows%]}

* [Resizing Columns]({[%slug winforms/gridview/end-user-capabilities/resizing-columns%]}

* [Scrolling Support]({[%slug winforms/gridview/end-user-capabilities/scrolling-support%]}

