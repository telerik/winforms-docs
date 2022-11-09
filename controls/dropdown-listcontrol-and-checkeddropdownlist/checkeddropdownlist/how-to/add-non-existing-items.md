---
title: Add non-existing Items
page_title: Add non-existing Items - RadCheckedDropDownList
description: RadCheckedDropDownList combines RadDropDownList and RadAutoCompleteBox in order to provide functionality to check items in the drop down area and tokenize them in the text area. 
slug: winforms/dropdown-listcontrol-and-checkeddropdownlist/checkeddropdownlist/how-to/add-non-existing-items
tags: add,non-existing,items
published: True
position: 0
previous_url: dropdown-and-listcontrol-checked-dropdownlist-how-to-add-non-existing-items
---

# Add non-existing Items
 
There are cases where the item which the user is typing is not in the current list of items. In this case, you can manually add it.

For this purpose, __RadCheckedDropDownList__ has the __TokenValidating__ event. It gives you information for the token's text and whether the token, being validated, is valid. You can use this to check whether the item is already present in the items of the __RadCheckedDropDownList__ and make the token valid:

#### Subscribe for TokenValidating 

{{source=..\SamplesCS\DropDownListControl\CheckedDropDownList\How-To\AddNonExistingItems1.cs region=Subscribe}} 
{{source=..\SamplesVB\DropDownListControl\CheckedDropDownList\How-To\AddNonExistingItems1.vb region=Subscribe}} 

````C#
this.radCheckedDropDownList1.TokenValidating += radCheckedDropDownList1_TokenValidating;

````
````VB.NET
AddHandler Me.RadCheckedDropDownList1.TokenValidating, AddressOf radCheckedDropDownList1_TokenValidating

````

{{endregion}} 


#### Add non-existing items 

{{source=..\SamplesCS\DropDownListControl\CheckedDropDownList\How-To\AddNonExistingItems1.cs region=Handler}} 
{{source=..\SamplesVB\DropDownListControl\CheckedDropDownList\How-To\AddNonExistingItems1.vb region=Handler}} 

````C#
void radCheckedDropDownList1_TokenValidating(object sender, TokenValidatingEventArgs e)
{
    if (!e.IsValidToken)
    {
        AutoCompleteBoxViewElement textBox = sender as AutoCompleteBoxViewElement;
        if (this.radCheckedDropDownList1.DropDownListElement.FindStringExact(e.Text) == -1)
        {
            this.radCheckedDropDownList1.Items.Add(new RadCheckedListDataItem(e.Text, false));
            e.IsValidToken = true;
        }
    }
}

````
````VB.NET
Private Sub radCheckedDropDownList1_TokenValidating(sender As Object, e As TokenValidatingEventArgs)
    If Not e.IsValidToken Then
        Dim textBox As AutoCompleteBoxViewElement = TryCast(sender, AutoCompleteBoxViewElement)
        If Me.RadCheckedDropDownList1.DropDownListElement.FindStringExact(e.Text) = -1 Then
            Me.RadCheckedDropDownList1.Items.Add(New RadCheckedListDataItem(e.Text, False))
            e.IsValidToken = True
        End If
    End If
End Sub

````

{{endregion}} 

>note In order to make the custom text a valid token, it is necessary to enter the delimeter which is __;__ by default.

>caption Figure 1: Tokens Validating

![dropdown-and-listcontrol-checkeddropdownlist-how-to 001](images/dropdown-and-listcontrol-checkeddropdownlist-how-to001.gif)



