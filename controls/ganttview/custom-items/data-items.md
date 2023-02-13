---
title: Data Items
page_title: Data Items - WinForms GanttView Control
description: WinForms GanttView allows you to replace the standard data items with custom ones.
slug: winforms/ganttview/custom-items/data-items
tags: creating,custom,data, items
published: True
position: 2
---

# Custom Data Items

The data items displayed in **RadGanttView** have a predefined set of properties allowing each of the items to have defined **Start**, **End**, and **Title** values. In certain cases, one may need to display an additional column in the Gantt control and map this column to a custom field defined in the data item class. This can be easily achieved by extending the **GanttViewDataItem** class with additional properties.

>note The new properties added to an inherited **GanttViewDataItem** class must have property setters.  

The example in this article will handle a scenario of a *Duration* column displaying how many days each of the tasks takes.

>caption Figure 1: Custom Data Item 

![WinForms RadGanttView Custom Data Item](images/ganttview-custom-items-data-items001.gif)

#### Setup the Control and Add Data

{{source=..\SamplesCS\GanttView\CustomItems\GanttDataItemForm.cs region=SetupGantt}} 
{{source=..\SamplesVB\GanttView\CustomItems\GanttDataItemForm.vb region=SetupGantt}}
````C#
public GanttDataItemForm()
{
    InitializeComponent();
    this.radGanttView1.GanttViewElement.GraphicalViewElement.TimelineStart = new DateTime(2010, 10, 9);
    this.radGanttView1.GanttViewElement.GraphicalViewElement.TimelineEnd = new DateTime(2010, 10, 19);
    //setup data items
    MyGanttViewDataItem item1 = new MyGanttViewDataItem();
    item1.Start = new DateTime(2010, 10, 10);
    item1.End = new DateTime(2010, 10, 15);
    item1.Progress = 30m;
    item1.Title = "Summary task.1. title";
    MyGanttViewDataItem subitem11 = new MyGanttViewDataItem();
    subitem11.Start = new DateTime(2010, 10, 10);
    subitem11.End = new DateTime(2010, 10, 12);
    subitem11.Progress = 10m;
    subitem11.Title = "Sub-task.1.1 title";
    MyGanttViewDataItem subitem12 = new MyGanttViewDataItem();
    subitem12.Start = new DateTime(2010, 10, 12);
    subitem12.End = new DateTime(2010, 10, 15);
    subitem12.Progress = 20m;
    subitem12.Title = "Sub-task.1.2 title";
    //add subitems
    item1.Items.Add(subitem11);
    item1.Items.Add(subitem12);
    this.radGanttView1.Items.Add(item1);
    MyGanttViewDataItem item2 = new MyGanttViewDataItem();
    item2.Start = new DateTime(2010, 10, 12);
    item2.End = new DateTime(2010, 10, 18);
    item2.Progress = 40m;
    item2.Title = "Summary task.2. title";
    MyGanttViewDataItem subitem21 = new MyGanttViewDataItem();
    subitem21.Start = new DateTime(2010, 10, 12);
    subitem21.End = new DateTime(2010, 10, 13);
    subitem21.Progress = 10m;
    subitem21.Title = "Sub-task.2.1 title";
    MyGanttViewDataItem subitem22 = new MyGanttViewDataItem();
    subitem22.Start = new DateTime(2010, 10, 13);
    subitem22.End = new DateTime(2010, 10, 18);
    subitem22.Progress = 30m;
    subitem22.Title = "Sub-task.2.2 title";
    MyGanttViewDataItem subitem23 = new MyGanttViewDataItem();
    subitem23.Start = new DateTime(2010, 10, 18);
    subitem23.End = new DateTime(2010, 10, 18);
    subitem23.Title = "Sub-task.2.3 title";
    //add subitems
    item2.Items.Add(subitem21);
    item2.Items.Add(subitem22);
    item2.Items.Add(subitem23);
    this.radGanttView1.Items.Add(item2);
    //add links between items
    GanttViewLinkDataItem link1 = new GanttViewLinkDataItem();
    link1.StartItem = subitem11;
    link1.EndItem = subitem12;
    link1.LinkType = TasksLinkType.FinishToStart;
    this.radGanttView1.Links.Add(link1);
    GanttViewLinkDataItem link2 = new GanttViewLinkDataItem();
    link2.StartItem = subitem21;
    link2.EndItem = subitem22;
    link2.LinkType = TasksLinkType.StartToStart;
    this.radGanttView1.Links.Add(link2);
    GanttViewLinkDataItem link3 = new GanttViewLinkDataItem();
    link3.StartItem = subitem22;
    link3.EndItem = subitem23;
    link3.LinkType = TasksLinkType.FinishToStart;
    this.radGanttView1.Links.Add(link3);
    GanttViewTextViewColumn titleColumn = new GanttViewTextViewColumn("Title");
    GanttViewTextViewColumn startColumn = new GanttViewTextViewColumn("Start");
    GanttViewTextViewColumn endColumn = new GanttViewTextViewColumn("End");
    GanttViewTextViewColumn durationColumn = new GanttViewTextViewColumn("Duration");
    this.radGanttView1.GanttViewElement.Columns.Add(titleColumn);
    this.radGanttView1.GanttViewElement.Columns.Add(startColumn);
    this.radGanttView1.GanttViewElement.Columns.Add(endColumn);
    this.radGanttView1.GanttViewElement.Columns.Add(durationColumn);
    this.radGanttView1.GanttViewElement.EditorInitialized += GanttViewElement_EditorInitialized;
}

````
````VB.NET
Public Sub New()
    InitializeComponent()
    Me.radGanttView1.GanttViewElement.GraphicalViewElement.TimelineStart = New DateTime(2010, 10, 9)
    Me.radGanttView1.GanttViewElement.GraphicalViewElement.TimelineEnd = New DateTime(2010, 10, 19)
    Dim item1 As MyGanttViewDataItem = New MyGanttViewDataItem()
    item1.Start = New DateTime(2010, 10, 10)
    item1.[End] = New DateTime(2010, 10, 15)
    item1.Progress = 30D
    item1.Title = "Summary task.1. title"
    Dim subitem11 As MyGanttViewDataItem = New MyGanttViewDataItem()
    subitem11.Start = New DateTime(2010, 10, 10)
    subitem11.[End] = New DateTime(2010, 10, 12)
    subitem11.Progress = 10D
    subitem11.Title = "Sub-task.1.1 title"
    Dim subitem12 As MyGanttViewDataItem = New MyGanttViewDataItem()
    subitem12.Start = New DateTime(2010, 10, 12)
    subitem12.[End] = New DateTime(2010, 10, 15)
    subitem12.Progress = 20D
    subitem12.Title = "Sub-task.1.2 title"
    item1.Items.Add(subitem11)
    item1.Items.Add(subitem12)
    Me.radGanttView1.Items.Add(item1)
    Dim item2 As MyGanttViewDataItem = New MyGanttViewDataItem()
    item2.Start = New DateTime(2010, 10, 12)
    item2.[End] = New DateTime(2010, 10, 18)
    item2.Progress = 40D
    item2.Title = "Summary task.2. title"
    Dim subitem21 As MyGanttViewDataItem = New MyGanttViewDataItem()
    subitem21.Start = New DateTime(2010, 10, 12)
    subitem21.[End] = New DateTime(2010, 10, 13)
    subitem21.Progress = 10D
    subitem21.Title = "Sub-task.2.1 title"
    Dim subitem22 As MyGanttViewDataItem = New MyGanttViewDataItem()
    subitem22.Start = New DateTime(2010, 10, 13)
    subitem22.[End] = New DateTime(2010, 10, 18)
    subitem22.Progress = 30D
    subitem22.Title = "Sub-task.2.2 title"
    Dim subitem23 As MyGanttViewDataItem = New MyGanttViewDataItem()
    subitem23.Start = New DateTime(2010, 10, 18)
    subitem23.[End] = New DateTime(2010, 10, 18)
    subitem23.Title = "Sub-task.2.3 title"
    item2.Items.Add(subitem21)
    item2.Items.Add(subitem22)
    item2.Items.Add(subitem23)
    Me.radGanttView1.Items.Add(item2)
    Dim link1 As GanttViewLinkDataItem = New GanttViewLinkDataItem()
    link1.StartItem = subitem11
    link1.EndItem = subitem12
    link1.LinkType = TasksLinkType.FinishToStart
    Me.radGanttView1.Links.Add(link1)
    Dim link2 As GanttViewLinkDataItem = New GanttViewLinkDataItem()
    link2.StartItem = subitem21
    link2.EndItem = subitem22
    link2.LinkType = TasksLinkType.StartToStart
    Me.radGanttView1.Links.Add(link2)
    Dim link3 As GanttViewLinkDataItem = New GanttViewLinkDataItem()
    link3.StartItem = subitem22
    link3.EndItem = subitem23
    link3.LinkType = TasksLinkType.FinishToStart
    Me.radGanttView1.Links.Add(link3)
    Dim titleColumn As GanttViewTextViewColumn = New GanttViewTextViewColumn("Title")
    Dim startColumn As GanttViewTextViewColumn = New GanttViewTextViewColumn("Start")
    Dim endColumn As GanttViewTextViewColumn = New GanttViewTextViewColumn("End")
    Dim durationColumn As GanttViewTextViewColumn = New GanttViewTextViewColumn("Duration")
    Me.radGanttView1.GanttViewElement.Columns.Add(titleColumn)
    Me.radGanttView1.GanttViewElement.Columns.Add(startColumn)
    Me.radGanttView1.GanttViewElement.Columns.Add(endColumn)
    Me.radGanttView1.GanttViewElement.Columns.Add(durationColumn)
    AddHandler Me.radGanttView1.GanttViewElement.EditorInitialized, AddressOf GanttViewElement_EditorInitialized
End Sub

````



{{endregion}} 

Our implementation of the custom **GanttViewDataItem** class will add an integer **Duration** property. This property will be calculated whenever the Start or the End of a task changes.  

#### Custom Data Item Implementation

{{source=..\SamplesCS\GanttView\CustomItems\GanttDataItemForm.cs region=CustomDataItem}} 
{{source=..\SamplesVB\GanttView\CustomItems\GanttDataItemForm.vb region=CustomDataItem}}
````C#
public class MyGanttViewDataItem : GanttViewDataItem
{
    private int duration;
    private bool shouldUpdate;
    public MyGanttViewDataItem()
    { }
    public int Duration
    {
        get
        {
            return this.duration;
        }
        private set
        {
            if (this.duration != value)
            {
                this.duration = value;
                this.OnNotifyPropertyChanged("Duration");
            }
        }
    }
    
    protected override void OnNotifyPropertyChanged(string propertyName)
    {
        base.OnNotifyPropertyChanged(propertyName);
        if (propertyName == "Duration" && this.shouldUpdate)
        {
            TimeSpan span = this.End - this.End.Date;
            this.End = this.Start.AddDays(this.Duration).Add(span);
        }
        if (propertyName == "Start" || propertyName == "End")
        {
            this.shouldUpdate = false;
            this.Duration = (this.End - this.Start).Days;
        }
        this.shouldUpdate = true;
    }
}

````
````VB.NET
Public Class MyGanttViewDataItem
    Inherits GanttViewDataItem
    Private _duration As Integer
    Private shouldUpdate As Boolean
    Public Sub New()
    End Sub
    Public Property Duration As Integer
        Get
            Return Me._duration
        End Get
        Private Set(ByVal value As Integer)
            If Me._duration <> value Then
                Me._duration = value
                Me.OnNotifyPropertyChanged("Duration")
            End If
        End Set
    End Property
    Protected Overrides Sub OnNotifyPropertyChanged(ByVal propertyName As String)
        MyBase.OnNotifyPropertyChanged(propertyName)
        If propertyName = "Duration" AndAlso Me.shouldUpdate Then
            Dim span As TimeSpan = Me.[End] - Me.[End].Date
            Me.[End] = Me.Start.AddDays(Me.Duration).Add(span)
        End If
        If propertyName = "Start" OrElse propertyName = "End" Then
            Me.shouldUpdate = False
            Me.Duration = (Me.[End] - Me.Start).Days
        End If
        Me.shouldUpdate = True
    End Sub
End Class

````



{{endregion}}

The *Duration* column will be working with a **GanttViewSpinEditor** and considering our scenario, we will need to change the **MaxValue** property of the editor. This can be accomplished by handling the RadGanttView.GanttViewElement.**EditorInitialized** event.      

#### Handling the EditorInitialized event

{{source=..\SamplesCS\GanttView\CustomItems\GanttDataItemForm.cs region=EditorInitializedEvent}} 
{{source=..\SamplesVB\GanttView\CustomItems\GanttDataItemForm.vb region=EditorInitializedEvent}}
````C#
private void GanttViewElement_EditorInitialized(object sender, GanttViewItemEditorInitializedEventArgs e)
{
    GanttViewSpinEditor editor = e.Editor as GanttViewSpinEditor;
    decimal totalDays = (decimal)(this.radGanttView1.GanttViewElement.GraphicalViewElement.TimelineEnd - this.radGanttView1.GanttViewElement.GraphicalViewElement.TimelineStart).TotalDays;
    if (editor != null && editor.MaxValue != totalDays)
    {
        editor.MaxValue = totalDays;
    }
}

````
````VB.NET
Private Sub GanttViewElement_EditorInitialized(ByVal sender As Object, ByVal e As GanttViewItemEditorInitializedEventArgs)
    Dim editor As GanttViewSpinEditor = TryCast(e.Editor, GanttViewSpinEditor)
    Dim totalDays As Decimal = CDec((Me.radGanttView1.GanttViewElement.GraphicalViewElement.TimelineEnd - Me.radGanttView1.GanttViewElement.GraphicalViewElement.TimelineStart).TotalDays)
    If editor IsNot Nothing AndAlso editor.MaxValue <> totalDays Then
        editor.MaxValue = totalDays
    End If
End Sub

````



{{endregion}}

# See Also

* [Custom Data Cells]({%slug winforms/ganttview/custom-items/data-cells%})
* [Custom Task Elements]({%slug winforms/ganttview/custom-items/task-elements%})
* [Customizing Editor]({%slug winforms/ganttview-/editing/customizing-editor%})
* [Editing Graphical View]({%slug winforms/ganttview-/editing/editing-graphical-view%})
* [Editing Text View]({%slug winforms/ganttview-/editing/editing-text-view%})
