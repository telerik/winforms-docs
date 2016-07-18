---
title: Free Form Date Time parsing
page_title: Free Form Date Time parsing | UI for WinForms Documentation
description: Free Form Date Time parsing
slug: winforms/editors/datetimepicker/free-form-date-time-parsing
tags: free,form,date,time,parsing
published: True
position: 4
previous_url: editors-datetimepicker-freeformdatetime-parsing
---

# Free Form Date Time parsing
 
From R2 2014 we introduced new __MaskType__ for __RadMaskedEditBox__. It is designed to work with DateTime objects and it is not format restricted. With the new __MaskType__ the input string is parsed to valid DateTime object by using a [formal grammar algorithm](http://blogs.telerik.com/aspnet-ajax/posts/07-04-20/radinput-2-0-and-date-parsing-where-compiler-theory-meets-user-needs.aspx).

You can read more about this parsing logic [here]({%slug winforms/editors/maskededitbox/parsing-dates%}) The embedded text editor of __RadDateTimePicker__ is __RadMaskedEditBox__. So if you want to take the advantages from new DateTime parsing logic the only thing that you should to do is to change the __MaskType__ of embedded editor.

#### Setting the value of RadDateTimePicker 

{{source=..\SamplesCS\Editors\DateTimePicker2.cs region=FreeFormDateTimeDateTimePicker}} 
{{source=..\SamplesVB\Editors\DateTimePicker2.vb region=FreeFormDateTimeDateTimePicker}} 

````C#
this.radDateTimePicker1.DateTimePickerElement.TextBoxElement.MaskType = MaskType.FreeFormDateTime;

````
````VB.NET
Me.radDateTimePicker1.DateTimePickerElement.TextBoxElement.MaskType = MaskType.FreeFormDateTime

````

{{endregion}} 
