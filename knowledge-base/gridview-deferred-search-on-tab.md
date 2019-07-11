---
title: RadGridView Deferred Search on Tab key 
description: This article shows how you can trigger deferred search when pressing Tab key.
type: how-to
page_title: How to trigger gridview deferred search when pressing Tab key 
slug: gridview-deferred-search-on-tab
position: 0
tags: gridview, search, tab, deferred
res_type: kb
---

## Environment
 
|Product Version|Product|Author|
|----|----|----|
|2019.2.618|RadGridView for WinForms|[Desislava Yordanova](https://www.telerik.com/blogs/author/desislava-yordanova)|
 

## Description

**GridViewSearchRowInfo** offers the **DeferredSearch** property which indicates whether the grid control will wait until the `Enter` key is pressed before a new search operation is started. Its default value is *false*.

However, if it is enabled, you may prefer to use the `Tab` key to trigger the search functionality. 

## Solution 

Handle the **ViewCellFormatting** event where you have access to the **GridSearchCellElement** . Then, subscribe to the GridSearchCellElement.SearchTextBox.**KeyUp** event and detect when the `Tab` key is pressed and call the TableSearchRow.**Search** method with the entered text:

####  Search on Tab

````C#

         public RadForm1()
        {
            InitializeComponent();

            this.radGridView1.ViewCellFormatting += radGridView1_ViewCellFormatting;
            this.radGridView1.AllowSearchRow = true;
            this.radGridView1.MasterView.TableSearchRow.DeferredSearch = true;
        }

        private void radGridView1_ViewCellFormatting(object sender, CellFormattingEventArgs e)
        {
            GridSearchCellElement searchCell = e.CellElement as GridSearchCellElement;
            if (searchCell != null)
            {
                searchCell.SearchTextBox.KeyUp -= SearchTextBox_KeyUp;
                searchCell.SearchTextBox.KeyUp += SearchTextBox_KeyUp;
            }
        }

        private void SearchTextBox_KeyUp(object sender, KeyEventArgs e)
        {
            GridSearchCellTextBoxElement searchBox = sender as GridSearchCellTextBoxElement;
            if (e.KeyData == Keys.Tab && this.radGridView1.MasterView.TableSearchRow.DeferredSearch)
                this.radGridView1.MasterView.TableSearchRow.Search(searchBox.Text);
        }        
       
````
````VB.NET
    
    Sub New()

        InitializeComponent()
        AddHandler Me.RadGridView1.ViewCellFormatting, AddressOf RadGridView1_ViewCellFormatting
        Me.RadGridView1.AllowSearchRow = True
        Me.RadGridView1.MasterView.TableSearchRow.DeferredSearch = True
    End Sub

    Private Sub RadGridView1_ViewCellFormatting(sender As Object, e As CellFormattingEventArgs)
        Dim searchCell As GridSearchCellElement = TryCast(e.CellElement, GridSearchCellElement)
        If searchCell IsNot Nothing Then
            RemoveHandler searchCell.SearchTextBox.KeyUp, AddressOf SearchTextBox_KeyUp
            AddHandler searchCell.SearchTextBox.KeyUp, AddressOf SearchTextBox_KeyUp
        End If
    End Sub

    Private Sub SearchTextBox_KeyUp(sender As Object, e As KeyEventArgs)
        Dim searchBox As GridSearchCellTextBoxElement = TryCast(sender, GridSearchCellTextBoxElement)
        If e.KeyData = Keys.Tab AndAlso Me.RadGridView1.MasterView.TableSearchRow.DeferredSearch Then
            Me.RadGridView1.MasterView.TableSearchRow.Search(searchBox.Text)
        End If
    End Sub   
  
    
````


# See Also

 * [Search Row]({%slug winforms/gridview/rows/search-row%})
