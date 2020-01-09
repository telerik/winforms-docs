---
title: Commands
page_title: Commands | RadSyntaxEditor
description: RadSyntaxEditor is a useful text editor control which provides built-in syntax highlighting and code editing experience
slug: syntax-editor-commands
tags: syntax-editor
published: True
position: 4
---

# Commands

**RadSyntaxEditor** exposes its functionality through various commands that can be executed on its behalf. All commands can be accessed through the **Commands** property of the control. Here's a full list of the available commands:
  
- **OpenFindDialogCommand**: Opens the find dialog. If there is any selected text, it is loaded in the search textbox.
- **CloseFindDialogCommand**: Closes the find dialog.
- **NavigateNextMatchCommand**: Navigates to the next matched text in the editor and selects it. If the match is contained in a folded region, it is unfolded. Takes as a parameter the search text.
- **NavigatePreviousMatchCommand**: Navigates to the previous matched text in the editor and selects it. If the match is contained in a folded region, it is unfolded. Takes as a parameter the search text.
- **HighlightAllMatchesCommand**: Tries to highlight all span matches via all registered **TextSearchHighlightTaggers**. Takes as a parameter the search text.
- **BackspaceCommand**: Deletes the selected text or the last character before the caret if there is no selection.
- **CodeCompletionCommand**: Shows the IntelliSense code completion dialog.
- **CutCommand**: Cuts the selected text or the current line if there is no selection.
- **CopyCommand**: Copies the selected text or the current line if there is no selection.
- **PasteCommand**: Pastes over the selected text or at the caret's position if there is no selection.
- **DeleteCommand**: Deletes the selected text or the first character after the caret if there is no selection.
- **DeleteFullLineCommand**: Deletes the full line on which the cursor currently is.
- **DeleteWordToLeftCommand**: Deletes the word to the left of the cursor.
- **DeleteWordToRightCommand**: Deletes the word to the right of the cursor.
- **IndentCommand**: Indents the selected text or the current line if there is no selection.
- **UnindentCommand**: Unindents the selected text or the current line if there is no selection.
- **MoveCaretCommand**: Moves the caret depending on the **CaretMovementType** parameter which is passed.
- **RedoCommand**: Redoes the last undo action.
- **UndoCommand**: Undoes the last action.
- **SelectAllCommand**: Selects all the text.
- **ToggleInsertModeCommand**: Toggles the insert mode.
