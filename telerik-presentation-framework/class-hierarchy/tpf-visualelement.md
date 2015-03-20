---
title: VisualElement
page_title: VisualElement
description: VisualElement
slug: tpf-class-hierarchy-visualelement
tags: visualelement
published: True
position: 6
---

# VisualElement



## 

__VisualElement__ adds visual properties common to all elements that will be painted, e.g. back color, fore color, font, default size, smoothing mode, opacity.

>

Not every element derived from VisualElement is painted to the screen. Only primitives are painted. Other elements (such as RadDropDownButtonElement) are subclasses of VisualElement so that they can be assigned color and font properties that will be inherited by elements further down in the control element tree.
