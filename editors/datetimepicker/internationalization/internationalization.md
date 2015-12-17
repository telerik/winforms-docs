---
title: Internationalization
page_title: Internationalization | UI for WinForms Documentation
description: Internationalization
slug: winforms/editors/datetimepicker/internationalization/internationalization
tags: internationalization
published: True
position: 0
---

# Internationalization
 
## 

RadCalendar provides built in internationalization support to build world-ready applications including: 

\* The __Culture__ property can be set using the drop down list in the Properties Window or set in code. The screenshot below shows the __Culture__ property set to "German(Germany)". 

{{source=..\SamplesCS\Editors\DateTimePicker1.cs region=culture}} 
{{source=..\SamplesVB\Editors\DateTimePicker1.vb region=culture}} 

````C#
this.radDateTimePicker1.Culture = new System.Globalization.CultureInfo("de-DE");

````
````VB.NET
Me.RadDateTimePicker1.Culture = New System.Globalization.CultureInfo("de-DE")

````

{{endregion}} 


![editors-datetimepicker-internationalization 001](images/editors-datetimepicker-internationalization001.png)

\* Right-to-Left support:          
            

* Right-to-Left = No (default value) 

{{source=..\SamplesCS\Editors\DateTimePicker1.cs region=rightNo}} 
{{source=..\SamplesVB\Editors\DateTimePicker1.vb region=rightNo}} 

````C#
this.radDateTimePicker1.RightToLeft = RightToLeft.No;

````
````VB.NET
Me.RadDateTimePicker1.RightToLeft = RightToLeft.No

````

{{endregion}} 


![editors-datetimepicker-internationalization 002](images/editors-datetimepicker-internationalization002.png)

*  Right-to-Left = Yes 

{{source=..\SamplesCS\Editors\DateTimePicker1.cs region=rightYes}} 
{{source=..\SamplesVB\Editors\DateTimePicker1.vb region=rightYes}} 

````C#
this.radDateTimePicker1.RightToLeft = RightToLeft.Yes;

````
````VB.NET
Me.RadDateTimePicker1.RightToLeft = RightToLeft.Yes

````

{{endregion}} 


![editors-datetimepicker-internationalization 003](images/editors-datetimepicker-internationalization003.png)

\* [Date Format Pattern]({%slug winforms/editors/datetimepicker/internationalization/date-formats%}): The __Format__ property has valid values of __Short__, __Long__, __Time__ and __Custom__. The __Custom__enables the __CustomFormat__ property.  

{{source=..\SamplesCS\Editors\DateTimePicker1.cs region=customFormat}} 
{{source=..\SamplesVB\Editors\DateTimePicker1.vb region=customFormat}} 

````C#
this.radDateTimePicker1.Format = DateTimePickerFormat.Custom;
this.radDateTimePicker1.CustomFormat = "MMM - dd - yyyy";

````
````VB.NET
Me.RadDateTimePicker1.Format = DateTimePickerFormat.Custom
Me.RadDateTimePicker1.CustomFormat = "MMM - dd - yyyy"

````

{{endregion}} 


![editors-datetimepicker-internationalization 004](images/editors-datetimepicker-internationalization004.png)

See the article [Introduction to International Applications Based on .NET Framework](http://msdn2.microsoft.com/en-us/library/t18274tk(vs.80).aspx) for an overview of internationalization in general. 
