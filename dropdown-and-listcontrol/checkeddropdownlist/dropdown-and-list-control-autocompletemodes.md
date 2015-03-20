---
title: AutoCompleteModes
page_title: AutoCompleteModes
description: AutoCompleteModes
slug: dropdown-and-list-control-checkeddropdownlist-autocompletemodes
tags: autocompletemodes
published: True
position: 4
---

# AutoCompleteModes



__RadCheckedDropDownList__ provides two AutoCompleteModes: *Suggest* and *Append*. You can change the way items are filtered
        e.g. *Contains* or *StartsWith* comparer.
      

## 

You can set the __AutoCompleteMode__ as follows:

#### __[C#] Set AutoCompleteMode__

{{region SetMode}}
	            this.radCheckedDropDownList1.AutoCompleteMode = AutoCompleteMode.SuggestAppend;
	{{endregion}}



#### __[VB.NET] Set AutoCompleteMode__

{{region SetMode}}
	        Me.RadCheckedDropDownList1.AutoCompleteMode = AutoCompleteMode.SuggestAppend
	        '#End Region
	
	        '#Region "SuggestMode"
	        Me.RadCheckedDropDownList1.DropDownListElement.AutoCompleteSuggest.SuggestMode = SuggestMode.Contains
	        '#End Region
	
	        '#Region "SetAppendHelper"
	        Me.RadCheckedDropDownList1.DropDownListElement.AutoCompleteAppend = New MyAutoCompleteAppendHelper(Me.RadCheckedDropDownList1.DropDownListElement)
	        '#End Region
	    End Sub
	
	#Region "CustomHelper"
	    Private Class MyAutoCompleteAppendHelper
	        Inherits AutoCompleteAppendHelper
	        Public Sub New(ddList As RadDropDownListElement)
	            MyBase.New(ddList)
	        End Sub
	
	        Protected Overrides Function DefaultCompare(item As RadListDataItem) As Boolean
	            Return item.Text = Me.FindString
	        End Function
	    End Class
	#End Region
	End Class



Changing the filter for the __AutoCompleteSuggest__ is as easy as setting the __SuggestMode__ property:
        

#### __[C#] Set AutoCompleteMode__

{{region SuggestMode}}
	            this.radCheckedDropDownList1.DropDownListElement.AutoCompleteSuggest.SuggestMode = SuggestMode.Contains;
	{{endregion}}



#### __[VB.NET] Set AutoCompleteMode__

{{region SuggestMode}}
	        Me.RadCheckedDropDownList1.DropDownListElement.AutoCompleteSuggest.SuggestMode = SuggestMode.Contains
	        '#End Region
	
	        '#Region "SetAppendHelper"
	        Me.RadCheckedDropDownList1.DropDownListElement.AutoCompleteAppend = New MyAutoCompleteAppendHelper(Me.RadCheckedDropDownList1.DropDownListElement)
	        '#End Region
	    End Sub
	
	#Region "CustomHelper"
	    Private Class MyAutoCompleteAppendHelper
	        Inherits AutoCompleteAppendHelper
	        Public Sub New(ddList As RadDropDownListElement)
	            MyBase.New(ddList)
	        End Sub
	
	        Protected Overrides Function DefaultCompare(item As RadListDataItem) As Boolean
	            Return item.Text = Me.FindString
	        End Function
	    End Class
	#End Region
	End Class



In order to customize the __AutoCompleteAppendHelper__ you need to create a descendant class and override the DefaultCompare method:
        

#### __[C#] Set CustomHelper__

{{region CustomHelper}}
	        class MyAutoCompleteAppendHelper : AutoCompleteAppendHelper
	        {
	            public MyAutoCompleteAppendHelper(RadDropDownListElement ddList)
	                : base(ddList)
	            {
	            }
	
	            protected override bool DefaultCompare(RadListDataItem item)
	            {
	                return item.Text == this.FindString;
	            }
	        }
	{{endregion}}



#### __[VB.NET] Set CustomHelper__

{{region CustomHelper}}
	    Private Class MyAutoCompleteAppendHelper
	        Inherits AutoCompleteAppendHelper
	        Public Sub New(ddList As RadDropDownListElement)
	            MyBase.New(ddList)
	        End Sub
	
	        Protected Overrides Function DefaultCompare(item As RadListDataItem) As Boolean
	            Return item.Text = Me.FindString
	        End Function
	    End Class
	#End Region
	End Class



#### __[C#] Set SetAppendHelper__

{{region SetAppendHelper}}
	            this.radCheckedDropDownList1.DropDownListElement.AutoCompleteAppend = new MyAutoCompleteAppendHelper(this.radCheckedDropDownList1.DropDownListElement);
	{{endregion}}



#### __[VB.NET] Set SetAppendHelper__

{{region SetAppendHelper}}
	        Me.RadCheckedDropDownList1.DropDownListElement.AutoCompleteAppend = New MyAutoCompleteAppendHelper(Me.RadCheckedDropDownList1.DropDownListElement)
	        '#End Region
	    End Sub
	
	#Region "CustomHelper"
	    Private Class MyAutoCompleteAppendHelper
	        Inherits AutoCompleteAppendHelper
	        Public Sub New(ddList As RadDropDownListElement)
	            MyBase.New(ddList)
	        End Sub
	
	        Protected Overrides Function DefaultCompare(item As RadListDataItem) As Boolean
	            Return item.Text = Me.FindString
	        End Function
	    End Class
	#End Region
	End Class



>You can also create a custom __AutoCompleteSuggestHelper__ and override the __DefaultFilter__ method to achieve similar effect.
          
