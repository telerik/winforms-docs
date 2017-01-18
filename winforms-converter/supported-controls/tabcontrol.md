---
title: TabControl
page_title: TabControl | WinForms Converter
description: This article explains which standard .NET controls properties are removed and which are replaced with similar equivalents. 
slug: winforms/winforms-converter/supported-controls/tabcontrol
tags: covert, winforms, tabcontrol, radpageview
published: True
position: 1
---

# TabControl

The TabControl control in your application will be converted to [RadPageView]({%slug winforms/pageview%}). The following tables describe which properties and methods are removed and which are replaced with similar equivalents.

|Properties|Action|RadControls Equivalent|
|---|---|---|
|Alignment|Produces Error||
|Appearance|Removed||
|DrawMode|Removed||
|HotTrack|Removed||
|Multiline|Produces Error||
|Padding|Produces Error||
|RightToLeftLayout|Removed||
|ShowToolTips|Replaced|ShowItemToolTips|
|SizeMode|Replaced|ItemSizeMode|

|Methods|Action|RadControls Equivalent|
|---|---|---|
|DeselectTab()|Produces Error||
|GetTabRect()|Produces Error||
|GetControl()|Produces Error||
|SelectTab()|Produces Error||

|Events|Action|RadControls Equivalent|
|---|---|---|
|DrawItem|Produces Error||
|Deselecting|Replaced|SelectedPageChanging|
|Deselected|Replaced|SelectedPageChanged|
|RightToLeftLayoutChanged|Produces Error||
|Selecting|Replaced|SelectedPageChanging|
|Selected|Replaced|SelectedPageChanged|

## TabPages
|Properties|Action|RadControls Equivalent|
|---|---|---|
|ImageIndex|Produces Error||
|ImageKey|Produces Error||
|UseVisualStyleBackColor|Removed||
