---
title: Double Buffered Table Layout Panel
description: Use DoubleBufferedTableLayoutPanel to prevent flickering.
type: troubleshooting
page_title: Double Buffered Table Layout Panel
slug: double-Buffered-table-layout-panel
position: 
tags: common, doublebufferedtablelayoutpanel, flick
ticketid: 1180909
res_type: kb
---

## Environment
<table>
    <tr>
        <td>Product Version</td>
        <td>2018.2.621</td>
    </tr>
    <tr>
        <td>Product</td>
        <td>Telerik UI WinForms</td>
    </tr>
</table>


## Problem

You are using a __TableLayoutPanels__ in your application but there is a flickering when the application is loaded or the theme is changed.

## Solution

Use the following inherited class and which sets the Style:

````C#
public class DoubleBufferedTableLayoutPanel : TableLayoutPanel
{
    public DoubleBufferedTableLayoutPanel()
        : base()
    {
        this.SetStyle(ControlStyles.UserPaint | ControlStyles.AllPaintingInWmPaint | ControlStyles.OptimizedDoubleBuffer, true);
    }
}

````
````VB.NET
Public Class DoubleBufferedTableLayoutPanel
    Inherits TableLayoutPanel

    Public Sub New()
        MyBase.New()
        Me.SetStyle(ControlStyles.UserPaint Or ControlStyles.AllPaintingInWmPaint Or ControlStyles.OptimizedDoubleBuffer, True)
    End Sub
End Class
````


