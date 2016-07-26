---
title: Features
page_title: Features | UI for WinForms Documentation
description: Features
slug: winforms/dropdown-listcontrol-and-checkeddropdownlist/listcontrol/features
tags: features
published: False
position: 8
previous_url: dropdown-and-listcontrol-listcontrol-features
---

# Features



RadListControl provides several features out of the box some of which are customizable to various degrees. RadListControl has the ability to sort and to filter data, to search for a particular item, to select items depending on selection mode, to set size constraints on visual items, to visually format item text and to use different scrolling modes. The rest of this article describes these features and how to use them.
       
## Sorting 

Sorting in RadListControl is controlled via the __SortStyle__ property. It supports ascending sort style, descending sort style and no sort style. Setting sorting through code looks like this:

#### Sorting 

{{source=..\SamplesCS\DropDownListControl\ListControl\ListControl1.cs region=sorting}} 
{{source=..\SamplesVB\DropDownListControl\ListControl\ListControl1.vb region=sorting}} 

````C#
            
radListControl1.SortStyle = Telerik.WinControls.Enumerations.SortStyle.Ascending;

````
````VB.NET
radListControl1.SortStyle = Telerik.WinControls.Enumerations.SortStyle.Ascending

````

{{endregion}} 
 
Changing the sort style may cause the SelectedIndexChanged event to fire if the position of the previously selected item has changed after the sort operation.
        

## Filtering

RadListControl can filter which items are currently visible by using the __Filter__ or __FilterExpression__ properties. Filter accepts a predicate method that can be used for arbitrary filtering conditions. FilterExpession accepts a string following a special syntax that describes which items should be visible. The Filter property is used like this:

#### Filtering method body 

{{source=..\SamplesCS\DropDownListControl\ListControl\ListControl1.cs region=filteringMethod}} 
{{source=..\SamplesVB\DropDownListControl\ListControl\ListControl1.vb region=filteringMethod}} 

````C#
    
private bool FilterMethod(RadListDataItem itemToFilter)
{
    return itemToFilter.Text.EndsWith("SomeString");
}

````
````VB.NET
Private Function FilterMethod(ByVal itemToFilter As RadListDataItem) As Boolean
    Return itemToFilter.Text.EndsWith("SomeString")
End Function

````

{{endregion}} 


#### Setting the Filter property 

{{source=..\SamplesCS\DropDownListControl\ListControl\ListControl1.cs region=filtering}} 
{{source=..\SamplesVB\DropDownListControl\ListControl\ListControl1.vb region=filtering}} 

````C#
            
radListControl1.Filter = FilterMethod;

````
````VB.NET
radListControl1.Filter = AddressOf FilterMethod

````

{{endregion}} 
 
Setting the Filter property will start a filtering operation which will call the FilterMethod for every item in RadListControl to determine if the item should be visible. After filtering RadListControl will contain the same number of items as before or less. Setting the Filter property to null resets any filtering and all items will be visible. Filtering may change the SelectedIndex property depending on whether the previously selected item is still visible.
        

## Searching

RadListControl can search for an item with the FindString() and FindStringExact() methods as well via the keyboard search feature. Keyboard search allows typing the text of an item while RadListControl is focused which will select the item with the same text as the typed text. There is a user defined interval that determines how long the user must wait, after typing a character, in order to reset the search. FindString() has two overloads that are used like this:

#### Searching 

{{source=..\SamplesCS\DropDownListControl\ListControl\ListControl1.cs region=searching}} 
{{source=..\SamplesVB\DropDownListControl\ListControl\ListControl1.vb region=searching}} 

````C#
            
int index = radListControl1.FindString("someitem");

````
````VB.NET
Dim index As Integer = radListControl1.FindString("someitem")

````

{{endregion}} 
 
This method call will return the index of the first item with "someitem" as its text or -1 if no item has this been found. The second overload is called like this:

#### Searching 

{{source=..\SamplesCS\DropDownListControl\ListControl\ListControl1.cs region=index}} 
{{source=..\SamplesVB\DropDownListControl\ListControl\ListControl1.vb region=index}} 

````C#
        
int index = radListControl1.FindString("someitem", 5);

````
````VB.NET
Dim index As Integer = radListControl1.FindString("someitem", 5)

````

{{endregion}} 
 
The second argument specifies the index after which the search will start. This means that in this case, the search will start at index 6. An important fact is that FindString() uses a wrapping linear search algorithm. If the item is not found when the end of the items collection is reached, it wraps and continues the search from the beginning until the start index is reached. Users can also search for an item with the keyboard. Setting the KeyboardSearchEnabled property to true will cause RadListControl to process keystrokes, build a string by appending each keystroke and then use the built string to find an item. Every keystroke initiates a new search starting at the last found item. This feature is also known as incremental search. The KeyboardSearchResetInterval property can be set in order to define how long the user must wait after pressing a key in order for the search to start from the beginning and for the built string to be destroyed. 

## Selection

RadListControl has a SelectionMode property than can be used to constrain the selection in different ways The modes are __None__, __One__, __MultiSimple__ and __MultiExtended__. The None mode is pretty self descriptive, it does not allow selecting items at all. One means that only one item can be selected at a time. The interesting modes are MultiSimple and MultiExtended. MultiSimple allows toggling the selected state of an item by clicking on it or pressing the space bar. Using the keyboard arrow keys in MultiSimple mode moves only the active item. The active item is different than the normal and selected items in that it has no fill color, only an outline. There can be only one active item at any given moment. MultiExtended is a combination of One and MultiSimple and on top of that provides the ability to select a range of items. MultiExtended by default behaves like one. When the Control key is pressed down, it behaves like MultiSimple and when the Shift key is pressed it allows the user to select a range of items starting from the currently selected item and ending with the clicked item.
        

## Setting Item Size Constraints

RadListControl has two modes that determine how large an item will be. These modes are controlled by the __AutoSizeItems__ property. Setting it to true will cause each item be as large as its content requires. Also in AutoSizeItems mode the user can explicitly set the Height property of each RadListDataItem. When AutoSizeItems is false on the other hand, the user can set the height of every item at once with the ItemHeight property of RadListControl. If users decide to set a large font for example, they either have to set AutoSizeItems to true so that the items can stretch to accommodate the large text or to remain with AutoSizeItems = false but set the ItemHeight property to some value that will be enough to display the whole text.
        

## Item Text Formatting

The text of each item can be formatted to the users liking by using the FormatInfo, FormatString and FormattingEnabled properties. FormattingEnabled decides whether FormatInfo and FormatString will be used to format each item’s text. When FormattingEnabled is false setting the FormatInfo and FormatString properties will have no effect until FormattingEnabled is set to true. FormatInfo is a class that implements the IFormatProvider interface. If FormatInfo is null the current culture of the executing thread is used as the IFormatProvider. The formatting functionality will work similarly to the standard Microsoft ListBox formatting. 

## Scrolling Modes

RadListControl provides three scrolling modes that can be used depending on user preferences. The first mode is Discrete. Discrete scrolling will scroll by one item at a time. The Smooth mode will scroll by pixels, that is, an item can be partially visible depending on how much the scroll bar has scrolled. The last mode is Deferred. Deferred scrolling does not cause GUI updates until  the user finishes the scrolling operation, only a tool tip appears that shows the item to which the user has scrolled.         
        

## Alternating Item Color

__RadListControl__ supports alternating item color which can be easily enabled by just setting a couple of properties: 

{{source=..\SamplesCS\DropDownListControl\ListControl\ListControl1.cs region=alternating}} 
{{source=..\SamplesVB\DropDownListControl\ListControl\ListControl1.vb region=alternating}} 

````C#
            
radListControl1.EnableAlternatingItemColor = true;
radListControl1.ListElement.AlternatingItemColor = Color.Red;

````
````VB.NET
radListControl1.EnableAlternatingItemColor = True
radListControl1.ListElement.AlternatingItemColor = Color.Red
'#End Region
'#Region "AddItemsProgrammatically"
Dim descriptionItem As New DescriptionTextListDataItem()
descriptionItem.Text = "Chicken wings"
descriptionItem.Image = My.Resources.chicken_wings
descriptionItem.DescriptionText = "some description"
Me.radListControl1.Items.Add(descriptionItem)
Dim dataItem As New RadListDataItem()
dataItem.Text = "Chicken toast"
dataItem.Image = My.Resources.chicken_toast
Me.radListControl1.Items.Add(dataItem)
'#End Region
End Sub
'#Region "Binding"
Public Class Item
Public Property Id() As Integer
    Get
        Return m_Id
    End Get
    Set(value As Integer)
        m_Id = value
    End Set
End Property
Private m_Id As Integer
Public Property Description() As String
    Get
        Return m_Description
    End Get
    Set(value As String)
        m_Description = value
    End Set
End Property
Private m_Description As String
Public Sub New(id As Integer, description As String)
    Me.Id = id
    Me.Description = description
End Sub
End Class
Public Sub Bind()
Dim items As New List(Of Item)()
For i As Integer = 0 To 9
    items.Add(New Item(i, "Data" + i))
Next
radListControl1.DataSource = items
radListControl1.DisplayMember = "Description"
radListControl1.ValueMember = "Id"
End Sub
'#End Region
'#region creatingVisualListItem
Private Sub radListControl1_CreatingVisualListItem(ByVal sender As Object, ByVal args As CreatingVisualListItemEventArgs)
args.VisualItem = New CustomVisualItem()
End Sub

````

{{endregion}} 



