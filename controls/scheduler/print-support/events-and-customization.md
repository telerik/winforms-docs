---
title: Events and Customization
page_title: Events and Customization - RadScheduler
description: RadScheduler provides a set of events that allow you to customize the appearance of the printed elements.
slug: winforms/scheduler/print-support/events-and-customization
tags: events,and,customization
published: True
position: 2
previous_url: scheduler-print-support-events
---

# Events and Customization

__RadScheduler__ provides a set of events that allow you to customize the appearance of the printed elements:

__FormattingEvents__

* __PrintElementFormatting__: Fires when a print element is being formatted before it is printed.

* __CellPrintElementFormatting__: Fires when a cell print element is being formatted before it is printed.

* __AppointmentPrintElementFormatting__: Fires when an appointment print element is being formatted before it is printed.

__PaintEvents__

* __PrintElementPaint__: Fires when a print element is printed.

* __CellPrintElementPaint__: Fires when a cell print element is printed.

* __AppointmentPrintElementPaint__: Fires when an appointment print element is printed.

Here is an example. The comments are inline:

>caption Figure 1: Customized Print Elements
![WinForms RadScheduler Customized Print Elements](images/scheduler-print-support-events.png)

#### Handle Formatting and Paint Events

<snippet id='scheduler-schedulereventsandcustomization-customize-cs' />
<snippet id='scheduler-schedulereventsandcustomization-customize-vb' />



# See Also

* [RadPrintDocument]({%slug winforms/telerik-presentation-framework/printing-support/radprintdocument%})
* [PrintPreviewDialog]({%slug winforms/telerik-presentation-framework/printing-support/end-user-functionality/print-preview-dialog%})
* [Customize RadPrintDocument]({%slug winforms/telerik-presentation-framework/printing-support/how-to/customize-radprintdocument%})
* [Views]({%slug winforms/scheduler/views/overview-and-structure%})
