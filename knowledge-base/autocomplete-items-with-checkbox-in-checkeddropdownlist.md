---
title: Auto-complete items with a check-box in RadCheckedDropDownList
description: This article shows how you can create auto-complete items with a check-box in RadCheckedDropDownList.
components: ["checkeddropdownlist"]
type: how-to
page_title: How to create auto-complete items with a check-box in RadCheckedDropDownList
slug: autocomplete-items-with-checkbox-in-checkeddropdownlist
position: 0
tags: dropdownlistcontrolandcheckeddropdownlist, checkeddropdownlist, autocomplete
res_type: kb
---

## Environment

The following table lists the product version and control covered by this article:

|Product Version|Product|Author|
|----|----|----|
|2019.2.618|RadCheckedDropDownList for WinForms|[Desislava Yordanova](https://www.telerik.com/blogs/author/desislava-yordanova)|


## Description

In Progress® Telerik® UI for WinForms, `RadCheckedDropDownList` combines `RadDropDownList` and `RadAutoCompleteBox`. It lets you check multiple items in the dropdown area and tokenize them in the text area. By design, checkboxes appear only in the popup that opens when you click the arrow button.

![RadCheckedDropDownList popup opened by the arrow button, with checkboxes for multiple selection](images/autocomplete-items-with-checkbox-in-checkeddropdownlist001.gif)

A common requirement is to show checkboxes in the auto-complete popup as well.

## Solution

Create a class derived from `RadListVisualItem` and add a `RadCheckBoxElement` to its `Children` collection. Handle the `CreatingVisualItem` event of `RadCheckedAutoCompleteBoxListElement` to replace the default auto-complete items with the custom visual item. To keep the auto-complete popup open when you click an item and allow multiple selections, subscribe to the `PopupClosing`, `MouseDown`, and `PopupClosed` events of `RadTextBoxAutoCompleteDropDown`. The following code shows one approach:

The following animation shows the result of this approach. The code below demonstrates one implementation.

>caption Auto-complete items with checkboxes in the popup.

![RadCheckedDropDownList auto-complete popup with checkboxes for item selection](images/autocomplete-items-with-checkbox-in-checkeddropdownlist002.gif)


````C#

        private void RadForm1_Load(object sender, EventArgs e)
        {
            this.productsTableAdapter.Fill(this.northwindDataSet.Products);
            this.radCheckedDropDownList1.DataSource = this.productsBindingSource;
            this.radCheckedDropDownList1.DisplayMember = "ProductName";
            this.radCheckedDropDownList1.AutoCompleteMode = AutoCompleteMode.Suggest;

            RadCheckedAutoCompleteBoxListElement list = this.radCheckedDropDownList1.CheckedDropDownListElement.AutoCompleteEditableAreaElement.AutoCompleteTextBox.ListElement as RadCheckedAutoCompleteBoxListElement;
            list.CreatingVisualItem += list_CreatingVisualItem;
            this.radCheckedDropDownList1.CheckedDropDownListElement.AutoCompleteEditableAreaElement.AutoCompleteTextBox.AutoCompleteDropDown.PopupClosing += AutoCompleteDropDown_PopupClosing;
            this.radCheckedDropDownList1.CheckedDropDownListElement.AutoCompleteEditableAreaElement.AutoCompleteTextBox.AutoCompleteDropDown.MouseDown += AutoCompleteDropDown_MouseDown;
            this.radCheckedDropDownList1.CheckedDropDownListElement.AutoCompleteEditableAreaElement.AutoCompleteTextBox.AutoCompleteDropDown.PopupClosed += AutoCompleteDropDown_PopupClosed;
        }

        private void AutoCompleteDropDown_PopupClosed(object sender, RadPopupClosedEventArgs args)
        {
            RadCheckedAutoCompleteBoxListElement list = this.radCheckedDropDownList1.CheckedDropDownListElement.AutoCompleteEditableAreaElement.AutoCompleteTextBox.ListElement as RadCheckedAutoCompleteBoxListElement;
            StringBuilder sb = new StringBuilder();
            foreach (RadListDataItem item in list.Items)
            {
                if (item.Tag != null && (bool)item.Tag == true)
                {
                    sb.AppendLine(item.Text + ";");
                }
            }
            this.radCheckedDropDownList1.Text = sb.ToString();
        }

        private void AutoCompleteDropDown_MouseDown(object sender, MouseEventArgs e)
        {
            RadTextBoxAutoCompleteDropDown dropdown = sender as RadTextBoxAutoCompleteDropDown;
            var elementUnderMouse = dropdown.ElementTree.GetElementAtPoint(e.Location);
            dropdown.Tag = "down";
        }

        private void AutoCompleteDropDown_PopupClosing(object sender, RadPopupClosingEventArgs args)
        {
            RadTextBoxAutoCompleteDropDown dropdown = sender as RadTextBoxAutoCompleteDropDown;
            if (dropdown.Tag != null && dropdown.Tag.ToString() == "down")
            {
                args.Cancel = true;
                dropdown.Tag = null;
            }
        }

        private void list_CreatingVisualItem(object sender, CreatingVisualListItemEventArgs args)
        {
            args.VisualItem = new CustomVisualItem();
        }

        public class CustomVisualItem : RadListVisualItem
        {
            RadCheckBoxElement checkbox = new RadCheckBoxElement();

            protected override void CreateChildElements()
            {
                base.CreateChildElements();
                this.Children.Add(checkbox);
                checkbox.CheckStateChanged += checkbox_CheckStateChanged;
            }

            private void checkbox_CheckStateChanged(object sender, EventArgs e)
            {
                this.Data.Tag = checkbox.IsChecked;
            }

            public override void Synchronize()
            {
                base.Synchronize();

                this.DrawText = false;
                this.checkbox.Text = this.Data.Text;
            }

            protected override Type ThemeEffectiveType
            {
                get
                {
                    return typeof(RadListVisualItem);
                }
            }
        }                
       
````
````VB.NET
    
     Private Sub RadForm1_Load(sender As Object, e As EventArgs) Handles MyBase.Load
        Me.ProductsTableAdapter.Fill(Me.NwindDataSet.Products)
        Me.RadCheckedDropDownList1.DataSource = Me.ProductsBindingSource
        Me.RadCheckedDropDownList1.DisplayMember = "ProductName"
        Me.RadCheckedDropDownList1.AutoCompleteMode = AutoCompleteMode.Suggest
        Dim list As RadCheckedAutoCompleteBoxListElement = TryCast(Me.RadCheckedDropDownList1.CheckedDropDownListElement.AutoCompleteEditableAreaElement.AutoCompleteTextBox.ListElement, RadCheckedAutoCompleteBoxListElement)
        AddHandler list.CreatingVisualItem, AddressOf list_CreatingVisualItem
        AddHandler Me.RadCheckedDropDownList1.CheckedDropDownListElement.AutoCompleteEditableAreaElement.AutoCompleteTextBox.AutoCompleteDropDown.PopupClosing, AddressOf AutoCompleteDropDown_PopupClosing
        AddHandler Me.RadCheckedDropDownList1.CheckedDropDownListElement.AutoCompleteEditableAreaElement.AutoCompleteTextBox.AutoCompleteDropDown.MouseDown, AddressOf AutoCompleteDropDown_MouseDown
        AddHandler Me.RadCheckedDropDownList1.CheckedDropDownListElement.AutoCompleteEditableAreaElement.AutoCompleteTextBox.AutoCompleteDropDown.PopupClosed, AddressOf AutoCompleteDropDown_PopupClosed
    End Sub

    Private Sub AutoCompleteDropDown_PopupClosed(ByVal sender As Object, ByVal args As RadPopupClosedEventArgs)
        Dim list As RadCheckedAutoCompleteBoxListElement = TryCast(Me.RadCheckedDropDownList1.CheckedDropDownListElement.AutoCompleteEditableAreaElement.AutoCompleteTextBox.ListElement, RadCheckedAutoCompleteBoxListElement)
        Dim sb As StringBuilder = New StringBuilder()

        For Each item As RadListDataItem In list.Items

            If item.Tag IsNot Nothing AndAlso CBool(item.Tag) = True Then
                sb.AppendLine(item.Text & ";")
            End If
        Next

        Me.RadCheckedDropDownList1.Text = sb.ToString()
    End Sub

    Private Sub AutoCompleteDropDown_MouseDown(ByVal sender As Object, ByVal e As MouseEventArgs)
        Dim dropdown As RadTextBoxAutoCompleteDropDown = TryCast(sender, RadTextBoxAutoCompleteDropDown)
        Dim elementUnderMouse = dropdown.ElementTree.GetElementAtPoint(e.Location)
        dropdown.Tag = "down"
    End Sub

    Private Sub AutoCompleteDropDown_PopupClosing(ByVal sender As Object, ByVal args As RadPopupClosingEventArgs)
        Dim dropdown As RadTextBoxAutoCompleteDropDown = TryCast(sender, RadTextBoxAutoCompleteDropDown)

        If dropdown.Tag IsNot Nothing AndAlso dropdown.Tag.ToString() = "down" Then
            args.Cancel = True
            dropdown.Tag = Nothing
        End If
    End Sub

    Private Sub list_CreatingVisualItem(ByVal sender As Object, ByVal args As CreatingVisualListItemEventArgs)
        args.VisualItem = New CustomVisualItem()
    End Sub

    Public Class CustomVisualItem
    Inherits RadListVisualItem

        Private checkbox As RadCheckBoxElement

        Protected Overrides Sub CreateChildElements()
            MyBase.CreateChildElements()
            checkbox = New RadCheckBoxElement()
            Me.Children.Add(checkbox)
            AddHandler checkbox.CheckStateChanged, AddressOf checkbox_CheckStateChanged
        End Sub

        Private Sub checkbox_CheckStateChanged(ByVal sender As Object, ByVal e As EventArgs)
            Me.Data.Tag = checkbox.IsChecked
        End Sub

        Public Overrides Sub Synchronize()
            MyBase.Synchronize()
            Me.DrawText = False
            Me.checkbox.Text = Me.Data.Text
        End Sub

        Protected Overrides ReadOnly Property ThemeEffectiveType As Type
            Get
                Return GetType(RadListVisualItem)
            End Get
        End Property
    End Class     
    
````

>note This sample approach may not cover every case. Extend it to fit your requirements.


## See Also

* [CheckedDropDownList]({%slug winforms/dropdown-listcontrol-and-checkeddropdownlist/checkeddropdownlist%})
* [AutoComplete modes]({%slug winforms/dropdown-listcontrol-and-checkeddropdownlist/checkeddropdownlist/autocompletemodes%})





    
   
  
    
 
