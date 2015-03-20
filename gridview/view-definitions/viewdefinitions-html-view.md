---
title: HTML View
page_title: HTML View
description: HTML View
slug: gridview-viewdefinitions-html-view
tags: html,view
published: True
position: 3
---

# HTML View



## 

The name of this view may lead to some confusion. __RadGridView__does not support html rendering, and there are no plans to support it. This view enables using row layout similar to the one existing in html tables. In fact, you can take an existing html table and use its html code in RadGridView. Sometimes this can save a lot of work. Just change the cell text to be the unique name of the desired column.
        ![gridview-viewdefinitions-html-view 001](images/gridview-viewdefinitions-html-view001.jpg)

To use an html view we should instantiate HtmlViewDefinition and add the desired rows and cells:

#### __[C#] Add rows and cells__

{{region addRowsAndCells}}
	            HtmlViewDefinition view = new HtmlViewDefinition();
	
	            view.RowTemplate.Rows.Add(new RowDefinition());
	            view.RowTemplate.Rows.Add(new RowDefinition());
	            view.RowTemplate.Rows[0].Cells.Add(new CellDefinition("CustomerID"));
	            view.RowTemplate.Rows[0].Cells.Add(new CellDefinition("CompanyName"));
	            view.RowTemplate.Rows[0].Cells.Add(new CellDefinition("City"));
	            view.RowTemplate.Rows[0].Cells.Add(new CellDefinition("Country"));
	            view.RowTemplate.Rows[1].Cells.Add(new CellDefinition("Phone"));
	{{endregion}}



#### __[VB.NET] Add rows and cells__

{{region addRowsAndCells}}
	        Dim view As New HtmlViewDefinition()
	
	        view.RowTemplate.Rows.Add(New RowDefinition())
	        view.RowTemplate.Rows.Add(New RowDefinition())
	        view.RowTemplate.Rows(0).Cells.Add(New CellDefinition("CustomerID"))
	        view.RowTemplate.Rows(0).Cells.Add(New CellDefinition("CompanyName"))
	        view.RowTemplate.Rows(0).Cells.Add(New CellDefinition("City"))
	        view.RowTemplate.Rows(0).Cells.Add(New CellDefinition("Country"))
	        view.RowTemplate.Rows(1).Cells.Add(New CellDefinition("Phone"))
	{{endregion}}



The __HtmlViewDefinition__ adds row and column spanning feature like in html table. This features enables
          spanning cells across more than one column or row. To specify a column spanning, set the __ColSpan__
          property of the __CellDefinition__:
        

#### __[C#] Set column spans__

{{region setColSpan}}
	            view.RowTemplate.Rows[1].Cells[0].ColSpan = 2;
	{{endregion}}



#### __[VB.NET] Set column spans__

{{region setColSpan}}
	        view.RowTemplate.Rows(1).Cells(0).ColSpan = 2
	{{endregion}}



The __RowSpan__ property sets the row spanning:
        

#### __[C#] Set row spans__

{{region setRowSpan}}
	            view.RowTemplate.Rows[0].Cells[2].RowSpan = 2;
	            view.RowTemplate.Rows[0].Cells[3].RowSpan = 2;
	{{endregion}}



#### __[VB.NET] Set row spans__

{{region setRowSpan}}
	        view.RowTemplate.Rows(0).Cells(2).RowSpan = 2
	        view.RowTemplate.Rows(0).Cells(3).RowSpan = 2
	{{endregion}}



You have to set the __Height__ property of the __RowDefinition__ to change the row height:
        

#### __[C#] Set row height__

{{region setRowHeight}}
	            view.RowTemplate.Rows[0].Height = 40;
	{{endregion}}



#### __[VB.NET] Set row height__

{{region setRowHeight}}
	        view.RowTemplate.Rows(0).Height = 40
	{{endregion}}



__Another way to specify the row layout is using html-like syntax:__

#### __Html Structure__





Use the following code to load the definition:

#### __[C#] Use html template__

{{region useHtmlTemplate}}
	            view.RowTemplate.ReadXml(@"..\..\GridView\ViewDefinitions\myViewDefinition.htm");
	{{endregion}}



#### __[VB.NET] Use html template__

{{region useHtmlTemplate}}
	        view.RowTemplate.ReadXml("..\..\GridView\ViewDefinitions\myViewDefinition.htm")
	{{endregion}}



At the end simply set the ViewDefinitions property of RadGridView to the newly created ViewDefinition

#### __[C#] Set the ViewDefinition property of RadGridView__

{{region setTheViewDefinition}}
	            radGridView1.ViewDefinition = view;
	{{endregion}}



#### __[VB.NET] Set the ViewDefinition property of RadGridView__

{{region setTheViewDefinition}}
	        RadGridView1.ViewDefinition = view
	{{endregion}}



Now load the data in the RadGridView

#### __[C#] Load the data__

{{region loadTheData}}
	        private void HTMLView_Load(object sender, EventArgs e)
	        {
	            this.customersTableAdapter.Fill(this.nwindDataSet.Customers);
	        }
	{{endregion}}



#### __[VB.NET] Load the data__

{{region loadTheData}}
	    Private Sub HTMLView1_Load(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles MyBase.Load
	        Me.CustomersTableAdapter.Fill(Me.NwindDataSet.Customers)
	    End Sub
	{{endregion}}


