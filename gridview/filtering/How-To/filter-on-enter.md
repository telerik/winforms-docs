---
title: Filter on Enter
page_title: Filter on Enter | RadGridView
description: This article shows how you can filter when Enter is presses instead on every keystroke.
slug: winforms/gridview/filtering/basic-filtering
tags: basic,filtering
published: True
position: 0
previous_url: gridview-filtering-basic-filtering
---

# Filter when Enter is pressed

By default the filtering operation is performed on every keystroke. However a common case is to perform the filtering operation after the value is entered, for example when Enter is pressed. To achieve this you need to cancel the filtering operation until Enter is pressed. This is demonstrated in the following code snippet.

# Cancel filtering until Enter is pressed. 

{{source=..\SamplesCS\GridView\Filtering\FilterOnEnter.cs region=FilterCode}} 
{{source=..\SamplesVB\GridView\Filtering\FilterOnEnter.vb region=FilterCode}} 


{{endregion}} 

# See Also

* [Basic Filtering]({%slug winforms/gridview/filtering/basic-filtering%})

* [Custom Filtering]({%slug winforms/gridview/filtering/custom-filtering%})

* [Excel-like filtering]({%slug winforms/gridview/filtering/excel-like-filtering%})