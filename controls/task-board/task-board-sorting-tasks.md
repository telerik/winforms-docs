---
title: Sorting Columns and Tasks
page_title: Sorting Columns and Tasks - Task Board
description: Sorting the task items and columns in the WinForms TaskBoard (Kanban) control.
slug: task-board-sorting-tasks
tags: task board, tasks, sort
published: True
position: 6  
---

## Sorting Functionality

As of R1 2023 SP1 **RadTaskBoard** supports sorting functionality for the columns and for the tasks defined in a column. 

>caution Note that the sorting functionality in RadTaskBoard is a one-time operation, and once performed, changes in the state of the column elements or task card elements are not monitored, as this would lead to inconsistent behavior and break other control's functionality such as drag and drop. This behavior is similar to Excel sorting. If the developers/users need to sort the tasks or columns they can just invoke the sort methods. 

### Sorting Columns

The **SortColumns** method sorts all columns in the Columns collection using the RadTaskBourdElement.**ColumnComparer** property. The default ColumnComparer sorts the columns by their title. If you need custom or more complex sorting you need to inherit from Telerik.WinControls.UI.TaskBoard.**ColumnComparer** and override the **Compare** method which will give you access to the ColumnElements instances.

By default, the columns are displayed in the order of adding the columns. Let's consider that the columns are added in this way: "In Development", "Done", "Ready for Test", "Deleted":

>caption Default Columns Order

![WinForms RadTaskBoard Default Tasks Order](images/task-board-sorting-tasks001.png)

If the **SortColumns** method is called, the column's title is considered and the columns are ordered alphabetically:

>caption Default Columns Sort Order

![WinForms RadTaskBoard Default Sort Order](images/task-board-sorting-tasks002.png)

However, after applying the custom comparer, "Done" column is always first:

{{source=..\SamplesCS\TaskBoard\TaskBoardGettingStarted.cs region=ApplyCustomColumnComparer}} 
{{source=..\SamplesVB\TaskBoard\TaskBoardGettingStarted.vb region=ApplyCustomColumnComparer}} 

````C#
this.radTaskBoard1.TaskBoardElement.ColumnComparer = new MyCustomComparer();
this.radTaskBoard1.SortColumns();

````
````VB.NET
Me.radTaskBoard1.TaskBoardElement.ColumnComparer = New MyCustomComparer()
Me.radTaskBoard1.SortColumns()

````

{{endregion}}  

Here is the specific implementation ensuring that the first column:

{{source=..\SamplesCS\TaskBoard\TaskBoardGettingStarted.cs region=SortingColumns}} 
{{source=..\SamplesVB\TaskBoard\TaskBoardGettingStarted.vb region=SortingColumns}} 

````C#
private class MyCustomComparer : ColumnComparer
{

    public override int Compare(RadTaskBoardColumnElement x, RadTaskBoardColumnElement y)
    {
        // The column with Done text is First.
        if (x.Title == "Done")
        {
            return -1;
        }
        else if (y.Title == "Done")
        {
            return 1;
        }
        return base.Compare(x, y);
    }
}

````
````VB.NET
Private Class MyCustomComparer
    Inherits ColumnComparer

    Public Overrides Function Compare(ByVal x As RadTaskBoardColumnElement, ByVal y As RadTaskBoardColumnElement) As Integer
        If x.Title = "Done" Then
            Return -1
        ElseIf y.Title = "Done" Then
            Return 1
        End If

        Return MyBase.Compare(x, y)
    End Function
End Class


````

{{endregion}}  

>caption Custom Columns Sort Order

![WinForms RadTaskBoard Default Sort Order](images/task-board-sorting-tasks003.png)

### Sorting Tasks in All Columns

The **SortTasks** method sorts the tasks of all columns. The default Comparer used by all columns is RadTaskBoardElement.**TaskCardComparer** and it will sort the tasks by their TitleText. If you need custom sort for all columns you can create an ancestor of the TaskCardComparer class and set it to the TaskBoardElement.TaskCardComparer. To create custom tasks sorting per column you can use the RadTaskBoardColumnElement.TaskCardComparer property which is defined per column. If the RadTaskBoardColumnElement.TaskCardComparer is not explicitly set it will refer to the TaskBoardElement.TaskCardComparer.


{{source=..\SamplesCS\TaskBoard\TaskBoardGettingStarted.cs region=ApplyCustomTaskComparer}} 
{{source=..\SamplesVB\TaskBoard\TaskBoardGettingStarted.vb region=ApplyCustomTaskComparer}} 

````C#
this.radTaskBoard1.TaskBoardElement.TaskCardComparer = new CustomTaskCardComparer();
this.radTaskBoard1.SortTasks();

````
````VB.NET
 Me.radTaskBoard1.TaskBoardElement.TaskCardComparer = New CustomTaskCardComparer()
 Me.radTaskBoard1.SortTasks()

````

{{endregion}}  

Here is the specific implementation ensuring the reversed alphabetical order for the tasks:

{{source=..\SamplesCS\TaskBoard\TaskBoardGettingStarted.cs region=SortingTasks}} 
{{source=..\SamplesVB\TaskBoard\TaskBoardGettingStarted.vb region=SortingTasks}} 

````C#
public class CustomTaskCardComparer : TaskCardComparer
{
    public override int Compare(RadTaskCardElement x, RadTaskCardElement y)
    {
        int defaultResult = base.Compare(x, y);
        return defaultResult * (-1);
    }
}

````
````VB.NET
Public Class CustomTaskCardComparer
    Inherits TaskCardComparer

    Public Overrides Function Compare(ByVal x As RadTaskCardElement, ByVal y As RadTaskCardElement) As Integer
        Dim defaultResult As Integer = MyBase.Compare(x, y)
        Return defaultResult * (-1)
    End Function
End Class

````

{{endregion}}  

>caption Sorted Tasks in Reversed Alphabetical Order

![WinForms RadTaskBoard Sorted Tasks](images/task-board-sorting-tasks004.png)


### Sorting Tasks in a Single Column

The **SortTasks(RadTaskBoardColumnElement column)** method sorts the tasks of a single column. The description of the other tasks sorting method is valid here too.

# See Also

* [Design Time]({%slug task-board-design-time%})
* [Structure]({%slug task-board-structure%})
* [Task Card Edit Dialog]({%slug task-board-edit-dialog%})
 
        
