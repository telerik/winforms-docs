---
title: Initial Spell-Checking Delay in RadSpellChecker
description: Get familiar with the initial spell-checking performance in the WinForms SpellChecker. 
type: how-to
page_title: Initial Spell-Checking Delay in RadSpellChecker
slug: radspellchecker-initial-delay
position: 5
tags: spellchecker, delay
ticketid: 1584372
res_type: kb
---


## Environment
|Product Version|Product|Author|
|----|----|----|
|2022.3.913|RadSpellChecker for WinForms|[Desislava Yordanova](https://www.telerik.com/blogs/author/desislava-yordanova)|

## Description

RadSpellChecker offers [spell check as you type]({%slug winforms/spellchecker/spell-check-as-you-type%}) functionality by setting the **AutoSpellCheckControl** property. A long pause is observed the very first time the spell-checking is used at run time.   

## Solution

The observed slight delay occurs when RadSpellchecker loads the [dictionary]({%slug winforms/spellchecker/dictionaries%}) that is used for spell-checking the words. It actually reads a **tdf** file that contains all the words for the respective language.

You can choose when this loading time will be performed:

1\. Instant loading of the form but wait for the dictionary loading when you start typing for the first time. 

2\. Slight delay when showing the window to load the dictionary (by setting some initial text inside the AutoSpellCheckControl and then clearing it) but then instant typing in the input box will be available.

The Telerik.WinControls.SpellChecker.Proofing.**DocumentSpellChecker** that is internally used by RadSpellchecker is implemented with [MEF](https://learn.microsoft.com/en-us/dotnet/framework/mef/?redirectedfrom=MSDN) to support dynamic loading of different languages and plugins based model. To support this processing the MEF engine loads the assemblies in the application directory and searches for SpellChecker related interfaces implementation to create / load and activate the spell checker system.

When spell-checking for the first time, the MEF checks all the assemblies, which the control has dependencies to and loads the necessary parts using reflection. However, traversing all the assemblies and searching if there is something to load in them is a slow operation and may decrease the initial spell-checking performance of the RadSpellChecker. 

# See Also

* [Spell check as you type]({%slug winforms/spellchecker/spell-check-as-you-type%})
* [Dictionaries]({%slug winforms/spellchecker/dictionaries%}) 
