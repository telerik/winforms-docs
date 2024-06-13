---
title: How to show tooltip on disabled element in RibbonBar
description: How to show tooltip on disabled element in RibbonBar
type: how-to
page_title: How to show tooltip on disabled element in RibbonBar
slug: ribbon-disabled-tooltip
position: 0
tags: ribbonbar, disabled, tooltip
ticketid: 1339897 
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
        <td>RadRibbonBar for WinForms</td>
    </tr>
</table>


## Problem

When a particular element is disabled the Tooltip and SreeenTip events will not fire and there is no way to show the user why element is disabled.

## Solution

Use the MouseMove event and show a custom tooltip when a disabled element is hovered:

````C#
RadToolTip toolTip = new RadToolTip();
RadButtonElement prevElement = null;

private void RadRibbonBar1_MouseMove(object sender, MouseEventArgs e)
{
    var element = radRibbonBar1.ElementTree.GetElementAtPoint(e.Location) as RadButtonElement;
    if (e.Button == MouseButtons.None && element != null && !element.Enabled)
    {
        if (prevElement != element)
        {
            toolTip.Show("Disabled because...", Cursor.Position, 2000);
        }
        prevElement = element;
    }           
}
````
````VB.NET
Private toolTip As New RadToolTip()
Private prevElement As RadButtonElement = Nothing
Private Sub RadRibbonBar1_MouseMove(ByVal sender As Object, ByVal e As MouseEventArgs)
    Dim element = TryCast(radRibbonBar1.ElementTree.GetElementAtPoint(e.Location), RadButtonElement)
    If e.Button = MouseButtons.None AndAlso element IsNot Nothing AndAlso Not element.Enabled Then
        If prevElement IsNot element Then
            toolTip.Show("Disabled because...", Cursor.Position, 2000)
        End If
        prevElement = element
    End If
End Sub
````



