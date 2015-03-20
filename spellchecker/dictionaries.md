---
title: Dictionaries
page_title: Dictionaries
description: Dictionaries
slug: spellchecker-dictionaries
tags: dictionaries
published: True
position: 4
---

# Dictionaries



RadSpellChecker comes with one predefined dictionary which checks the English language.
        In case you need a dictionary for another language, you check the [Dictinaries for RadSpellChecker](http://www.telerik.com/community/code-library/winforms/localization-providers/dictionaries-for-radspellchecker.aspx)
        article where our customers have provided their own implementation of dictionaries for the different languages.
        The following section demonstrates how you can load one of these dictionaries in your own project.
      

## Loading a custom dictionary

>To access the RadSpellChecker related types, you need to include the Telerik.WinControls.RichTextBox.Proofing namespace

1. Let's say that you have chosen one of the dictionary files provided in [this article](http://www.telerik.com/community/code-library/winforms/localization-providers/dictionaries-for-radspellchecker.aspx), for example, the German (Germany) (de-DE) dictionary.
            

1. Now let's load the dictionary file (*.TDF) in our project as a
              [project resource](http://msdn.microsoft.com/en-us/library/3bka19x4(v=vs.100).aspx).
            

1. Further, we should create a WordDictionary descendant. Let's call the descendant GermanDictionary. In this class
              we should override the EnsureDictionaryLoadedOverride method, create a MemoryStream based on the
              TDF resource and call the Load method of the WordDictionary class passing the MemoryStream as a parameter. Assuming
              that our CSharp project is called SamplesCS the code looks as shown below:
            

#### __[C#]__

{{region germanDictionary}}
	    public class GermanDictionary : WordDictionary
	    {
	        protected override void EnsureDictionaryLoadedOverride()
	        {
	            using (MemoryStream ms = new MemoryStream(SamplesCS.Properties.Resources.de_DE))
	            {
	                this.Load(ms);
	            }
	        }
	    }
	{{endregion}}



#### __[VB.NET]__

{{region germanDictionary}}
	Public Class GermanDictionary
	    Inherits WordDictionary
	    Protected Overrides Sub EnsureDictionaryLoadedOverride()
	        Using ms As MemoryStream = New MemoryStream(My.Resources.de_DE)
	            Me.Load(ms)
	        End Using
	    End Sub
	End Class
	{{endregion}}



1. Next, we should add the custom dictionary to our RadSpellChecker. Please note,
              that dictionaries are added per control types basis using the __GetControlSpellChecker__ method.
              This way, using just one RadSpellChecker instance you can
              add different dictionaries of one and the same language in the context of different controls that need to be
              spell checked. For example, here we are going to add a Dictionary that will be used only for RadTextBox instances.
              In addition, we need to define a CultureInfo that will be stored together with the dictionary in the list of
              dictionaries. This culture will serve as a primary key for the respective dictionary in the dictionaries collection.
            

#### __[C#] Defining a culture__

{{region defineCulture}}
	        private static readonly CultureInfo GermanCulture = CultureInfo.GetCultureInfo("de-DE");
	{{endregion}}



#### __[VB.NET] Defining a culture__

{{region defineCulture}}
	    Friend Shared GermanCulture As CultureInfo = CultureInfo.GetCultureInfo("de-DE")
	{{endregion}}



#### __[C#] Adding a dictionary__

{{region addingDictionary}}
	            IControlSpellChecker textBoxControlSpellChecker = this.radSpellChecker1.GetControlSpellChecker(typeof(RadTextBox));
	            DocumentSpellChecker documentSpellChecker = textBoxControlSpellChecker.SpellChecker as DocumentSpellChecker;
	            documentSpellChecker.AddDictionary(new GermanDictionary(), GermanCulture);
	{{endregion}}



#### __[VB.NET] Adding a dictionary__

{{region addingDictionary}}
	        Dim textBoxControlSpellChecker As IControlSpellChecker = Me.radSpellChecker1.GetControlSpellChecker(GetType(RadTextBox))
	        Dim documentSpellChecker As DocumentSpellChecker = TryCast(textBoxControlSpellChecker.SpellChecker, DocumentSpellChecker)
	        documentSpellChecker.AddDictionary(New GermanDictionary(), GermanCulture)
	{{endregion}}



1. Now, we have to set the __SpellCheckingCulture__ property that will determine which of the available dictionaries will
              be used (in case dictionaries of different languages are added).
            

#### __[C#] Setting the culture__

{{region settingCulture}}
	            documentSpellChecker.SpellCheckingCulture = GermanCulture;
	{{endregion}}



#### __[VB.NET] Setting the culture__

{{region settingCulture}}
	        documentSpellChecker.SpellCheckingCulture = GermanCulture
	{{endregion}}

If this property is not set, RadSpellChecker will
              try check if there is a dictionary whose culture is the CurrentUICulture of the application. If such a dictionary is found, RadSpellChecker
              will use that dictionary.
            
