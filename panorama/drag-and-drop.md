---
title: Drag and Drop
page_title: Drag and Drop | RadPanorama
description: RadPanorama is a control that displays elements of type RadTileElement in a mosaic manner.
slug: winforms/panorama
tags: panorama
published: True
position: 10 
---

# Drag and Drop

**RadPanorama** handles the whole drag and drop operation by its **TileDragDropService**. The **OnPreviewDragOver** method allows you to control on what targets the tile being dragged can be dropped on. The **OnPreviewDragDrop** method allows you to get a handle on all the aspects of the drag and drop operation, the source (drag) RadPanorama, the destination (target) control, as well as the tile being dragged. This is where the actual physical move of the tile(s) from **RadPanorama** to the target control is performed. 

## Drag and Drop functionality between two RadPanorama controls

By default, **RadPanorama** supports drag and drop functionality of the tiles within the same **RadPanorama**. The following example demonstrates a sample approach how to handle the aforementioned events and achieve drag and drop behavior between two **RadPanorama** controls. There is a **TileGroupElement** added to each **RadPanorama**.

![panorama-drag-and-drop 001](images/panorama-drag-and-drop001.gif)

{{source=..\SamplesCS\Panorama\PanoramaDragDrop.cs region=CustomTileDragDropService}} 
{{source=..\SamplesVB\Panorama\PanoramaDragDrop.vb region=CustomTileDragDropService}} 

````C#
public class CustomTileDragDropService : TileDragDropService
{
    public CustomTileDragDropService(RadPanoramaElement owner) : base(owner)
    {
    }
 
    RadPanoramaElement draggedParent;
    RadPanoramaElement targetParent;
 
    protected override void OnPreviewDragOver(RadDragOverEventArgs e)
    {
        RadTileElement draggedTile = e.DragInstance as RadTileElement;
        if (draggedTile != null)
        {
            draggedParent = GetTileParent(draggedTile);               
            if (e.HitTarget is RadTileElement)
            {
                targetParent = GetTileParent(e.HitTarget as RadTileElement);
                if (targetParent != draggedParent)
                {
                    e.CanDrop = true;
                }
                else
                {
                    e.CanDrop = false;
                }
            }
            else
            {
                e.CanDrop = false;
            }
        }
    }
 
    private RadPanoramaElement GetTileParent(RadTileElement tile)
    {
        RadElement current = tile.Parent;
        while (current != null)
        {
            if (current is RadPanoramaElement)
            {
                current = current as RadPanoramaElement;
                break;
            }
            current = current.Parent;
        }
        return current as RadPanoramaElement ;
    }
 
    protected override void OnPreviewDragDrop(RadDropEventArgs e)
    {
        e.Handled = true;
        RadTileElement source = this.Context as RadTileElement;
        RadTileElement target = e.HitTarget as RadTileElement;
        TileGroupElement targetGroup = null;
        int insertIndex = 0;
        if (source == null)
        {
            return;
        }
        draggedParent.Items.Remove(source);
       
        if (target != null)
        {
            //groups are available
            if (targetParent.Groups.Count > 0)
            {
                targetGroup = target.Parent.Parent as TileGroupElement;
                insertIndex = targetGroup.Items.IndexOf(target);
            }
            else
            {
                insertIndex = targetParent.Items.IndexOf(target);
            }
            if (insertIndex > -1)
            {
                source.Column = target.Column;
                source.Row = target.Row;
                if (targetGroup != null)
                {
                    targetGroup.Items.Insert(insertIndex, source);
                }
                else
                {
                    targetParent.Items.Insert(insertIndex, source);
                }
            }
        }
        else
        {
            targetParent.Items.Add(source);
        }
 
        if (targetGroup != null)
        {
            AdjustPosition(source, insertIndex, targetGroup.Items);
        }
        else
        {
            AdjustPosition(source, insertIndex, targetParent.Items);
        }
    }
 
    private void AdjustPosition(RadTileElement source, int insertIndex, RadItemOwnerCollection items)
    {
        for (int i = insertIndex + 1; i < items.Count; i++)
        {
            RadTileElement tile = items[i] as RadTileElement;
            if (tile.Row == source.Row && tile.Column >= source.Column && tile != source)
            {
                tile.Column++;
            }
        }
    }
}

````
````VB.NET
Public Class CustomTileDragDropService
    Inherits TileDragDropService
    Public Sub New(owner As RadPanoramaElement)
        MyBase.New(owner)
    End Sub
    Private draggedParent As RadPanoramaElement
    Private targetParent As RadPanoramaElement
    Protected Overrides Sub OnPreviewDragOver(e As RadDragOverEventArgs)
        Dim draggedTile As RadTileElement = TryCast(e.DragInstance, RadTileElement)
        If draggedTile IsNot Nothing Then
            draggedParent = GetTileParent(draggedTile)
            If TypeOf e.HitTarget Is RadTileElement Then
                targetParent = GetTileParent(TryCast(e.HitTarget, RadTileElement))
                If Not targetParent.Equals(draggedParent) Then
                    e.CanDrop = True
                Else
                    e.CanDrop = False
                End If
            Else
                e.CanDrop = False
            End If
        End If
    End Sub
    Private Function GetTileParent(tile As RadTileElement) As RadPanoramaElement
        Dim current As RadElement = tile.Parent
        While current IsNot Nothing
            If TypeOf current Is RadPanoramaElement Then
                current = TryCast(current, RadPanoramaElement)
                Exit While
            End If
            current = current.Parent
        End While
        Return TryCast(current, RadPanoramaElement)
    End Function
    Protected Overrides Sub OnPreviewDragDrop(e As RadDropEventArgs)
        e.Handled = True
        Dim source As RadTileElement = TryCast(Me.Context, RadTileElement)
        Dim target As RadTileElement = TryCast(e.HitTarget, RadTileElement)
        Dim targetGroup As TileGroupElement = Nothing
        Dim insertIndex As Integer = 0
        If source Is Nothing Then
            Return
        End If
        draggedParent.Items.Remove(source)
        If target IsNot Nothing Then
            'groups are available
            If targetParent.Groups.Count > 0 Then
                targetGroup = TryCast(target.Parent.Parent, TileGroupElement)
                insertIndex = targetGroup.Items.IndexOf(target)
            Else
                insertIndex = targetParent.Items.IndexOf(target)
            End If
            If insertIndex > -1 Then
                source.Column = target.Column
                source.Row = target.Row
                If targetGroup IsNot Nothing Then
                    targetGroup.Items.Insert(insertIndex, source)
                Else
                    targetParent.Items.Insert(insertIndex, source)
                End If
            End If
        Else
            targetParent.Items.Add(source)
        End If
        If targetGroup IsNot Nothing Then
            AdjustPosition(source, insertIndex, targetGroup.Items)
        Else
            AdjustPosition(source, insertIndex, targetParent.Items)
        End If
    End Sub
    Private Sub AdjustPosition(source As RadTileElement, insertIndex As Integer, items As RadItemOwnerCollection)
        For i As Integer = insertIndex + 1 To items.Count - 1
            Dim tile As RadTileElement = TryCast(items(i), RadTileElement)
            If tile.Row = source.Row AndAlso tile.Column >= source.Column AndAlso Not tile.Equals(source) Then
                tile.Column += 1
            End If
        Next
    End Sub
End Class

````

{{endregion}}

In order to replace the default **TileDragDropService** with the default one, it is necessary to set the PanoramaElement.**DragDropService** property:

{{source=..\SamplesCS\Panorama\PanoramaDragDrop.cs region=ReplaceService}} 
{{source=..\SamplesVB\Panorama\PanoramaDragDrop.vb region=ReplaceService}} 

````C#
radPanorama1.PanoramaElement.DragDropService = new CustomTileDragDropService(radPanorama1.PanoramaElement);

````
````VB.NET
radPanorama1.PanoramaElement.DragDropService = New CustomTileDragDropService(radPanorama1.PanoramaElement)

````

{{endregion}}

# See Also

* [Structure]({%slug winforms/panorama/structure%})	
* [Design Time]({%slug winforms/panorama/design-time%})	
* [Getting Started]({%slug winforms/panorama/getting-started%})	
* [Properties and Methods ]({%slug winforms/panorama/settings%})	
* [Tiles]({%slug winforms/panorama/tiles%})	
