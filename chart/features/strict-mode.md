---
title: Strict Mode
page_title: Strict Mode | UI for WinForms Documentation
description: Strict Mode
slug: winforms/chart/features/strict-mode
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



<table>
<th>YValue</th><th>XValue</th>
<tr><td>3</td><td>0</td></tr>
<tr><td>3</td><td>1</td></tr>
<tr><td>4</td><td>3</td></tr>
<tr><td>3</td><td>3</td></tr>
<tr><td>5</td><td>4</td></tr>
</table>

__Series 2__

<table>
<th>YValue</th><th>XValue</th>
<tr><td>1</td><td>5</td></tr>
<tr><td>2</td><td>4</td></tr>
</table>

