---
title: DataBinding
page_title: DataBinding
description: DataBinding
slug: chartview-databinding
tags: databinding
published: True
position: 7
---

# DataBinding



## 

RadChartView can be bound to a wide variety of data-sources. The data-source must implement __IEnumerable__ interface
          in general. You can further customize the binding of __RadChartView__ using
          __ITypedList/ICustomTypeDescriptor/INotifyPropertyChange__ interfaces together with your business objects.
        

RadChartView follows the standard Windows Forms data-binding model. It can data bind to any data-source implementing one
              of the following interfaces:
            

* __IList__ interface for one-dimensional arrays.
                

* __IListSource__ interface (like DataTable and DataSet classes).
                

* __IBindingList__ interface. For example the generic BindingList class.
                

* __IBindingListView__ interface. For example BindingSource class.
                

The actual binding is performed on the desired __ChartSeries__ descendant. Here is a list of the series types together
          with the properties needed for successful binding:
        

* __BarSeries__ - DataSource and ValueMember are the necessary properties. CategoryMember is optional - if it is not set, the categories will be automatically numerated.
            

* __AreaSeries__ - DataSource and ValueMember. CategoryMember is optional - if it is not set, the categories will be automatically numerated.
            

* __LineSeries__ - DataSource and ValueMember. CategoryMember is optional - if it is not set, the categories will be automatically numerated.
            

* __ScatterSeries__ - DataSource, XValueMember and YValueMember.
            

* __RadarSeries__ - DataSource and ValueMember. CategoryMember is optional - if it is not set, the categories will be automatically numerated.
            

* __PieSeries__ - DataSource and ValueMember.
            

* __PolarSeries__ - DataSource, AngleMember and ValueMember.
            
