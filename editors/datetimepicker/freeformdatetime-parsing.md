---
title: Free Form Date Time parsing
page_title: Free Form Date Time parsing
description: Free Form Date Time parsing
slug: editors-datetimepicker-freeformdatetime-parsing
tags: free,form,date,time,parsing
published: True
position: 3
---

# Free Form Date Time parsing



From Q2 2014 we introduced new MaskType of RadMaskedEditBox that is designed to work with DateTime objects and it is not format
				restricted as the old one.  With the new MaskType RadMaskedEditBox tries to parse the input string to valid DateTime
				object by using a [
						formal gramar algorithm
					](
						http://blogs.telerik.com/aspnet-ajax/posts/07-04-20/radinput-2-0-and-date-parsing-where-compiler-theory-meets-user-needs.aspx
					). Read more about this parsing logic [here]({%slug editors-maskededitbox-parsing-dates%})
				The embedded text editor of RadDateTimePicker is RadMaskedEditBox. So if you want to take the advantages from new DateTime parsing
				logic the only thing that you should to do is to change the MaskType of embedded editor.
			

#### __[C#] Setting the value of RadDateTimePicker__

{{source=..\SamplesCS\Editors\DateTimePicker2.cs region=FreeFormDateTimeDateTimePicker}}
	
	            this.radDateTimePicker1.DateTimePickerElement.TextBoxElement.MaskType = MaskType.FreeFormDateTime;
	
	{{endregion}}



#### __[VB.NET] Setting the value of RadDateTimePicker__

{{source=..\SamplesVB\Editors\DateTimePicker2.vb region=FreeFormDateTimeDateTimePicker}}
	
	        Me.radDateTimePicker1.DateTimePickerElement.TextBoxElement.MaskType = MaskType.FreeFormDateTime
	
	        '#End Region
	
	        '#Region "provider"
	        Dim provider As MaskDateTimeProvider = TryCast(Me.radDateTimePicker1.DateTimePickerElement.TextBoxElement.Provider, MaskDateTimeProvider)
	        provider.AutoSelectNextPart = True
	        '#End Region
	
	    End Sub
	End Class



## 
