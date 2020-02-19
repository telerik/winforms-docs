---
title: How to AutoComplete Items Considering the Description Text in RadDropDownList
description: This article demonstrates how to search in the description text of items in RadDropDownList
type: how-to
page_title: How to Search in Description Text in RadDropDownList
slug: dropdownlist-autcomplete-in-description-text
position: 0
tags: dropdownlist, autocomplete, description
res_type: kb
---

## Environment
 
|Product Version|Product|Author|
|----|----|----|
|2020.1.113|RadDropDownList for WinForms|[Desislava Yordanova](https://www.telerik.com/blogs/author/desislava-yordanova)|
 
## Description

By default, the auto-complete behavior considers the **Text** property of the items in **RadDropDownList** and the these ones that match the filter criteria are shown in a separate pop up. This tutorial demonstrates how to implement [auto-complete]({%slug winforms/dropdown-listcontrol-and-checkeddropdownlist/dropdownlist/auto-complete%}) functionality that searches in the description text as well when using [DescriptionTextListDataItems]({%slug winforms/dropdown-listcontrol-and-checkeddropdownlist/dropdownlist/populating-with-data/adding-items-programmatically%}). 
 
![dropdownlist-autcomplete-in-description-text.png](images/dropdownlist-autcomplete-in-description-text.gif)

## Solution 

Let's consider that the **RadDropDownList** control is programmatically populated with **DescriptionTextListDataItems** iterating the records in the Northwind.Customers table. Then, the **AutoCompleteMode** property is set to *Suggest*.

In order to control how the auto-complete items are filtered, it is necessary to create a derivative of  the **AutoCompleteSuggestHelper** class and override its **DefaultFilter** method. It expects a boolean result indicating that the passed item matches the filter criteria or not. If a **DescriptionTextListDataItem** is passed to the method, we will consider the **DescriptionText** as well. 

We will override the **SyncItemsCore** method as well in order to replace the default items in the auto-complete pop up with **DescriptionTextListDataItems**.

A sample implementation can be found in the following code snippet:

````C#

private void RadForm1_Load(object sender, EventArgs e)
{
    this.customersTableAdapter.Fill(this.nwindDataSet.Customers);

    foreach (NwindDataSet.CustomersRow c in this.nwindDataSet.Customers)
    {
        DescriptionTextListDataItem descriptionItem = new DescriptionTextListDataItem();
        descriptionItem.Text = c.ContactName;
        descriptionItem.DescriptionText = c.ContactTitle;
        this.radDropDownList1.Items.Add(descriptionItem);
    }

    this.radDropDownList1.AutoCompleteMode = AutoCompleteMode.Suggest;

    this.radDropDownList1.DropDownListElement.AutoCompleteSuggest = 
        new CustomAutoCompleteSuggestHelper(this.radDropDownList1.DropDownListElement);
}

public class CustomAutoCompleteSuggestHelper : AutoCompleteSuggestHelper
{
    public CustomAutoCompleteSuggestHelper(RadDropDownListElement owner)
        : base(owner)
    {
    }

    //replace the deafult autocomplete items with DescriptionTextListDataItems
    protected override void SyncItemsCore()
    {
        this.DropDownList.ListElement.Items.Clear();
        this.DropDownList.ListElement.BeginUpdate();
        foreach (DescriptionTextListDataItem item in Owner.Items)
        {
            DescriptionTextListDataItem newItem = new DescriptionTextListDataItem();
            newItem.Text = item.Text;
            newItem.DescriptionText = item.DescriptionText; 
            newItem.Value = item.Value;
            newItem.TextWrap = item.TextWrap;
            newItem.Enabled = item.Enabled; 
            this.DropDownList.ListElement.Items.Add(newItem);
        }

        this.DropDownList.ListElement.EndUpdate();
    }

    protected override bool DefaultFilter(RadListDataItem item)
    {
        DescriptionTextListDataItem descriptionItem = item as DescriptionTextListDataItem;

        if (descriptionItem != null)
        {
            bool matchesFilter= descriptionItem.Text.ToLower().Contains(this.Filter.ToLower()) ||
                   descriptionItem.DescriptionText.ToLower().Contains(this.Filter.ToLower());
            return matchesFilter;
        }

        return base.DefaultFilter(item);
    }
}

   
````
````VB.NET

Private Sub RadForm1_Load(sender As Object, e As EventArgs) Handles MyBase.Load
    Me.CustomersTableAdapter.Fill(Me.NwindDataSet.Customers)
    For Each c As NwindDataSet.CustomersRow In Me.NwindDataSet.Customers
        Dim descriptionItem As DescriptionTextListDataItem = New DescriptionTextListDataItem()
        descriptionItem.Text = c.ContactName
        descriptionItem.DescriptionText = c.ContactTitle
        Me.RadDropDownList1.Items.Add(descriptionItem)
    Next

    Me.RadDropDownList1.AutoCompleteMode = AutoCompleteMode.Suggest
    Me.RadDropDownList1.DropDownListElement.AutoCompleteSuggest = _
        New CustomAutoCompleteSuggestHelper(Me.RadDropDownList1.DropDownListElement)
End Sub
Public Class CustomAutoCompleteSuggestHelper
    Inherits AutoCompleteSuggestHelper

    Public Sub New(ByVal owner As RadDropDownListElement)
        MyBase.New(owner)
    End Sub

    Protected Overrides Sub SyncItemsCore()
        Me.DropDownList.ListElement.Items.Clear()
        Me.DropDownList.ListElement.BeginUpdate()

        For Each item As DescriptionTextListDataItem In Owner.Items
            Dim newItem As DescriptionTextListDataItem = New DescriptionTextListDataItem()
            newItem.Text = item.Text
            newItem.DescriptionText = item.DescriptionText
            newItem.Value = item.Value
            newItem.TextWrap = item.TextWrap
            newItem.Enabled = item.Enabled
            Me.DropDownList.ListElement.Items.Add(newItem)
        Next

        Me.DropDownList.ListElement.EndUpdate()
    End Sub

    Protected Overrides Function DefaultFilter(ByVal item As RadListDataItem) As Boolean
        Dim descriptionItem As DescriptionTextListDataItem = TryCast(item, DescriptionTextListDataItem)

        If descriptionItem IsNot Nothing Then
            Dim matchesFilter As Boolean = descriptionItem.Text.ToLower().Contains(Me.Filter.ToLower()) _
                                           OrElse descriptionItem.DescriptionText.ToLower().Contains(Me.Filter.ToLower())
            Return matchesFilter
        End If

        Return MyBase.DefaultFilter(item)
    End Function
End Class


````


