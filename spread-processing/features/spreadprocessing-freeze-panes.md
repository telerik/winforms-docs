---
title: Freeze Panes
page_title: Freeze Panes
description: Freeze Panes
slug: spreadprocessing-features-freeze-panes
tags: freeze,panes
published: True
position: 6
---

# Freeze Panes



This article briefly describes what frozen panes are, and how to create and work with them. It contains the following sections:

* [What are frozen panes?](#what-are-frozen-panes?)

* [Types of panes](#types-of-panes)

* [What defines the panes positioning?](#what-defines-the-panes-positioning?)

* [Freezing panes](#freezing-panes)

* [Unfreezing panes](#unfreezing-panes)

## What are frozen panes?

Frozen panes are a method to keep part of the worksheet visible at all times when scrolling. 
        The image below shows a document with frozen top rows and first left column.![spreadprocessing-features-freeze-panes 001](images/spreadprocessing-features-freeze-panes001.png)

## Types of panes

Shapes have the following properties:

There are four types of panes, as marked on the image below:

1. Fixed
            

1. Horizontal scrollable
            

1. Vertical scrollable
            

1. Scrollable
            ![spreadprocessing-features-freeze-panes 002](images/spreadprocessing-features-freeze-panes002.png)

When the panes are split only horizontally the panes present are horizontal scrollable and scrollable. 
          When the panes are split vertically, the two panes are vertical scrollable and scrollable.

        

## What defines the panes positioning?

In order to describe fully the state of the frozen panes the following need to be specified:

* __Top left cell index of the fixed pane__: This property determines the position to which the viewport is scrolled. 
              When this is different from A1, any areas above and to the left of the index become unreachable. In the image below this is C3.
            

* __Frozen rows count__: The number of visible rows contained by the horizontal scrollable pane. In the image below this value is 1.
            

* __Frozen columns count__: The number of visible columns contained by the vertical scrollable pane. In the image below this value is 4.
            

* __Top left cell index of the scrollable pane__: This property determines the scroll position of the scrollable pane. In the image below this is I6. 
              Note that this index is different from the topmost and leftmost point of the scrollable pane.
            ![spreadprocessing-features-freeze-panes 003](images/spreadprocessing-features-freeze-panes003.png)

## Freezing panes

* __FreezePanes methods__Panes can be frozen through the ViewState property of the Worksheet. 
            It is of type WorksheetViewState and exposes the following overloads of the FreezePanes method:
            

* void FreezePanes(int frozenRowsCount, int frozenColumnsCount)

* void FreezePanes(CellIndex fixedPaneTopLeftCellIndex, int frozenRowsCount, int frozenColumnsCount)

* void FreezePanes(CellIndex fixedPaneTopLeftCellIndex, int frozenRowsCount, int frozenColumnsCount, CellIndex scrollableTopLeftCellIndex)If the top left cell indices of the fixed pane and of the scrollable pane are not specified, it will be assumed that the top 
          left index of the fixed pane is the current top left index of the viewport and that the scrollable pane is not scrolled.The result from the image above can be achieved with the following code:

#### __[C#]__

{{region FreezingPanes}}
	            
	            CellIndex fixedPaneTopLeftCellIndex = new CellIndex(2, 2);
	            CellIndex scrollableTopLeftCellIndex = new CellIndex(5, 8);
	            workbook.ActiveWorksheet.ViewState.FreezePanes(fixedPaneTopLeftCellIndex, 1, 4, scrollableTopLeftCellIndex);
	            
	{{endregion}}



#### __[VB]__

{{region FreezingPanes}}
	        Dim fixedPaneTopLeftCellIndex As New CellIndex(2, 2)
	        Dim scrollableTopLeftCellIndex As New CellIndex(5, 8)
	        workbook.ActiveWorksheet.ViewState.FreezePanes(fixedPaneTopLeftCellIndex, 1, 4, scrollableTopLeftCellIndex)
	        '#End Region
	    End Sub
	
	    Public Sub DummySplit()
	        Dim workbook As New Workbook()
	
	        '#Region "HorizontalVerticalSplit"
	
	        Dim fixedPaneTopLeftCellIndex As New CellIndex(2, 2)
	        workbook.ActiveWorksheet.ViewState.FreezePanes(fixedPaneTopLeftCellIndex, 0, 4)
	
	        '#End Region
	    End Sub
	
	    Public Sub DummyPane()
	        Dim workbook As New Workbook()
	
	        '#Region "Pane"
	
	        Dim scrollableTopLeftCellIndex As New CellIndex(5, 8)
	        Dim pane As New Pane(scrollableTopLeftCellIndex, 4, 1, ViewportPaneType.Scrollable)
	        workbook.ActiveWorksheet.ViewState.Pane = pane
	
	        '#End Region
	    End Sub
	
	    Public Sub DummyUnfreezingPanes()
	        Dim workbook As New Workbook()
	
	        '#Region "UnfreezingPanes"
	
	        workbook.ActiveWorksheet.ViewState.FreezePanes(0, 0)
	
	        '#End Region
	
	        '#Region "AlternativeUnfreezingPanes"
	
	        workbook.ActiveWorksheet.ViewState.Pane = Nothing
	
	        '#End Region
	    End Sub
	End Class



* __Horizontal and vertical split__If you would like to create a vertical or horizontal split, all you need to do is 
            specify either the row count or the column count to be equal to zero.

#### __[C#]__

{{region HorizontalVerticalSplit}}
	            
	            CellIndex fixedPaneTopLeftCellIndex = new CellIndex(2, 2);
	            workbook.ActiveWorksheet.ViewState.FreezePanes(fixedPaneTopLeftCellIndex, 0, 4);
	        
	{{endregion}}



#### __[VB]__

{{region HorizontalVerticalSplit}}
	
	        Dim fixedPaneTopLeftCellIndex As New CellIndex(2, 2)
	        workbook.ActiveWorksheet.ViewState.FreezePanes(fixedPaneTopLeftCellIndex, 0, 4)
	
	        '#End Region
	    End Sub
	
	    Public Sub DummyPane()
	        Dim workbook As New Workbook()
	
	        '#Region "Pane"
	
	        Dim scrollableTopLeftCellIndex As New CellIndex(5, 8)
	        Dim pane As New Pane(scrollableTopLeftCellIndex, 4, 1, ViewportPaneType.Scrollable)
	        workbook.ActiveWorksheet.ViewState.Pane = pane
	
	        '#End Region
	    End Sub
	
	    Public Sub DummyUnfreezingPanes()
	        Dim workbook As New Workbook()
	
	        '#Region "UnfreezingPanes"
	
	        workbook.ActiveWorksheet.ViewState.FreezePanes(0, 0)
	
	        '#End Region
	
	        '#Region "AlternativeUnfreezingPanes"
	
	        workbook.ActiveWorksheet.ViewState.Pane = Nothing
	
	        '#End Region
	    End Sub
	End Class

This code will result in the following:![spreadprocessing-features-freeze-panes 004](images/spreadprocessing-features-freeze-panes004.png)Since the two panes present are only vertical scrollable and scrollable the columns A and B will remain unreachable. 
            However, the user will be able to scroll to the first two rows. Even though there are two rows from the start of the document 
            at the time of freezing, the document will not be split horizontally.

* __The Pane class__Another option to freeze the panes in a worksheet is to use the Pane property of type Pane of the WorksheetViewState. 
            The functionality you can achieve is almost identical to the FreezePanes() methods. The Pane class has the following properties:

* __TopLeftCellIndex__: The top left cell index of the scrollable pane
                

* __XSplit__: The number of visible columns contained by the vertical scrollable pane
                

* __YSplit__: The number of visible rows contained by the horizontal scrollable pane.
                

* __ActivePane__: The current active pane.
                

* __State__: The state of the frozen panes. At the moment only the Frozen state is supported.
                The state from the image in the  [What defines the panes positioning section](#what-defines-the-panes-positioning?) can be achieved with the following code:
            

#### __[C#]__

{{region Pane}}
	            
	            CellIndex scrollableTopLeftCellIndex = new CellIndex(5, 8);
	            Pane pane = new Pane(scrollableTopLeftCellIndex, 4, 1, ViewportPaneType.Scrollable);
	            workbook.ActiveWorksheet.ViewState.Pane = pane;
	
	{{endregion}}



#### __[VB]__

{{region Pane}}
	
	        Dim scrollableTopLeftCellIndex As New CellIndex(5, 8)
	        Dim pane As New Pane(scrollableTopLeftCellIndex, 4, 1, ViewportPaneType.Scrollable)
	        workbook.ActiveWorksheet.ViewState.Pane = pane
	
	        '#End Region
	    End Sub
	
	    Public Sub DummyUnfreezingPanes()
	        Dim workbook As New Workbook()
	
	        '#Region "UnfreezingPanes"
	
	        workbook.ActiveWorksheet.ViewState.FreezePanes(0, 0)
	
	        '#End Region
	
	        '#Region "AlternativeUnfreezingPanes"
	
	        workbook.ActiveWorksheet.ViewState.Pane = Nothing
	
	        '#End Region
	    End Sub
	End Class



## Unfreezing panes

In order to unfreeze the panes of the worksheet you need to use the same methods as above but
        specify zero for number of frozen rows and columns.

#### __[C#]__

{{region UnfreezingPanes}}
	        
	            workbook.ActiveWorksheet.ViewState.FreezePanes(0, 0);
	
	{{endregion}}



#### __[VB]__

{{region UnfreezingPanes}}
	
	        workbook.ActiveWorksheet.ViewState.FreezePanes(0, 0)
	
	        '#End Region
	
	        '#Region "AlternativeUnfreezingPanes"
	
	        workbook.ActiveWorksheet.ViewState.Pane = Nothing
	
	        '#End Region
	    End Sub
	End Class



Another option is to set the Pane property of the ViewState to null.

#### __[C#]__

{{region AlternativeUnfreezingPanes}}
	        
	            workbook.ActiveWorksheet.ViewState.Pane = null;
	
	{{endregion}}



#### __[VB]__

{{region AlternativeUnfreezingPanes}}
	
	        workbook.ActiveWorksheet.ViewState.Pane = Nothing
	
	        '#End Region
	    End Sub
	End Class



# See Also

 * [What is a Worksheet?]({%slug spreadprocessing-working-with-worksheets-what-is-worksheet%})
