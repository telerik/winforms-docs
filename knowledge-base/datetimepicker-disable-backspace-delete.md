---
title: How to disable backspace and delete keyboard buttons
description: Disable backspace and delete keyboard buttons.
type: how-to
page_title: Disable Backspace and Delete Keyboard Buttons
slug: datetimepicker-disable-backspace-delete
position: 1
tags: editors, datetimepicker, delete, backspace, disable
ticketid: 1586673
res_type: kb
---

## Environment
|Product Version|Product|Author|
|----|----|----|
|2022.3.913|RadDateTimePicker for WinForms|[Dinko Krastev](https://www.telerik.com/blogs/author/dinko-krastev)|


## Description

This tutorial demonstrates how to disable the *Backspace* and *Delete* keyboard buttons.

## Solution

To handle these two buttons, you will need to create a custom *MaskDateTimeProvider* and override the *KeyPress* method for the Backspace button and the KeyDown for the Delete button. Here is the sample code.

````C#

public Form1()
{
    InitializeComponent();
    this.radDateTimePicker1.DateTimePickerElement.TextBoxElement.Provider = new CustomMaskDateTimeProvider(this.radDateTimePicker1.DateTimePickerElement.TextBoxElement.Mask,this.radDateTimePicker1.Culture, this.radDateTimePicker1.DateTimePickerElement.TextBoxElement);
}
public class CustomMaskDateTimeProvider : MaskDateTimeProvider
{
    public CustomMaskDateTimeProvider(string mask, CultureInfo culture, RadMaskedEditBoxElement owner) : base(mask, culture, owner)
    {
    }

    public override void KeyPress(object sender, KeyPressEventArgs e)
    {
        var key = e.KeyChar;
        if(e.KeyChar == '\b')
        {
            e.Handled = true;
        }
            
        base.KeyPress(sender, e);
    }

    public override void KeyDown(object sender, KeyEventArgs e)
    {
        if (e.KeyCode ==  Keys.Delete)
        {
            e.Handled = true;
        }
           
        base.KeyDown(sender, e);
    }
}

````
````VB.NET

Public Sub New()
	InitializeComponent()
	Me.radDateTimePicker1.DateTimePickerElement.TextBoxElement.Provider = New CustomMaskDateTimeProvider(Me.radDateTimePicker1.DateTimePickerElement.TextBoxElement.Mask, Me.radDateTimePicker1.Culture, Me.radDateTimePicker1.DateTimePickerElement.TextBoxElement)
End Sub

Public Class CustomMaskDateTimeProvider
	Inherits MaskDateTimeProvider

	Public Sub New(ByVal mask As String, ByVal culture As CultureInfo, ByVal owner As RadMaskedEditBoxElement)
		MyBase.New(mask, culture, owner)
	End Sub

	Public Overrides Sub KeyPress(ByVal sender As Object, ByVal e As KeyPressEventArgs)
		Dim key = e.KeyChar

		If e.KeyChar = vbBack Then
			e.Handled = True
		End If

		MyBase.KeyPress(sender, e)
	End Sub

	Public Overrides Sub KeyDown(ByVal sender As Object, ByVal e As KeyEventArgs)
		If e.KeyCode = Keys.Delete Then
			e.Handled = True
		End If

		MyBase.KeyDown(sender, e)
End Sub


````


