---
title: AutoCompleteModes
page_title: AutoCompleteModes | UI for WinForms Documentation
description: AutoCompleteModes
slug: winforms/dropdown,-listcontrol-and-checkeddropdownlist/checkeddropdownlist/autocompletemodes
tags: autocompletemodes
published: True
position: 5
---

# AutoCompleteModes
 
__RadCheckedDropDownList__ provides two AutoCompleteModes: *Suggest* and *Append*. You can change the way items are filtered e.g. *Contains* or *StartsWith* comparer.
      

## 

You can set the __AutoCompleteMode__ as follows:

#### Set AutoCompleteMode 
 
{{source=..\SamplesCS\DropDownListControl\CheckedDropDownList\AutoCompleteModes1.cs region=SetMode}} 
{{source=..\SamplesVB\DropDownListControl\CheckedDropDownList\AutoCompleteModes1.vb region=SetMode}} 

````C#
this.radCheckedDropDownList1.AutoCompleteMode = AutoCompleteMode.SuggestAppend;

````
````VB.NET
Me.RadCheckedDropDownList1.AutoCompleteMode = AutoCompleteMode.SuggestAppend

````

{{endregion}} 




Changing the filter for the __AutoCompleteSuggest__ is as easy as setting the __SuggestMode__ property:

#### Set AutoCompleteMode 

{{source=..\SamplesCS\DropDownListControl\CheckedDropDownList\AutoCompleteModes1.cs region=SuggestMode}} 
{{source=..\SamplesVB\DropDownListControl\CheckedDropDownList\AutoCompleteModes1.vb region=SuggestMode}} 

````C#
this.radCheckedDropDownList1.DropDownListElement.AutoCompleteSuggest.SuggestMode = SuggestMode.Contains;

````
````VB.NET
Me.RadCheckedDropDownList1.DropDownListElement.AutoCompleteSuggest.SuggestMode = SuggestMode.Contains

````

{{endregion}} 
 
In order to customize the __AutoCompleteAppendHelper__ you need to create a descendant class and override the DefaultCompare method:

#### Set CustomHelper 

{{source=..\SamplesCS\DropDownListControl\CheckedDropDownList\AutoCompleteModes1.cs region=CustomHelper}} 
{{source=..\SamplesVB\DropDownListControl\CheckedDropDownList\AutoCompleteModes1.vb region=CustomHelper}} 

````C#
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

````
````VB.NET
Private Class MyAutoCompleteAppendHelper
    Inherits AutoCompleteAppendHelper
    Public Sub New(ddList As RadDropDownListElement)
        MyBase.New(ddList)
    End Sub
    Protected Overrides Function DefaultCompare(item As RadListDataItem) As Boolean
        Return item.Text = Me.FindString
    End Function
End Class

````

{{endregion}} 


#### Set SetAppendHelper 
 

{{source=..\SamplesCS\DropDownListControl\CheckedDropDownList\AutoCompleteModes1.cs region=SetAppendHelper}} 
{{source=..\SamplesVB\DropDownListControl\CheckedDropDownList\AutoCompleteModes1.vb region=SetAppendHelper}} 

````C#
this.radCheckedDropDownList1.DropDownListElement.AutoCompleteAppend = new MyAutoCompleteAppendHelper(this.radCheckedDropDownList1.DropDownListElement);

````
````VB.NET
Me.RadCheckedDropDownList1.DropDownListElement.AutoCompleteAppend = New MyAutoCompleteAppendHelper(Me.RadCheckedDropDownList1.DropDownListElement)

````

{{endregion}} 
 
>note You can also create a custom __AutoCompleteSuggestHelper__ and override the __DefaultFilter__ method to achieve similar effect.
>

