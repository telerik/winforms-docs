---
title: Formatting Items
page_title: Formatting Items | RadListControl
description: RadListControl is the an alternative to the Microsoft ListBox control.
slug: winforms/dropdown-listcontrol-and-checkeddropdownlist/listcontrol/customizing-appearance/formatting-items
tags: listcontrol
published: True
position: 0
---

# Formatting Items

Items appearance in __RadListControl__ can be customized by making use of the __VisualItemFormatting__ event. The following example, demonstrates how you can change the color of an item which is being selected.

>note By using this event to customize the items appearance, you should always provide an *else* clause,  where you reset the appearance settings which you have introduced. This is necessary since __RadListControl__ uses data virtualization, which might lead to undesired appearance results when items are being reused.

>caption Figure 1: Formatting items

![listcontrol-formatting-items 001](images/listcontrol-formatting-items001.gif)

#### Formatting items

{{source=..\SamplesCS\DropDownListControl\ListControl\ListControl1.cs region=VisualItemFormatting}} 
{{source=..\SamplesVB\DropDownListControl\ListControl\ListControl1.vb region=VisualItemFormatting}} 

````C#
Font font = new Font("Consolas", 14, FontStyle.Bold);
private void radListControl1_VisualItemFormatting(object sender, VisualItemFormattingEventArgs args)
{
    if (args.VisualItem.Selected)
    {
        args.VisualItem.NumberOfColors = 1;
        args.VisualItem.BackColor = Color.LightGreen;
        args.VisualItem.ForeColor = Color.Red;
        args.VisualItem.BorderColor = Color.Blue;
        args.VisualItem.Font = font;
    }
    else
    {
        args.VisualItem.ResetValue(LightVisualElement.NumberOfColorsProperty, Telerik.WinControls.ValueResetFlags.Local);
        args.VisualItem.ResetValue(LightVisualElement.BackColorProperty, Telerik.WinControls.ValueResetFlags.Local);
        args.VisualItem.ResetValue(LightVisualElement.ForeColorProperty, Telerik.WinControls.ValueResetFlags.Local);
        args.VisualItem.ResetValue(LightVisualElement.BorderColorProperty, Telerik.WinControls.ValueResetFlags.Local);
        args.VisualItem.ResetValue(LightVisualElement.FontProperty, Telerik.WinControls.ValueResetFlags.Local);
    }
}

````
````VB.NET
Private font As New Font("Consolas", 14, FontStyle.Bold)
Private Sub radListControl1_VisualItemFormatting(sender As Object, args As VisualItemFormattingEventArgs)
    If args.VisualItem.Selected Then
        args.VisualItem.NumberOfColors = 1
        args.VisualItem.BackColor = Color.LightGreen
        args.VisualItem.ForeColor = Color.Red
        args.VisualItem.BorderColor = Color.Blue
        args.VisualItem.Font = font
    Else
        args.VisualItem.ResetValue(LightVisualElement.NumberOfColorsProperty, Telerik.WinControls.ValueResetFlags.Local)
        args.VisualItem.ResetValue(LightVisualElement.BackColorProperty, Telerik.WinControls.ValueResetFlags.Local)
        args.VisualItem.ResetValue(LightVisualElement.ForeColorProperty, Telerik.WinControls.ValueResetFlags.Local)
        args.VisualItem.ResetValue(LightVisualElement.BorderColorProperty, Telerik.WinControls.ValueResetFlags.Local)
        args.VisualItem.ResetValue(LightVisualElement.FontProperty, Telerik.WinControls.ValueResetFlags.Local)
    End If
End Sub
'#End Region
Class
gion customDataItem
ic Class CustomDataItem
rits RadListDataItem
Public Shared ReadOnly AvailableProperty As RadProperty = RadProperty.Register("Available", GetType(Boolean), GetType(CustomDataItem), New RadElementPropertyMetadata(False))
Public Property Available() As Boolean
    Get
        Return CBool(Me.GetValue(CustomDataItem.AvailableProperty))
    End Get
    Set(ByVal value As Boolean)
        Me.SetValue(CustomDataItem.AvailableProperty, value)
    End Set
End Property
Class

````

{{endregion}} 

## Alternating Item Color

__RadListControl__ supports alternating item color which can be easily enabled by just setting a couple of properties: 

{{source=..\SamplesCS\DropDownListControl\ListControl\ListControl1.cs region=alternating}} 
{{source=..\SamplesVB\DropDownListControl\ListControl\ListControl1.vb region=alternating}} 

````C#
radListControl1.EnableAlternatingItemColor = true;
radListControl1.ListElement.AlternatingItemColor = Color.Red;

````
````VB.NET
radListControl1.EnableAlternatingItemColor = True
radListControl1.ListElement.AlternatingItemColor = Color.Red

````

{{endregion}} 

>caption Figure 2: AlternatingItemColor

![listcontrol-formatting-items 002](images/listcontrol-formatting-items002.png)



