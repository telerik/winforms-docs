---
title: Unbound Mode
page_title: Unbound Mode - RadDataFilter
description: RadDataFilter allows you to build complex filter expressions based on the data and collection type of the source fields. 
slug: winforms/datafilter/populating-with-data/unbound-mode
tags: data, filter
published: True
position: 2
---

# Unbound Mode

This article demonstrates how to populate **RadDataFilter** with descriptor items and add the desired filter conditions to build an expression.

# Design Time
 
You can add/remove/modify **DataFilterDescriptorItems** by using the *RadItem Collection Editor* which can be shown either via the **Smart Tag** or by using the **Descriptors** property in the *Properties* section in Visual Studio. Then, you can add a *Group* or an *Expression* for composing the desired filters via the *RadDataFilter Design Time Editor*. Additional information is available in the [Design Time]({%slug winforms/datafilter/design-time%}) help article.

# Run Time

**RadDataFilter** supports adding descriptor items at run time. The following example demonstrates how to add two different descriptor items to the RadDataFilter.**Desciriptors** collection and apply an expression. 

#### Adding descriptor items programmatically and applying an expression

<snippet id='datafilter-unbound-mode-unboundmode-cs' />
<snippet id='datafilter-unbound-mode-unboundmode-vb' />




![WinForms RadDataFilter Unbound Mode Design Time](images/datafilter-unbound-mode001.png)

# See Also

* [Data Binding]({%slug winforms/datafilter/populating-with-data/data-binding%})	
