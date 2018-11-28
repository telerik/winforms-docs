---
title: Custom Input Behavior
description: A custom implementation showing how the items can be edited on double click and how the next available cell can be selected upon ending the edit operation 
type: how-to
page_title: Custom Input Behavior
slug: ganttview-custom-input-behavior
position: 44
tags: ganttview, input, behavior, mouse, keyboard
ticketid: 1362762
res_type: kb
---


## Environment
<table>
	<tr>
		<td>Product Version</td>
		<td>2018.1 220</td>
	</tr>
	<tr>
		<td>Product</td>
		<td>RadGanttView for WinForms</td>
	</tr>
</table>


## Description

The user input in **RadGanttView** is controlled by a special behavior class. The **BaseGanttViewBehavior** class is responsible for handling the keyboard, mouse, and context menu. It defines a number of methods which are virtual and custom implementations are easy to achieve as all of the base logic can be overridden.

The example in this article demonstrates how the items can be edited on double click and how the next available cell can be selected upon ending the edit operation.

## Solution

The gif file below demonstrates the end result.

>caption Figure 1: Custom Input Behavior
![ganttview-custom-input-behavior 001](images/ganttview-custom-input-behavior.gif)

The custom functionality will be achieved with the help of special behavior class.

#### Custom Behavior Implementation

````C#
public class CustomGanttViewBehavior : BaseGanttViewBehavior
{
    private bool shouldCancel = true;

    protected override void ProcessMouseUpOnCellElement(GanttViewTextViewCellElement cellElement, MouseEventArgs e)
    {
        if (!this.shouldCancel)
        {
            base.ProcessMouseUpOnCellElement(cellElement, e);
        }
    }

    public override bool ProcessDoubleClick(MouseEventArgs e)
    {
        this.shouldCancel = false;
        if (this.GanttViewElement.TextViewElement.ControlBoundingRectangle.Contains(e.Location))
        {
            LightVisualElement element = this.GanttViewElement.ElementTree.GetElementAtPoint(e.Location) as LightVisualElement;
            GanttViewTextViewCellElement cellElement = element as GanttViewTextViewCellElement;

            if (cellElement != null)
            {
                this.ProcessMouseUpOnCellElement(cellElement, e);
            }
        }

        this.shouldCancel = true;

        return false;
    }

    public override bool ProcessF2Key(KeyEventArgs e)
    {
        if (this.GanttViewElement.IsEditing)
        {
            this.GanttViewElement.EndEdit();
            if (this.GanttViewElement.SelectedItem != null)
            {
                int currentIndex = this.GanttViewElement.Columns.IndexOf(this.GanttViewElement.CurrentColumn);
                if (currentIndex < this.GanttViewElement.Columns.Count - 1)
                {
                    this.GanttViewElement.CurrentColumn = this.GanttViewElement.Columns[currentIndex + 1];
                }
                else
                {
                    GanttViewTraverser traverser = new GanttViewTraverser(this.GanttViewElement);
                    traverser.MoveTo(this.GanttViewElement.SelectedItem);
                    if (traverser.MoveNext())
                    {
                        traverser.Current.Selected = true;
                        this.GanttViewElement.CurrentColumn = this.GanttViewElement.Columns[0];
                    }
                }
            }
        }
        else
        {
            this.GanttViewElement.BeginEdit();
        }

        return false;
    }
}


````
````VB.NET
Public Class CustomGanttViewBehavior
    Inherits BaseGanttViewBehavior

    Private shouldCancel As Boolean = True

    Protected Overrides Sub ProcessMouseUpOnCellElement(ByVal cellElement As GanttViewTextViewCellElement, ByVal e As MouseEventArgs)
        If Not Me.shouldCancel Then
            MyBase.ProcessMouseUpOnCellElement(cellElement, e)
        End If
    End Sub

    Public Overrides Function ProcessDoubleClick(ByVal e As MouseEventArgs) As Boolean
        Me.shouldCancel = False

        If Me.GanttViewElement.TextViewElement.ControlBoundingRectangle.Contains(e.Location) Then
            Dim element As LightVisualElement = TryCast(Me.GanttViewElement.ElementTree.GetElementAtPoint(e.Location), LightVisualElement)
            Dim cellElement As GanttViewTextViewCellElement = TryCast(element, GanttViewTextViewCellElement)

            If cellElement IsNot Nothing Then
                Me.ProcessMouseUpOnCellElement(cellElement, e)
            End If
        End If

        Me.shouldCancel = True
        Return False
    End Function

    Public Overrides Function ProcessF2Key(ByVal e As KeyEventArgs) As Boolean
        If Me.GanttViewElement.IsEditing Then
            Me.GanttViewElement.EndEdit()

            If Me.GanttViewElement.SelectedItem IsNot Nothing Then
                Dim currentIndex As Integer = Me.GanttViewElement.Columns.IndexOf(Me.GanttViewElement.CurrentColumn)

                If currentIndex < Me.GanttViewElement.Columns.Count - 1 Then
                    Me.GanttViewElement.CurrentColumn = Me.GanttViewElement.Columns(currentIndex + 1)
                Else
                    Dim traverser As GanttViewTraverser = New GanttViewTraverser(Me.GanttViewElement)
                    traverser.MoveTo(Me.GanttViewElement.SelectedItem)

                    If traverser.MoveNext() Then
                        traverser.Current.Selected = True
                        Me.GanttViewElement.CurrentColumn = Me.GanttViewElement.Columns(0)
                    End If
                End If
            End If
        Else
            Me.GanttViewElement.BeginEdit()
        End If

        Return False
    End Function
End Class

````

The behavior class is exposed by the RadGanttView.**GanttViewBehavior** property.

#### Generating Sample Data and assigning the CustomGanttViewBehavior instance

````C#
public partial class RadForm1 : Telerik.WinControls.UI.RadForm
{
    public RadForm1()
    {
        InitializeComponent();

        this.radGanttView1.GanttViewBehavior = new CustomGanttViewBehavior();

        this.radGanttView1.GanttViewElement.GraphicalViewElement.TimelineStart = new DateTime(2010, 10, 9);
        this.radGanttView1.GanttViewElement.GraphicalViewElement.TimelineEnd = new DateTime(2010, 12, 10);

        //setup data items
        GanttViewDataItem item1 = new GanttViewDataItem();
        item1.Start = new DateTime(2010, 10, 10);
        item1.End = new DateTime(2010, 10, 15);
        item1.Progress = 30m;
        item1.Title = "Summary task.1. title";
        item1.Tag = "color";

        GanttViewDataItem subitem11 = new GanttViewDataItem();
        subitem11.Start = new DateTime(2010, 10, 10);
        subitem11.End = new DateTime(2010, 10, 12);
        subitem11.Progress = 10m;
        subitem11.Title = "Sub-task.1.1 title";

        GanttViewDataItem subitem12 = new GanttViewDataItem();
        subitem12.Start = new DateTime(2010, 10, 12);
        subitem12.End = new DateTime(2010, 10, 15);
        subitem12.Progress = 20m;
        subitem12.Title = "Sub-task.1.2 title";

        //add subitems
        item1.Items.Add(subitem11);
        item1.Items.Add(subitem12);

        this.radGanttView1.Items.Add(item1);

        GanttViewDataItem item2 = new GanttViewDataItem();
        item2.Start = new DateTime(2010, 10, 12);
        item2.End = new DateTime(2010, 10, 18);
        item2.Progress = 40m;
        item2.Title = "Summary task.2. title";

        GanttViewDataItem subitem21 = new GanttViewDataItem();
        subitem21.Start = new DateTime(2010, 10, 12);
        subitem21.End = new DateTime(2010, 10, 13);
        subitem21.Progress = 10m;
        subitem21.Title = "Sub-task.2.1 title";

        GanttViewDataItem subitem22 = new GanttViewDataItem();
        subitem22.Start = new DateTime(2010, 10, 13);
        subitem22.End = new DateTime(2010, 10, 18);
        subitem22.Progress = 30m;
        subitem22.Title = "Sub-task.2.2 title";

        GanttViewDataItem subitem23 = new GanttViewDataItem();
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

        this.radGanttView1.GanttViewElement.Columns.Add(titleColumn);
        this.radGanttView1.GanttViewElement.Columns.Add(startColumn);
        this.radGanttView1.GanttViewElement.Columns.Add(endColumn);
    }
}


````
````VB.NET
Public Class RadForm1

    Public Sub New()
        InitializeComponent()

        Me.radGanttView1.GanttViewBehavior = New CustomGanttViewBehavior()
        Me.radGanttView1.GanttViewElement.GraphicalViewElement.TimelineStart = New DateTime(2010, 10, 9)
        Me.radGanttView1.GanttViewElement.GraphicalViewElement.TimelineEnd = New DateTime(2010, 12, 10)

        Dim item1 As GanttViewDataItem = New GanttViewDataItem()
        item1.Start = New DateTime(2010, 10, 10)
        item1.[End] = New DateTime(2010, 10, 15)
        item1.Progress = 30D
        item1.Title = "Summary task.1. title"
        item1.Tag = "color"

        Dim subitem11 As GanttViewDataItem = New GanttViewDataItem()
        subitem11.Start = New DateTime(2010, 10, 10)
        subitem11.[End] = New DateTime(2010, 10, 12)
        subitem11.Progress = 10D
        subitem11.Title = "Sub-task.1.1 title"

        Dim subitem12 As GanttViewDataItem = New GanttViewDataItem()
        subitem12.Start = New DateTime(2010, 10, 12)
        subitem12.[End] = New DateTime(2010, 10, 15)
        subitem12.Progress = 20D
        subitem12.Title = "Sub-task.1.2 title"
        item1.Items.Add(subitem11)
        item1.Items.Add(subitem12)
        Me.radGanttView1.Items.Add(item1)

        Dim item2 As GanttViewDataItem = New GanttViewDataItem()
        item2.Start = New DateTime(2010, 10, 12)
        item2.[End] = New DateTime(2010, 10, 18)
        item2.Progress = 40D
        item2.Title = "Summary task.2. title"

        Dim subitem21 As GanttViewDataItem = New GanttViewDataItem()
        subitem21.Start = New DateTime(2010, 10, 12)
        subitem21.[End] = New DateTime(2010, 10, 13)
        subitem21.Progress = 10D
        subitem21.Title = "Sub-task.2.1 title"

        Dim subitem22 As GanttViewDataItem = New GanttViewDataItem()
        subitem22.Start = New DateTime(2010, 10, 13)
        subitem22.[End] = New DateTime(2010, 10, 18)
        subitem22.Progress = 30D
        subitem22.Title = "Sub-task.2.2 title"

        Dim subitem23 As GanttViewDataItem = New GanttViewDataItem()
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

        Me.radGanttView1.GanttViewElement.Columns.Add(titleColumn)
        Me.radGanttView1.GanttViewElement.Columns.Add(startColumn)
        Me.radGanttView1.GanttViewElement.Columns.Add(endColumn)
    End Sub
End Class


````

# See Also

* [Input Behavior]({%slug winforms/ganttview/input-behavior%})
* [Keyboard navigation]({%slug winforms/ganttview-/usability/keyboard-navigation%})
* [Mouse navigation]({%slug winforms/ganttview-/usability/mouse-navigation%})