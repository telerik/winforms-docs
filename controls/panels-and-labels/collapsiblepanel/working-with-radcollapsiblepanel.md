---
title: Working with RadCollapsiblePanel
page_title: Working with RadCollapsiblePanel - WinForms CollapsiblePanel Control
description: This article demonstrates how RadCollapsiblePanel can be manipulated via its API.
slug: winforms/panels-and-labels/collapsiblepanel/methods-and-properties
tags: methods,and,properties
published: True
position: 5
previous_url: panels-and-labels-collapsible-panel-methods-and-properties
---

# Working with RadCollapsiblePanel

This article demonstrates how **RadCollapsiblePanel** can be manipulated via its API. 

## Important Properties

__ExpandDirection__ - Indicates the direction of the expand animation. The collapse animation is in the opposite direction.

#### RadDirection.Down

<snippet id='panels-and-labels-collapsiblepanelgettingstarted-expanddirections1-cs' />
<snippet id='panels-and-labels-collapsiblepanelgettingstarted-expanddirections1-vb' />



![WinForms RadCollapsiblePanel RadDirection Down](images/panels-and-labels-radcollapsiblepanel-methods-and-properties001.png)

#### RadDirection.Left

<snippet id='panels-and-labels-collapsiblepanelgettingstarted-expanddirections2-cs' />
<snippet id='panels-and-labels-collapsiblepanelgettingstarted-expanddirections2-vb' />



![WinForms RadCollapsiblePanel RadDirection Left](images/panels-and-labels-radcollapsiblepanel-methods-and-properties002.png)

#### RadDirection.Right

<snippet id='panels-and-labels-collapsiblepanelgettingstarted-expanddirections3-cs' />
<snippet id='panels-and-labels-collapsiblepanelgettingstarted-expanddirections3-vb' />



![WinForms RadCollapsiblePanel RadDirection Right](images/panels-and-labels-radcollapsiblepanel-methods-and-properties003.png)

#### RadDirection.Up

<snippet id='panels-and-labels-collapsiblepanelgettingstarted-expanddirections4-cs' />
<snippet id='panels-and-labels-collapsiblepanelgettingstarted-expanddirections4-vb' />



![WinForms RadCollapsiblePanel RadDirection Up](images/panels-and-labels-radcollapsiblepanel-methods-and-properties004.png)

__EnableAnimation__ - Indicates whether to use animation to expand or collapse the control.

<snippet id='panels-and-labels-collapsiblepanelgettingstarted-enableanimation-cs' />
<snippet id='panels-and-labels-collapsiblepanelgettingstarted-enableanimation-vb' />



__ContentSizingMode__ -  Indicates whether the controls container will resize to fit the width or the height of its content.

<snippet id='panels-and-labels-collapsiblepanelgettingstarted-contentsizingmode1-cs' />
<snippet id='panels-and-labels-collapsiblepanelgettingstarted-contentsizingmode1-vb' />



![WinForms RadCollapsiblePanel FitToContentWidth](images/panels-and-labels-radcollapsiblepanel-methods-and-properties005.png)

<snippet id='panels-and-labels-collapsiblepanelgettingstarted-contentsizingmode2-cs' />
<snippet id='panels-and-labels-collapsiblepanelgettingstarted-contentsizingmode2-vb' />



![WinForms RadCollapsiblePanel FitToContentHeight](images/panels-and-labels-radcollapsiblepanel-methods-and-properties006.png)

<snippet id='panels-and-labels-collapsiblepanelgettingstarted-contentsizingmode3-cs' />
<snippet id='panels-and-labels-collapsiblepanelgettingstarted-contentsizingmode3-vb' />



![WinForms RadCollapsiblePanel FitToContentWidth or FitToContentHeight](images/panels-and-labels-radcollapsiblepanel-methods-and-properties007.png)

**ShowHeaderLine** - If *true*, a line will be displayed in the header which will fill the available space, otherwise it will not be displayed.

![WinForms RadCollapsiblePanel ShowHeaderLine](images/panels-and-labels-radcollapsiblepanel-methods-and-properties008.png)

__HorizontalHeaderAlignment__ -Determines how the elements in the header to be aligned when it is in a horizontal position:

* Center

* Right

* Left

* Stretch

__VerticalHeaderAlignment__ - Determines how the elements in the header to be aligned when it is in a vertical position:

* Center

* Bottom

* Top

* Stretch

__AnimationType__ - Determines the type of the animation when expanding or collapsing the control:

* Reveal

![WinForms RadCollapsiblePanel Reveal](images/panels-and-labels-collapsible-panel-methods-and-properties010.gif)

* Slide

![WinForms RadCollapsiblePanel Slide](images/panels-and-labels-collapsible-panel-methods-and-properties011.gif)

# See Also

* [Properties, Methods and Events]({%slug winforms/panels-and-labels/collapsiblepanel/properties-methods-events%})
