---
title: Custom Display Names
page_title: Custom Display Names
description: The names extracted from the data object can be customized in the PropertyDisplayNameNeeded event.
slug: winforms/datafilter/customizing-appearance/custom-display-names
tags: data, filter
published: True
position: 2
---

# Custom Display Names

The names behind each of the descriptor items are extracted from the data-bound object. **RadDataFilter** exposes the **PropertyDisplayNameNeeded** event providing means for customizing the displayed name of a field.

>caption Figure 1: Custom Display Names

![WinForms RadDataFilter Custom Display Names](images/datafilter-customizing-appearance-custom-display-names001.png)

#### PropertyDisplayNameNeeded Event

{{source=..\SamplesCS\DataFilter\DataFilterWorkingWithNodes.cs region=CustomDisplayNames}} 
{{source=..\SamplesVB\DataFilter\DataFilterWorkingWithNodes.vb region=CustomDisplayNames}}
````C#
private void RadDataFilter1_PropertyDisplayNameNeeded(object sender, PropertyDisplayNameNeededEventArgs e)
{
    if (e.FieldName == "BirthDay")
    {
        e.DisplayName = "Birth Day";
    }
}

````
````VB.NET
Private Sub RadDataFilter1_PropertyDisplayNameNeeded(sender As Object, e As PropertyDisplayNameNeededEventArgs)
    If e.FieldName = "Birth Day" Then
        e.DisplayName = "Birth Day"
    End If
End Sub

````



{{endregion}}

# See Also

* [Getting Started ]({%slug winforms/datafilter/getting-started%})
* [Unbound Mode]({%slug winforms/datafilter/populating-with-data/unbound-mode%})	
* [Data Binding]({%slug winforms/datafilter/populating-with-data/data-binding%})	
