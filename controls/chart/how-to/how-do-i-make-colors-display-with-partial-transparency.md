---
title: How do I make colors display with partial transparency?
page_title: How do I make colors display with partial transparency? - UI for WinForms Documentation
description: How do I make colors display with partial transparency?
slug: winforms/chart/how-to/how-do-i-make-colors-display-with-partial-transparency?
tags: how,do,i,make,colors,display,with,partial,transparency?
published: True
position: 3
previous_url: chart-how-to-make-colors-display-with-partial-transparency
---

# How do I make colors display with partial transparency?



## 

"If I have several series that overlap and I want partial transparency so I can see all series at one time (without it being a stacked chart), how do I set a color to be transparent?" 

When defining the color, add an "alpha" channel, i.e. a percentage of transparency to the beginning of the array that defines the color.  For example: 

255, 0, 0 = Red

80, 255, 0, 0 = Red that is 80% transparent.



In the example below both series have a main color with a transparency of 90%.


>caption 

![WinForms RadChart ](images/chart-how-to-make-colors-display-with-partial-transparency001.png)
