---
title: Context Menu
page_title: Context Menu | RadPivotGrid
description: The article demonstrates how the context menu used by RadPivotGrid can be customized and new items added to it.
slug: winforms/pivotgrid/context-menu
tags: context, menu, custom, item
published: True
position: 17
---

# Context Menu

The context menu used by **RadPivotGrid** can be easily extended. It is a common requirement to add new items to the menu or modify the existing ones.

The PivotGridContextMenuBase.**Context** property provides information about the element triggering the Click event. The example below will evaluate the context so that we add an additional element whenever the menu opens after click on any of the pivot data cells. 

>caption Figure 1: Custom Context Menu Item

![pivotgrid-context-menu 001](images/pivotgrid-context-menu001.gif)

#### Initialize and Set Custom Menu

{{source=..\SamplesCS\PivotGrid\PivotGridConextMenuForm.cs region=SetContextMenu}} 
{{source=..\SamplesVB\PivotGrid\PivotGridConextMenuForm.vb region=SetContextMenu}}
````C#
public PivotGridConextMenuForm()
{
    InitializeComponent();
    MyPivotGridContextMenu menu = new MyPivotGridContextMenu(this.radPivotGrid1);
    this.radPivotGrid1.PivotGridElement.ContextMenu = menu;
}

````
````VB.NET
Public Sub New()
    InitializeComponent()
    Dim menu As New MyPivotGridContextMenu(Me.radPivotGrid1)
    Me.radPivotGrid1.PivotGridElement.ContextMenu = menu
End Sub

````



{{endregion}}


#### Custom Context Menu Class 

{{source=..\SamplesCS\PivotGrid\PivotGridConextMenuForm.cs region=CustomContextMenu}} 
{{source=..\SamplesVB\PivotGrid\PivotGridConextMenuForm.vb region=CustomContextMenu}}
````C#
public class MyPivotGridContextMenu : PivotGridContextMenu
{
    public MyPivotGridContextMenu(RadPivotGrid pivotGrid)
        : base(pivotGrid.PivotGridElement)
    { }
    protected override void AdjustItemsForContext()
    {
        base.AdjustItemsForContext();
        if (this.Context is PivotCellElement)
        {
            RadMenuItem customMenuItem = new RadMenuItem();
            customMenuItem.Text = "Export to Excel";
            RadMenuSeparatorItem separator = new RadMenuSeparatorItem();
            this.Items.Add(separator);
            customMenuItem.Click += customMenuItem_Click;
            this.Items.Add(customMenuItem);
        }
    }
    private void customMenuItem_Click(object sender, EventArgs e)
    {
        RadMessageBox.Show("Export to Excel");
    }
}

````
````VB.NET
Public Class MyPivotGridContextMenu
    Inherits PivotGridContextMenu
    Public Sub New(pivotGrid As RadPivotGrid)
        MyBase.New(pivotGrid.PivotGridElement)
    End Sub
    Protected Overrides Sub AdjustItemsForContext()
        MyBase.AdjustItemsForContext()
        If TypeOf Me.Context Is PivotCellElement Then
            Dim customMenuItem As New RadMenuItem()
            customMenuItem.Text = "Export to Excel"
            Dim separator As New RadMenuSeparatorItem()
            Me.Items.Add(separator)
            AddHandler customMenuItem.Click, AddressOf customMenuItem_Click
            Me.Items.Add(customMenuItem)
        End If
    End Sub
    Private Sub customMenuItem_Click(sender As Object, e As EventArgs)
        RadMessageBox.Show("Export to Excel")
    End Sub
End Class

````



{{endregion}}

# See Also

* [Spread Export]({%slug winforms/pivotgrid/exporting-data/spread-export%})
* [Export to PDF]({%slug winforms/pivotgrid/exporting-data/export-to-pdf%})