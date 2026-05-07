---
title: Binding to Data
page_title: Binding to Data - UI for WinForms Documentation
description: RadCardView is a powerful control providing means for displaying and editing data organized in a card layout.
slug: winforms/cardview/populating-with-data/binding-to-data
tags: cardview/binding-to-data
published: True
position: 0
---

# Binding to Data

Data binding provides a way to bind the display of data in a __RadCardView__ to a data source. Three properties control the data binding:

* __DataSource__: Specifies the source of the data to be bound

* __DisplayMember__: Specifies the particular data to be displayed in a __RadCardView__

* __ValueMember__: Specifies the particular data to be returned as the value of a __RadCardView__

## Design Time Data Binding

A complete tutorial for connecting to the *Northwind* database from the Visual Studio designer in available in the [Getting Started]({%slug winforms/cardview/getting-started%}) article.

## Data Binding Programatically

The example below will demonstrate how to bind __RadCardView__ to a collection of models. As a result the control will automatically create __CardViewItem__ objects for all public properties of the model.

>caption Figure 1: RadCardView Bound at Run-Time
![WinForms RadCardView Bound at Run-Time](images/radcardview-populating-with-data001.png)

#### Bind RadCardView

<snippet id='cardview-populating-with-data-binding-to-data-bindradcardview-cs'/>
<snippet id='cardview-populating-with-data-binding-to-data-bindradcardview-vb'/>



#### Sample Data Object

<snippet id='cardview-populating-with-data-binding-to-data-sampledataobject-cs'/>
<snippet id='cardview-populating-with-data-binding-to-data-sampledataobject-vb'/>



## See Also

* [Structure]({%slug winforms/cardview/structure%})
* [Design Time]({%slug winforms/cardview/design-time%})
* [Getting Started]({%slug winforms/cardview/getting-started%})
