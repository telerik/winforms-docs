---
title: Rows Reordering in Master-Detail Hierarchy
page_title: Rows Reordering in Master-Detail Hierarchy | RadGridView
description: RadGridView allows you implementing rows reordering in mater-detail hierarchy.
slug: rows-reordering-in-master-detail-hierarchy
tags: gridview
published: True
position: 2 
---

# Rows Reordering in Master-Detail Hierarchy

Consider the case you have a bound **RadGridView** with [master-detail hierarchical data]({%slug winforms/gridview/hierarchical-grid/binding-to-hierarchical-data-programmatically%}). This article demonstrates how to utilize the [RadGridViewDragDropService]({%slug winforms/gridview/radgridviewdragdropservice%}) and implement rows reordering. 

>caption Figure 1: Rows reordering in Master-Detail hierarchy

![rows-reordering-in-master-detail-hierarchy 001](images/rows-reordering-in-master-detail-hierarchy.gif)

There are several main steps that need to be followed:

1. Register a custom [GridDataRowBehavior]({%slug winforms/gridview/rows/row-behaviors%}) which starts the [RadGridViewDragDropService]({%slug winforms/gridview/radgridviewdragdropservice%}) when you click with the left mouse button over a child row.

2. Override the **OnMouseDownLeft** method of the **GridDataRowBehavior** and start the service. 

3. Handle the RadDragDropService.**PreviewDragStart** event in order to indicate that **RadGridView** can start the drag operation. In the RadDragDropService.**PreviewDragOver** event you can control on what targets the row being dragged can be dropped on. In the **PreviewDragDrop** event you can perform the actual reordering of the data bound records. Note that it is important to update the **ParentId** field of the affected child record. Thus, you will indicate the new parent record to which the dragged record belongs.


 

````C#
BindingList<Level0> parentRecords = new BindingList<Level0>();
BindingList<Level1> childRecords = new BindingList<Level1>(); 
GridViewRowInfo draggedRow = null;

public RadForm1()
{
    InitializeComponent();
    FillData();

    radGridView1.DataSource = parentRecords;
    radGridView1.AutoSizeColumnsMode = GridViewAutoSizeColumnsMode.Fill;

    GridViewTemplate template = new GridViewTemplate();
    template.DataSource = childRecords;
    template.AutoSizeColumnsMode = GridViewAutoSizeColumnsMode.Fill;
    radGridView1.MasterTemplate.Templates.Add(template);

    GridViewRelation relation = new GridViewRelation(radGridView1.MasterTemplate);
    relation.ChildTemplate = template;
    relation.RelationName = "ParentChild";
    relation.ParentColumnNames.Add("Id");
    relation.ChildColumnNames.Add("ParentId");
    radGridView1.Relations.Add(relation);
    radGridView1.UseScrollbarsInHierarchy = true;
    this.radGridView1.AllowRowReorder = true;

    //handle drag and drop events for the grid through the DragDrop service
    RadDragDropService svc = this.radGridView1.GridViewElement.GetService<RadDragDropService>();
    svc.PreviewDragStart += svc_PreviewDragStart;
    svc.PreviewDragDrop += svc_PreviewDragDrop;
    svc.PreviewDragOver += svc_PreviewDragOver;

    //register the custom row selection behavior
    var gridBehavior = this.radGridView1.GridBehavior as BaseGridBehavior;
    gridBehavior.UnregisterBehavior(typeof(GridViewDataRowInfo));
    gridBehavior.RegisterBehavior(typeof(GridViewDataRowInfo), new RowSelectionGridBehavior());
}

private void svc_PreviewDragStart(object sender, PreviewDragStartEventArgs e)
{
    SnapshotDragItem snapshot = e.DragInstance as SnapshotDragItem;
    if (snapshot == null)
    {
        e.CanStart = false;
    }
    GridDataRowElement draggedRowElement = snapshot.Item as GridDataRowElement;
    if (draggedRowElement != null && draggedRowElement.RowInfo != null)
    {
        e.CanStart = true;
        draggedRow = draggedRowElement.RowInfo;
    }
    else
    {
        e.CanStart = false;
    }
}

private void svc_PreviewDragOver(object sender, RadDragOverEventArgs e)
{
    SnapshotDragItem snapshot = e.DragInstance as SnapshotDragItem;
    if (snapshot == null)
    {
        e.CanDrop = false;
    }
    if (snapshot.Item is GridDataRowElement)
    {
        e.CanDrop = e.HitTarget is GridDataRowElement || e.HitTarget is GridNewRowElement ||
                    e.HitTarget is GridTableElement ||
                    e.HitTarget is GridSummaryRowElement;
    }
}

private void svc_PreviewDragDrop(object sender, RadDropEventArgs e)
{
    SnapshotDragItem snapshot = e.DragInstance as SnapshotDragItem;
    if (snapshot == null)
    {
        return;
    }
    var rowElement = snapshot.Item as GridDataRowElement;
    if (rowElement == null)
    {
        return;
    }
    e.Handled = true;

    var dropTarget = e.HitTarget as GridDataRowElement;
    var targetGrid = dropTarget.ElementTree.Control as RadGridView;
    if (targetGrid == null)
    {
        return;
    }
    var dragGrid = draggedRow.ViewTemplate.MasterTemplate.Owner;
    if (targetGrid == dragGrid && dropTarget.RowInfo.HierarchyLevel == 1 && draggedRow.HierarchyLevel == 1)
    {
        e.Handled = true;
        Level1 draggedItem = draggedRow.DataBoundItem as Level1;  
        int targetIndex = childRecords.IndexOf(dropTarget.RowInfo.DataBoundItem as Level1);
        Level1 newItem = new Level1(draggedItem.Id, (int)((GridViewHierarchyRowInfo)dropTarget.RowInfo.Parent).Cells["Id"].Value, draggedItem.Name);
        GridViewRowInfo targetDataRow = dropTarget.RowInfo;

        targetGrid.BeginUpdate();
        childRecords.Remove(draggedItem);
        childRecords.Insert(targetIndex, newItem);
        targetGrid.EndUpdate();
        targetGrid.CurrentRow = targetDataRow;
    }
}

public class RowSelectionGridBehavior : GridDataRowBehavior
{
    protected override bool OnMouseDownLeft(MouseEventArgs e)
    {
        GridDataRowElement row = this.GetRowAtPoint(e.Location) as GridDataRowElement;
        if (row != null)
        {
            RadGridViewDragDropService svc = this.GridViewElement.GetService<RadGridViewDragDropService>();
            svc.AllowAutoScrollColumnsWhileDragging = true;
            svc.AllowAutoScrollRowsWhileDragging = true;
            svc.Start(new SnapshotDragItem(row));
        }
        return base.OnMouseDownLeft(e);
    }
}

private void FillData()
{
    int cnt = 0;
    for (int i = 0; i < 10; i++)
    {
        parentRecords.Add(new Level0(i, "Parent" + i));

        for (int j = 0; j < 5; j++)
        {
            childRecords.Add(new Level1(cnt, i, "Child " + cnt));
            cnt++;
        }
    }
}

public class Level0 : System.ComponentModel.INotifyPropertyChanged
{
    public Level0(int id, string title)
    {
        this.Id = id;
        this.Title = title;
    }

    public int Id
    {
        get
        {
            return this._id;
        }
        set
        {
            this._id = value;
            OnPropertyChanged("Id");
        }
    }

    public string Title
    {
        get
        {
            return this._title;
        }
        set
        {
            this._title = value;
            OnPropertyChanged("Title");
        }
    }

    public event PropertyChangedEventHandler PropertyChanged;

    protected virtual void OnPropertyChanged(string propertyName)
    {
        if (PropertyChanged != null)
        {
            PropertyChanged(this, new PropertyChangedEventArgs(propertyName));
        }
    }

    private int _id;
    private string _title;
}

public class Level1 : System.ComponentModel.INotifyPropertyChanged
{
    public Level1(int id, int parentId, string name)
    {
        this.Id = id;
        this.ParentId = parentId;
        this.Name = name;
    }

    public int Id
    {
        get
        {
            return this._id;
        }
        set
        {
            this._id = value;
            OnPropertyChanged("Id");
        }
    }

    public int ParentId
    {
        get
        {
            return this._parentId;
        }
        set
        {
            this._parentId = value;
            OnPropertyChanged("ParentId");
        }
    }

    public string Name
    {
        get
        {
            return this._name;
        }
        set
        {
            this._name = value;
            OnPropertyChanged("Name");
        }
    }

    public event PropertyChangedEventHandler PropertyChanged;

    protected virtual void OnPropertyChanged(string propertyName)
    {
        if (PropertyChanged != null)
        {
            PropertyChanged(this, new PropertyChangedEventArgs(propertyName));
        }
    }

    private int _id;
    private int _parentId;
    private string _name;
}


````
````VB.NET

Private parentRecords As BindingList(Of Level0) = New BindingList(Of Level0)()
Private childRecords As BindingList(Of Level1) = New BindingList(Of Level1)()
Private draggedRow As GridViewRowInfo = Nothing

Public Sub New()
    InitializeComponent()
    FillData()
    RadGridView1.DataSource = parentRecords
    RadGridView1.AutoSizeColumnsMode = GridViewAutoSizeColumnsMode.Fill
    Dim template As GridViewTemplate = New GridViewTemplate()
    template.DataSource = childRecords
    template.AutoSizeColumnsMode = GridViewAutoSizeColumnsMode.Fill
    RadGridView1.MasterTemplate.Templates.Add(template)
    Dim relation As GridViewRelation = New GridViewRelation(RadGridView1.MasterTemplate)
    relation.ChildTemplate = template
    relation.RelationName = "ParentChild"
    relation.ParentColumnNames.Add("Id")
    relation.ChildColumnNames.Add("ParentId")
    RadGridView1.Relations.Add(relation)
    RadGridView1.UseScrollbarsInHierarchy = True
    Me.RadGridView1.AllowRowReorder = True
    Dim svc As RadDragDropService = Me.RadGridView1.GridViewElement.GetService(Of RadDragDropService)()
    AddHandler svc.PreviewDragStart, AddressOf svc_PreviewDragStart
    AddHandler svc.PreviewDragDrop, AddressOf svc_PreviewDragDrop
    AddHandler svc.PreviewDragOver, AddressOf svc_PreviewDragOver
    Dim gridBehavior = TryCast(Me.RadGridView1.GridBehavior, BaseGridBehavior)
    gridBehavior.UnregisterBehavior(GetType(GridViewDataRowInfo))
    gridBehavior.RegisterBehavior(GetType(GridViewDataRowInfo), New RowSelectionGridBehavior())
End Sub

Private Sub svc_PreviewDragStart(ByVal sender As Object, ByVal e As PreviewDragStartEventArgs)
    Dim snapshot As SnapshotDragItem = TryCast(e.DragInstance, SnapshotDragItem)

    If snapshot Is Nothing Then
        e.CanStart = False
    End If

    Dim draggedRowElement As GridDataRowElement = TryCast(snapshot.Item, GridDataRowElement)

    If draggedRowElement IsNot Nothing AndAlso draggedRowElement.RowInfo IsNot Nothing Then
        e.CanStart = True
        draggedRow = draggedRowElement.RowInfo
    Else
        e.CanStart = False
    End If
End Sub

Private Sub svc_PreviewDragOver(ByVal sender As Object, ByVal e As RadDragOverEventArgs)
    Dim snapshot As SnapshotDragItem = TryCast(e.DragInstance, SnapshotDragItem)

    If snapshot Is Nothing Then
        e.CanDrop = False
    End If

    If TypeOf snapshot.Item Is GridDataRowElement Then
        e.CanDrop = TypeOf e.HitTarget Is GridDataRowElement OrElse TypeOf e.HitTarget Is GridNewRowElement _
            OrElse TypeOf e.HitTarget Is GridTableElement OrElse TypeOf e.HitTarget Is GridSummaryRowElement
    End If
End Sub

Private Sub svc_PreviewDragDrop(ByVal sender As Object, ByVal e As RadDropEventArgs)
    Dim snapshot As SnapshotDragItem = TryCast(e.DragInstance, SnapshotDragItem)

    If snapshot Is Nothing Then
        Return
    End If

    Dim rowElement = TryCast(snapshot.Item, GridDataRowElement)

    If rowElement Is Nothing Then
        Return
    End If

    e.Handled = True
    Dim dropTarget = TryCast(e.HitTarget, GridDataRowElement)
    Dim targetGrid = TryCast(dropTarget.ElementTree.Control, RadGridView)

    If targetGrid Is Nothing Then
        Return
    End If

    Dim dragGrid = draggedRow.ViewTemplate.MasterTemplate.Owner

    If targetGrid.Equals(dragGrid) AndAlso dropTarget.RowInfo.HierarchyLevel = 1 AndAlso draggedRow.HierarchyLevel = 1 Then
        e.Handled = True
        Dim draggedItem As Level1 = TryCast(draggedRow.DataBoundItem, Level1)
        Dim targetIndex As Integer = childRecords.IndexOf(TryCast(dropTarget.RowInfo.DataBoundItem, Level1))
        Dim newItem As Level1 = New Level1(draggedItem.Id, CInt((CType(dropTarget.RowInfo.Parent,  _
                                                                 GridViewHierarchyRowInfo)).Cells("Id").Value), draggedItem.Name)
        Dim targetDataRow As GridViewRowInfo = dropTarget.RowInfo
        targetGrid.BeginUpdate()
        childRecords.Remove(draggedItem)
        childRecords.Insert(targetIndex, newItem)
        targetGrid.EndUpdate()
        targetGrid.CurrentRow = targetDataRow
    End If
End Sub

Public Class RowSelectionGridBehavior
    Inherits GridDataRowBehavior

    Protected Overrides Function OnMouseDownLeft(ByVal e As MouseEventArgs) As Boolean
        Dim row As GridDataRowElement = TryCast(Me.GetRowAtPoint(e.Location), GridDataRowElement)

        If row IsNot Nothing Then
            Dim svc As RadGridViewDragDropService = Me.GridViewElement.GetService(Of RadGridViewDragDropService)()
            svc.AllowAutoScrollColumnsWhileDragging = True
            svc.AllowAutoScrollRowsWhileDragging = True
            svc.Start(New SnapshotDragItem(row))
        End If

        Return MyBase.OnMouseDownLeft(e)
    End Function
End Class

Private Sub FillData()
    Dim cnt As Integer = 0

    For i As Integer = 0 To 10 - 1
        parentRecords.Add(New Level0(i, "Parent" & i))

        For j As Integer = 0 To 5 - 1
            childRecords.Add(New Level1(cnt, i, "Child " & cnt))
            cnt += 1
        Next
    Next
End Sub

Public Class Level0
    Implements System.ComponentModel.INotifyPropertyChanged

    Public Sub New(ByVal id As Integer, ByVal title As String)
        Me.Id = id
        Me.Title = title
    End Sub

    Public Property Id As Integer
        Get
            Return Me._id
        End Get
        Set(ByVal value As Integer)
            Me._id = value
            OnPropertyChanged("Id")
        End Set
    End Property

    Public Property Title As String
        Get
            Return Me._title
        End Get
        Set(ByVal value As String)
            Me._title = value
            OnPropertyChanged("Title")
        End Set
    End Property

    Public Event PropertyChanged As PropertyChangedEventHandler
    Private Event INotifyPropertyChanged_PropertyChanged As PropertyChangedEventHandler Implements INotifyPropertyChanged.PropertyChanged

    Protected Overridable Sub OnPropertyChanged(ByVal propertyName As String)
        RaiseEvent PropertyChanged(Me, New PropertyChangedEventArgs(propertyName))
    End Sub

    Private _id As Integer
    Private _title As String
End Class

Public Class Level1
    Implements System.ComponentModel.INotifyPropertyChanged

    Public Sub New(ByVal id As Integer, ByVal parentId As Integer, ByVal name As String)
        Me.Id = id
        Me.ParentId = parentId
        Me.Name = name
    End Sub

    Public Property Id As Integer
        Get
            Return Me._id
        End Get
        Set(ByVal value As Integer)
            Me._id = value
            OnPropertyChanged("Id")
        End Set
    End Property

    Public Property ParentId As Integer
        Get
            Return Me._parentId
        End Get
        Set(ByVal value As Integer)
            Me._parentId = value
            OnPropertyChanged("ParentId")
        End Set
    End Property

    Public Property Name As String
        Get
            Return Me._name
        End Get
        Set(ByVal value As String)
            Me._name = value
            OnPropertyChanged("Name")
        End Set
    End Property

    Public Event PropertyChanged As PropertyChangedEventHandler
    Private Event INotifyPropertyChanged_PropertyChanged As PropertyChangedEventHandler Implements INotifyPropertyChanged.PropertyChanged

    Protected Overridable Sub OnPropertyChanged(ByVal propertyName As String)
        RaiseEvent PropertyChanged(Me, New PropertyChangedEventArgs(propertyName))
    End Sub

    Private _id As Integer
    Private _parentId As Integer
    Private _name As String
End Class

```` 

# See Also
* [RadGridViewDragDropService]({%slug winforms/gridview/radgridviewdragdropservice%})	
* [RadDragDropService]({%slug winforms/telerik-presentation-framework/raddragdropservice%})	
* [Rows >> Drag and Drop]({%slug winforms/gridview/rows/drag-and-drop%})	
* [How to reorder rows in bound RadGridView]({%slug gridview-drag-drop-bound-mode%})
