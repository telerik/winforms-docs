---
title: Searching
page_title: Searching | RadListControl
description: RadListControl is the an alternative to the Microsoft ListBox control.
slug: winforms/dropdown-listcontrol-and-checkeddropdownlist/listcontrol/features/searching
tags: listcontrol, searching
published: True
position: 2  
---

# Searching

__RadListControl__ can search for an item with the __FindString__ and __FindStringExact__ methods as well via the keyboard search feature. Keyboard search allows typing the text of an item while __RadListControl__ is focused which will select the item with the same text as the typed text. There is a user defined interval that determines how long the user must wait, after typing a character, in order to reset the search. The __FindString__ method has two overloads that are used like this:

#### Searching an item

{{source=..\SamplesCS\DropDownListControl\ListControl\ListControl1.cs region=searching}} 
{{source=..\SamplesVB\DropDownListControl\ListControl\ListControl1.vb region=searching}} 

````C#
            
int index = radListControl1.FindString("someitem");

````
````VB.NET
Dim index As Integer = radListControl1.FindString("someitem")

````

{{endregion}} 
 
This method call will return the index of the first item with *"someitem"* as its text or *-1* if no item has been found. The second overload is called like this:

#### Searching after a given index

{{source=..\SamplesCS\DropDownListControl\ListControl\ListControl1.cs region=index}} 
{{source=..\SamplesVB\DropDownListControl\ListControl\ListControl1.vb region=index}} 

````C#
        
int index = radListControl1.FindString("someitem", 5);

````
````VB.NET
Dim index As Integer = radListControl1.FindString("someitem", 5)

````

{{endregion}} 
 
The second argument specifies the index after which the search will start. This means that in this case, the search will start at index 6. An important fact is that __FindString__ method uses a wrapping linear search algorithm. If the item is not found when the end of the items collection is reached, it wraps and continues the search from the beginning until the start index is reached. Users can also search for an item with the keyboard. Setting the __KeyboardSearchEnabled__ property to *true* will cause __RadListControl__ to process keystrokes, build a string by appending each keystroke and then use the built string to find an item. Every keystroke initiates a new search starting at the last found item. This feature is also known as incremental search. The __KeyboardSearchResetInterval__ property can be set in order to define how long the user must wait after pressing a key in order for the search to start from the beginning and for the built string to be destroyed. 