---
title: Integration
page_title: Integration | UI for WinForms Documentation
description: Integration
slug: winforms/ganttview-/integration
tags: integration
published: True
position: 9
---

# Integration

 
This example will demonstrate how RadGanttView integrates with RadScheduler, allowing you to show the appointments from RadScheduler in RadGanttView. Editing any data in one control is immediately reflected in the other. he integration can be achieved with any control/component out there. The only condition is that the control/component implements the IGanttViewDataProvider interface. Then you assign an instance of the type that implements the interface to the DataProvider property of RadGanttView and you are good to go.

## Integration with RadScheduler

In the case of RadScheduler we have implemented a component which implements the interface and allows for two way notifications between the controls. Here is how to use it: 

{{source=..\SamplesCS\GanttView\SchedulerIntegration\SchedulerIntegration.cs region=Integration}} 
{{source=..\SamplesVB\GanttView\SchedulerIntegration\SchedulerIntegration.vb region=Integration}} 

````C#
this.radGanttView1.DataProvider = new GanttViewIntegrationProvider(this.radScheduler1);

````
````VB.NET
Me.radGanttView1.DataProvider = New GanttViewIntegrationProvider(Me.radScheduler1)

````

{{endregion}} 
 

Two things you need to note. The first is that RadGanttView requires a unique id for each item it has. You can read more on how to provide such an id in the section on ["Adding new items"]({%slug winforms/ganttview-/working-with-data/adding-new-items%}). The other thing you need to be aware is the ids RadScheduler assigns to its appointments. They are of type EventId and need a Guid when constructed. Summing these two together gives the following code:   
         

{{source=..\SamplesCS\GanttView\SchedulerIntegration\SchedulerIntegration.cs region=TrickyPart}} 
{{source=..\SamplesVB\GanttView\SchedulerIntegration\SchedulerIntegration.vb region=TrickyPart}} 

````C#
private void radGanttView1_ItemChildIdNeeded(object sender, GanttViewItemChildIdNeededEventArgs e)
{
    e.ChildId = new EventId(Guid.NewGuid());
}

````
````VB.NET
Private Sub radGanttView1_ItemChildIdNeeded(sender As Object, e As Telerik.WinControls.UI.GanttViewItemChildIdNeededEventArgs) Handles radGanttView1.ItemChildIdNeeded
    e.ChildId = New EventId(Guid.NewGuid())
End Sub

````

{{endregion}} 


![ganttview-integration 001](images/ganttview-integration001.png)
