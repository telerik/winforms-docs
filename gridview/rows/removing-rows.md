---
title: Removing rows
page_title: Removing rows | UI for WinForms Documentation
description: Removing rows
slug: winforms/gridview/rows/removing-rows
tags: removing,rows
published: True
position: 3
---

# Removing rows



## 

In order to remove a single row from __RadGridView__, you should simply call the the Remove() method and pass an object of type __GridViewDataRowInfo__ as an argument.

{{source=..\SamplesCS\GridView\Rows\RemovingRows.cs region=removeRow}} 
{{source=..\SamplesVB\GridView\Rows\RemovingRows.vb region=removeRow}} 

````C#
this.radGridView1.Rows.Remove(rowToRemove);

````
````VB.NET
Me.RadGridView1.Rows.Remove(rowToRemove)

````

{{endregion}} 

If you want to remove a row at a specific position, call RemoveAt() method and pass the row index.

{{source=..\SamplesCS\GridView\Rows\RemovingRows.cs region=removeRowAt}} 
{{source=..\SamplesVB\GridView\Rows\RemovingRows.vb region=removeRowAt}} 

````C#
this.radGridView1.Rows.RemoveAt(0);

````
````VB.NET
Me.RadGridView1.Rows.RemoveAt(0)

````

{{endregion}} 




As to removing all rows, make a loop and remove the rows with the RemoveAt() method. Note: If your __RadGridView__ is bound to a __BindingList__, the __BindingList__ will be updated automatically. However, if __RadGridView__ is, you should call the Update method of the DataSet's __TableAdapter__. Here is an example with the NorthWind data set and its carsTableAdapter

{{source=..\SamplesCS\GridView\Rows\RemovingRows.cs region=callingUpdate}} 
{{source=..\SamplesVB\GridView\Rows\RemovingRows.vb region=callingUpdate}} 

````C#
this.carsTableAdapter.Update(this.nwindDataSet.Cars);

````
````VB.NET
Me.CarsTableAdapter.Update(Me.NwindDataSet.Cars)

````

{{endregion}} 




An alternative to removing all the rows would be to use the __Clear__ method of the Rows collection as it will be a more efficient solution since the grid's events will be suspended and you will write less code:

{{source=..\SamplesCS\GridView\Rows\RemovingRows.cs region=clearRows}} 
{{source=..\SamplesVB\GridView\Rows\RemovingRows.vb region=clearRows}} 

````C#
this.radGridView1.Rows.Clear();

````
````VB.NET
Me.RadGridView1.Rows.Clear()

````

{{endregion}} 



