---
title: Overview
page_title: DataBinding - WinForms ChartView Control
description: WinForms ChartView can be bound to a wide variety of data sources. 
slug: winforms/chartview-/populating-with-data
tags: RadChartView can be populated with data in bound and unbound mode. Data binding is performed following the standard WinForms model 
published: True
position: 0
previous_url: chartview-databinding
---

# Populating with Data

## Data Binding
__RadChartView__ can be bound to a wide variety of data-sources. The data-source must implement the __IEnumerable__ interface in general. You can further customize the binding of __RadChartView__ using __ITypedList/ICustomTypeDescriptor/INotifyPropertyChange__ interfaces together with your business objects.

__RadChartView__ follows the standard Windows Forms data-binding model. It can data bind to any data-source implementing one of the following interfaces:

* __IList__ interface for one-dimensional arrays.

* __IListSource__ interface (like DataTable and DataSet classes).

* __IBindingList__ interface. For example the generic BindingList class.

* __IBindingListView__ interface. For example BindingSource class.

The actual binding is performed on the desired __ChartSeries__ descendant. Here is a list of the series types together with the properties needed for successful binding:

* __BarSeries__: DataSource and ValueMember are the necessary properties. CategoryMember is optional - if it is not set, the categories will be automatically numerated.

* __AreaSeries__: DataSource and ValueMember. CategoryMember is optional - if it is not set, the categories will be automatically numerated.

* __LineSeries__: DataSource and ValueMember. CategoryMember is optional - if it is not set, the categories will be automatically numerated.

* __ScatterSeries__: DataSource, XValueMember and YValueMember.

* __RadarSeries__: DataSource and ValueMember. CategoryMember is optional - if it is not set, the categories will be automatically numerated.

* __PieSeries__: DataSource and ValueMember.            

* __PolarSeries__: DataSource, AngleMember and ValueMember.

## Unbound mode
            
__RadChartView__ can also be setup in unbound mode. This can be performed in the designer as well as at run-time by accessing the __DataPoints__ collection of each of the series. The articles dedicated to each of the series types includes a basic example for setting up the control in unbound mode: [Series Overview]({%slug winforms/chartview-/series-types%})

# See Also

* [Getting Started]({%slug winforms/chartview/getting-started%})
* [Property Builder]({%slug winforms/chartview/design-time/property-builder%})
* [Binding to DataTable]({%slug winforms/chartview-/populating-with-data/binding-to-datatable%})
* [Binding to BindingList]({%slug winforms/chartview-/populating-with-data/binding-to-bindinglist%})
* [Series Overview]({%slug winforms/chartview-/series-types%})