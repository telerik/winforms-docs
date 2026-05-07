---
title: Formatting Group Header Row
page_title: Formatting Group Header Row - WinForms GridView Control
description: WinForms GridView offers the GroupSummaryEvaluate event to modify the header text of the group rows. 
slug: winforms/gridview/grouping/formatting-group-header-row
tags: formatting,group,header,row
published: True
position: 4
previous_url: gridview-grouping-formatting-group-header-row
---

# Formatting Group Header Row

__GroupSummaryEvaluate__ allows to modify the header text of the group rows. The event is fired when the group header row text is needed. So if you want to modify the group’s text, first you have to subscribe to the __GroupSummaryEvaluate__ event and then perform the actual grouping, because when the __GroupContentCellElement__ (the group header row) is being displayed, the event is fired and if you are  not subscribed for it, it will apply its default settings.

The example below demonstrates how you can change the group header text of each group if grouping is based on some specific column:

#### Change group header text

<snippet id='gridview-formattinggroupheaderrow-groupheadertext-cs' />
<snippet id='gridview-formattinggroupheaderrow-groupheadertext-vb' />

![WinForms RadGridView Change group header text](images/gridview-grouping-formatting-group-header-row001.png)

The following example demonstrates formatting of group header which uses data from the group rows:

#### Formatting group header by using data from data rows

<snippet id='gridview-formattinggroupheaderrow-formatgroupheaderwhichusersdatafromgrouprows-cs' />
<snippet id='gridview-formattinggroupheaderrow-formatgroupheaderwhichusersdatafromgrouprows-vb' />

![WinForms RadGridView Formatting group header](images/gridview-grouping-formatting-group-header-row002.png)
# See Also
* [Basic Grouping]({%slug winforms/gridview/grouping/basic-grouping%})

* [Custom Grouping]({%slug winforms/gridview/grouping/custom-grouping%})

* [Events]({%slug winforms/gridview/grouping/events%})

* [Group Aggregates]({%slug winforms/gridview/grouping/group-aggregates%})

* [Groups Collection]({%slug winforms/gridview/grouping/groups-collection%})

* [Setting Groups Programmatically]({%slug winforms/gridview/grouping/setting-groups-programmatically%})

* [Sorting group rows]({%slug winforms/gridview/grouping/sorting-group-rows%})

* [Using Grouping Expressions]({%slug winforms/gridview/grouping/using-grouping-expressions%})

