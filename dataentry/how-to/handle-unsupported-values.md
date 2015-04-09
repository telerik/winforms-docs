---
title: Handle unsupported values
page_title: Handle unsupported values
description: Handle unsupported values
slug: dataentry-how-to-handle-unsupported-values
tags: handle,unsupported,values
published: True
position: 0
---

# Handle unsupported values



## 

There are cases where an editor might not support some values from your data source. 
        A good example of this is if when you have a __DateTime__ field in your data and this field contains a record with *DBNull* value. 
        __RadDataEntry__  will resolve the field type to __DateTime__ and will create a __RadDateTimePicker__ editor for it,
        however, since it does not support displaying *DBNull* value as data, it does not know how to handle it and the simple data binding will fail.
      

To handle this case, you need to tell the __RadDateTimePicker__, how to interpret this value. This can be done by using the
        [Format](http://msdn.microsoft.com/en-us/library/system.windows.forms.binding.format(v=vs.110).aspx)
     event of the binding. 
      

The following example demonstrates how to do that:

1. In the __BindingCreating__ event of the control you can tell which property to bind the field to. 
            Here you should bind the "DateTime" field from the data source to the "NullableValue" property of __RadDateTimePicker__ (as it supports *null* values).
          

#### __[C#] __

{{source=..\SamplesCS\DataEntryAndBindingNavigator\DataEntryHowTo\HandleUnsupportedValues.cs region=BindingCreating}}
	        void radDataEntry1_BindingCreating(object sender, BindingCreatingEventArgs e)
	        {
	            if (e.DataMember == "DateTime")
	            {
	                e.PropertyName = "NullableValue";
	            }
	        }
	{{endregion}}



#### __[VB.NET] __

{{source=..\SamplesVB\DataEntryAndBindingNavigator\DataEntryHowTo\HandleUnsupportedValues.vb region=BindingCreating}}
	    Private Sub radDataEntry1_BindingCreating(sender As Object, e As BindingCreatingEventArgs)
	        If e.DataMember = "DateTime" Then
	            e.PropertyName = "NullableValue"
	        End If
	    End Sub
	{{endregion}}



1. Then in the __BindingCreated__ event you will enable the binding formatting and will subscribe to its __Format__ event. 
        

#### __[C#] __

{{source=..\SamplesCS\DataEntryAndBindingNavigator\DataEntryHowTo\HandleUnsupportedValues.cs region=BindingCreated}}
	        void radDataEntry1_BindingCreated(object sender, BindingCreatedEventArgs e)
	        {
	            if (e.DataMember == "DateTime")
	            {
	                e.Binding.FormattingEnabled = true;
	                e.Binding.Format += Binding_Format;
	            }
	        }
	{{endregion}}



#### __[VB.NET] __

{{source=..\SamplesVB\DataEntryAndBindingNavigator\DataEntryHowTo\HandleUnsupportedValues.vb region=BindingCreated}}
	    Private Sub radDataEntry1_BindingCreated(sender As Object, e As BindingCreatedEventArgs)
	        If e.DataMember = "DateTime" Then
	            e.Binding.FormattingEnabled = True
	            AddHandler e.Binding.Format, AddressOf Binding_Format
	        End If
	    End Sub
	{{endregion}}



1. At the end we just need to interpret the *DBNull*  values as *null* values:
      

#### __[C#] __

{{source=..\SamplesCS\DataEntryAndBindingNavigator\DataEntryHowTo\HandleUnsupportedValues.cs region=Format}}
	        void Binding_Format(object sender, ConvertEventArgs e)
	        {
	            if (e.Value.Equals(DBNull.Value))
	            {
	                e.Value = null;
	            }
	        }
	{{endregion}}



#### __[VB.NET] __

{{source=..\SamplesVB\DataEntryAndBindingNavigator\DataEntryHowTo\HandleUnsupportedValues.vb region=Format}}
	    Private Sub Binding_Format(sender As Object, e As ConvertEventArgs)
	        If e.Value.Equals(DBNull.Value) Then
	            e.Value = Nothing
	        End If
	    End Sub
	{{endregion}}


