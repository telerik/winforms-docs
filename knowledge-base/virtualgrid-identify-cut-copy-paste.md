---
title: Identifying Cut, Copy, or Paste Operations in RadVirtualGrid for WinForms
description: How to distinguish between cut, copy, or paste operations in the Copying event of RadVirtualGrid for WinForms.
type: how-to
page_title: How to Distinguish Between Cut and Copy Operations in RadVirtualGrid for WinForms
slug: virtualgrid-identify-cut-copy-paste
tags: virtualgrid, winforms, cut, copy, paste, event, customization
res_type: kb
ticketid: 1668870
---

## Environment

|Product Version|Product|Author|
|----|----|----|
|2024.4.1113|RadVirtualGrid for WinForms|[Dinko Krastev](https://www.telerik.com/blogs/author/dinko-krastev)|

## Description

In RadVirtualGrid for WinForms, using Copy or Cut option from the default context menu triggers the "Copying" event handler. This article demonstrates how to differentiate whether the Copy, Paste, or Cut operation is executed.

This knowledge-base article also answers the following questions:
- How can I tell if a cut or copy operation triggered the Copying event in RadVirtualGrid?
- Is there a way to detect the type of clipboard operation (cut or copy) in RadVirtualGrid?
- How do I customize the input behavior in RadVirtualGrid to identify clipboard operations?

## Solution

To identify which clipboard operation is executed, create a custom class that inherits from `VirtualGridInputBehavior` and override the `HandleUnhandledKeys` method. This approach allows you to set a flag indicating the type of operation (cut, copy, paste, select all).

Here is an implementation example:

1. Create a custom `VirtualGridInputBehavior` class:

````C#
    public class CustomVirtualGridInputBehavior : VirtualGridInputBehavior
    {
        public bool IsCutOperation { get; private set; }
    
        public CustomVirtualGridInputBehavior(RadVirtualGridElement gridElement) : base(gridElement)
        {
        }
    
        protected override bool HandleUnhandledKeys(KeyEventArgs keys)
        {
            IsCutOperation = false; // Reset flag
    
            if (keys.KeyCode == Keys.X && keys.Control)
            {
                IsCutOperation = true; // Set flag for cut operation
                return this.GridElement.CutSelection();
            }
    
            if (keys.KeyCode == Keys.C && keys.Control)
            {
                return this.GridElement.CopySelection();
            }
    
            // Handle other key combinations as needed
    
            return false;
        }
    }
````

2. In the following example, we can handle the Copying event and check whether the Cut or Copying operation is triggered.

````C#

    public Form1()
    {
        InitializeComponent();
        var customBehavior = new CustomVirtualGridInputBehavior(this.radVirtualGrid1.VirtualGridElement);
        this.radVirtualGrid1.VirtualGridElement.InputBehavior = customBehavior;
        this.radVirtualGrid1.Copying += (sender, e) =>
        {
            if (customBehavior.IsCutOperation)
            {
                // Handle cut operation
            }
            else
            {
                // Handle copy operation
            }
        };
    }

````

This approach allows you to raise a flag in the `HandleUnhandledKeys` method for the specific cut operation and check this flag in the "Copying" event to determine the operation type.

## See Also

- [RadVirtualGrid Input Behavior Documentation](https://docs.telerik.com/devtools/winforms/controls/virtualgrid/handling-user-input/input-behavior)
- [RadVirtualGrid Overview](https://docs.telerik.com/devtools/winforms/controls/virtualgrid/overview)
