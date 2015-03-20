---
title: Overview
page_title: Overview
description: Overview
slug: tpf-elements-overview
tags: overview
published: True
position: 0
---

# Overview



## 

Elements fall into three categories, depending on their base class:

* __Layout elements__ derive from [LayoutPanel]({%slug tpf-class-hierarchy-layoutpanel%}). Each LayoutPanel arranges child items in a particular manner.

* __Painted elements__derive from [BasePrimitive]({%slug tpf-class-hierarchy-baseprimitive%}). They override the OnPaint method to draw figures on the controls graphic surface.

* __Component elements__ derive from [RadItem]({%slug tpf-class-hierarchy-raditem%}). RadItem descendants handle user input and can be worked with in the design environment. A component element overrides the virtual __CreateChildElements()__ method to create one or more layout elements and primitives. Typically TPF based controls are simple wrappers around RadItem descendant classes, and the RadItem descendant classes define logic and user interface. See the [RadRadioButtonElement]({%slug tpf-elements-radradiobutton%}) and [RadTrackBarElement]({%slug tpf-elements-radtrackbar%}) topics for examples.
