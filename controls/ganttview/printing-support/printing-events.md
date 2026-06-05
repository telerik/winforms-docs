---
title: Printing Events
page_title: Printing Events - RadGanttView
description: You can customize the print output through the PrintElementFormatting and PrintElementPaint events.
slug: winforms/ganttview-/printing-support/printing-events
tags: printing,events
published: True
position: 1
previous_url: ganttview-printing-support-printing-events
---

# Printing Events
 
You can customize the print output through the __PrintElementFormatting__ and __PrintElementPaint__ events. __PrintElementFormatting__ provides you with a print element which has style properties available so you can customize it as you see fit. The __PrintElementPaint__ gives you direct access to the graphical context and allows you to directly draw to the print output. 

## PrintElementFormatting

The following example demonstrates how you can use the __PrintContext__ property to determine what element is being printed and to change the styling accordingly. 

<snippet id='ganttview-printingevents-printformatting-cs' />
<snippet id='ganttview-printingevents-printformatting-vb' />

 

![WinForms RadGanttView Text Part](images/ganttview-printing-printing-events001.png)![WinForms RadGanttView Graphics Part](images/ganttview-printing-printing-events002.png)

## PrintElementPaint

This example demonstrates how you can paint the text of summary items next to the printed graphical representation.

<snippet id='ganttview-printingevents-printpaint-cs' />
<snippet id='ganttview-printingevents-printpaint-vb' />

 

![WinForms RadGanttView Customized Graphics Path While Printing](images/ganttview-printing-printing-events003.png)

 
