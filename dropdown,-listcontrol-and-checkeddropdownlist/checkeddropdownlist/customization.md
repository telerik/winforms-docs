---
title: Customization
page_title: Customization | UI for WinForms Documentation
description: Customization
slug: winforms/dropdown,-listcontrol-and-checkeddropdownlist/checkeddropdownlist/customization
tags: customization
published: True
position: 3
---

# Customization



Customizing __RadCheckedDropDownList__ is easy and can be separated in two parts:
      

## Customizing the editable area

In order to customize the editable area you must subscribe to the __TextBlockFormatting__ and modify the properties of the __TokenizedTextBlockElement__:
        #_[C#] Subscribe to TextBlockFormatting_

	



{{source=..\SamplesCS\DropDownListControl\CheckedDropDownList\Customization1.cs region=TextBlockFormattingSubscribe}} 
{{source=..\SamplesVB\DropDownListControl\CheckedDropDownList\Customization1.vb region=TextBlockFormattingSubscribe}} 

````C#
            this.radCheckedDropDownList1.TextBlockFormatting += radCheckedDropDownList1_TextBlockFormatting;
````
````VB.NET
        AddHandler Me.RadCheckedDropDownList1.TextBlockFormatting, AddressOf radCheckedDropDownList1_TextBlockFormatting
        '
````

{{endregion}} 


#_[C#] Modify properties_

	



{{source=..\SamplesCS\DropDownListControl\CheckedDropDownList\Customization1.cs region=TextBlockFormattingHandler}} 
{{source=..\SamplesVB\DropDownListControl\CheckedDropDownList\Customization1.vb region=TextBlockFormattingHandler}} 

````C#
        void radCheckedDropDownList1_TextBlockFormatting(object sender, TextBlockFormattingEventArgs e)
        {
            TokenizedTextBlockElement token = e.TextBlock as TokenizedTextBlockElement;
            if (token != null)
            {
                token.ForeColor = Color.DarkBlue;
                token.DrawFill = false;
                token.BorderColor = Color.DarkRed;
                token.BorderWidth = 1.3f;
            }
        }
````
````VB.NET
    Private Sub radCheckedDropDownList1_TextBlockFormatting(sender As Object, e As TextBlockFormattingEventArgs)
        Dim token As TokenizedTextBlockElement = TryCast(e.TextBlock, TokenizedTextBlockElement)
        If token IsNot Nothing Then
            token.ForeColor = Color.DarkBlue
            token.DrawFill = False
            token.BorderColor = Color.DarkRed
            token.BorderWidth = 1.3F
        End If
    End Sub
    '
````

{{endregion}} 


![dropdown-and-listcontrol-checkeddropdownlist-customization 001](images/dropdown-and-listcontrol-checkeddropdownlist-customization001.png)

## Customizing the drop down items

Customizing the drop down items is similar. Subscribe to the __VisualListItemFormatting__:
        #_[C#] Subscribe to VisualListItemFormatting_

	



{{source=..\SamplesCS\DropDownListControl\CheckedDropDownList\Customization1.cs region=VisualListItemFormattingSubscribe}} 
{{source=..\SamplesVB\DropDownListControl\CheckedDropDownList\Customization1.vb region=VisualListItemFormattingSubscribe}} 

````C#
            this.radCheckedDropDownList1.VisualListItemFormatting += radCheckedDropDownList1_VisualListItemFormatting;
````
````VB.NET
        AddHandler Me.RadCheckedDropDownList1.VisualListItemFormatting, AddressOf radCheckedDropDownList1_VisualListItemFormatting
        '
````

{{endregion}} 


#_[C#] Modify properties_

	



{{source=..\SamplesCS\DropDownListControl\CheckedDropDownList\Customization1.cs region=VisualListItemFormattingHandler}} 
{{source=..\SamplesVB\DropDownListControl\CheckedDropDownList\Customization1.vb region=VisualListItemFormattingHandler}} 

````C#
        void radCheckedDropDownList1_VisualListItemFormatting(object sender, VisualItemFormattingEventArgs args)
        {
            bool itemChecked = ((RadCheckedListDataItem)args.VisualItem.Data).Checked;
            if (itemChecked)
            {
                args.VisualItem.ForeColor = Color.Green;
            }
            else
            {
                args.VisualItem.ForeColor = Color.Red;
            }
        }
````
````VB.NET
    Private Sub radCheckedDropDownList1_VisualListItemFormatting(sender As Object, args As VisualItemFormattingEventArgs)
        Dim itemChecked As Boolean = DirectCast(args.VisualItem.Data, RadCheckedListDataItem).Checked
        If itemChecked Then
            args.VisualItem.ForeColor = Color.Green
        Else
            args.VisualItem.ForeColor = Color.Red
        End If
    End Sub
    '
````

{{endregion}} 


![dropdown-and-listcontrol-checkeddropdownlist-customization 002](images/dropdown-and-listcontrol-checkeddropdownlist-customization002.png)
