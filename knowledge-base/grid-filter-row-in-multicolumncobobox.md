---
title: How to Use GridView Filter Row in RadMultiColumnCombobox
description: Learn how to use the grid's filter row in RadMultiColumnCombobox.
type: how-to
page_title: How to Use GridView Filter Row in RadMultiColumnCombobox
slug: grid-filter-row-in-multicolumncobobox
position: 5
tags: grid, filter, multicolumn
ticketid: 1521435
res_type: kb
---


## Environment
|Product Version|Product|Author|
|----|----|----|
|2021.2.511|RadMultiColumnCombobox|[Desislava Yordanova](https://www.telerik.com/blogs/author/desislava-yordanova)|

## Description

This tutorial demonstrates a sample approach how to enable the filtering row in the popup grid and filter the records according to the user's input in the particular column.  
 
![grid-filter-row-in-multicolumncobobox 001](images/grid-filter-row-in-multicolumncobobox001.gif)

## Solution

Create an extension **Filtering** method for the **RadMultiColumnComboBox**. It enables the filtering row in the popup grid. 

````C#
public partial class Form1 : Form
{
    public Form1()
    {
        InitializeComponent();
    } 

    private void Form1_Load(object sender, EventArgs e)
    { 
        this.customersTableAdapter.Fill(this.nwindDataSet.Customers);

        this.radMultiColumnComboBox1.DataSource = this.customersBindingSource;
        this.radMultiColumnComboBox1.DisplayMember = "ContactName";
        this.radMultiColumnComboBox1.ValueMember = "CustomerID";
        this.radMultiColumnComboBox1.AutoSizeDropDownToBestFit = true;
        this.radMultiColumnComboBox1.AutoSizeDropDownColumnMode = BestFitColumnMode.AllCells;

        this.radMultiColumnComboBox1.Filtering(true);
    }
}

internal static class ExtensionsRadMultiColumnComboBox
{
    public static void Filtering(this RadMultiColumnComboBox combo, bool enable)
    {
        if (enable)
        {
            if (!combo.EditorControl.EnableFiltering)
            {
                combo.DropDownClosing += RadMultiColumnComboBoxDropDownClosing;

                var multiColumnComboBoxElement = combo.MultiColumnComboBoxElement;
                multiColumnComboBoxElement.EditorControl.EnableFiltering = true;
                multiColumnComboBoxElement.EditorControl.ShowFilteringRow = true;
                multiColumnComboBoxElement.EditorControl.FilterChanging +=
                    RadMultiColumnComboBoxEditorControlFilterChanging;
            }
        }
        else
        {
            if (combo.EditorControl.EnableFiltering)
            {
                combo.DropDownClosing -= RadMultiColumnComboBoxDropDownClosing;

                var multiColumnComboBoxElement = combo.MultiColumnComboBoxElement;
                multiColumnComboBoxElement.EditorControl.EnableFiltering = false;
                multiColumnComboBoxElement.EditorControl.ShowFilteringRow = false;
                multiColumnComboBoxElement.EditorControl.FilterChanging -=
                    RadMultiColumnComboBoxEditorControlFilterChanging;
            }
        }
    }

    private static void RadMultiColumnComboBoxEditorControlFilterChanging(object sender,
        GridViewCollectionChangingEventArgs e)
    {
        var multiColumnComboGridView = sender as MultiColumnComboGridView;
        if (multiColumnComboGridView == null)
            return;
        if (multiColumnComboGridView.Parent == null)
            return;
        var radPopupControlBase = multiColumnComboGridView.Parent as MultiColumnComboPopupForm;
        if (radPopupControlBase == null)
            return;
        if (!radPopupControlBase.IsDisplayed)
            return;
        if (e.OldItems == null)
            return;
        if (e.OldItems.Count == 0)
            return;
        var filterDescriptor = e.OldItems[0] as FilterDescriptor;
        if (filterDescriptor == null)
            return;
        var grid = multiColumnComboGridView;
        var currentRow = grid.CurrentRow;
        if (currentRow.RowElementType != typeof (GridFilterRowElement))
            return;
        var value = currentRow.Cells[filterDescriptor.PropertyName].Value ?? string.Empty;
        if (value == null)
            return;
        string activeEditorString = null;
        if (grid.ActiveEditor != null)
        {
            var activeEditorValue = grid.ActiveEditor.Value ?? string.Empty;
            activeEditorString = activeEditorValue.ToString();
        }
        if (e.NewValue == null && value.ToString() != string.Empty &&
            !(activeEditorString != null && activeEditorString == string.Empty &&
              grid.CurrentColumn.Name == filterDescriptor.PropertyName))
            e.Cancel = true;
    }

    private static void RadMultiColumnComboBoxDropDownClosing(object sender, RadPopupClosingEventArgs args)
    {
        var radMultiColumnComboBox = sender as RadMultiColumnComboBox;
        if (radMultiColumnComboBox == null)
            return;
        var popupForm = radMultiColumnComboBox.MultiColumnComboBoxElement.PopupForm;
        var editorControl = radMultiColumnComboBox.MultiColumnComboBoxElement.EditorControl;
        MultiColumnComboBoxDropDownClosingHandler(popupForm, editorControl, args);
    }

    private static void MultiColumnComboBoxDropDownClosingHandler(RadPopupControlBase popupForm,
        RadGridView editorControl, RadPopupClosingEventArgs args)
    {
        var mousePosition = Control.MousePosition;
        var xIn = mousePosition.X >= popupForm.Location.X &&
                  mousePosition.X <= popupForm.Location.X + popupForm.Size.Width;
        var yIn = mousePosition.Y >= popupForm.Location.Y &&
                  mousePosition.Y <= popupForm.Location.Y + popupForm.Size.Height;
        if (editorControl.CurrentRow.Index == -1 && xIn && yIn)
        {
            args.Cancel = true;
        }
        else
        {
            if (editorControl.ActiveEditor != null)
            {
                editorControl.ActiveEditor.EndEdit();
            }
            editorControl.FilterChanging -= RadMultiColumnComboBoxEditorControlFilterChanging;
            foreach (var column in editorControl.Columns)
            {
                column.FilterDescriptor = null;
            }
            editorControl.FilterChanging += RadMultiColumnComboBoxEditorControlFilterChanging;
        }
    }
}


````
````VB.NET

Public Class RadForm1
    Private Sub RadForm1_Load(sender As Object, e As EventArgs) Handles MyBase.Load
        Me.CustomersTableAdapter.Fill(Me.NwindDataSet.Customers)

        Me.RadMultiColumnComboBox1.DataSource = Me.CustomersBindingSource
        Me.RadMultiColumnComboBox1.DisplayMember = "ContactName"
        Me.RadMultiColumnComboBox1.ValueMember = "CustomerID"
        Me.RadMultiColumnComboBox1.AutoSizeDropDownToBestFit = True
        Me.RadMultiColumnComboBox1.AutoSizeDropDownColumnMode = BestFitColumnMode.AllCells
        Me.RadMultiColumnComboBox1.Filtering(True)
    End Sub
End Class

Module ExtensionsRadMultiColumnComboBox
    <Extension()>
    Sub Filtering(ByVal combo As RadMultiColumnComboBox, ByVal enable As Boolean)
        If enable Then

            If Not combo.EditorControl.EnableFiltering Then
                AddHandler combo.DropDownClosing, AddressOf RadMultiColumnComboBoxDropDownClosing
                Dim multiColumnComboBoxElement = combo.MultiColumnComboBoxElement
                multiColumnComboBoxElement.EditorControl.EnableFiltering = True
                multiColumnComboBoxElement.EditorControl.ShowFilteringRow = True
                AddHandler multiColumnComboBoxElement.EditorControl.FilterChanging, AddressOf RadMultiColumnComboBoxEditorControlFilterChanging
            End If
        Else

            If combo.EditorControl.EnableFiltering Then
                RemoveHandler combo.DropDownClosing, AddressOf RadMultiColumnComboBoxDropDownClosing
                Dim multiColumnComboBoxElement = combo.MultiColumnComboBoxElement
                multiColumnComboBoxElement.EditorControl.EnableFiltering = False
                multiColumnComboBoxElement.EditorControl.ShowFilteringRow = False
                RemoveHandler multiColumnComboBoxElement.EditorControl.FilterChanging, AddressOf RadMultiColumnComboBoxEditorControlFilterChanging
            End If
        End If
    End Sub

    Private Sub RadMultiColumnComboBoxEditorControlFilterChanging(ByVal sender As Object, ByVal e As GridViewCollectionChangingEventArgs)
        Dim multiColumnComboGridView = TryCast(sender, MultiColumnComboGridView)
        If multiColumnComboGridView Is Nothing Then Return
        If multiColumnComboGridView.Parent Is Nothing Then Return
        Dim radPopupControlBase = TryCast(multiColumnComboGridView.Parent, MultiColumnComboPopupForm)
        If radPopupControlBase Is Nothing Then Return
        If Not radPopupControlBase.IsDisplayed Then Return
        If e.OldItems Is Nothing Then Return
        If e.OldItems.Count = 0 Then Return
        Dim filterDescriptor = TryCast(e.OldItems(0), FilterDescriptor)
        If filterDescriptor Is Nothing Then Return
        Dim grid = multiColumnComboGridView
        Dim currentRow = grid.CurrentRow
        If currentRow.RowElementType <> GetType(GridFilterRowElement) Then Return
        Dim value = If(currentRow.Cells(filterDescriptor.PropertyName).Value, String.Empty)
        If value Is Nothing Then Return
        Dim activeEditorString As String = Nothing

        If grid.ActiveEditor IsNot Nothing Then
            Dim activeEditorValue = If(grid.ActiveEditor.Value, String.Empty)
            activeEditorString = activeEditorValue.ToString()
        End If

        If e.NewValue Is Nothing AndAlso value.ToString() <> String.Empty AndAlso Not (activeEditorString IsNot Nothing AndAlso
            activeEditorString = String.Empty AndAlso grid.CurrentColumn.Name = filterDescriptor.PropertyName) Then e.Cancel = True
    End Sub

    Private Sub RadMultiColumnComboBoxDropDownClosing(ByVal sender As Object, ByVal args As RadPopupClosingEventArgs)
        Dim radMultiColumnComboBox = TryCast(sender, RadMultiColumnComboBox)
        If radMultiColumnComboBox Is Nothing Then Return
        Dim popupForm = radMultiColumnComboBox.MultiColumnComboBoxElement.PopupForm
        Dim editorControl = radMultiColumnComboBox.MultiColumnComboBoxElement.EditorControl
        MultiColumnComboBoxDropDownClosingHandler(popupForm, editorControl, args)
    End Sub

    Private Sub MultiColumnComboBoxDropDownClosingHandler(ByVal popupForm As RadPopupControlBase, ByVal editorControl As RadGridView, ByVal args As RadPopupClosingEventArgs)
        Dim mousePosition = Control.MousePosition
        Dim xIn = mousePosition.X >= popupForm.Location.X AndAlso mousePosition.X <= popupForm.Location.X + popupForm.Size.Width
        Dim yIn = mousePosition.Y >= popupForm.Location.Y AndAlso mousePosition.Y <= popupForm.Location.Y + popupForm.Size.Height

        If editorControl.CurrentRow.Index = -1 AndAlso xIn AndAlso yIn Then
            args.Cancel = True
        Else

            If editorControl.ActiveEditor IsNot Nothing Then
                editorControl.ActiveEditor.EndEdit()
            End If

            RemoveHandler editorControl.FilterChanging, AddressOf RadMultiColumnComboBoxEditorControlFilterChanging

            For Each column In editorControl.Columns
                column.FilterDescriptor = Nothing
            Next

            AddHandler editorControl.FilterChanging, AddressOf RadMultiColumnComboBoxEditorControlFilterChanging
        End If
    End Sub
End Module


````

# See Also

* [Filtering in RadMultiColumnComboBox]({%slug winforms/multicolumncombobox/filtering%})

