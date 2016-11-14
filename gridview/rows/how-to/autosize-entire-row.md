---
title: Auto-Size Entire Row Text
page_title: Auto-Size Entire Row Text | RadGridView
description: This article will explain how you can measure the entire row so the row height is constant while the users are scrolling horizontally.
slug: winforms/gridview/rows/how-to/auto-size
tags: auto-size,rows
published: True
position: 0
---

# Auto-size entire row height.

It is common to use the rows auto-size functionality when the cells have multi-line text. However by default the grid measures only the visible cells text. So when the users scrolls horizontally the row height might be adjusted dynamically. This article will explain how you can measure the entire row so the row height is constant while the users are scrolling horizontally.

### Create custom row element.

In order to return the proper rows height to the grid you need to create a custom row element. Then you should override the __MeasureOverride__ method. You need this method in order to measure all cells not just the visual ones. Then you can return the proper height. In order to speed the measure process, you can check the height only of the cells that are not visible. 

#### Sample implementation for the custom row element.

{{source=..\SamplesCS\GridView\Rows\AutoSizeWholeRows.cs region=RowElement}} 
{{source=..\SamplesVB\GridView\Rows\AutoSizeWholeRows.vb region=RowElement}}
````C#
public class CustomRowElement : GridDataRowElement
{
    protected override Type ThemeEffectiveType
    {
        get
        {
            return typeof(GridDataRowElement);
        }
    }
    protected override SizeF MeasureOverride(SizeF availableSize)
    {
        SizeF baseSize = base.MeasureOverride(availableSize);
        CellElementProvider provider = new CellElementProvider(this.TableElement);
        SizeF desiredSize = SizeF.Empty;
        foreach (GridViewColumn column in this.ViewTemplate.Columns)
        {
            if (!this.IsColumnVisible(column))
            {
                continue;
            }
            GridDataCellElement cellElement = provider.GetElement(column, this) as GridDataCellElement;
            this.Children.Add(cellElement);
            if (cellElement != null)
            {
                cellElement.Measure(new SizeF(column.Width, float.PositiveInfinity));
                if (desiredSize.Height < cellElement.DesiredSize.Height)
                {
                    desiredSize.Height = cellElement.DesiredSize.Height;
                }
            }
            cellElement.Detach();
            this.Children.Remove(cellElement);
        }
        SizeF elementSize = this.TableElement.RowScroller.ElementProvider.GetElementSize(this.RowInfo);
        int oldHeight = RowInfo.Height == -1 ? (int)elementSize.Height : RowInfo.Height;
        this.RowInfo.SuspendPropertyNotifications();
        this.RowInfo.Height = (int)desiredSize.Height;
        this.RowInfo.ResumePropertyNotifications();
        if (!this.RowInfo.IsPinned)
        {
            int delta = RowInfo.Height - oldHeight;
            TableElement.RowScroller.UpdateScrollRange(TableElement.RowScroller.Scrollbar.Maximum + delta, false);
        }
        baseSize.Height = this.RowInfo.Height;
        return baseSize;
    }
    private bool IsColumnVisible(GridViewColumn column)
    {
        return column.IsVisible;
    }
}

````
````VB.NET
Public Class CustomRowElement
    Inherits GridDataRowElement
    Protected Overrides ReadOnly Property ThemeEffectiveType() As Type
        Get
            Return GetType(GridDataRowElement)
        End Get
    End Property
    Protected Overrides Function MeasureOverride(ByVal availableSize As SizeF) As SizeF
        Dim baseSize As SizeF = MyBase.MeasureOverride(availableSize)
        Dim provider As New CellElementProvider(Me.TableElement)
        Dim desiredSize As SizeF = SizeF.Empty
        For Each column As GridViewColumn In Me.ViewTemplate.Columns
            If Not Me.IsColumnVisible(column) Then
                Continue For
            End If
            Dim cellElement As GridDataCellElement = TryCast(provider.GetElement(column, Me), GridDataCellElement)
            Me.Children.Add(cellElement)
            If cellElement IsNot Nothing Then
                cellElement.Measure(New SizeF(column.Width, Single.PositiveInfinity))
                If desiredSize.Height < cellElement.DesiredSize.Height Then
                    desiredSize.Height = cellElement.DesiredSize.Height
                End If
            End If
            cellElement.Detach()
            Me.Children.Remove(cellElement)
        Next column
        Dim elementSize As SizeF = Me.TableElement.RowScroller.ElementProvider.GetElementSize(Me.RowInfo)
        Dim oldHeight As Integer = If(RowInfo.Height = -1, CInt(elementSize.Height), RowInfo.Height)
        Me.RowInfo.SuspendPropertyNotifications()
        Me.RowInfo.Height = CInt(desiredSize.Height)
        Me.RowInfo.ResumePropertyNotifications()
        If Not Me.RowInfo.IsPinned Then
            Dim delta As Integer = RowInfo.Height - oldHeight
            TableElement.RowScroller.UpdateScrollRange(TableElement.RowScroller.Scrollbar.Maximum + delta, False)
        End If
        baseSize.Height = Me.RowInfo.Height
        Return baseSize
    End Function
    Private Function IsColumnVisible(ByVal column As GridViewColumn) As Boolean
        Return column.IsVisible
    End Function
End Class

```` 

{{endregion}} 


### Using the custom row element.

The final step is to replace the default row elements. This can be achieved in the __CreateRow__ event handler.

{{source=..\SamplesCS\GridView\Rows\AutoSizeWholeRows.cs region=ChangeRow}} 
{{source=..\SamplesVB\GridView\Rows\AutoSizeWholeRows.vb region=ChangeRow}}

````C#
void radGridView1_CreateRow(object sender, GridViewCreateRowEventArgs e)
{
    if (e.RowType == typeof(GridDataRowElement))
    {
        e.RowType = typeof(CustomRowElement);
    }
}

````
````VB.NET
Private Sub radGridView1_CreateRow(ByVal sender As Object, ByVal e As GridViewCreateRowEventArgs)
    If e.RowType Is GetType(GridDataRowElement) Then
        e.RowType = GetType(CustomRowElement)
    End If
End Sub

```` 

{{endregion}} 

