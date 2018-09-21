---
title: Manually handle up/down keys in RadTreeView
description:  Manually handle up/down keys in RadTreeView
type: how-to
page_title: Manually handle up/down keys in RadTreeView
slug: tree-view-handle-keypress
position: 0
tags: treeview, keypress, 
res_type: kb
---

## Environment
<table>
    <tr>
        <td>Product Version</td>
        <td>2018.3.911</td>
    </tr>
    <tr>
        <td>Product</td>
        <td>RadTreeView for WinForms</td>
    </tr>
</table>


## Description
 
It is a common case to override or customize the navigation or other keys that have a specific built-in function. The bellow example shows how you can handle the up/down keys manually.

## Solution

To achieve this you need to create a custom RadTreeViewElement and override the __ProcessKeyDown__ method. 

````C#
class MyTreeView : RadTreeView
{
    protected override RadTreeViewElement CreateTreeViewElement()
    {
        return new MyThreeViewElement();
    }
    public override string ThemeClassName
    {
        get
        {
            return typeof(RadTreeView).FullName;
        }
    }
}
class MyThreeViewElement : RadTreeViewElement
{
    protected override bool ProcessKeyDown(KeyEventArgs e)
    {
        if (e.KeyCode == Keys.Up)
        {
            //select your node here
            return true;
        }
        else if (e.KeyCode == Keys.Down)
        {
            //select your node here
            return true;
        }
        return base.ProcessKeyDown(e);
    }
    protected override Type ThemeEffectiveType
    {
        get { return typeof(RadTreeViewElement); }
    }
}

````
````VB.NET
 Friend Class MyTreeView
    Inherits RadTreeView

    Protected Overrides Function CreateTreeViewElement() As RadTreeViewElement
        Return New MyThreeViewElement()
    End Function
    Public Overrides ReadOnly Property ThemeClassName() As String
        Get
            Return GetType(RadTreeView).FullName
        End Get
    End Property
End Class
Friend Class MyThreeViewElement
    Inherits RadTreeViewElement

    Protected Overrides Function ProcessKeyDown(ByVal e As KeyEventArgs) As Boolean
        If e.KeyCode = Keys.Up Then
            'select your node here
            Return True
        ElseIf e.KeyCode = Keys.Down Then
            'select your node here
            Return True
        End If
        Return MyBase.ProcessKeyDown(e)
    End Function
    Protected Overrides ReadOnly Property ThemeEffectiveType() As Type
        Get
            Return GetType(RadTreeViewElement)
        End Get
    End Property
End Class
````


