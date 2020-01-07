---
title: Properties, Methods and Events
page_title: Properties, Methods and Events | RadSyntaxEditor
description:   
slug: syntax-editor-properties-methods-events
tags: syntax-editor
published: True
position: 3
---

## RadSyntaxEditor's Properties

|**Property**|**Description**|
|----|----|
|**SyntaxEditorElement**|Gets the syntax editor element.|
|**Document**|Gets or sets the text document.|
|**TextFormatDefinitions**|Gets the text format definitions.|
|**InputHandler**|Gets or sets the component which is responsible for handling the input of RadSyntexEditor.|
|**AllowScaling**|Gets or sets a value indicating whether to allow scaling.|
|**EditorFontSize**|Gets or sets a value indicating the font size of the text editor.|
|**CaretColor**|Gets or sets the caret color.|
|**CaretDisplayMode**|Gets or sets the caret display mode.|
|**CaretWidth**|Gets or sets the caret width when the DisplayMode is set to Normal.|
|**IsCaretVisible**|Gets or sets a value indicating whether this instance is caret visible.|
|**Dispatcher**|Gets the dispatcher objcect.|
|**Commands**|Gets the commands available in the control.|
|**ScaleFactor**|Gets or sets the scale factor.|
|**Palette**|Gets or sets the palette of syntax elements' colors used for the RadSyntaxEditorElement instance.|
|**TaggersRegistry**|Gets the taggers registry.|
|**UseShiftKeyInSelection**| Gets or sets a value indicating whether using shift key in selection.|
|**IsSelectionEnabled**|Gets or sets a value indicating whether this instance is selection enabled.|

## RadSyntaxEditorElement's Properties

|**Property**|**Description**|
|----|----|
|**EditorFontFamily**|Gets or sets a value indicating the font family of the text editor.|
|**EditorFontStyle**|Gets or sets a value indicating the font style of the text editor.|
|**EditorFontWeight**||
|**EditorFontStretch**||
|**CaretPosition**|Gets the caret position.|
|**EditorPresenter**|Gets the editor presenter.|
|**FoldingManager**|Gets the folding manager.|
|**HorizontalScrollBar**|Gets the horizontal scroll bar.|
|**HorizontalScrollBarVisibility**|Gets or sets the horizontal scroll bar visibility.|
|**VerticalScrollBarVisibility**|Gets or sets the vertical scroll bar visibility.|
|**Margins**|Gets the margins.|
|**Selection**|Gets the selection.|


## RadSyntaxEditor's Methods

|Method|Description|
|----|----|
|**Copy**|Copies this instance.|
|**GetPointFromPosition**|Gets the point from position.|
|**GetPositionFromPoint**|Gets the position from point.|
|**MoveCurrentLineToTop**|Moves the current line to top.|
|**PageDown**|Pages down.|
|**PageUp**|Pages up.|
|**SelectAll**|Selects all.|
|**UpdateSelection**|Updates the selection.|
|**ZoomIn**|Zooms in.|
|**ZoomOut**|Zooms out.|
|**ZoomTo**|Zooms to particular zoom level.|


## RadSyntaxEditor's Events

|Method|Description|
|----|----|
|**CommandError**|Occurs when a command has been canceled due to an error.|
|**CommandExecuted**|Occurs when a command has been executed.|
|**CommandExecuting**|Occurs when a command is about to be executed.|
|**DocumentChanged**|Occurs when the current document has changed.|
|**DocumentChanging**|Occurs when the current document is about to change.|
|**DocumentContentChanged**|Occurs when the document's content has changed.|
|**DocumentContentChanging**|Occurs when the document's content is about to change.|
|**IsReadOnlyChanged**|Occurs when the IsReadOnly property of the control has changed.|
|**LayoutPropertiesChanged**|Occurs when one of the layout related properties has changed.|
|**PreviewSyntaxEditorInput**|Occurs when the control receives keyboard input.|
|**PreviewSyntaxEditorKeyDown**|Occurs before the KeyDown event when a key is pressed while focus is on this control|
|**PreviewSyntaxEditorKeyUp**|Occurs before the KeyUp event when a key is pressed while focus is on this control.|
|**PreviewSyntaxEditorMouseLeftButtonDown**|Occurs when the left mouse button is pressed while the mouse pointer is over the control.|
|**PreviewSyntaxEditorMouseRightButtonDown**|Occurs when the right mouse button is pressed while the mouse pointer is over the control.|
|**ScaleFactorChanged**|Occurs when the **ScaleFactor** of the control changes.|
|**ViewportChanged**|Occurs when the viewport changes. This can happen when the control is resized, it is scrolled, or if its **ScaleFactor** changes.|
|**SelectionChanged**|Occurs when the selection of the control changes.|


## See Also
* [Getting Started]({%slug syntax-editor-getting-started%})  