---
title: GroupBox
page_title: GroupBox | UI for WinForms Documentation
description: GroupBox
slug: winforms/panels-and-labels/groupbox
tags: groupbox
published: True
position: 0
---

# GroupBox





__RadGroupBox__control is a group box control with advanced styling options. 
        The primarily usage of this control is to hold a single radio buttons group. The control does not support
        scrolling which is however supported by *RadPanel*. The control never gets focus being a container for other controls which can get focus. 

You need to include *Telerik.WinControls.UI* namespace in your application.

## Introduction To Styling![panels-and-labels-groupbox-overview 001](images/panels-and-labels-groupbox-overview001.png)

The most important RadGroupBox layout styling options include the following:

* *GroupBoxStyle - *there are two defined styles: *Standard* and *Office*.
            The styles are defined in *RadGroupBoxStyle *enumeration.

* *HeaderAlignment *- header alignment options are defined in HeaderAlignment enumeration: *Near*,
            *Center*, and *Far*.

* *HeaderPosition *- header position options are defined in *HeaderPosition* enumeration:
            *Top*, *Left*, *Bottom*, and *Right*.

* *HeaderMargin *- defines the header margin.

* *FooterVisibility - *defines the footer visibility. Its default value is *Collapsed. *

The most important Header**and Footer styling options include the following ones:

* *HeaderImage  *

* *FooterImage*

* *HeaderImageAlignment*

* *FooterImageAlignment*

* *HeaderText*

* *FooterText*

* *HeaderTextAlignment*

* *FooterTextAlignment*

* *HeaderTextImageRelation*

* *FooterTextImageRelation*

Please refer to *ImageAndTextLayoutPanel* documentation section about further details of those properties.

All these properties can be set in *Visual Style Builder. *Furthermore, the control can be customized on a very
        fine-grained level using the *Visual Style Builder* to set any other property in the control hierarchy.
        Please refer to [RadGroupBox TPF structure]({%slug winforms/panels-and-labels/groupbox/advanced/tpf-structure%}) section for more details.
