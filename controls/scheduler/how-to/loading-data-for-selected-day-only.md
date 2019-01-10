---
title: Loading Data for Selected Day Only
page_title: Loading Data for Selected Day Only | RadScheduler
description: The article provides an example how data can be loaded for a selected data only
slug: winforms/scheduler/how-to/loading-data-for-selected-day-only
tags: loading,data,for,selected,day,only
published: True
position: 0
previous_url: scheduler-how-to-loading-data-for-selected-day-only
---

# Loading Data for Selected Day Only

The article provides an example how data for the selected day when loading RadScheduler up from code, i.e. load the data when the user is switching days on the scheduler.
1. Listen for a change in the __StartDate__ property of the ActiveView

1. Subscribe for the __PropertyChanged__ event of the ActiveView

1. Check in it whether the __StartDate__ property has changed. If the __PropertyName__ property of the argument is the name of the __StartDate__ property, load the data:

{{source=..\SamplesCS\Scheduler\HowTo\LoadingData.cs region=propertyChanged}} 
{{source=..\SamplesVB\Scheduler\HowTo\LoadingData.vb region=propertyChanged}} 

````C#
public LoadingData()
{
    InitializeComponent();
    this.radScheduler1.ActiveView.PropertyChanged += new PropertyChangedEventHandler(ActiveView_PropertyChanged);
}
void ActiveView_PropertyChanged(object sender, PropertyChangedEventArgs e)
{
    if (e.PropertyName == "StartDate")
    {
        //load the data here
    }
}

````
````VB.NET
Public Sub New()
    InitializeComponent()
    AddHandler Me.RadScheduler1.ActiveView.PropertyChanged, AddressOf ActiveView_PropertyChanged
End Sub
Sub ActiveView_PropertyChanged(ByVal sender As Object, ByVal e As PropertyChangedEventArgs)
    'load the data here
    If e.PropertyName = "StartDate" Then
    End If
End Sub

````

{{endregion}}

# See Also

* [Views]({%slug winforms/scheduler/views/overview-and-structure%})
* [Data Binding]({%slug winforms/scheduler/data-binding/introduction%})
* [Working with Appointments]({%slug winforms/scheduler/appointments-and-dialogs/working-with-appointments%})