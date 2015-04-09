---
title: Removing rows
page_title: Removing rows
description: Removing rows
slug: gridview-rows-removing-rows
tags: removing,rows
published: True
position: 3
---

# Removing rows



## 

In order to remove a single row from __RadGridView__, you should simply call the the Remove() method and pass an object of type __GridViewDataRowInfo__ as an argument.
				

#### __[C#] Remove specified row__

{{source=..\SamplesCS\GridView\Rows\RemovingRows.cs region=removeRow}}
	            this.radGridView1.Rows.Remove(rowToRemove);
	{{endregion}}



#### __[VB.NET] Remove specified row__

{{source=..\SamplesVB\GridView\Rows\RemovingRows.vb region=removeRow}}
	        Me.RadGridView1.Rows.Remove(rowToRemove)
	{{endregion}}



If you want to remove a row at a specific position, call RemoveAt() method and pass the row index.

#### __[C#] Remove row at specified position__

{{source=..\SamplesCS\GridView\Rows\RemovingRows.cs region=removeRowAt}}
	            this.radGridView1.Rows.RemoveAt(0);
	{{endregion}}



#### __[VB.NET] Remove row at specified position__

{{source=..\SamplesVB\GridView\Rows\RemovingRows.vb region=removeRowAt}}
	        Me.RadGridView1.Rows.RemoveAt(0)
	{{endregion}}



As to removing all rows, make a loop and remove the rows with the RemoveAt() method.

					Note: If your __RadGridView__ is bound to a __BindingList__, the __BindingList__
					will be updated automatically. However, if __RadGridView__ is bound to a database using a [typed DataSet](http://msdn.microsoft.com/en-us/library/esbykkzb%28VS.71%29.aspx)
					, you should call the Update method of the DataSet's __TableAdapter__. Here is an example with the NorthWind data set and its carsTableAdapter
				

#### __[C#]__

{{source=..\SamplesCS\GridView\Rows\RemovingRows.cs region=callingUpdate}}
	            this.carsTableAdapter.Update(this.nwindDataSet.Cars);
	{{endregion}}



#### __[VB.NET]__

{{source=..\SamplesVB\GridView\Rows\RemovingRows.vb region=callingUpdate}}
	        Me.CarsTableAdapter.Update(Me.NwindDataSet.Cars)
	{{endregion}}



An alternative to removing all the rows would be to use the __Clear__ method of the Rows collection as it will be a more efficient solution
					since the grid's events will be suspended and you will write less code:
				

#### __[C#]__

{{source=..\SamplesCS\GridView\Rows\RemovingRows.cs region=clearRows}}
	            this.radGridView1.Rows.Clear();
	{{endregion}}



#### __[VB.NET]__

{{source=..\SamplesVB\GridView\Rows\RemovingRows.vb region=clearRows}}
	        Me.RadGridView1.Rows.Clear()
	{{endregion}}


