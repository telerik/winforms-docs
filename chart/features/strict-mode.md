---
title: Strict Mode
page_title: Strict Mode | UI for WinForms Documentation
description: Strict Mode
slug: winforms/chart-(obsolete)/features/strict-mode
tags: strict,mode
published: True
position: 5
---

# Strict Mode



## 
>caption 

![chart-features-strict-mode 001](images/chart-features-strict-mode001.png)

The RadChart bar series now features "strict mode".  This is not a property or setting, but a behavior of bar chart series where X values are respected and bars are positioned according to their XValues. If there are no series items with XValues then RadChart resumes standard sequential ordering of each item. The screen shot above was produced using the following X and Y values:

__Series 1__





| __YValue__ | __XValue__ |
|3|0|
|3|1|
|4|3|
|3|3|
|5|4|

__Series 2__





| __YValue__ | __XValue__ |
|1|5|
|2|4|
