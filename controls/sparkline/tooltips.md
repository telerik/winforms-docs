---
title: Tooltips
page_title: Tooltips RadSparkline
description: The Sparkline control is an information graphic, which is characterized by small size, excellent performance
slug: radsparkline-tooltips
tags: sparkline, tooltips
published: True
position: 8
---

# Tooltips

The tooltips are supported out of the box and you just need to enable them.

#### Enable tooltips

<snippet id='sparkline-sparklinecode-enabletooltips-cs' />
<snippet id='sparkline-sparklinecode-enabletooltips-vb' />



The default tooltips will displayed when hovering over a particular data point. 

![WinForms RadSparkline Enable Tooltips](images/sparkline-tooltips001.png)


## Customizing Tooltip Text

You can use the __DataPointTooltipTextNeeded__ event to set custom tooltip text. The following snippet shows how you can access the event.

#### Subscribing to DataPointTooltipTextNeeded

<snippet id='sparkline-sparklinecode-tooltipcontroller-cs' />
<snippet id='sparkline-sparklinecode-tooltipcontroller-vb' />



The following example shows how you can set the text in the event handler.

#### Customizing the Tooltip Text

<snippet id='sparkline-sparklinecode-tooltiptextevent-cs' />
<snippet id='sparkline-sparklinecode-tooltiptextevent-vb' />



