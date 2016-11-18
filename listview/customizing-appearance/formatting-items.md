---
title: Formatting Items
page_title: Formatting Items | RadListView
description: Telerik RadListView control is created as a result of the concord of the powerful data layer used by RadGridView and RadListControl, together with the outstanding Telerik Presentation Framework.
slug: winforms/listview/formatting-items
tags: formatting,items
published: True
position: 1
previous_url: listview-formating-items
---

# Formatting Items

Depending on the **ViewType**, **RadListView** provides a convenient way for customizing the items.

## Formatting items in ListView and IconsView modes 

Items appearance in __RadListView__ can be customized by making use of the __VisualItemFormatting__ event. The following example, demonstrates how you can change the color of an item which is being selected.

>note By using this event to customize the items appearance, you should always provide an else clause,  where you reset the appearance settings which you have introduced. This is necessary since __RadListView__ uses data virtualization, which might lead to unpredicted appearance results when items are being reused.

>caption Figure 1: Customizing items in the VisualItemFormatting event

![listview-formatting-items 001](images/listview-formatting-items001.png)

#### Customizing items when using the VisualItemFormatting event

{{source=..\SamplesCS\ListView\ListViewFormattingItems.cs region=VisualItemFormatting}} 
{{source=..\SamplesVB\ListView\ListViewFormattingItems.vb region=VisualItemFormatting}} 

````C#
Font font = new Font("Consolas", 14, FontStyle.Bold);
void radListView1_VisualItemFormatting(object sender, Telerik.WinControls.UI.ListViewVisualItemEventArgs e)
{
    if (e.VisualItem.Selected)
    {
        e.VisualItem.NumberOfColors = 1;
        e.VisualItem.BackColor = Color.LightGreen;
        e.VisualItem.ForeColor = Color.Red;
        e.VisualItem.BorderColor = Color.Blue;
        e.VisualItem.Font = font;
    }
    else
    {
        e.VisualItem.ResetValue(LightVisualElement.NumberOfColorsProperty, Telerik.WinControls.ValueResetFlags.Local);
        e.VisualItem.ResetValue(LightVisualElement.BackColorProperty, Telerik.WinControls.ValueResetFlags.Local);
        e.VisualItem.ResetValue(LightVisualElement.ForeColorProperty, Telerik.WinControls.ValueResetFlags.Local);
        e.VisualItem.ResetValue(LightVisualElement.BorderColorProperty, Telerik.WinControls.ValueResetFlags.Local);
        e.VisualItem.ResetValue(LightVisualElement.FontProperty, Telerik.WinControls.ValueResetFlags.Local);
    }
}

````
````VB.NET
Private font As New Font("Consolas", 14, FontStyle.Bold)
Private Sub radListView1_VisualItemFormatting(sender As Object, e As Telerik.WinControls.UI.ListViewVisualItemEventArgs)
    If e.VisualItem.Selected Then
        e.VisualItem.NumberOfColors = 1
        e.VisualItem.BackColor = Color.LightGreen
        e.VisualItem.ForeColor = Color.Red
        e.VisualItem.BorderColor = Color.Blue
        e.VisualItem.Font = font
    Else
        e.VisualItem.ResetValue(LightVisualElement.NumberOfColorsProperty, Telerik.WinControls.ValueResetFlags.Local)
        e.VisualItem.ResetValue(LightVisualElement.BackColorProperty, Telerik.WinControls.ValueResetFlags.Local)
        e.VisualItem.ResetValue(LightVisualElement.ForeColorProperty, Telerik.WinControls.ValueResetFlags.Local)
        e.VisualItem.ResetValue(LightVisualElement.BorderColorProperty, Telerik.WinControls.ValueResetFlags.Local)
        e.VisualItem.ResetValue(LightVisualElement.FontProperty, Telerik.WinControls.ValueResetFlags.Local)
    End If
End Sub

````

{{endregion}} 

## Formatting cells in DetailsView mode

The __DetailsView__ of __RadListView__ provides a grid-like interface for displaying items with more than one data field. It is possible to customize each cell element, using the __CellFormatting__ event.

>note Cell elements are created only for currently visible cells and they are being reused, when scrolling. In order to prevent applying the formatting to other cell elements, all applied styles should be reset for the rest of the cell elements.

Let’s assume that the __RadListView__ is bound to the *Products* table from the *Northwind* database. The code snippet below demonstrates how to apply different colors and font for the data cells in the control, considering the *“Discontinued”* cell’s value:

>caption Figure 2: Customizing cells when using the CellFormatting event

![listview-formatting-items 002](images/listview-formatting-items002.png)

#### Customizing cells when using the CellFormatting event

{{source=..\SamplesCS\ListView\ListViewFormattingItems.cs region=CellFormatting}} 
{{source=..\SamplesVB\ListView\ListViewFormattingItems.vb region=CellFormatting}} 

````C#
private void ListViewFormattingItems_Load(object sender, EventArgs e)
{
    this.productsTableAdapter.Fill(this.nwindDataSet.Products);
    this.radListView1.DataSource = this.productsBindingSource;
    this.radListView1.DisplayMember = "ProductName";
    this.radListView1.ValueMember = "ProductID";
    this.radListView1.ViewType = ListViewType.DetailsView;
    this.radListView1.CellFormatting += radListView1_CellFormatting;
}
Font newFont = new Font("Arial", 12f, FontStyle.Bold);
private void radListView1_CellFormatting(object sender, ListViewCellFormattingEventArgs e)
{
    DetailListViewDataCellElement cell = e.CellElement as DetailListViewDataCellElement;
    if (cell != null)
    {
        DataRowView productRowView = cell.Row.DataBoundItem as DataRowView;
        if (productRowView != null && (bool)productRowView.Row["Discontinued"] == true)
        {
            e.CellElement.BackColor = Color.Yellow;
            e.CellElement.ForeColor = Color.Red;
            e.CellElement.GradientStyle = Telerik.WinControls.GradientStyles.Solid;
            e.CellElement.Font = newFont;
        }
        else
        {
            e.CellElement.ResetValue(LightVisualElement.BackColorProperty, Telerik.WinControls.ValueResetFlags.Local);
            e.CellElement.ResetValue(LightVisualElement.ForeColorProperty, Telerik.WinControls.ValueResetFlags.Local);
            e.CellElement.ResetValue(LightVisualElement.GradientStyleProperty, Telerik.WinControls.ValueResetFlags.Local);
            e.CellElement.ResetValue(LightVisualElement.FontProperty, Telerik.WinControls.ValueResetFlags.Local);
        }
    }
}

````
````VB.NET
Private Sub FormattingItems_Load(sender As Object, e As EventArgs) Handles MyBase.Load
    Me.ProductsTableAdapter.Fill(Me.NwindDataSet.Products)
    Me.RadListView1.DataSource = Me.ProductsBindingSource
    Me.RadListView1.DisplayMember = "ProductName"
    Me.RadListView1.ValueMember = "ProductID"
    Me.RadListView1.ViewType = ListViewType.DetailsView
    AddHandler Me.RadListView1.CellFormatting, AddressOf radListView1_CellFormatting
End Sub
Private newFont As New Font("Arial", 12.0F, FontStyle.Bold)
Private Sub radListView1_CellFormatting(sender As Object, e As ListViewCellFormattingEventArgs)
    Dim cell As DetailListViewDataCellElement = TryCast(e.CellElement, DetailListViewDataCellElement)
    If cell IsNot Nothing Then
        Dim productRowView As DataRowView = TryCast(cell.Row.DataBoundItem, DataRowView)
        If productRowView IsNot Nothing AndAlso CBool(productRowView.Row("Discontinued")) = True Then
            e.CellElement.BackColor = Color.Yellow
            e.CellElement.ForeColor = Color.Red
            e.CellElement.GradientStyle = Telerik.WinControls.GradientStyles.Solid
            e.CellElement.Font = newFont
        Else
            e.CellElement.ResetValue(LightVisualElement.BackColorProperty, Telerik.WinControls.ValueResetFlags.Local)
            e.CellElement.ResetValue(LightVisualElement.ForeColorProperty, Telerik.WinControls.ValueResetFlags.Local)
            e.CellElement.ResetValue(LightVisualElement.GradientStyleProperty, Telerik.WinControls.ValueResetFlags.Local)
            e.CellElement.ResetValue(LightVisualElement.FontProperty, Telerik.WinControls.ValueResetFlags.Local)
        End If
    End If
End Sub

````

{{endregion}} 

 
# See Also

* [Accessing and Customizing Elements]({%slug winforms/listview/customizing-appearance/accessing-and-customizing-elements%})		

