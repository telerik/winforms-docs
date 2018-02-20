---
title: Rows Reordering in Self-reference Hierarchy
page_title: Rows Reordering in Self-reference Hierarchy | RadGridView
description: RadGridView allows you implementing rows reordering in self-reference hierarchy.
slug: winforms/gridview/rows-reordering-in-self-reference-hierarchy
tags: gridview
published: True
position: 1 
---

# Rows Reordering in Self-reference Hierarchy

Consider the case you have a bound **RadGridView** with self-reference hierarchical data. This help article demonstrates how to utilize the [RadGridViewDragDropService]({%slug winforms/gridview/radgridviewdragdropservice%}) and implement rows reordering. 

>caption Figure 1: Rows reordering in self-reference hierarchy

![gridview-drag-and-drop-rows-reordering-in-self-reference-hierarchy 001](images/gridview-drag-and-drop-rows-reordering-in-self-reference-hierarchy001.gif)

1\. Populate **RadGridView** with self-reference hierarchical data:

{{source=..\SamplesCS\GridView\DragDrop\RowsReorderInSelfReference.cs region=FillData}} 
{{source=..\SamplesCS\GridView\DragDrop\RowsReorderInSelfReference.vb region=FillData}} 

````C#
DataTable dt;
private void RadForm_Load(object sender, EventArgs e)
{
    dt = new DataTable();
    dt.Columns.Add("Id");
    dt.Columns.Add("Name");
    dt.Columns.Add("ParentId");
    FillData();
}
private void FillData()
{
    this.radGridView1.Relations.AddSelfReference(this.radGridView1.MasterTemplate, "Id", "ParentId");
    for (int i = 1; i <= 3; i++)
    {
        dt.Rows.Add(i, "Parent" + i, 0);
        for (int j = 4; j <= 9; j++)
        {
            int childIndex = ((i - 1) * 9 + j + i);
            dt.Rows.Add(childIndex, "Child" + childIndex, i);
        }
    }
    this.radGridView1.DataSource = dt;
}

````
````VB.NET
````

{{endregion}} 

2\. Register a custom [GridHierarchyRowBehavior]({%slug winforms/gridview/rows/row-behaviors%})	which starts the [RadGridViewDragDropService]({%slug winforms/gridview/radgridviewdragdropservice%}) when you click with the left mouse button: 

#### Register the custom row behavior

{{source=..\SamplesCS\GridView\DragDrop\RowsReorderInSelfReference.cs region=RegisterRowBehavior}} 
{{source=..\SamplesCS\GridView\DragDrop\RowsReorderInSelfReference.vb region=RegisterRowBehavior}} 

````C#
BaseGridBehavior gridBehavior = this.radGridView1.GridBehavior as BaseGridBehavior;
gridBehavior.UnregisterBehavior(typeof(GridViewHierarchyRowInfo));
gridBehavior.RegisterBehavior(typeof(GridViewHierarchyRowInfo), new RowSelectionGridBehavior());

````
````VB.NET
````

{{endregion}} 

Override the **OnMouseDownLeft** method of the **GridHierarchyRowBehavior** and start the service: 

{{source=..\SamplesCS\GridView\DragDrop\RowsReorderInSelfReference.cs region=StartService}} 
{{source=..\SamplesCS\GridView\DragDrop\RowsReorderInSelfReference.vb region=StartService}} 

````C#
public class RowSelectionGridBehavior : GridHierarchyRowBehavior
{
    protected override bool OnMouseDownLeft(MouseEventArgs e)
    {
        GridDataRowElement row = this.GetRowAtPoint(e.Location) as GridDataRowElement;
        if (row != null)
        {
            RadGridViewDragDropService svc = this.GridViewElement.GetService<RadGridViewDragDropService>();
            svc.Start(row);
        }
        return base.OnMouseDownLeft(e);
    }
}

````
````VB.NET
````

{{endregion}} 

3\. Handle the RadDragDropService.**PreviewDragStart** event in order to indicate that **RadGridView** can start the drag operation. In the RadDragDropService.**PreviewDragOver** event you can control on what targets the row being dragged can be dropped on. In the **PreviewDragDrop** event you can perform the actual reordering of the data bound records. Note that it is important to update the **ParentId** field of the affected record. Thus, you will indicate the new parent record to which the dragged record belongs.


{{source=..\SamplesCS\GridView\DragDrop\RowsReorderInSelfReference.cs region=DoDragDrop}} 
{{source=..\SamplesCS\GridView\DragDrop\RowsReorderInSelfReference.vb region=DoDragDrop}} 

````C#
private void SubscribeToDragDropEvents()
{
    RadDragDropService svc = this.radGridView1.GridViewElement.GetService<RadDragDropService>();
    svc.PreviewDragStart += svc_PreviewDragStart;
    svc.PreviewDragOver += svc_PreviewDragOver;
    svc.PreviewDragDrop += svc_PreviewDragDrop;
}
private void svc_PreviewDragStart(object sender, PreviewDragStartEventArgs e)
{
    e.CanStart = true;
}
private void svc_PreviewDragOver(object sender, RadDragOverEventArgs e)
{
    GridDataRowElement draggedRowElement = e.DragInstance as GridDataRowElement;
    if (draggedRowElement == null)
    {
        e.CanDrop = false;
        return;
    }
    e.CanDrop = true;
    draggedRowElement.Visibility = ElementVisibility.Hidden;
}
private void svc_PreviewDragDrop(object sender, RadDropEventArgs e)
{
    GridDataRowElement draggedRowElement = e.DragInstance as GridDataRowElement;
    GridDataRowElement targetRowElement = e.HitTarget as GridDataRowElement;
    if (draggedRowElement == null)
    {
        return;
    }
    DataRowView sourceRowView = draggedRowElement.RowInfo.DataBoundItem as DataRowView;
    DataRowView targetRowView = targetRowElement.RowInfo.DataBoundItem as DataRowView;
    if (!(targetRowElement.RowInfo.Cells["ParentId"].Equals(draggedRowElement.RowInfo.Cells["ParentId"])))
    {
        e.Handled = true;
        int targetIndex = dt.Rows.IndexOf(targetRowView.Row);
        DataRow newRow = dt.NewRow();
        newRow["ParentId"] = targetRowView.Row["ParentId"];
        newRow["Name"] = sourceRowView.Row["Name"];
        newRow["Id"] = sourceRowView.Row["Id"];
        dt.Rows.Remove(sourceRowView.Row);
        dt.Rows.InsertAt(newRow, targetIndex);
    }
}

````
````VB.NET
````

{{endregion}} 


# See Also
* [RadGridViewDragDropService]({%slug winforms/gridview/radgridviewdragdropservice%})	
* [RadDragDropService]({%slug winforms/telerik-presentation-framework/raddragdropservice%})	
* [Rows >> Drag and Drop]({%slug winforms/gridview/rows/drag-and-drop%})	
