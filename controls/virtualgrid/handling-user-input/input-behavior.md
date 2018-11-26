---
title: InputBehavior
page_title: InputBehavior | RadVirtualGrid
description: This article describes how one can create custom InputBehavior and intercept the default mouse and keyboard handling.
slug: winforms/virtualgrid/handling-user-input/input-behavior
tags: virtualgrid
published: True
position: 0
---

# InputBehavior

__RadVirtualGrid__ manages user mouse and keyboard input over its rows by __VirtualGridInputBehavior__. By implementing a specific custom input behavior, developers can change the default row functionality or supplement the existing one.

You can find below a sample code snippet demonstrating how to override the default up/down navigation logic when pressing the up/down arrow keys and show a message to confirm the operation. For this purpose, we should create a derivative of __VirtualGridInputBehavior__ and override its __HandleUpKey__ and __HandleDownKey__ methods:

![virtualgrid-input-behavior 001](images/virtualgrid-input-behavior001.gif)

#### Custom VirtualGridInputBehavior

{{source=..\SamplesCS\VirtualGrid\HandlingUserInput\VirtualGridInputBehaviorForm.cs region=CustomInputBehavior}} 
{{source=..\SamplesVB\VirtualGrid\HandlingUserInput\VirtualGridInputBehaviorForm.vb region=CustomInputBehavior}}


````C#
        
public class CustomVirtualGridInputBehavior : VirtualGridInputBehavior
{
    public CustomVirtualGridInputBehavior(RadVirtualGridElement gridElement) : base(gridElement)
    {
    }
    
    protected override bool HandleUpKey(KeyEventArgs keys)
    {
        DialogResult dr = RadMessageBox.Show("Please confirm the move up operation!", "Confirmation", MessageBoxButtons.YesNo);
        if (dr == DialogResult.Yes)
        {
            return base.HandleUpKey(keys);
        }
        return false;
    }
    
    protected override bool HandleDownKey(KeyEventArgs keys)
    {
        DialogResult dr = RadMessageBox.Show("Please confirm the move down operation!", "Confirmation", MessageBoxButtons.YesNo);
        if (dr == DialogResult.Yes)
        {
            return base.HandleDownKey(keys);
        }
        return false;
    }
}

````
````VB.NET
Public Class CustomVirtualGridInputBehavior
Inherits VirtualGridInputBehavior
    Public Sub New(gridElement As RadVirtualGridElement)
        MyBase.New(gridElement)
    End Sub
    Protected Overrides Function HandleUpKey(keys As KeyEventArgs) As Boolean
        Dim dr As DialogResult = RadMessageBox.Show("Please confirm the move up operation!", "Confirmation", MessageBoxButtons.YesNo)
        If dr = DialogResult.Yes Then
            Return MyBase.HandleUpKey(keys)
        End If
        Return False
    End Function
    Protected Overrides Function HandleDownKey(keys As KeyEventArgs) As Boolean
        Dim dr As DialogResult = RadMessageBox.Show("Please confirm the move down operation!", "Confirmation", MessageBoxButtons.YesNo)
        If dr = DialogResult.Yes Then
            Return MyBase.HandleDownKey(keys)
        End If
        Return False
    End Function
End Class

```` 

{{endregion}}

#### Apply the custom VirtualGridInputBehavior

{{source=..\SamplesCS\VirtualGrid\HandlingUserInput\VirtualGridInputBehaviorForm.cs region=ApplyInputBehavior}} 
{{source=..\SamplesVB\VirtualGrid\HandlingUserInput\VirtualGridInputBehaviorForm.vb region=ApplyInputBehavior}}


````C#
            
this.radVirtualGrid1.VirtualGridElement.InputBehavior = new CustomVirtualGridInputBehavior(this.radVirtualGrid1.VirtualGridElement);

````
````VB.NET
Me.RadVirtualGrid1.VirtualGridElement.InputBehavior = New CustomVirtualGridInputBehavior(Me.RadVirtualGrid1.VirtualGridElement)

```` 

{{endregion}}

>note You can follow a similar approach to customize any of the methods that handle the mouse and keyboard user input.

