---
title: Ending Edit Mode When Navigating to Another Cell in RadGridView for WinForms
description: Learn how to configure RadGridView to end cell editing when the user navigates to another cell, similar to the standard DataGridView behavior.
type: how-to
page_title: How to End Editing on Cell Navigation in RadGridView for WinForms
slug: end-editing-on-cell-navigation-radgridview-winforms
tags: radgridview, winforms, celledit, cellnavigation, behavior
res_type: kb
ticketid: 1657423
---

## Environment

| Product | Version |
| --- | --- |
| RadGridView for WinForms | Current |

## Description

In RadGridView for WinForms, I want to end the edit mode of a cell when navigating to another cell, similar to the behavior seen in the standard DataGridView. Currently, calling `EndEdit` in the `CurrentCellChanged` event handler does not achieve this. Additionally, I want the `CellBeginEdit` event to fire for every new cell navigated to, ensuring that I can validate whether a user can edit a particular cell.

This KB article also answers the following questions:
- How can I customize cell navigation behavior in RadGridView?
- How to end cell editing on cell change in RadGridView?
- How do I trigger `CellBeginEdit` for each cell in RadGridView?

## Solution

To achieve the desired behavior where cell editing ends upon navigating to another cell, and to ensure the `CellBeginEdit` event fires for each cell, you can customize the `GridRowBehavior` of RadGridView. This involves creating a custom `GridRowBehavior` and overriding the `OnMouseDownLeft` method. Additionally, for keyboard navigation, you can override other methods like `ProcessUpKey`.

Here is a custom `GridDataRowBehavior` implementation:

```csharp
public class CustomGridDataRowBehavior : GridDataRowBehavior
{
    protected override bool OnMouseDownLeft(MouseEventArgs e)
    {
        GridCellElement cellElement = this.GetCellAtPoint(e.Location);
        if (cellElement != null)
        {
            this.GridViewElement.EditorManager.CloseEditor();
        }

        return base.OnMouseDownLeft(e);
    }

    // Add similar overrides for keyboard navigation if necessary
}
```

To apply this custom behavior, register it with your RadGridView. This custom behavior closes the editor when navigating away from a cell, ensuring that the `CellBeginEdit` event can trigger for every new cell navigated to.

```csharp
// Example of how to register the custom behavior
// gridView is your instance of RadGridView
gridView.GridBehavior = new CustomGridDataRowBehavior();
```

Modify or extend this behavior as necessary to fit your specific requirements.

## Notes

- Customizing the `GridRowBehavior` provides flexibility in managing how user interactions with cells are handled.
- Remember to override additional methods if you wish to extend this behavior to keyboard navigation or other user actions.

## See Also

- [RadGridView for WinForms Documentation - Row Behaviors](https://docs.telerik.com/devtools/winforms/controls/gridview/rows/row-behaviors)
