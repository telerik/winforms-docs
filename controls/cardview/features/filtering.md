---
title: Filtering
page_title: Filtering - UI for WinForms Documentation
description: RadCardView allows filtering applied to its CardViewItems. To enable filtering use the EnableFiltering property of the control.
slug: winforms/cardview/features/filtering
tags: filtering
published: True
position: 0
---

# Filtering

__RadCardView__ allows filtering applied to its __CardViewItems__. To enable filtering use the __EnableFiltering__ property of the control.

#### Enable Filtering

<snippet id='cardview-features-filtering-enablefiltering-cs'/>
<snippet id='cardview-features-filtering-enablefiltering-vb'/>



Once the filtering is enabled, we have to create a new __FilterDescriptor__ and assign its __PropertyName__, __FilterOperator__ and __SearchCriteria__. First, let’s filter the items by their value and look for items containing with `Capital`.

#### Filter by Column

<snippet id='cardview-features-filtering-filterdescriptor-cs'/>
<snippet id='cardview-features-filtering-filterdescriptor-vb'/>



>caption Figure 1: Before
![WinForms RadCardView Before](images/radcardview-features-filtering001.png)

>caption Figure 2: After
![WinForms RadCardView After](images/radcardview-features-filtering002.png)
