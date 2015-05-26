---
title: Hiding weekends
page_title: Hiding weekends | UI for WinForms Documentation
description: Hiding weekends
slug: winforms/calendar/customizing-appearance/how-to/hiding-weekends
tags: hiding,weekends
published: True
position: 0
---

# Hiding weekends



## 

To customize the day elements appearance of __RadCalendar__use __ElementRender__event as shown in the code snippet below:#_[C#]_

	



{{source=..\SamplesCS\Calendar\Calendar1.cs region=elementRender}} 
{{source=..\SamplesVB\Calendar\Calendar1.vb region=elementRender}} 

````C#
        void Form1_Load(object sender, EventArgs e)
        {
            this.radCalendar1.ElementRender += new RenderElementEventHandler(radCalendar1_ElementRender);
            this.radCalendar1.InvalidateCalendar();
        }

        private void radCalendar1_ElementRender(object sender, Telerik.WinControls.UI.RenderElementEventArgs e)
        {
            if (e.Day.IsWeekend)
            {
                e.Element.Enabled = false;
            }
        }
````
````VB.NET
    Private Sub Form1_Load(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles MyBase.Load
        AddHandler RadCalendar1.ElementRender, AddressOf radCalendar1_ElementRender
        Me.RadCalendar1.InvalidateCalendar()
    End Sub

    Private Sub radCalendar1_ElementRender(ByVal sender As Object, ByVal e As Telerik.WinControls.UI.RenderElementEventArgs)
        If e.Day.IsWeekend Then
            e.Element.Enabled = False
        End If
    End Sub
    '
````

{{endregion}} 






Note: You should invalidate the calendar as shown in the __Load__event handler in the code above. 
