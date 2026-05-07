---
title: Filter on Enter
page_title: Filter on Enter - RadGridView
description: This article shows how you can filter when Enter is presses instead on every keystroke.
slug: grid-filter-on-enter
tags: basic,filtering
published: True
position: 0
---

# Filter when Enter is pressed

By default the filtering operation is performed on every keystroke. However a common case is to perform the filtering operation after the value is entered, for example when Enter is pressed. To achieve this you need to cancel the filtering operation until Enter is pressed. This is demonstrated in the following code snippet.

>note The __AutoFilterDelay__ property gets or sets a value in milliseconds that indicates the delay between the last key press and the filtering operation (available since R1 2019 SP1).

#### Cancel filtering until Enter is pressed. 

<snippet id='gridview-filteronenter-filtercode-cs' />
<snippet id='gridview-filteronenter-filtercode-vb' />

## See Also

* [Basic Filtering]({%slug winforms/gridview/filtering/basic-filtering%})

* [Custom Filtering]({%slug winforms/gridview/filtering/custom-filtering%})

* [Excel-like filtering]({%slug winforms/gridview/filtering/excel-like-filtering%})
