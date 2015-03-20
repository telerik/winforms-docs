---
title: Choosing an Ancestor Class
page_title: Choosing an Ancestor Class
description: Choosing an Ancestor Class
slug: tpf-class-hierarchy-hierarchy-ancestor
tags: choosing,an,ancestor,class
published: True
position: 1
---

# Choosing an Ancestor Class



## 

When architecting a new TPF based control you should select an ancestor class that already has as much of the functionality built-in as possible, but that doesn't introduce visual user interface details or behavior that you don't want in the finished product. For example, if you need a button complete with the ability to contain images and handle mouse input, you could use RadButtonElement. See the __CalendarNavigationElement__class for an example that uses higher level element level classes to build an element. If you need lower level control over the behavior and look of your element you can use one of the predefined [primitive]({%slug tpf-primitives-overview%}) classes. See the __RadButtonElement__class for an example of assembling several primitives. To control the look of your element at the most granular level, create your own primitives by descending from the [BasePrimitive]({%slug tpf-class-hierarchy-baseprimitive%}) class and overriding the __PaintPrimitive()__method.

See the [Class Hierarchy Overview]({%slug tpf-class-hierarchy-overview%}) topic for a list of classes that can be used as starting points. 
