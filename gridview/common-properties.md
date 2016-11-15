---
title: Specific Properties and Methods
page_title: Common Properties | RadGridView
description: Describes the most commonly used properties of RadGridView
slug: winforms/gridview/common-properties
tags: copy/paste/cut
published: True
position: 11
---

# Commonly Used Properties

## RadGridView

|Property|Description|
|---|---|
|__ShowColumnHeaders__|Gets or sets a value indicating whether the column headers are visible.|
|__MasterView__|Gets the top-most GridViewInfo level of the grid. This class contains logical information about visual presentation of flat tabular data in RadGridView.|
|__ChildRows__|This collection contains the Rows that currently visible in the grid. More information is  available [here]({%slug winforms/gridview/rows/rows-vs-childrows%})|
|__IsCurrentRowDirty__|Gets a value indicating whether the current row has changes that are not committed.|
|__StandardTab__|Gets or sets a value indicating whether the TAB key moves the focus to the next control in the tab order rather than moving focus to the next cell in the control.|
|__EnterKeyMode__|Gets or sets value specifying the behavior when the user presses Enter.|
|__AutoSizeRows__|Gets or sets a value indicating whether row height in a RadGridView will expand for multiline cell text.|


## GridViewTableElement

The following table list the properties exposed by__ RadGridView.TableElement__:

|Property|Description|
|---|---|
|__RowHeight__|Gets or sets the height of all data rows.|
|__TableHeaderHeight__|Gets or sets the column headers row height.|
|__GroupHeaderHeight__|Gets or sets the group header row height.|
|__FilterRowHeight__|Gets or sets the height of the filter row.|
|__SearchRowHeight__|Gets or sets the height of the search row.|
|__ChildRowHeight__| Gets or sets the row height of the child rows in a hierarchical grid.|
|__CellSpacing__|Gets or sets the cell spacing.|
|__RowSpacing__|Gets or sets the row spacing.|
|__RowHeaderColumnWidth__|Gets or sets the width of the GridViewRowHeaderColumn row header column.|
|__TreeLevelIndent__|Gets or sets the value that determines the indent width among expander primitives in self-reference hierarchy.|
|__GroupIndent__|Gets or sets the width of the GridViewIndentColumn group indent column.|
|__NewRowHeaderImage__|Gets or sets a row header image for new row.|
|__SearchRowHeaderImage__|Gets or sets a row header image for search row.|
|__EditRowHeaderImage__|Gets or sets a row header image for editing current row.|
|__ErrorRowHeaderImage__|Gets or sets a row header image for row with error.|
|__CurrentRowHeaderImage__|Gets or sets a row header image for current row.|
|__MenuThemeName__|Gets or sets a value indicating the name of the theme for the context menu in the current GridTableElement.|
|__ScrollBarThemeName__|Gets or sets a value indicating the name of the theme for the scroll bars in the current GridTableElement.|
|__ShowSelfReferenceLines__|Gets or sets a value indicating whether to show lines in self reference mode.|

# Methods

### Begin/End Update
The Begin/End Update block should be used when a repeated operation that affects grid layout is performed several times. This block will suspend the grid layout and it will be updated only once when the EndUpdate method is called. An example is available [here]({%slug winforms/gridview/cells/accessing-cells%})

