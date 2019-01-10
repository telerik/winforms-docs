---
title: Properties
page_title: Properties | RadPanel
description: This article describes the more important properties of RadPanel.
slug: winforms/panels-and-labels/panel/properties
tags: radpanel, properties, events
published: True
position: 3
---

# Properties

|Property|Description|
|------|------|
|__PanelElement__|Gets the instance of RadPanelElement wrapped by this control. RadPanelElement is the main element in the hierarchy tree and encapsulates the actual functionality of RadPanel.|
|__AutoScrollToCurrentControl__|Gets or set a value indicating whether panel will scroll automatically to show the currently focused control inside it.|
|__TextAlignment__|Gets or sets the alignment of the text within Panel's bounds.|
|__DefaultSize__|Gets the default size of the control.|
|__CausesValidation__|Gets or sets a value indicating whether the control causes validation to be performed on any controls that require validation when it receives focus.|

>note Since **R1 2019** the RadPanel.**Text** property is empty. If you already have a serialized text, it will be stored in the designer file and shown when running the application. However, for any new **RadPanel** controls added to the form, no text will be displayed.

# See Also

* [Properties](https://docs.telerik.com/devtools/winforms/api/telerik.wincontrols.ui.radpanel.html#properties)
