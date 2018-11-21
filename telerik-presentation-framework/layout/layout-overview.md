---
title: Layout Overview
page_title: Layout Overview | Telerik Presentation Framework
description: This article explains how the layout system in Telerik Presentation Framework works. 
slug: winforms/telerik-presentation-framework/layout/layout-overview
tags: layout,overview
published: True
position: 0
previous_url: tpf-layout-overview
---

# Layout Overview

The layout system places elements and controls on the screen in the most optimal way for the user to see them. There are two layout systems that RadControls work with:

* Outer layout system: This is the Microsoft layout system for Winforms. This layout system arranges controls on the form and top-level windows on the desktop.

* Inner layout system: The TPF layout system arranges elements within RadControls.

These two layout systems interact so that outer
layouts affect inner and vice-versa. The interaction between inner and outer
layout systems occurs between:

*  RadControl and RootElement

*  HostItem and HostedControl.

The topics in this help file focus on the inner
layout system.

## Layout Tasks

The layout system has two
tasks:

1. Set the bounds (location and size) of each element and invalidate affected parts of the control so that only relevant elements will be painted.

1. Allow customization via overrides. The logic of the overrides  calculate size and position of elements in the hierarchy. Note: The layout system must ensure that the calculation does not need to know about transformations in the elements (rotation, scaling, alignment, stretching, etc).

    

# See Also
* [Clipping]({%slug winforms/telerik-presentation-framework/layout/clipping%})

* [Custom Layouts]({%slug winforms/telerik-presentation-framework/layout/custom-layouts%})

* [Element Offset Calculations]({%slug winforms/telerik-presentation-framework/layout/element-offset-calculations%})

* [Layout Activation]({%slug winforms/telerik-presentation-framework/layout/layout-activation%})

* [Layout Logic]({%slug winforms/telerik-presentation-framework/layout/layout-logic%})

* [Layout Structure]({%slug winforms/telerik-presentation-framework/layout/layout-structure%})

* [RadControl Testing Considerations]({%slug winforms/telerik-presentation-framework/layout/radcontrol-testing-considerations%})

* [Sample Arrange Stage Scenarios]({%slug winforms/telerik-presentation-framework/layout/sample-arrange-stage-scenarios%})

