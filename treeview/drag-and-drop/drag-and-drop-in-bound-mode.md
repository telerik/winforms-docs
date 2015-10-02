---
title: Drag and Drop in bound mode
page_title: Drag and Drop in bound mode | UI for WinForms Documentation
description: Drag and Drop in bound mode
slug: winforms/treeview/drag-and-drop/drag-and-drop-in-bound-mode
tags: drag,and,drop,in,bound,mode
published: True
position: 3
---

# Drag and Drop in bound mode



When the __RadTreeView__ is in bound mode, it supports drag and drop behavior. In order to enable this functionality, you should set the __AllowDragDrop__ property to *true*. However, due to the specificity of  the __RadTreeView__’s [data binding]({%slug winforms/treeview/data-binding/data-binding-basics%})  and the set up hierarchical data structure, it is necessary to handle manually the drag and drop operation to obtain correct nodes order. For this purpose, it is necessary to create a custom __TreeViewDragDropService__. This article demonstrates a sample approach how to achieve it.

![treeview-drag-and-drop-drag-and-drop-in-bound-mode 001](images/treeview-drag-and-drop-drag-and-drop-in-bound-mode001.gif)


1. Consider the __RadTreeView__ is bound to the following [self-referencing data]({%slug winforms/treeview/data-binding/binding-to-self-referencing-data%}).

{{source=..\SamplesCS\TreeView\DragAndDrop\DragAndDropInBoundMode.cs region=SelfRefData}} 
{{source=..\SamplesVB\TreeView\DragAndDrop\DragAndDropInBoundMode.vb region=SelfRefData}} 

````C#
        
        protected void BindRadTreeView()
        {
            DataTable dt = new DataTable();
            dt.Columns.Add("Id", typeof(string));
            dt.Columns.Add("Title", typeof(string));
            dt.Columns.Add("ParentId", typeof(string));
            
            string parentId = string.Empty;
            string childId = string.Empty;
            for (int i = 0; i < 3; i++)
            {
                parentId = Guid.NewGuid().ToString();
                dt.Rows.Add(parentId, "Node" + i, null);
                for (int j = 0; j < 5; j++)
                {
                    childId = Guid.NewGuid().ToString();
                    dt.Rows.Add(childId, "SubNode" + i + "." + j, parentId);
                }
            }
            
            this.radTreeView1.ChildMember = "Id";
            this.radTreeView1.ParentMember = "ParentId";
            this.radTreeView1.DisplayMember = "Title";
            this.radTreeView1.DataSource = dt;
        }
````
````VB.NET

    Protected Sub BindRadTreeView()
        Dim dt As New DataTable()
        dt.Columns.Add("Id", GetType(String))
        dt.Columns.Add("Title", GetType(String))
        dt.Columns.Add("ParentId", GetType(String))

        Dim parentId As String = String.Empty
        Dim childId As String = String.Empty
        For i As Integer = 0 To 2
            parentId = Guid.NewGuid().ToString()
            dt.Rows.Add(parentId, "Node" & i, Nothing)
            For j As Integer = 0 To 4
                childId = Guid.NewGuid().ToString()
                dt.Rows.Add(childId, "SubNode" & i & "." & j, parentId)
            Next
        Next

        Me.radTreeView1.ChildMember = "Id"
        Me.radTreeView1.ParentMember = "ParentId"
        Me.radTreeView1.DisplayMember = "Title"
        Me.radTreeView1.DataSource = dt
    End Sub
````

{{endregion}} 

1. Enable multiple [selection]({%slug winforms/treeview/working-with-nodes/selecting-nodes%}) by setting the __MultiSelect__  property to *true*.

1. Create a derivative of the __TreeViewDragDropService__ which should perform the desired drag and drop functionality.  The __OnPreviewDragOver__ method allows you to control on what targets the nodes, being dragged, can be dropped on. The __OnPreviewDragDrop__ method initiates the actual physical move of the nodes from one position to another.

{{source=..\SamplesCS\TreeView\DragAndDrop\DragAndDropInBoundMode.cs region=CustomService}} 
{{source=..\SamplesVB\TreeView\DragAndDrop\DragAndDropInBoundMode.vb region=CustomService}} 

````C#
        
        class CustomDragDropService : TreeViewDragDropService
        {
            private RadTreeViewElement owner;
            private List<RadTreeNode> draggedNodes;
            
            public CustomDragDropService(RadTreeViewElement owner) : base(owner)
            {
                this.owner = owner;
            }
            
            //Save the dragged nodes
            protected override void PerformStart()
            {
                base.PerformStart();
                
                draggedNodes = new List<RadTreeNode>();
                foreach (RadTreeNode selectedNode in this.owner.SelectedNodes)
                {
                    draggedNodes.Add(selectedNode);
                }
            }
            
            //Clean the saved nodes
            protected override void PerformStop()
            {
                base.PerformStop();
                draggedNodes.Clear();
            }
            
            //If tree element or node element is hovered, allow drop
            protected override void OnPreviewDragOver(RadDragOverEventArgs e)
            {
                base.OnPreviewDragOver(e);
                
                RadTreeViewElement targetElement = e.HitTarget as RadTreeViewElement;
                if (targetElement != null && targetElement.Equals(this.owner))
                {
                    e.CanDrop = true;
                }
                else if (e.HitTarget is TreeNodeElement)
                {
                    e.CanDrop = true;
                    
                    foreach (RadTreeNode draggedNode in draggedNodes)
                    {
                        RadTreeNode targetNode = (e.HitTarget as TreeNodeElement).Data.Parent;
                        if (draggedNode == targetNode)
                        {
                            //prevent dragging of a parent node over some of its child nodes
                            e.CanDrop = false;
                            break;
                        }
                    }
                }
            }
            
            //Create copies of the selected node(s) and add them to the hovered node/tree
            protected override void OnPreviewDragDrop(RadDropEventArgs e)
            {
                TreeNodeElement targetNodeElement = e.HitTarget as TreeNodeElement;
                RadTreeViewElement targetTreeView = targetNodeElement == null ? e.HitTarget as RadTreeViewElement
                                                    : targetNodeElement.TreeViewElement;
                
                if (targetTreeView == null)
                {
                    return;
                }
                
                targetTreeView.BeginUpdate();
                
                foreach (RadTreeNode node in draggedNodes)
                {
                    DataRowView rowView = node.DataBoundItem as DataRowView;
                    DataRow row = rowView.Row;
                    DataTable dt = targetTreeView.DataSource as DataTable;
                    if (dt == null)
                    {
                        return;                        
                    }
                    
                    //save expanded state and vertical scrollbar value                   
                    
                    if (targetNodeElement != null)
                    {
                        if (CanShowDropHint(Cursor.Position, targetNodeElement))
                        {
                            //change node' parent
                            RadTreeNode nodeOver = targetNodeElement.Data.Parent;
                            
                            if (nodeOver == null)
                            {
                                nodeOver = targetNodeElement.Data;
                            }
                            
                            DataRowView targetRowView = (DataRowView)nodeOver.DataBoundItem;
                            DataRow targetRow = targetRowView.Row;
                            if (row["ParentId"] != targetRow["ParentId"])
                            {
                                row["ParentId"] = targetRow["Id"];
                            }
                            
                            DataRow rowToInsert = dt.NewRow();
                            rowToInsert["ParentId"] = row["ParentId"];
                            rowToInsert["Id"] = row["Id"];
                            rowToInsert["Title"] = row["Title"];
                            dt.Rows.Remove(row);
                            int targetIndex = GetTargetIndex(dt, targetNodeElement);
                            
                            DropPosition position = this.GetDropPosition(e.DropLocation, targetNodeElement);
                            if (position == DropPosition.AfterNode)
                            {
                                targetIndex++;
                            }
                            dt.Rows.InsertAt(rowToInsert, targetIndex);
                        }
                        else
                        {
                            RadTreeNode nodeOver = targetNodeElement.Data;
                            DataRowView targetRowView = (DataRowView)nodeOver.DataBoundItem;
                            DataRow targetRow = targetRowView.Row;
                            row["ParentId"] = targetRow["Id"];
                        }
                    }
                    else
                    {
                        //make the node "root node"
                        row["ParentId"] = null;
                    }
                    
                    object ds = targetTreeView.DataSource;
                    targetTreeView.DataSource = null;
                    targetTreeView.DataSource = ds;
                    
                    targetTreeView.Update(RadTreeViewElement.UpdateActions.ItemAdded);
                    //restore expanded state and vertical scrollbar value
                }
                targetTreeView.EndUpdate();
            }
            
            private int GetTargetIndex(DataTable dt, TreeNodeElement targetNodeElement)
            {
                int index = 0;
                DataRowView targetRowView = (DataRowView)targetNodeElement.Data.DataBoundItem;
                DataRow targetRow = targetRowView.Row;
                index = dt.Rows.IndexOf(targetRow);
                
                return index;
            }
            
            private bool CanShowDropHint(Point point, TreeNodeElement nodeElement)
            {
                if (nodeElement == null)
                {
                    return false;
                }
                
                Point client = nodeElement.PointFromScreen(point);
                int part = nodeElement.Size.Height / 3;
                return client.Y < part || client.Y > part * 2;
            }
        }
````
````VB.NET

    Private Class CustomDragDropService
        Inherits TreeViewDragDropService
        Private owner As RadTreeViewElement
        Private draggedNodes As List(Of RadTreeNode)

        Public Sub New(owner As RadTreeViewElement)
            MyBase.New(owner)
            Me.owner = owner
        End Sub

        'Save the dragged nodes
        Protected Overrides Sub PerformStart()
            MyBase.PerformStart()

            draggedNodes = New List(Of RadTreeNode)()
            For Each selectedNode As RadTreeNode In Me.owner.SelectedNodes
                draggedNodes.Add(selectedNode)
            Next
        End Sub

        'Clean the saved nodes
        Protected Overrides Sub PerformStop()
            MyBase.PerformStop()
            draggedNodes.Clear()
        End Sub

        'If tree element or node element is hovered, allow drop
        Protected Overrides Sub OnPreviewDragOver(e As RadDragOverEventArgs)
            MyBase.OnPreviewDragOver(e)

            Dim targetElement As RadTreeViewElement = TryCast(e.HitTarget, RadTreeViewElement)
            If targetElement IsNot Nothing AndAlso targetElement.Equals(Me.owner) Then
                e.CanDrop = True
            ElseIf TypeOf e.HitTarget Is TreeNodeElement Then
                e.CanDrop = True

                For Each draggedNode As RadTreeNode In draggedNodes
                    Dim targetNode As RadTreeNode = TryCast(e.HitTarget, TreeNodeElement).Data.Parent
                    If draggedNode.Equals(targetNode) Then
                        'prevent dragging of a parent node over some of its child nodes
                        e.CanDrop = False
                        Exit For
                    End If
                Next
            End If
        End Sub

        'Create copies of the selected node(s) and add them to the hovered node/tree
        Protected Overrides Sub OnPreviewDragDrop(e As RadDropEventArgs)
            Dim targetNodeElement As TreeNodeElement = TryCast(e.HitTarget, TreeNodeElement)
            Dim targetTreeView As RadTreeViewElement = If(targetNodeElement Is Nothing, TryCast(e.HitTarget, RadTreeViewElement), targetNodeElement.TreeViewElement)

            If targetTreeView Is Nothing Then
                Return
            End If

            targetTreeView.BeginUpdate()

            For Each node As RadTreeNode In draggedNodes
                Dim rowView As DataRowView = TryCast(node.DataBoundItem, DataRowView)
                Dim row As DataRow = rowView.Row
                Dim dt As DataTable = TryCast(targetTreeView.DataSource, DataTable)
                If dt Is Nothing Then
                    Return
                End If

                'save expanded state and vertical scrollbar value                   

                If targetNodeElement IsNot Nothing Then
                    If CanShowDropHint(Cursor.Position, targetNodeElement) Then
                        'change node' parent
                        Dim nodeOver As RadTreeNode = targetNodeElement.Data.Parent

                        If nodeOver Is Nothing Then
                            nodeOver = targetNodeElement.Data
                        End If

                        Dim targetRowView As DataRowView = DirectCast(nodeOver.DataBoundItem, DataRowView)
                        Dim targetRow As DataRow = targetRowView.Row
                        If Not row("ParentId").Equals(targetRow("ParentId")) Then
                            row("ParentId") = targetRow("Id")
                        End If

                        Dim rowToInsert As DataRow = dt.NewRow()
                        rowToInsert("ParentId") = row("ParentId")
                        rowToInsert("Id") = row("Id")
                        rowToInsert("Title") = row("Title")
                        dt.Rows.Remove(row)
                        Dim targetIndex As Integer = GetTargetIndex(dt, targetNodeElement)

                        Dim position As DropPosition = Me.GetDropPosition(e.DropLocation, targetNodeElement)
                        If position = DropPosition.AfterNode Then
                            targetIndex += 1
                        End If
                        dt.Rows.InsertAt(rowToInsert, targetIndex)
                    Else
                        Dim nodeOver As RadTreeNode = targetNodeElement.Data
                        Dim targetRowView As DataRowView = DirectCast(nodeOver.DataBoundItem, DataRowView)
                        Dim targetRow As DataRow = targetRowView.Row
                        row("ParentId") = targetRow("Id")
                    End If
                Else
                    'make the node "root node"
                    row("ParentId") = Nothing
                End If

                Dim ds As Object = targetTreeView.DataSource
                targetTreeView.DataSource = Nothing
                targetTreeView.DataSource = ds


                'restore expanded state and vertical scrollbar value
                targetTreeView.Update(RadTreeViewElement.UpdateActions.ItemAdded)
            Next
            targetTreeView.EndUpdate()
        End Sub

        Private Function GetTargetIndex(dt As DataTable, targetNodeElement As TreeNodeElement) As Integer
            Dim index As Integer = 0
            Dim targetRowView As DataRowView = DirectCast(targetNodeElement.Data.DataBoundItem, DataRowView)
            Dim targetRow As DataRow = targetRowView.Row
            index = dt.Rows.IndexOf(targetRow)

            Return index
        End Function

        Private Function CanShowDropHint(point As Point, nodeElement As TreeNodeElement) As Boolean
            If nodeElement Is Nothing Then
                Return False
            End If

            Dim client As Point = nodeElement.PointFromScreen(point)
            Dim part As Integer = nodeElement.Size.Height / 3
            Return client.Y < part OrElse client.Y > part * 2
        End Function
    End Class
````

{{endregion}} 

>note When a change in the underlying data source occurs, the tree needs to repopulate itself in order to get the latest changes. As a result, the expanded state of the available nodes, selection and scroll bar position are not kept.[Keep RadTreeView states on reset]({%slug winforms/treeview/how-to/keep-radtreeview-states-on-reset%})help article explains how to save the tree state prior the change and restore it afterwards.
>

1. The custom __TreeViewDragDropService__ is ready. Now, we need to replace the default one. For this purpose, it is necessary to create a derivative of the __RadTreeViewElement__ and override the __CreateDragDropService__ method. 

{{source=..\SamplesCS\TreeView\DragAndDrop\DragAndDropInBoundMode.cs region=CustomTreeViewElement}} 
{{source=..\SamplesVB\TreeView\DragAndDrop\DragAndDropInBoundMode.vb region=CustomTreeViewElement}} 

````C#
        
        class CustomTreeViewElement : RadTreeViewElement
        {
            protected override Type ThemeEffectiveType
            {
                get
                {
                    return typeof(RadTreeViewElement);
                }
            }
            
            protected override TreeViewDragDropService CreateDragDropService()
            {
                return new CustomDragDropService(this);
            }
        }
````
````VB.NET

    Private Class CustomTreeViewElement
        Inherits RadTreeViewElement
        Protected Overrides ReadOnly Property ThemeEffectiveType() As Type
            Get
                Return GetType(RadTreeViewElement)
            End Get
        End Property

        Protected Overrides Function CreateDragDropService() As TreeViewDragDropService
            Return New CustomDragDropService(Me)
        End Function
    End Class
````

{{endregion}} 

1. Finally, replace the default __RadTreeViewElement__ in the tree with the custom one.

{{source=..\SamplesCS\TreeView\DragAndDrop\DragAndDropInBoundMode.cs region=TreeView}} 
{{source=..\SamplesVB\TreeView\DragAndDrop\DragAndDropInBoundMode.vb region=TreeView}} 

````C#
        
        class CustomTreeView : RadTreeView
        {
            protected override RadTreeViewElement CreateTreeViewElement()
            {
                return new CustomTreeViewElement();
            }
            
            public override string ThemeClassName
            {
                get
                {
                    return typeof(RadTreeView).FullName;
                }
                set
                {
                    base.ThemeClassName = value;
                }
            }
        }
````
````VB.NET

    Private Class CustomTreeView
        Inherits RadTreeView
        Protected Overrides Function CreateTreeViewElement() As RadTreeViewElement
            Return New CustomTreeViewElement()
        End Function

        Public Overrides Property ThemeClassName() As String
            Get
                Return GetType(RadTreeView).FullName
            End Get
            Set(value As String)
                MyBase.ThemeClassName = value
            End Set
        End Property
    End Class
````

{{endregion}}
