---
title: Validate Input and Play Error Sound
description: An example demonstrating how the RadMaskedEditBox control can be customized to validate the user input and play error sound upon validating the input according to the applied mask.  
type: how-to
page_title: Validate Input and Play Error Sound
slug: masked-edit-box-play-sound
position: 35
tags: mask, edit-box, error, sound
ticketid: 1380388
res_type: kb
---

## Environment
<table>
	<tr>
		<td>Product Version</td>
		<td>2019.1.117</td>
	</tr>
	<tr>
		<td>Product</td>
		<td>RadMaskedEditBox for WinForms</td>
	</tr>
</table>


## Description

An example demonstrating how the **RadMaskedEditBox** control can be customized to validate the user input and play sound if the input is not according to the applied mask.

## Solution

The **RadMaskedEditBox** is working with a mask provider to validate the input. The mask provider inside the control is used internally and one cannot call its **Validate** method outside of the context of the control. A possible solution is to create a separate mask provider instance solely responsible for validating the input and playing the error beep sound. The actual validation can be performed in the **KeyDown** event of the control.

>note The same result can be achieved with the other mask providers as well.

#### Form Code

````C#
public partial class Form1 : Form
{
    StandartMaskTextBoxProvider standartMaskProvider;
 
    public Form1()
    {
        InitializeComponent();
 
        this.radMaskedEditBox1.MaskType = Telerik.WinControls.UI.MaskType.Standard;
        this.radMaskedEditBox1.Mask = "##-##";
 
        this.standartMaskProvider = new StandartMaskTextBoxProvider(this.radMaskedEditBox1.Mask, this.radMaskedEditBox1.Culture, new RadMaskedEditBoxElement(), this.radMaskedEditBox1.AllowPromptAsInput, this.radMaskedEditBox1.PromptChar, this.radMaskedEditBox1.PasswordChar, false);
    }
 
    private void radMaskedEditBox1_KeyDown(object sender, KeyEventArgs e)
    {
        KeysConverter kc = new KeysConverter();
        string keyChar = kc.ConvertToString(e.KeyCode);
 
        bool isValid = this.standartMaskProvider.Validate(keyChar);
        if (!isValid)
        {
            System.Media.SystemSounds.Beep.Play();
        }
    }
}


````
````VB.NET
Public Class Form1

    Private standartMaskProvider As StandartMaskTextBoxProvider

    Public Sub New()
        InitializeComponent()

        Me.radMaskedEditBox1.MaskType = Telerik.WinControls.UI.MaskType.Standard
        Me.radMaskedEditBox1.Mask = "##-##"
        Me.standartMaskProvider = New StandartMaskTextBoxProvider(Me.radMaskedEditBox1.Mask, Me.radMaskedEditBox1.Culture, New RadMaskedEditBoxElement(), Me.radMaskedEditBox1.AllowPromptAsInput, Me.radMaskedEditBox1.PromptChar, Me.radMaskedEditBox1.PasswordChar, False)
    End Sub

    Private Sub radMaskedEditBox1_KeyDown(ByVal sender As Object, ByVal e As KeyEventArgs)
        Dim kc As KeysConverter = New KeysConverter()
        Dim keyChar As String = kc.ConvertToString(e.KeyCode)
        Dim isValid As Boolean = Me.standartMaskProvider.Validate(keyChar)

        If Not isValid Then
            System.Media.SystemSounds.Beep.Play()
        End If
    End Sub
End Class
````

# See Also
* [Masked Edit Box]({%slug winforms/editors/maskededitbox%})