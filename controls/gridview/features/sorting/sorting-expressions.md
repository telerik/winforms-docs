---
title: Sorting Expressions
page_title: Sorting Expressions - WinForms GridView Control
description: Sort WinForms GridView by directly altering the sort expression in the code.
slug: winforms/gridview/sorting/sorting-expressions
tags: sorting,expressions
published: True
position: 2
previous_url: gridview-sorting-sorting-expressions
---

# Sorting Expressions

## Overview

The __SortDescriptors__ collection exposes the __Expression__ property which is used to create flexible sorting conditions. Expression is a string that contains the column name followed by "ASC" (ascending) or "DESC" (descending). The columns are sorted ascending by default. Multiple columns can be separated by commas.

## Creating expressions

Creating a simple expression:

#### Creating simple sorting expression

<snippet id='gridview-sorting-creatingsimplesortingexpression-cs' />
<snippet id='gridview-sorting-creatingsimplesortingexpression-vb' />

Sorting by two columns using expressions:

#### Sorting by two columns, using sorting expression

<snippet id='gridview-sorting-sortingbytwocolumnsusingexpression-cs' />
<snippet id='gridview-sorting-sortingbytwocolumnsusingexpression-vb' />

# See Also
* [Basic Sorting]({%slug winforms/gridview/sorting/basic-sorting%})

* [Custom Sorting]({%slug winforms/gridview/sorting/custom-sorting%})

* [Events]({%slug winforms/gridview/sorting/events%})

* [Setting Sorting Programmatically]({%slug winforms/gridview/sorting/setting-sorting-programmatically%})

