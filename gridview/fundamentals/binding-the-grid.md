---
title: Binding the Grid
page_title: Binding the Grid | UI for WinForms Documentation
description: Binding the Grid
slug: winforms/gridview/fundamentals/binding-the-grid
tags: binding,the,grid
published: True
position: 5
---

# Binding the Grid



## 

The __RadGridView__ supports the standard Windows Forms data binding model, so it will bind to a variety of data sources. In most circumstances its __DataSource__ property will be bound to a __BindingSource__ component which will manage the interaction with the data source. The __BindingSource__ component can represent any Windows Forms data source and gives you great flexibility when choosing or modifying the location of your data.


If the __DataSource__ is set to a dataset object with multiple tables, you can set the the __DataMember__ property to the name of the table that the control should display. See [Databinding RadGridView]({%slug winforms/gridview/populating-with-data/databinding-radgridview%}) for an overview of binding to many popular data types.
