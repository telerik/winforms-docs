---
title: Structure 
page_title: Control Element Structure | UI for WinForms Documentation
description: The article describes the DataLayout elements structure.
slug: winforms/datalayout/control-element-structure
tags: control,element,structure,
published: True
position: 1
---

# Control Element Structure 

__RadDataLayout__ uses the [RadLayoutControl]({%slug winforms/layoutcontrol%}) to create and arrange its items. There is embedded `Validation Panel` that can be used to show some additional information according to the validation requirements. The figure below demonstrates the structure of __RadDataLayout__.

>caption Figure 1: RadDataLayout structure

![datalayout-structure 001](images/datalayout-structure001.png)

__RadDataLayout__ generates content item for each public property that can be edited. These items represent one `DataLayoutControlItem`. This item has displays text, contains the editor control and a small validation label.

>caption Figure 2: Single item structure

![datalayout-structure 002](images/datalayout-structure002.png)

The Validation label does not have any text by default. It is designed to be used in cases where users want to show some additional information. 

# See Also

 * [Localization]({%slug winforms/datalayout/localization%})
 * [Getting Started]({%slug winforms/datalayout/getting-started%})
 * [Properties, events and attributes]({%slug winforms/datalayout/properties,-events-and-attributes%})
 * [Change the editor to RadDropDownList]({%slug  winforms/dataentry/how-to/change-the-editor-to-a-bound-raddropdownlist%})
 * [Customizing Appearance ]({%slug winforms/raddatalayout/customizing-appearance%})