---
title: Structure
page_title: Structure | RadGroupBox
description: This article describes the inner structure and organization of the elements which build the RadGroupBox control.
slug: winforms/panels-and-labels/groupbox/structure
tags: radgroupbox,structure
published: True
position: 1
previous_url: panels-and-labels-groupbox-advanced-tpf-structure
---

# Structure

This article describes the inner structure and organization of the elements which build the __RadGroupBox__ control.

Like all Telerik *WinForms* controls **RadGroupBox** is build upon [Telerik Presentation Framework (TPF)]({%slug winforms/telerik-presentation-framework/overview%}). **TPF** consists of various elements (such as primitives and layouts) that are the building blocks of the controls.

>caption Figure 1: RadGroupBox`s Element Hierarchy
>
![radgroupbox structure 001](images/radgroupbox-structure001.png)

The most important nodes are **GroupBoxContent**, **GroupBoxHeader**, **GroupBoxFooter**, and **RadGroupBoxElement**. The last one also plays the role of the layout node for the control which arranges its child nodes - content, header, and footer (all three extending the **GroupBoxVisualElement** class). The footer node if not collapsed (the default value is *collapsed*) is always arranged as a bar at the bottom of the control, while the content and the header are arranged above the area occupied by the footer. All *high level* arrangement properties such as **GroupBoxStyle**, **HeaderPosition**, **HeaderAlignment**, etc. are defined as dependency properties.

>caption Figure 2: RadGroupBox`s Structure
>
![radgroupbox structure 002](images/radgroupbox-structure002.png)

1. __RadGroupBoxElement__: Represents the main element of the control responsible for arranging the layout.
1. __GroupBoxContent__: Represents the content element.
1. __GroupBoxHeader__: Represents the header.
1. __GroupBoxFooter__: Represents the footer.
        
# See Also

* [Design Time]({%slug winforms/panels-and-labels/groupbox/design-time%})
* [Header Styling Options]({%slug winforms/panels-and-labels/groupbox/styling-options%})