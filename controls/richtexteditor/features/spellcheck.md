---
title: Spellcheck
page_title: Spellcheck - WinForms RichTextEditor Control
description: WinForms RichTextEditor is designed to support spell checking as you type by setting a single property and specifying a proper dictionary to it.
slug: winforms/richtexteditor-/features/spellcheck
tags: spellcheck
published: True
position: 9
previous_url: richtexteditor-features-spellcheck
---

# Spellcheck

The __RadRichTextEditor__ control is designed to support "*spell checking as you type*" by setting a single property and specifying a proper dictionary to it. This topic will explain you the following:
      
* [Enabling SpellCheck](#enabling-spellcheck)

* [Dictionaries](#dictionaries)

* [Custom Dictionaries](#custom-dictionaries)

* [Adding a Word](#adding-a-word)

* [Internationalization](#internationalization)

## Enabling SpellCheck

To enable or disable the spell checking functionality (present as red wavy underlines below unrecognized words), you can use the __IsSpellCheckingEnabled__ property on __RadRichTextEditor__. When the property is *false*, no dictionaries are loaded and no overhead is incurred for spell checking.    
    
>caption Figure 1: Spell Checking as you type

![WinForms RadRichTextEditor Spell checking as you type](images/richtexteditor-features-spellcheck001.png)

You can customize the spell checker by using the __SpellChecker__ property of __RadRichTextEditor__. It’s of type __ISpellChecker__. By default, an object of type **DocumentSpellChecker** that implements the interface, is used for this property. You can either use it or provide your custom class that implements the __ISpellChecker__ interface.

When you right click a misspelled word, the context menu gives you the opportunity to open a **SpellCheckingDialog**. Thus, the user can correct the word, add it to the dictionary or ignore it.

>note Since R2 2017 SP the SpellCheckingDialog allows the user to enter some custom text by using a RadTextBox if no appropriate word exist in the offered list.

>caption Figure 2: Spell checking dialog

![WinForms RadRichTextEditor Spell checking dialog](images/richtexteditor-features-spellcheck002.png)

>note __RadRichTextEditor__ can also be configured to be used with a spell-checker using an OpenOffice dictionary and the NHunspell library: [RadRichTextEditor OpenOffice Spell Checking](http://www.telerik.com/support/code-library/radrichtexteditor-openoffice-spell-checking).
>        

## Dictionaries

The dictionaries in __RadRichTextEditor__ implement the __IWordDictionary__ interface. Easy interoperability with dictionaries from __RadSpell__ for ASP.NET is achieved through the __RadDictionary__ class, which supports the loading of a dictionary directly from the *.tdf files, used with __RadSpell__. You can find TDF dictionaries for some languages [here](http://www.telerik.com/support/code-library/dictionaries-for-radspellchecker).

Here is an example of a __RadDictionary__ loaded from a TDF file.

>note When adding a __RadDictionary__ or similar object use the __AddDictionary(IWordDictionary dictionary, CultureInfo culture)__ method of the __DocumentSpellChecker__ . You can also associate a dictionary with a specific culture. The method to remove this dictionary is __RemoveDictionary(CultureInfo culture)__ .
>

>note The given example doesn't contain the logic used to read the __TDF__ file as a __Stream__ .
>

{{source=..\SamplesCS\RichTextEditor\Features\SpellCheck.cs region=load}} 
{{source=..\SamplesVB\RichTextEditor\Features\SpellCheck.vb region=load}} 

````C#
private void LoadDictionary(Stream tdfFileStream)
{
    RadDictionary dictionary = new RadDictionary();
    dictionary.Load(tdfFileStream);
    ((DocumentSpellChecker)this.radRichTextEditor1.SpellChecker).AddDictionary(dictionary, CultureInfo.InvariantCulture);
}

````
````VB.NET
Private Sub LoadDictionary(ByVal tdfFileStream As Stream)
    Dim dictionary As New RadDictionary()
    dictionary.Load(tdfFileStream)
    CType(Me.radRichTextEditor1.SpellChecker, DocumentSpellChecker).AddDictionary(dictionary, CultureInfo.InvariantCulture)
End Sub

````

{{endregion}} 

## RadWordsDictionary

__RadWordsDictionary__ implements the __IWordDictionary__ interface and is capable of reading words from text files that contain one word per line. An example of such files are the __.dic__ dictionaries.

#### Load stream in RadWordsDictionary

{{source=..\SamplesCS\RichTextEditor\Features\SpellCheck.cs region=LoadWordDictionaryStream}} 
{{source=..\SamplesVB\RichTextEditor\Features\SpellCheck.vb region=LoadWordDictionaryStream}}

````C#
private void LoadWordDictionaryStream(Stream dictStrem)
{
    Telerik.WinControls.SpellChecker.Proofing.RadWordsDictionary dictionary = new Telerik.WinControls.SpellChecker.Proofing.RadWordsDictionary();
    dictionary.Load(dictStrem);
}

````
````VB.NET
Private Sub LoadWordDictionaryStream(dictStrem As Stream)
    Dim dictionary As New Telerik.WinControls.SpellChecker.Proofing.RadWordsDictionary()
    dictionary.Load(dictStrem)
End Sub

```` 

{{endregion}}

One of the constructor overloads of the **RadWordsDictionary** class enables you to pass a parameter of type __IEnumerable&lt;string&gt;__, which can help you create your own dictionary with a custom set of words.

#### Create RadWordsDictionary from strings

{{source=..\SamplesCS\RichTextEditor\Features\SpellCheck.cs region=LoadWordDictionaryWords}} 
{{source=..\SamplesVB\RichTextEditor\Features\SpellCheck.vb region=LoadWordDictionaryWords}}
````C#
private void LoadWordDictionaryStream()
{
    List<string> words = new List<string>();
    words.Add("Test");
    words.Add("Teacher");
    words.Add("Sister");
    Telerik.WinControls.SpellChecker.Proofing.RadWordsDictionary dictionary = new Telerik.WinControls.SpellChecker.Proofing.RadWordsDictionary();
    dictionary.Load(words);
}

````
````VB.NET
Private Sub LoadWordDictionaryStream()
    Dim words As New List(Of String)()
    words.Add("Test")
    words.Add("Teacher")
    words.Add("Sister")
    Dim dictionary As New Telerik.WinControls.SpellChecker.Proofing.RadWordsDictionary()
    dictionary.Load(words)
End Sub

```` 

{{endregion}}

## Custom Dictionaries

One feature of the __SpellChecker__ in __RadRichTextEditor__ is to add a word to a user-defined custom dictionary to enable domain-specific applications. Such dictionary should implement the __IWordCustomDictionary__ interface. For that purpose the __RadRichTextEditor__ provides you with the __RadIsolatedStorageCustomDictionary__ class out of the box. It allows you to persist the word list in a file located in the Isolated Storage.
        
Here is an example of a such dictionary which adds the words in the "CustomDictionary.txt" marked as a Site-scoped **IsolatedSotrageFile**.

>tip The __IsolatedStorageScope__ enumeration has the following values:
>
*  __Site__ - the dictionary defined in this scope is available for each application hosted on the same site.
*  __Application__ - the dictionary is available only for the particular application.>

>note When adding a dictionary that implements the __ICustomWordDictionary__ interface object use __AddCustomDictionary(ICustomWordDictionary customDictionary, CultureInfo culture)__ method for the __DocumentSpellChecker__ class. You can also associate a custom dictionary to a specific culture. The method to remove it is __RemoveCustomDictionary(ICustomWordDictionary customDictionary, CultureInfo culture)__ .
>

{{source=..\SamplesCS\RichTextEditor\Features\SpellCheck.cs region=custom}} 
{{source=..\SamplesVB\RichTextEditor\Features\SpellCheck.vb region=custom}} 

````C#
private void CreateCustomDictionary()
{
    RadIsolatedStorageCustomDictionary dictionary = new RadIsolatedStorageCustomDictionary(IsolatedStorageScope.Site, "CustomDictionary.txt");
    DocumentSpellChecker spellchecker = new DocumentSpellChecker(dictionary);
    this.radRichTextEditor1.SpellChecker = spellchecker;
}

````
````VB.NET
Private Sub CreateCustomDictionary()
    Dim dictionary As New RadIsolatedStorageCustomDictionary(IsolatedStorageScope.Site, "CustomDictionary.txt")
    Dim spellchecker As New DocumentSpellChecker(dictionary)
    Me.radRichTextEditor1.SpellChecker = spellchecker
End Sub

````

{{endregion}} 

If you want to have a temporary custom dictionary, that will only be available for a single application session, you can use the __RadNonPersistentCustomDictionary__ object.

## Adding a Word

To add a word to a dictionary you can either use the __AddWord__ method of the __DocumentSpellChecker__ or of the dictionary itself. Using the first one you can add a word to multiple dictionaries associated to the same culture. This is done by passing the desired culture as parameter to the method.
        
>note Using the overload of the __AddWord__ method that takes only the word as argument is equal to using the second overload and passing __CultureInfo.InvariantCulture__ as argument.
>

Using the __AddWord__ method of the dictionary itself will add the word only to the respective dictionary.
        
Here is an example.

{{source=..\SamplesCS\RichTextEditor\Features\SpellCheck.cs region=addword}} 
{{source=..\SamplesVB\RichTextEditor\Features\SpellCheck.vb region=addword}} 

````C#
this.radRichTextEditor1.SpellChecker.AddWord("RadRichTextEditor", CultureInfo.InvariantCulture);

````
````VB.NET
Me.radRichTextEditor1.SpellChecker.AddWord("RadRichTextEditor", CultureInfo.InvariantCulture)

````

{{endregion}} 


## Internationalization

The spell checking component is designed to suit scenarios where different cultures take place in the same application. Internationalization is achieved through associating each dictionary and custom dictionary with a specific culture (or the __InvariantCulture__ as the default one).
        
Here is an example.

>note The given example doesn't contain the logic used to read the __TDF__ file as a __Stream__ .
>

{{source=..\SamplesCS\RichTextEditor\Features\SpellCheck.cs region=load}} 
{{source=..\SamplesVB\RichTextEditor\Features\SpellCheck.vb region=load}} 

````C#
private void LoadDictionary(Stream tdfFileStream)
{
    RadDictionary dictionary = new RadDictionary();
    dictionary.Load(tdfFileStream);
    ((DocumentSpellChecker)this.radRichTextEditor1.SpellChecker).AddDictionary(dictionary, CultureInfo.InvariantCulture);
}

````
````VB.NET
Private Sub LoadDictionary(ByVal tdfFileStream As Stream)
    Dim dictionary As New RadDictionary()
    dictionary.Load(tdfFileStream)
    CType(Me.radRichTextEditor1.SpellChecker, DocumentSpellChecker).AddDictionary(dictionary, CultureInfo.InvariantCulture)
End Sub

````

{{endregion}}

## See Also
 	
* [How to Extract the Words Added to the Dictionary in RadSpellChecker]({%slug extract-words-added-to-dictionary%})
* [How to Share Localization Providers and Spell Checking Dictionaries]({%slug share-localization-providers-and-dictionaries%})
