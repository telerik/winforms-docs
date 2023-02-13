---
title: DropDown Resizing
page_title: DropDown Resizing - WinForms DropDownList Control
description: WinForms DropDownList supports different sizing modes, based on the __DropDownSizingMode__ property of the control.
slug: winforms/dropdown-listcontrol-and-checkeddropdownlist/dropdownlist/dropdown-resizing
tags: dropdown,resizing
published: True
position: 13
previous_url: dropdown-and-listcontrol-dropdownlist-dropdown-resizing
---

# DropDown Resizing

## DropDownSizingMode

__RadDropDownList__ supports different sizing modes, based on the __DropDownSizingMode__ property of the control.
      

The __SizingMode__ enumeration has the following members:
        

* __None__: no sizing is allowed.
            
>caption Figure 1: SizingMode.None

![WinForms RadDropDownList SizingMode None](images/dropdown-and-listcontrol-dropdownlist-dropdown-resizing001.png)

#### SizingMode.None 

{{source=..\SamplesCS\DropDownListControl\DropDownList\DropDownListItemSizing.cs region=None}} 
{{source=..\SamplesVB\DropDownListControl\DropDownList\DropDownListItemSizing.vb region=None}} 

````C#
this.radDropDownList1.DropDownSizingMode = SizingMode.None;

````
````VB.NET
Me.radDropDownList1.DropDownSizingMode = SizingMode.None

````

{{endregion}} 
 
* __RightBottom__: allows sizing in horizontal direction.
            
>caption Figure 2: SizingMode.RightBottom

![WinForms RadDropDownList SizingMode RightBottom](images/dropdown-and-listcontrol-dropdownlist-dropdown-resizing002.png)

#### SizingMode.RightBottom 

{{source=..\SamplesCS\DropDownListControl\DropDownList\DropDownListItemSizing.cs region=RightBottom}} 
{{source=..\SamplesVB\DropDownListControl\DropDownList\DropDownListItemSizing.vb region=RightBottom}} 

````C#
this.radDropDownList1.DropDownSizingMode = SizingMode.RightBottom;

````
````VB.NET
Me.radDropDownList1.DropDownSizingMode = SizingMode.RightBottom

````

{{endregion}} 
 

* __UpDown__: allows sizing in vertical direction.
            
>caption Figure 3: SizingMode.UpDown

![WinForms RadDropDownList SizingMode UpDown](images/dropdown-and-listcontrol-dropdownlist-dropdown-resizing003.png)

#### SizingMode.UpDown 

{{source=..\SamplesCS\DropDownListControl\DropDownList\DropDownListItemSizing.cs region=UpDown}} 
{{source=..\SamplesVB\DropDownListControl\DropDownList\DropDownListItemSizing.vb region=UpDown}} 

````C#
this.radDropDownList1.DropDownSizingMode = SizingMode.UpDown;

````
````VB.NET
Me.radDropDownList1.DropDownSizingMode = SizingMode.UpDown

````

{{endregion}} 
 

* __UpDownAndRightBottom__: allows sizing in both directions.
            
>caption Figure 4: SizingMode.UpDownAndRightBottom

![WinForms RadDropDownList SizingMode UpDownAndRightBottom](images/dropdown-and-listcontrol-dropdownlist-dropdown-resizing004.png)

#### SizingMode.UpDownAndRightBottom 

{{source=..\SamplesCS\DropDownListControl\DropDownList\DropDownListItemSizing.cs region=UpDownAndRightBottom}} 
{{source=..\SamplesVB\DropDownListControl\DropDownList\DropDownListItemSizing.vb region=UpDownAndRightBottom}} 

````C#
this.radDropDownList1.DropDownSizingMode = SizingMode.UpDownAndRightBottom;

````
````VB.NET
Me.radDropDownList1.DropDownSizingMode = SizingMode.UpDownAndRightBottom

````

{{endregion}} 
 

## Fixed size

You can specify a fixed height or width of the drop-down by setting the __DropDownHeight__ and __DropDownWidth__ properties.
        
>caption Figure 5: DropDownHeight

![WinForms RadDropDownList DropDownHeight](images/dropdown-and-listcontrol-dropdownlist-dropdown-resizing005.png)

#### DropDownHeight 

{{source=..\SamplesCS\DropDownListControl\DropDownList\DropDownListItemSizing.cs region=DropDownHeight}} 
{{source=..\SamplesVB\DropDownListControl\DropDownList\DropDownListItemSizing.vb region=DropDownHeight}} 

````C#
this.radDropDownList1.DropDownListElement.DropDownHeight = 400;

````
````VB.NET
Me.radDropDownList1.DropDownListElement.DropDownHeight = 400

````

{{endregion}} 
 
>caption Figure 6: DropDownWidth

![WinForms RadDropDownList DropDownWidth](images/dropdown-and-listcontrol-dropdownlist-dropdown-resizing007.png)

#### DropDownWidth 

{{source=..\SamplesCS\DropDownListControl\DropDownList\DropDownListItemSizing.cs region=DropDownWidth}} 
{{source=..\SamplesVB\DropDownListControl\DropDownList\DropDownListItemSizing.vb region=DropDownWidth}} 

````C#
this.radDropDownList1.DropDownListElement.DropDownWidth = 400;

````
````VB.NET
Me.radDropDownList1.DropDownListElement.DropDownWidth = 400

````

{{endregion}} 
 

You can set the __DropDownMinSize__ property in order to specify the exact minimum height and width for the drop-down.
        
>caption Figure 7: DropDownMinSize

![WinForms RadDropDownList DropDownMinSize](images/dropdown-and-listcontrol-dropdownlist-dropdown-resizing006.png)

#### DropDownMinSize 

{{source=..\SamplesCS\DropDownListControl\DropDownList\DropDownListItemSizing.cs region=DropDownMinSize}} 
{{source=..\SamplesVB\DropDownListControl\DropDownList\DropDownListItemSizing.vb region=DropDownMinSize}} 

````C#
this.radDropDownList1.DropDownMinSize = new Size(400, 400);

````
````VB.NET
Me.radDropDownList1.DropDownMinSize = New Size(400, 400)

````

{{endregion}} 

## Auto size

The following example demonstrates a sample approach how to handle the RadDropDownList.__PopupOpening__ event and achieve auto size functionality for the pop up in __RadDropDownList__:

#### Auto size drop down 

{{source=..\SamplesCS\DropDownListControl\DropDownList\DropDownList1.cs region=AutoSizeDropDown}} 
{{source=..\SamplesVB\DropDownListControl\DropDownList\DropDownList1.vb region=AutoSizeDropDown}} 

````C#
private void RadDropDownList1_PopupOpening(object sender, CancelEventArgs e)
{
    RadDropDownListElement list = sender as RadDropDownListElement;
    float width = 0;
    for (int x = 0; x < list.Items.Count(); x++)
    {
        width = Math.Max(width, TextRenderer.MeasureText(list.Items[x].Text, list.Font).Width);
    }
    if (list.Items.Count * (list.ItemHeight-1) > list.DropDownHeight)
    {
        width += list.ListElement.VScrollBar.Size.Width;
    }
    list.Popup.Width = (int)width;
}

````
````VB.NET
Private Sub RadDropDownList1_PopupOpening(sender As Object, e As CancelEventArgs)
    Dim list As RadDropDownListElement = TryCast(sender, RadDropDownListElement)
    Dim width As Single = 0
    For x As Integer = 0 To list.Items.Count() - 1
        width = Math.Max(width, TextRenderer.MeasureText(list.Items(x).Text, list.Font).Width)
    Next
    If list.Items.Count * (list.ItemHeight - 1) > list.DropDownHeight Then
        width += list.ListElement.VScrollBar.Size.Width
    End If
    list.Popup.Width = CInt(width)
End Sub
'#End Region
'#Region "FilteringPredicate"
Private Function FilterItem(item As RadListDataItem) As Boolean
    If item.Text.StartsWith("L") Then
        Return True
    End If
    
    Return False
End Function

````

{{endregion}} 

|Default pop up size|Auto sized popup|
|----|----|
|![WinForms RadDropDownList Default Popup Size](images/dropdown-and-listcontrol-dropdownlist-dropdown-resizing009.png)|![WinForms RadDropDownList Auto sized Popup](images/dropdown-and-listcontrol-dropdownlist-dropdown-resizing010.png)|

## Displayed items

By default, __RadDropDownList__ displays 6 items in the pop-up. In case you need to change this number you can set the __DefaultItemsCountInDropDown__ property:
      
>caption Figure 8: DefaultItemsCountInDropDown

![WinForms RadDropDownList DefaultItemsCountInDropDown](images/dropdown-and-listcontrol-dropdownlist-dropdown-resizing008.png)

#### DefaultItemsCountInDropDown 

{{source=..\SamplesCS\DropDownListControl\DropDownList\DropDownListItemSizing.cs region=DefaultItemsCountInDropDown}} 
{{source=..\SamplesVB\DropDownListControl\DropDownList\DropDownListItemSizing.vb region=DefaultItemsCountInDropDown}} 

````C#
this.radDropDownList1.DropDownListElement.DefaultItemsCountInDropDown = 3;

````
````VB.NET
Me.radDropDownList1.DropDownListElement.DefaultItemsCountInDropDown = 3

````

{{endregion}} 



