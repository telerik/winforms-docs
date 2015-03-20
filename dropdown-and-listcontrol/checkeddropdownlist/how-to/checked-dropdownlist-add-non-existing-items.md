---
title: Add non-existing Items
page_title: Add non-existing Items
description: Add non-existing Items
slug: dropdown-and-listcontrol-checked-dropdownlist-how-to-add-non-existing-items
tags: add,non-existing,items
published: True
position: 0
---

# Add non-existing Items



There are cases where the item which your user is typing is not in your current list of items. In this case you can manually add it.

## 

For this purpose __RadCheckedDropDownList__ has the __TokenValidating__ event. It gives you information whether the token being
          validated is valid and its text. You can use this to check whether the item is already present in  the items of the __RadCheckedDropDownList__
          and make the token valid:
        

#### __[C#] Subscibe for TokenValidating__

{{region Subscribe}}
	            this.radCheckedDropDownList1.TokenValidating += radCheckedDropDownList1_TokenValidating;
	{{endregion}}



#### __[VB.NET] Subscibe for TokenValidating__

{{region Subscribe}}
	        AddHandler Me.RadCheckedDropDownList1.TokenValidating, AddressOf radCheckedDropDownList1_TokenValidating
	        '#End Region
	    End Sub
	
	#Region "Handler"
	    Private Sub radCheckedDropDownList1_TokenValidating(sender As Object, e As TokenValidatingEventArgs)
	        If Not e.IsValidToken Then
	            Dim textBox As AutoCompleteBoxViewElement = TryCast(sender, AutoCompleteBoxViewElement)
	            If Me.RadCheckedDropDownList1.DropDownListElement.FindStringExact(e.Text) = -1 Then
	                Me.RadCheckedDropDownList1.Items.Add(New RadCheckedListDataItem(e.Text, False))
	                e.IsValidToken = True
	            End If
	        End If
	    End Sub
	#End Region
	End Class



#### __[C#] Add non-existing items__

{{region Handler}}
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
	{{endregion}}



#### __[VB.NET] Add non-existing items__

{{region Handler}}
	    Private Sub radCheckedDropDownList1_TokenValidating(sender As Object, e As TokenValidatingEventArgs)
	        If Not e.IsValidToken Then
	            Dim textBox As AutoCompleteBoxViewElement = TryCast(sender, AutoCompleteBoxViewElement)
	            If Me.RadCheckedDropDownList1.DropDownListElement.FindStringExact(e.Text) = -1 Then
	                Me.RadCheckedDropDownList1.Items.Add(New RadCheckedListDataItem(e.Text, False))
	                e.IsValidToken = True
	            End If
	        End If
	    End Sub
	#End Region
	End Class


