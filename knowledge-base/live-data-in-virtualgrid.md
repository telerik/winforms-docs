---
title: Live Data in RadVirtualGrid
description: Learn how to display live data in the WinForms VirtualGrid. 
type: how-to
page_title: Live Data in RadVirtualGrid
slug: live-data-in-virtualgrid
position: 5
tags: virtualgrid, grid, live, data
ticketid: 1591400
res_type: kb
---


## Environment
|Product Version|Product|Author|
|----|----|----|
|2023.1.117|RadVirtualGrid for WinForms|[Desislava Yordanova](https://www.telerik.com/blogs/author/desislava-yordanova)|

## Description

RadVirtualGrid is an appropriate control for loading big data with a high refresh rate. This article demonstrates how to use a timer for refreshing the external data collection and updating the virtual grid accordingly.

## Solution

The CellValueNeeded event is the place for specifying what data to be displayed in the respective cell. Once the external collection is updated, it is necessary to force refresh the grid's content by calling the TableElement.SynchronizeRows method.

![WinForms VirtualGrid Live Data](images/live-data-in-virtualgrid.gif)

````C#

BindingList<SampleBusinessObject> data = new BindingList<SampleBusinessObject>();

private string[] columnNames = new string[] {"#", "Value", "Category"};
Random random = new Random();
Timer timer = new Timer();
public RadForm1()
{
    InitializeComponent();
    timer.Interval = 100;
    timer.Tick += Timer_Tick;
    for (int i = 0; i < 1000; i++)
    {
        SampleBusinessObject obj = new SampleBusinessObject();

        obj.Value = this.random.Next(3300, 3800);
        obj.Category = DateTime.Now.AddMilliseconds(200);

        data.Add(obj);
    }
    this.radVirtualGrid1.RowCount = data.Count;
    this.radVirtualGrid1.ColumnCount = columnNames.Length;
    this.radVirtualGrid1.AutoSizeColumnsMode = VirtualGridAutoSizeColumnsMode.Fill;
    this.radVirtualGrid1.CellValueNeeded += RadVirtualGrid1_CellValueNeeded; 
}

private void Timer_Tick(object sender, EventArgs e)
{
    SampleBusinessObject obj = new SampleBusinessObject();

    obj.Value = this.random.Next(3300, 3800);
    obj.Category = DateTime.Now.AddDays(this.random.Next(10, 100));

    data.Add(obj); 
    this.radVirtualGrid1.RowCount = data.Count;
    this.radVirtualGrid1.ColumnCount = columnNames.Length;

    for (int i = 0; i < data.Count; i++)
    {
        data[i].Value = this.random.Next(3300, 3800);
        data[i].Category = DateTime.Now.AddDays(this.random.Next(10, 100));
    }
    this.radVirtualGrid1.TableElement.SynchronizeRows();
}

private void RadVirtualGrid1_CellValueNeeded(object sender, VirtualGridCellValueNeededEventArgs e)
{
    if (e.ColumnIndex < 0)
        return;
    if (e.RowIndex == RadVirtualGrid.HeaderRowIndex)
    {
        e.Value = columnNames[e.ColumnIndex];
    }

    if (e.RowIndex < 0)
    {
        e.FieldName = columnNames[e.ColumnIndex];
    }

    if (e.RowIndex >= 0 && e.RowIndex < data.Count)
    {
        switch (e.ColumnIndex)
        {
            case 0: e.Value = e.RowIndex; break;
            case 1: e.Value = data[e.RowIndex].Value; break;
            case 2: e.Value = data[e.RowIndex].Category; break;

            default:
                break;
        } 
    }
}

class SampleBusinessObject
{
    private double value;
    private DateTime category;

    public double Value
    {
        get
        {
            return this.value;
        }
        set
        {
            this.value = value;
        }
    }

    public DateTime Category
    {
        get
        {
            return this.category;
        }
        set
        {
            this.category = value;
        }
    }  
}

private void radButton1_Click(object sender, EventArgs e)
{
    timer.Start();
}

private void radButton2_Click(object sender, EventArgs e)
{
    timer.Stop();
}
     

````
````VB.NET

Private data As BindingList(Of SampleBusinessObject) = New BindingList(Of SampleBusinessObject)()
Private columnNames As String() = New String() {"#", "Value", "Category"}
Private random As Random = New Random()
Private timer As Timer = New Timer()

Public Sub New()
    InitializeComponent()
    timer.Interval = 100
    AddHandler timer.Tick, AddressOf Timer_Tick

    For i As Integer = 0 To 1000 - 1
        Dim obj As SampleBusinessObject = New SampleBusinessObject()
        obj.Value = Me.random.[Next](3300, 3800)
        obj.Category = DateTime.Now.AddMilliseconds(200)
        data.Add(obj)
    Next

    Me.RadVirtualGrid1.RowCount = data.Count
    Me.RadVirtualGrid1.ColumnCount = columnNames.Length
    Me.RadVirtualGrid1.AutoSizeColumnsMode = VirtualGridAutoSizeColumnsMode.Fill
    AddHandler Me.RadVirtualGrid1.CellValueNeeded, AddressOf RadVirtualGrid1_CellValueNeeded
End Sub

Private Sub Timer_Tick(ByVal sender As Object, ByVal e As EventArgs)
    Dim obj As SampleBusinessObject = New SampleBusinessObject()
    obj.Value = Me.random.[Next](3300, 3800)
    obj.Category = DateTime.Now.AddDays(Me.random.[Next](10, 100))
    data.Add(obj)
    Me.RadVirtualGrid1.RowCount = data.Count
    Me.RadVirtualGrid1.ColumnCount = columnNames.Length

    For i As Integer = 0 To data.Count - 1
        data(i).Value = Me.random.[Next](3300, 3800)
        data(i).Category = DateTime.Now.AddDays(Me.random.[Next](10, 100))
    Next

    Me.RadVirtualGrid1.TableElement.SynchronizeRows()
End Sub

Private Sub RadVirtualGrid1_CellValueNeeded(ByVal sender As Object, ByVal e As VirtualGridCellValueNeededEventArgs)
    If e.ColumnIndex < 0 Then Return

    If e.RowIndex = RadVirtualGrid.HeaderRowIndex Then
        e.Value = columnNames(e.ColumnIndex)
    End If

    If e.RowIndex < 0 Then
        e.FieldName = columnNames(e.ColumnIndex)
    End If

    If e.RowIndex >= 0 AndAlso e.RowIndex < data.Count Then

        Select Case e.ColumnIndex
            Case 0
                e.Value = e.RowIndex
            Case 1
                e.Value = data(e.RowIndex).Value
            Case 2
                e.Value = data(e.RowIndex).Category
            Case Else
        End Select
    End If
End Sub

Class SampleBusinessObject
    Private _value As Double
    Private _category As DateTime

    Public Property Value As Double
        Get
            Return Me._value
        End Get
        Set(ByVal value As Double)
            Me._value = value
        End Set
    End Property

    Public Property Category As DateTime
        Get
            Return Me._category
        End Get
        Set(ByVal value As DateTime)
            Me._category = value
        End Set
    End Property
End Class

Private Sub radButton1_Click(ByVal sender As Object, ByVal e As EventArgs) Handles RadButton1.Click
    timer.Start()
End Sub

Private Sub radButton2_Click(ByVal sender As Object, ByVal e As EventArgs) Handles RadButton2.Click
    timer.[Stop]()
End Sub

````

## See Also

* [Populating with Data]({%slug winforms/virtualgrid/working-with-data/populating-with-data%}) 



 
