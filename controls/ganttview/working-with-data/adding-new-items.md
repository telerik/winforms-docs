---
title: Adding new items
page_title: Adding new items - RadGanttView
description: Handle the ItemChildIdNeeded event to provide the id for the new items.
slug: winforms/ganttview-/working-with-data/adding-new-items
tags: adding,new,items
published: True
position: 3
previous_url: ganttview-working-with-data-adding-new-items
---

# Adding new items

__RadGanttView__ uses its data source to create a hierarchical data structure. To be able to do that the gantt view must be able to identify each item by a unique id. When new items are added in bound mode you are responsible for providing ids for the items which will be stored in the data source. This is needed so the gantt view can maintain the hierarchical structure of the items without any distortions. If you fail to provide an id you will get an exception.

Here is an example of how to provide ids using the __ItemChildIdNeeded__ event. The event is fired every time a new item is created and is about to be added to the data source.
        
{{source=..\SamplesCS\GanttView\WorkingWithData\AddingNewItems.cs region=AddingNewItems}} 
{{source=..\SamplesVB\GanttView\WorkingWithData\AddingNewItems.vb region=AddingNewItems}} 

````C#
int integerIdCounter = 100;
private void radGanttView1_ItemChildIdNeeded(object sender, GanttViewItemChildIdNeededEventArgs e)
{
    e.ChildId = this.integerIdCounter++;
}

````
````VB.NET
Dim integerIdCounter As Integer = 100
Private Sub radGanttView1_ItemChildIdNeeded(sender As Object, e As GanttViewItemChildIdNeededEventArgs)
    Me.integerIdCounter += 1
    e.ChildId = Me.integerIdCounter
End Sub

````

{{endregion}} 

# See Also  

* [Binding to Database]({%slug winforms/ganttview-/working-with-data/binding-to-database%})
* [Data Binding Basics]({%slug winforms/ganttview-/working-with-data/data-binding-basics%})
* [Importing XML from MS Project]({%slug winforms/ganttview-/working-with-data/importing-xml-from-ms-project%})
* [Link Type Converter]({%slug winforms/ganttview-/working-with-data/link-type-converter%})
* [Populating with Data Programmatically]({%slug winforms/ganttview-/working-with-data/populating-with-data-programmatically%})


