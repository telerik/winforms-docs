---
title: Spellcheck
page_title: Spellcheck | UI for WinForms Documentation
description: Spellcheck
slug: winforms/richtextbox-(obsolete)/features/spellcheck
tags: spellcheck
published: True
position: 12
---

# Spellcheck



The RadRichTextBox control is designed to support "spell checking as you type" by setting a single property and
        specifying a proper dictionary to it. This topic will explain you the following:
      

## 

### Enabling SpellCheck

To enable or disable the spell checking functionality (present as red wavy underlines below unrecognized words),
              you can use the __IsSpellCheckingEnabled__ property on the RadRichTextBox. When the property
              is *False*, no dictionaries are loaded and no overhead is incurred for spell checking.
            

You can customize the spell checker by using the __SpellChecker__ property of RadRichTextBox.
              It’s of type __ISpellChecker__. By default an object of type __DocumentSpellChecker__
              that implements the interface, is used for this property. You can either use it or provide your custom class that implements
              the __ISpellChecker__ interface.
            

### Dictionaries

The dictionaries in RadRichTextBox implement the __IWordDictionary__ interface. Easy interoperability
              with dictionaries from __RadSpell__ for ASP.NET is achieved through the __WordDictionary__
              class, which supports the loading of a dictionary directly from the __*.tdf__ files, used with
              __RadSpell__.
            

Here is an example of a __WordDictionary__ loaded from a __TDF__ file.
            

>note When adding a __WordDictionary__ or similar object use the __AddDictionary(IWordDictionary dictionary, CultureInfo culture)__ method of the __DocumentSpellChecker__ . You can also associate a dictionary with a specific culture.
                The method to remove this dictionary is __RemoveDictionary(CultureInfo culture)__ .
>


>note The given example doesn't contain the logic used to read the __TDF__ file as a __Stream__ .
>
#_[C#] Load dictionary_

	



{{source=..\SamplesCS\RichTextBox\Features\RichTextBoxSpellCheck.cs region=LoadDictionary}} 
{{source=..\SamplesVB\RichTextBox\Features\RichTextBoxSpellCheck.vb region=LoadDictionary}} 

````C#
        private void LoadDictionary(Stream tdfFileStream)
        {
            WordDictionary dictionary = new WordDictionary();
            dictionary.Load(tdfFileStream);
            ((DocumentSpellChecker)this.radRichTextBox1.SpellChecker).AddDictionary(dictionary, CultureInfo.InvariantCulture);
        }
````
````VB.NET
    Private Sub LoadDictionary(ByVal tdfFileStream As Stream)
        Dim dictionary As New WordDictionary()
        dictionary.Load(tdfFileStream)
        CType(Me.RadRichTextBox1.SpellChecker, DocumentSpellChecker).AddDictionary(dictionary, CultureInfo.InvariantCulture)
    End Sub
    '
````

{{endregion}} 




### Adding a Word

To add a word to a dictionary you can either use the __AddWord()__ method of the
              __DocumentSpellChecker__ or of the dictionary itself. Using the first one you can
              add a word to multiple dictionaries associated to the same culture. This done done by passing the desired
              culture as parameter to the method.
            

>note Using the overload of the __AddWord()__ method that takes only the word as argument is
                equal to using the second overload and passing __CultureInfo.InvariantCulture__ as argument.
>


Using the __AddWord()__ method of the dictionary itself will add the word only to the respective dictionary.
            

Here is an example:#_[C#] Add word to dictionary_

	



{{source=..\SamplesCS\RichTextBox\Features\RichTextBoxSpellCheck.cs region=AddWord}} 
{{source=..\SamplesVB\RichTextBox\Features\RichTextBoxSpellCheck.vb region=AddWord}} 

````C#
            this.radRichTextBox1.SpellChecker.AddWord("RadRichTextBox", CultureInfo.InvariantCulture);
````
````VB.NET
        Me.RadRichTextBox1.SpellChecker.AddWord("RadRichTextBox", CultureInfo.InvariantCulture)
        '
````

{{endregion}} 




### Internationalization

The spell checking component is designed to suit scenarios where different cultures take place in the same application.
              Internationalization is achieved through associating each dictionary and custom dictionary with a specific culture
              (or the __InvariantCulture__ as the default one).
            

>note The given example doesn't contain the logic used to read the __TDF__ file as a __Stream__ .
>
#_[C#] Load international dictionary _

	



{{source=..\SamplesCS\RichTextBox\Features\RichTextBoxSpellCheck.cs region=LoadDictionaryDE}} 
{{source=..\SamplesVB\RichTextBox\Features\RichTextBoxSpellCheck.vb region=LoadDictionaryDE}} 

````C#
        private void LoadDictionaryDE(Stream tdfFileStream)
        {
             WordDictionary dictionary = new WordDictionary();
            dictionary.Load( tdfFileStream );
            (( DocumentSpellChecker )this.radRichTextBox1.SpellChecker ).AddDictionary( dictionary, new CultureInfo( "de-DE" ));
        }
````
````VB.NET
    Private Sub LoadDictionaryDE(ByVal tdfFileStream As Stream)
        Dim dictionary As New WordDictionary()
        dictionary.Load(tdfFileStream)
        CType(Me.RadRichTextBox1.SpellChecker, DocumentSpellChecker).AddDictionary(dictionary, New CultureInfo("de-DE"))
    End Sub
    '
````

{{endregion}} 



