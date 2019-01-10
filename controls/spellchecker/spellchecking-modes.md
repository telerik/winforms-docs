---
title: Spellchecking Modes
page_title: Spellchecking Modes | RadSpellChecker
description: RadSpellChecker enables developers to add multilingual spell checking capabilities to their WinForms applications.
slug: winforms/spellchecker/spellchecking-modes
tags: spellchecking,modes
published: True
position: 2
previous_url: spellchecker-spellchecking-modes
---

# SpellChecking Modes

**RadSpellChecker** allows you to choose between two spell-checking modes:


* Check Word By Word

* Check All Words At Once

### Check Word By Word

To do this kind of check, you should set the __SpellCheckMode__ property to *WordByWord*:

#### Setting SpellCheckMode.WordByWord

{{source=..\SamplesCS\SpellChecker\SpChGettingStarted.cs region=wordByWord}} 
{{source=..\SamplesVB\SpellChecker\SpChGettingStarted.vb region=wordByWord}} 

````C#
this.radSpellChecker1.SpellCheckMode = Telerik.WinControls.UI.SpellCheckMode.WordByWord;

````
````VB.NET
Me.RadSpellChecker1.SpellCheckMode = Telerik.WinControls.UI.SpellCheckMode.WordByWord

````

{{endregion}} 

When using this mode, **RadSpellChecker** will check every word in a separate window, which looks like this:

>caption Figure 1: Spellchecking form in SpellCheckMode.WordByWord

![spellchecker-spellchecking-modes 001](images/spellchecker-spellchecking-modes001.png)
        
You are presented with a list of all possible suggestions, from which you can choose a word to replace the wrong one. Alternatively, you can ignore the word or add it to a custom dictionary.    

>note This dialog will be called on every word considered wrong.

>note SpellCheckMode.WordByWord is the default value of the SpellCheckMode property so unless you have a complex scenario where you need to go from *WordByWord* to *AllAtOnce* and back, you do not need to set the property.

### Check All Words at Once  

To do this kind of check, you should set the __SpellCheckMode__ property to *AllAtOnce*:

#### Setting SpellCheckMode.AllAtOnce

{{source=..\SamplesCS\SpellChecker\SpChGettingStarted.cs region=allAtOnce}} 
{{source=..\SamplesVB\SpellChecker\SpChGettingStarted.vb region=allAtOnce}} 

````C#
this.radSpellChecker1.SpellCheckMode = Telerik.WinControls.UI.SpellCheckMode.AllAtOnce;

````
````VB.NET
Me.RadSpellChecker1.SpellCheckMode = Telerik.WinControls.UI.SpellCheckMode.AllAtOnce

````

{{endregion}} 

When using SpellCheckMode.*AllAtOnce*, **RadSpellChecker** loads the entire content of the control being spell checked in a window looking like this:

>caption Figure 2: Spellchecking form in SpellCheckMode.AllAtOnce

![spellchecker-spellchecking-modes 002](images/spellchecker-spellchecking-modes002.png)
    	
You are presented with the same options as the *WordByWord* mode. The difference is that the entire spellchecking is executed in this window and only after that the content is transferred to the original control being spellchecked. 
