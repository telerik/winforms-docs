---
title: Extract the Words Added to the Dictionary in RadSpellChecker  
description: This article shows how you can extract the words added to the dictionary in RadSpellChecker. 
type: how-to
page_title: How to Extract the Words Added to the Dictionary in RadSpellChecker     
slug: extract-words-added-to-dictionary
position: 0
tags: spellchecker, add, dictionary
res_type: kb
---

## Environment
 
|Product Version|Product|Author|
|----|----|----|
|2020.3.1020|RadSpellChecker for WinForms|[Desislava Yordanova](https://www.telerik.com/blogs/author/desislava-yordanova)|
 
## Description

The spell-checking functionality has a default dictionary that stores the words in the local **IsolatedStorage** (stores information per user). Additional information how to access it securely is available in the following help article: [IsolatedStorage](https://docs.microsoft.com/en-us/dotnet/standard/io/isolated-storage)

![extract-words-added-to-dictionary 001](images/extract-words-added-to-dictionary001.png)

This article demonstrates how you can extract the words added to the dictionary by the current user.

## Solution 

Since the new words are added to a custom separated dictionary stored in the application isolated storage file system, you can access it by using the following code snippet which demonstrates a sample approach with using a **RadTextBox** and a **RadRichTextEditor** control:  

#### Extract words from the local dictionary

````C#

Telerik.WinControls.UI.TextBoxSpellChecker textboxSpellChecker = this.radSpellChecker1.GetControlSpellChecker(typeof(RadTextBox)) 
    as Telerik.WinControls.UI.TextBoxSpellChecker;
Telerik.WinControls.SpellChecker.Proofing.DocumentSpellChecker spellChecker = textboxSpellChecker.SpellChecker 
    as Telerik.WinControls.SpellChecker.Proofing.DocumentSpellChecker;
spellChecker.SpellCheckingCulture = System.Threading.Thread.CurrentThread.CurrentCulture;
Telerik.WinControls.SpellChecker.Proofing.RadIsolatedStorageCustomDictionary dictionary = 
    spellChecker.GetCustomDictionary(spellChecker.SpellCheckingCulture) as 
    Telerik.WinControls.SpellChecker.Proofing.RadIsolatedStorageCustomDictionary;
if (dictionary != null)
{
    foreach (string word in dictionary.Words)
    {
        //TODO add to the server
    }
}

Telerik.WinForms.Documents.Proofing.DocumentSpellChecker richTextSpellChecker = this.radRichTextEditor1.SpellChecker as 
Telerik.WinForms.Documents.Proofing.DocumentSpellChecker;
richTextSpellChecker.SpellCheckingCulture = System.Threading.Thread.CurrentThread.CurrentCulture;
Telerik.WinForms.Documents.Proofing.RadIsolatedStorageCustomDictionary richTextDictionary =
    richTextSpellChecker.GetCustomDictionary(richTextSpellChecker.SpellCheckingCulture) as 
    Telerik.WinForms.Documents.Proofing.RadIsolatedStorageCustomDictionary;

if (richTextDictionary != null)
{
    foreach (string word in richTextDictionary.Words)
    {
        //TODO add to the server
    }
}


````
````VB.NET
Dim textboxSpellChecker As Telerik.WinControls.UI.TextBoxSpellChecker = TryCast(Me.RadSpellChecker1.GetControlSpellChecker(GetType(RadTextBox)), TextBoxSpellChecker)
Dim spellChecker As Telerik.WinControls.SpellChecker.Proofing.DocumentSpellChecker = TryCast(textboxSpellChecker.SpellChecker,  _
    Telerik.WinControls.SpellChecker.Proofing.DocumentSpellChecker)
spellChecker.SpellCheckingCulture = System.Threading.Thread.CurrentThread.CurrentCulture
Dim dictionary As Telerik.WinControls.SpellChecker.Proofing.RadIsolatedStorageCustomDictionary = _
    TryCast(spellChecker.GetCustomDictionary(spellChecker.SpellCheckingCulture),  _
        Telerik.WinControls.SpellChecker.Proofing.RadIsolatedStorageCustomDictionary)

If dictionary IsNot Nothing Then

    For Each word As String In dictionary.Words
        Console.WriteLine(word)
        'TODO add to the server
    Next
End If

Dim richTextSpellChecker As Telerik.WinForms.Documents.Proofing.DocumentSpellChecker = TryCast(Me.RadRichTextEditor1.SpellChecker,  _
    Telerik.WinForms.Documents.Proofing.DocumentSpellChecker)
richTextSpellChecker.SpellCheckingCulture = System.Threading.Thread.CurrentThread.CurrentCulture
Dim richTextDictionary As Telerik.WinForms.Documents.Proofing.RadIsolatedStorageCustomDictionary = _
    TryCast(richTextSpellChecker.GetCustomDictionary(richTextSpellChecker.SpellCheckingCulture),  _
        Telerik.WinForms.Documents.Proofing.RadIsolatedStorageCustomDictionary)

If richTextDictionary IsNot Nothing Then

    For Each word As String In richTextDictionary.Words
        Console.WriteLine(word)
        'TODO add to the server
    Next
End If    

````

Once you have all the words that are added to the dictionary, you can perform any custom logic for storing these words to the server (e.g. store a file with these words to the server) or any appropriate storage for your precise case and read these words at a later moment. 
You can also define your custom RadIsolatedStorageCustomDictionary loaded from a file that contains the previously stored words and assign it to **RadRichTextEditor**. Please refer to the Custom Dictionaries section in this article: [SpellCheck]({%slug winforms/richtexteditor-/features/spellcheck%})

This article shows how to load a custom dictionary to a RadSpellChecker: [Dictionaries]({%slug winforms/spellchecker/dictionaries%})

# See Also

* [Spell check as you type]({%slug winforms/spellchecker/spell-check-as-you-type%}) 
* [Spell check in RadRichTextEditor]({%slug winforms/richtexteditor-/features/spellcheck%}) 

