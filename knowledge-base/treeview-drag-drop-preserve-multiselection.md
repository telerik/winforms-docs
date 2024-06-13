---
title: Enabling Drag and Drop with MultiSelect in RadTreeView
description: Learn how to implement drag and drop functionality for multiple selected nodes in RadTreeView for WinForms.
type: how-to
page_title: How to Enable Drag and Drop for MultiSelection in RadTreeView
slug: treeview-drag-drop-preserve-multiselection
tags: treeview, winforms, dragdrop, multiselect, dragdrop-effects, allowdragdrop, mousedown, mousemove
res_type: kb
category: knowledge-base
ticketid: 1651843
---

## Environment

| Product | Version |
| --- | --- |
| 2024.2.514 | RadTreeView for WinForms | [Dinko Krastev](https://www.telerik.com/blogs/author/dinko-krastev)|

## Description

In applications using RadTreeView with multi-selection enabled, implementing drag and drop functionality while preserving the selection state can present challenges. This KB article addresses how to implement drag and drop for multiple selected nodes in RadTreeView to external control, while preserving the selected items in drag-drop operation

This KB article also answers the following questions:
- How can I drag and drop multiple nodes in RadTreeView?
- How do I maintain node selection during drag and drop in RadTreeView?
- How to ensure `DragEnter` and `DragDrop` events trigger correctly in RadTreeView with multi-selection?

## Solution

To enable drag and drop functionality for multiple selected nodes in RadTreeView while maintaining the selection, follow these steps:

1. Set `MultiSelect` to `true` and `AllowDragDrop` to `true` on RadTreeView.
2. Enable drag and drop on the target control (e.g., RadTextBox) by setting `AllowDrop` to `true`.
3. Utilize the `MouseDown` and `MouseMove` events of RadTreeView to initiate the drag and drop operation.
4. In the `DragDrop` and `DragEnter` event handlers of the target control, implement logic to process the dropped data.

Below is the implementation in C#:

````C#
using System;
using System.Drawing;
using System.Windows.Forms;
using Telerik.WinControls.UI;

namespace TelerikWinFormsApp9
{
    public partial class RadForm1 : RadForm
    {
        private Point mouseDownPosition;

        public RadForm1()
        {
            InitializeComponent();

            radTreeView1.MultiSelect = true;
            radTreeView1.AllowDragDrop = true;

            radTextBox1.AllowDrop = true;
            radTextBox1.TextBoxElement.AllowDrop = true;

            radTreeView1.MouseDown += RadTreeView1_MouseDown;
            radTreeView1.MouseMove += RadTreeView1_MouseMove;

            radTextBox1.DragEnter += RadTextBox1_DragEnter;
            radTextBox1.DragDrop += RadTextBox1_DragDrop;
        }

        private void RadTextBox1_DragDrop(object sender, DragEventArgs e)
        {
            var textBox = sender as RadTextBox;
            var draggedText = e.Data.GetData(typeof(string)).ToString();
            textBox.Text = draggedText;
        }

        private void RadTextBox1_DragEnter(object sender, DragEventArgs e)
        {
            e.Effect = DragDropEffects.Copy;
        }

        private void RadTreeView1_MouseMove(object sender, MouseEventArgs e)
        {
            if (e.Button != MouseButtons.Left)
            {
                return;
            }

            if (ShouldBeginDrag(mouseDownPosition, e.Location))
            {
                var item = radTreeView1.ElementTree.GetElementAtPoint(e.Location);
                if (item != null && item is TreeNodeElement)
                {
                    var node = ((TreeNodeElement)item).Data;
                    var nodes = radTreeView1.SelectedNodes;
                    (sender as RadTreeView).DoDragDrop(node.Text, DragDropEffects.Copy);
                }
            }
        }

        private bool ShouldBeginDrag(Point current, Point capture)
        {
            var dragSize = SystemInformation.DragSize;
            var dragRect = new Rectangle(capture.X - dragSize.Width / 2, capture.Y - dragSize.Height / 2, dragSize.Width, dragSize.Height);
            return !dragRect.Contains(current);
        }

        private void RadTreeView1_MouseDown(object sender, MouseEventArgs e)
        {
            mouseDownPosition = e.Location;
            radTreeView1.TreeViewElement.DragDropService.Stop(false);
        }
    }
}

````
````VB.NET

Me.RadTreeView1.MultiSelect = True
RadTreeView1.AllowDragDrop = True

RadTextBox1.AllowDrop = True
RadTextBox1.TextBoxElement.AllowDrop = True

AddHandler RadTextBox1.DragEnter, AddressOf RadTextBox1_DragEnter
AddHandler RadTextBox1.DragDrop, AddressOf RadTextBox1_DragDrop

AddHandler RadTreeView1.MouseDown, AddressOf RadTreeView1_MouseDown
AddHandler RadTreeView1.MouseMove, AddressOf RadTreeView1_MouseMove

Private Sub RadTextBox1_DragDrop(ByVal sender As Object, ByVal e As DragEventArgs)
    Dim textBox As RadTextBox = TryCast(sender, RadTextBox)
    Dim draggedText As String = CStr(e.Data.GetData(GetType(String)))
    textBox.Text = draggedText
End Sub

Private Sub RadTextBox1_DragEnter(ByVal sender As Object, ByVal e As DragEventArgs)
    e.Effect = DragDropEffects.Copy
End Sub

Private mouseDownPosition As Point
Private Sub RadTreeView1_MouseMove(ByVal sender As Object, ByVal e As MouseEventArgs)

    If e.Button <> MouseButtons.Left Then
        Return
    End If

    If Me.ShouldBeginDrag(Me.mouseDownPosition, e.Location) Then
        Dim item = Me.RadTreeView1.ElementTree.GetElementAtPoint(e.Location)
        If item IsNot Nothing AndAlso TypeOf item Is TreeNodeElement Then

            Dim node = (TryCast(item, TreeNodeElement)).Data


            Dim nodes = RadTreeView1.SelectedNodes


            TryCast(sender, RadTreeView).DoDragDrop(node.Text, DragDropEffects.Copy)

        End If
    End If
End Sub
Private Function ShouldBeginDrag(ByVal current As Point, ByVal capture As Point) As Boolean
    Dim dragSize As Size = SystemInformation.DragSize
    Dim dragRect As New Rectangle(capture.X - dragSize.Width \ 2, capture.Y - dragSize.Height \ 2, dragSize.Width, dragSize.Height)
    Return Not dragRect.Contains(current)
End Function

Private Sub RadTreeView1_MouseDown(ByVal sender As Object, ByVal e As MouseEventArgs)
    Me.mouseDownPosition = e.Location
    RadTreeView1.TreeViewElement.DragDropService.Stop(False)
End Sub

````


This solution enables the drag and drop of multiple selected nodes from RadTreeView to another control (e.g., RadTextBox), with the `DragEnter` and `DragDrop` events firing as expected. 

## Notes
- Adjust the logic within the `DragDrop` event handler as needed to fit your specific requirements.
- Ensure that both the source (RadTreeView) and target controls have their respective properties and event handlers correctly configured to support drag and drop functionality.

## See Also
- [RadTreeView Documentation](https://docs.telerik.com/devtools/winforms/controls/treeview/overview)
- [Drag and Drop in RadTreeView](https://docs.telerik.com/devtools/winforms/controls/treeview/drag-and-drop)
