---
title: How to Check Incorrect Words in RadTextBox
description: This article demonstrates how to check incorrect word in RadTextBox
type: how-to
page_title: How to Filter a GridViewComboBoxColumn by DisplayMember 
slug: how-to-check-incorrect-words-in-radtextbox
position: 0
tags: textbox, check, spellchecker, Incorrect, word
res_type: kb
---

## Environment
 
|Product Version|Product|Author|
|----|----|----|
|2019.3.1022|RadTextBox for WinForms|[Desislava Yordanova](https://www.telerik.com/blogs/author/desislava-yordanova)|
 
## Description

This articles aims to show you how to get a list of the incorrect words in **RadTextBox** by using the auto-spell check functionality that [RadSpellChecker]({%slug winforms/spellchecker/spell-check-as-you-type%}) offers.

![how-to-check-incorrect-words-in-radtextbox 001](images/how-to-check-incorrect-words-in-radtextbox001.png)

## Solution 

The following code snippet demonstrates a sample approach how to benefit from the **TextBoxSpellChecker** that **RadSpellChecker** uses for checking the correct words in **RadTextBox**. 
 

````C#
 
this.radTextBox1.Text = "This iss a samplee text thaat shows incorrect words";
this.radSpellChecker1.AutoSpellCheckControl = this.radTextBox1;

TextBoxSpellChecker textSpellChecker = this.radSpellChecker1.GetControlSpellChecker(typeof(RadTextBox)) as TextBoxSpellChecker;

Regex wordParser = new Regex(@"[\p{L}\p{N}\p{M}]+(?:[-.'´_@][\p{L}|\p{N}|\p{M}]+)*", RegexOptions.Compiled);
Telerik.WinControls.SpellChecker.Proofing.DocumentSpellChecker checker =
    textSpellChecker.SpellChecker as Telerik.WinControls.SpellChecker.Proofing.DocumentSpellChecker;

foreach (Match word in wordParser.Matches(this.radTextBox1.Text + ""))
{
    if (!checker.CheckWordIsCorrect(word.Captures[0].Value))
        Console.WriteLine(word.Captures[0].Value);
}

        
````
````VB.NET

Me.RadTextBox1.Text = "This iss a samplee text thaat shows incorrect words"
Me.RadSpellChecker1.AutoSpellCheckControl = Me.RadTextBox1

Dim textSpellChecker As TextBoxSpellChecker = TryCast(Me.RadSpellChecker1.GetControlSpellChecker(GetType(RadTextBox)), TextBoxSpellChecker)

Dim wordParser As Regex = New Regex("[\p{L}\p{N}\p{M}]+(?:[-.'´_@][\p{L}|\p{N}|\p{M}]+)*", RegexOptions.Compiled)
Dim checker As Proofing.DocumentSpellChecker = TryCast(textSpellChecker.SpellChecker, Proofing.DocumentSpellChecker)

For Each word As Match In wordParser.Matches(Me.RadTextBox1.Text & "")

    If Not checker.CheckWordIsCorrect(word.Captures(0).Value) Then
        Console.WriteLine(word.Captures(0).Value)
    End If
Next


```` 


# See Also

* [RadSpellChecker]({%slug winforms/spellchecker/spell-check-as-you-type%})







    
   
  
    
 
