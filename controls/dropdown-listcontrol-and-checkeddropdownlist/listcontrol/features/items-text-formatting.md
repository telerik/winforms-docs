---
title: Items Text Formatting
page_title: Items Text Formatting - RadListControl
description: RadListControl is the an alternative to the Microsoft ListBox control.
slug: winforms/dropdown-listcontrol-and-checkeddropdownlist/listcontrol/features/items-text-formatting
tags: listcontrol, sizing
published: True
position: 5  
---

# Item Text Formatting

The text of each item can be formatted by using the __FormatInfo__, __FormatString__ and __FormattingEnabled__ properties. The __FormattingEnabled__ property decides whether the __FormatInfo__ and __FormatString__ will be used to format each item’s text. When the __FormattingEnabled__ property is set to *false*, setting the __FormatInfo__ and __FormatString__ properties will have no effect until the __FormattingEnabled__ is set to *true*. __FormatInfo__ is a class that implements the __IFormatProvider__ interface. If __FormatInfo__ is *null* the current culture of the executing thread is used as the __IFormatProvider__. The formatting functionality will work similarly to the standard Microsoft ListBox formatting. 
