---
title: Customizing RadDropDownList Pop-Up Location Across Dual Monitors in UI for WinForms
description: Learn how to customize the pop-up location of RadDropDownList when stretched across two monitors in Telerik UI for WinForms.
type: how-to
page_title: Adjusting RadDropDownList Pop-Up Behavior on Dual Monitors
slug: customizing-raddropdownlist-popup-dual-monitors
tags: raddropdownlist, dual-monitors, pop-up-location, ui-for-winforms
res_type: kb
ticketid: 1687869
---

## Environment
<table>
<tbody>
<tr>
<td>Product</td>
<td>RadDropDownList for Telerik UI for WinForms</td>
</tr>
<tr>
<td>Version</td>
<td>2024.2.514</td>
</tr>
</tbody>
</table>

## Description

When RadDropDownList is stretched across two monitors, the dropdown part may exhibit unexpected behavior, such as shifting upon opening. This behavior occurs because controls like RadDropDownList are designed to operate within one monitor, scaling automatically to the monitor's DPI and resolution settings. Stretching the form across two monitors introduces complexities that may require custom handling.

This knowledge base article also answers the following questions:
- How can I adjust the RadDropDownList to work properly across dual monitors?
- Is there a way to control the dropdown pop-up position in RadDropDownList?
- How can I customize RadDropDownList to avoid shifting issues across monitors?

## Solution

To customize the behavior of RadDropDownList when stretched across two monitors, you can create a custom solution to control the pop-up location. Follow these steps:

1. Create a custom class that inherits from `RadDropDownList`.
2. Override the necessary methods to customize the dropdown pop-up behavior.

### Example Implementation

```vb.net
Public Class CustomDropDownList
    Inherits RadDropDownList

    Protected Overrides Function CreateDropDownListElement() As RadDropDownListElement
        Return New CustomDropDownListElement
    End Function

    Public Overrides Property ThemeClassName As String
        Get
            Return GetType(RadDropDownList).FullName
        End Get
        Set(value As String)
            MyBase.ThemeClassName = value
        End Set
    End Property
End Class

Public Class CustomDropDownListElement
    Inherits RadDropDownListElement

    Protected Overrides ReadOnly Property ThemeEffectiveType As Type
        Get
            Return GetType(RadDropDownListElement)
        End Get
    End Property

    Public Class MyDropDownPopupForm
        Inherits DropDownPopupForm

        Public Sub New(ownerDropDownListElement As RadDropDownListElement)
            MyBase.New(ownerDropDownListElement)
        End Sub

        Public Overrides Property ThemeClassName As String
            Get
                Return GetType(RadSizablePopupControl).FullName
            End Get
            Set(value As String)
                MyBase.ThemeClassName = value
            End Set
        End Property

        Protected Overrides Function GetCorrectedLocation(currentScreen As Screen, alignmentRectangle As Rectangle, popupSize As Size) As Point
            Return alignmentRectangle.Location
        End Function
    End Class

    Protected Overrides Function CreatePopupForm() As RadPopupControlBase
        Dim popup As MyDropDownPopupForm = New MyDropDownPopupForm(Me)
        popup.VerticalAlignmentCorrectionMode = AlignmentCorrectionMode.SnapToOuterEdges
        popup.SizingMode = Me.DropDownSizingMode
        popup.Height = Me.DropDownHeight
        popup.HorizontalAlignmentCorrectionMode = AlignmentCorrectionMode.Smooth
        Me.WirePopupFormEvents(popup)
        Me.Popup = popup
        Return popup
    End Function

    Protected Overrides Function GetPopupLocation(popup As RadPopupControlBase) As Point
        Dim form1 = Me.ElementTree.Control.FindForm()
        Dim formBounds = form1.Bounds
        Dim controlLocationInScreen = Me.ElementTree.Control.Location
        Dim parentControl As Control = Me.ElementTree.Control.Parent
        While parentControl IsNot Nothing
            controlLocationInScreen.X += parentControl.Location.X
            controlLocationInScreen.Y += parentControl.Location.Y
            parentControl = parentControl.Parent
        End While

        controlLocationInScreen.X += form1.Size.Width - form1.ClientSize.Width
        controlLocationInScreen.Y += form1.Size.Height - form1.ClientSize.Height
        controlLocationInScreen.Y += Me.Bounds.Height

        Return controlLocationInScreen
    End Function

    Protected Overrides Function GetPopupSize(popup As RadPopupControlBase, measure As Boolean) As Size
        Dim size As Size = MyBase.GetPopupSize(popup, measure)
        size.Width = Me.BoundingRectangle.Width
        Return size
    End Function
End Class
```

3. Replace the standard `RadDropDownList` with the custom class `CustomDropDownList` in your project.

This solution allows you to define a custom location for the dropdown pop-up and adjust its size as needed, ensuring proper behavior when stretched across dual monitors.

## See Also

- [RadDropDownList Documentation](https://docs.telerik.com/devtools/winforms/controls/dropdown-listcontrol/dropdownlist/overview)
- [Customizing DropDowns in Telerik UI for WinForms](https://docs.telerik.com/devtools/winforms/controls/dropdown-listcontrol/dropdownlist/customizing-raddropdownlist)
