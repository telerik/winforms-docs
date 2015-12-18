---
title: TabStop
page_title: TabStop | UI for WinForms Documentation
description: TabStop
slug: winforms/wordsprocessing/concepts/tabstop
tags: tabstop
published: True
position: 8
---

# TabStop



A tab stop is a term used to describe the location the caret stops after tab key is pressed. Tab stops are used in words processing to enable users to align text by inserting the Tab symbol. Each paragraph contains a number of tabs, which could be placed wherever you want.

## TabStop Overview

The __TabStop__ class is immutable, meaning you should set its properties when initializing an instance.

* __Position:__ The position of the tab stop.

* __Type:__ The type of the tab stop, defines the behavior of the tab stop. All possibilities are described with the TabStopType enumeration:

  * __Left:__ The text following the tab stop will be left aligned with respect to the tab stop position. This is the default value.
  
  * __Center:__ The text following the tab stop will be centered around the tab stop position.
  
  * __Right:__ The text following the tab stop will be right aligned with respect to the tab stop position.
  
  * __Decimal:__ Text before the decimal point will be positioned to the left and text after the decimal point will be positioned to the right side of the tab stop.
  
  * __Bar:__ A vertical bar is shown on the tab position.
  
  * __Clear:__ Clears an inherited tab stop.

* __Leader:__ Specifies the character which shall be used to fill the space in front of a tab. All possibilities are described with the TabStopLeader enumeration:

  * __None:__ The space before the tab will be left empty. This is the default value.
  
  * __Dot:__ The space before the tab will be filled with dots.
  
  * __Hyphen:__ The space before the tab will be filled with hyphens.
  
  * __Underscore:__ The space before the tab will be filled with underscores.
  
  * __MiddleDot:__ The space before the tab will be filled with middle dots.

The distance between automatic tab stops is determined by the __RadFlowDocument.DefaultTabStopWidth__ property. Automatic tab stops refer to the tab stop location which occur after all custom tab stops in the current paragraph have been surpassed.

## TabStopCollection Overview

This class derives from __System.Collections.Generic.IEnumerable__ and represents a collection of __TabStop__ objects. The collection is immutable and it is used to hold the tab stops in a Paragraph.

The __TabStopCollection__ class exposes the following members:

* __Count:__ The count of TabStop elements in the collection.

* __Insert():__ This method will return new instance of TabStopCollection with the specified tab stop inserted in it.

* __Remove():__ This method will return new instance of TabStopCollection with the specified tab stop removed.

## Working with TabStopCollection

* __Create a TabStopCollection__ - Excluding the default constructor, the __TabStopCollection__ class exposes an overload allowing you to directly pass a collection of  __TabStop__ objects:

#### Example 1: Create a TabStopCollection

{{source=..\SamplesCS\WordsProcessing\Concepts\WordsProcessingTabStop.cs region=NewTabStop}} 
{{source=..\SamplesVB\WordsProcessing\Concepts\WordsProcessingTabStop.vb region=NewTabStop}} 

````C# 
List<TabStop> tabStops = new List<TabStop>();
tabStops.Add(new TabStop(Telerik.WinForms.Documents.Model.Unit.InchToDip(1), TabStopType.Left));
tabStops.Add(new TabStop(Telerik.WinForms.Documents.Model.Unit.InchToDip(2), TabStopType.Center, TabStopLeader.Dot));
tabStops.Add(new TabStop(Telerik.WinForms.Documents.Model.Unit.InchToDip(3), TabStopType.Right, TabStopLeader.Hyphen));
tabStops.Add(new TabStop(Telerik.WinForms.Documents.Model.Unit.InchToDip(5.5), TabStopType.Bar));
            
TabStopCollection collection1 = new TabStopCollection(tabStops);

````
````VB.NET
Dim tabStops As New List(Of TabStop)()
tabStops.Add(New TabStop(Telerik.WinForms.Documents.Model.Unit.InchToDip(1), TabStopType.Left))
tabStops.Add(New TabStop(Telerik.WinForms.Documents.Model.Unit.InchToDip(2), TabStopType.Center, TabStopLeader.Dot))
tabStops.Add(New TabStop(Telerik.WinForms.Documents.Model.Unit.InchToDip(3), TabStopType.Right, TabStopLeader.Hyphen))
tabStops.Add(New TabStop(Telerik.WinForms.Documents.Model.Unit.InchToDip(5.5), TabStopType.Bar))
Dim collection As New TabStopCollection(tabStops)

````

{{endregion}}

* __Insert Item in a TabStopCollection__ - In Example 2 is illustrated how to insert items in the __TabStopCollection__ created in Example 1. Keep in mind that due to the fact that this collection is immutable, the Insert() method will return a new instance of the class. 

#### Example 2: Insert Item in a TabStopCollection

{{source=..\SamplesCS\WordsProcessing\Concepts\WordsProcessingTabStop.cs region=collection}} 
{{source=..\SamplesVB\WordsProcessing\Concepts\WordsProcessingTabStop.vb region=collection}} 

````C#
TabStopCollection collection1 = collection.Insert(new TabStop(Unit.InchToDip(4))).Insert(new TabStop(Unit.InchToDip(5.5), TabStopType.Right));

````
````VB.NET
Dim collection1 As TabStopCollection = collection.Insert(New TabStop(Unit.InchToDip(4))).Insert(New TabStop(Unit.InchToDip(5.5), TabStopType.Right))

````

{{endregion}}

* __Remove Item from a TabStopCollection__ - The snippet below shows how to remove an item from the TabStopCollection created in Example 1. Keep in mind that due to the fact that this collection is immutable, the Remove() method will return new instance of the class.

#### Example 3: Remove item from a TabStopCollection

{{source=..\SamplesCS\WordsProcessing\Concepts\WordsProcessingTabStop.cs region=Remove}} 
{{source=..\SamplesVB\WordsProcessing\Concepts\WordsProcessingTabStop.vb region=Remove}} 

````C#
TabStop tabStopToRemove = collection.First();
collection = collection.Remove(tabStopToRemove);

````
````VB.NET
Dim tabStopToRemove As TabStop = collection.First()
collection = collection.Remove(tabStopToRemove)

````

{{endregion}}

## Working with TabStop

In __RadWordsProcessing__ the tab stops are stored as a collection in the __Paragraph__. This section will show you how to work with the __TabStop__ element.

* __Create a TabStop__ - The code from Example 4 demonstrates how to create a tab stop:

#### Example 4: Create a TabStop

{{source=..\SamplesCS\WordsProcessing\Concepts\WordsProcessingTabStop.cs region=Create}} 
{{source=..\SamplesVB\WordsProcessing\Concepts\WordsProcessingTabStop.vb region=Create}} 

````C#
TabStop tabStop = new TabStop(Telerik.WinForms.Documents.Model.Unit.InchToDip(2), TabStopType.Center);

````
````VB.NET
Dim tabStop As New TabStop(Telerik.WinForms.Documents.Model.Unit.InchToDip(2), TabStopType.Center)

````

{{endregion}}

* __Adding a TabStop__ - Example 5 shows how to add the tab stop created in Example 1 to an existing Paragraph through the TabStops property of type TabStopCollection:

#### Example 5: Insert a TabStop

{{source=..\SamplesCS\WordsProcessing\Concepts\WordsProcessingTabStop.cs region=insert}} 
{{source=..\SamplesVB\WordsProcessing\Concepts\WordsProcessingTabStop.vb region=insert}} 

````C#
paragraph.TabStops.Insert(tabStop);

````
````VB.NET
paragraph.TabStops.Insert(tabStop)

````

{{endregion}}

* __Remove a TabStop__ - The following code-snippet illustrates how to remove the created in Example 4 TabStop:

#### Example 6: Remove a TabStop

{{source=..\SamplesCS\WordsProcessing\Concepts\WordsProcessingTabStop.cs region=paragraphRemove}} 
{{source=..\SamplesVB\WordsProcessing\Concepts\WordsProcessingTabStop.vb region=paragraphRemove}} 

````C# 
paragraph.TabStops.Remove(tabStop);

````
````VB.NET
paragraph.TabStops.Remove(tabStop)

````

{{endregion}}