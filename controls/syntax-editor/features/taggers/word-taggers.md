---
title: Word Taggers
page_title: Word Taggers - RadSyntaxEditor
description: RadSyntaxEditor works with the underlying document with the help of taggers. 
slug: syntax-editor-word-taggers
tags: features, word, taggers
published: True
position: 1
---

# Word Taggers

A common requirement when using the **RadSyntaxEditor** is to highlight words which belong to a specific language classification type - such as keywords, operators and comments. Such predefined taggers include the **CSharpTagger**, **VisualBasicTagger**, **JavaScriptTagger** and **SqlTagger**. All of these taggers share a common base class - the **WordTaggerBase** class.

## WordTaggerBase

The WordTaggerBase class works with the ClassificationTag and can be used when a certain word needs to be classified to one of the available classification types. Here's a list of the supported types:

* **Comment**
* **Identifier**
* **Keyword**
* **PreprocessorKeyword**
* **Operator**
* **Literal**
* **CharacterLiteral**
* **NumberLiteral**
* **StringLiteral**
* **ExcludedCode**
* **WhiteSpace**

Each of these types has a specified **TextFormatDefinition** which is used to display the matched words with a certain highlighting - foreground, background, border or underline.

The **WordTaggerBase** class exposes the following virtual methods:

* **bool TryGetClassificationType(string word, out ClassificationType classificationType)**: Tries to get the classification type for the given string word.
* **Dictionary\<string, ClassificationType\> GetWordsToClassificationTypes()**: Gets a dictionary which assigns a classification type to a given word.
* **IList<string> SplitIntoWords(string value)**: Splits the current line into a collection of words. These processed words are then assigned proper classification types in the **GetTags** method.

By inheriting the **WordTaggerBase** class you can create a tagger for your own custom language and specify custom words to be assigned to the list of available classification types. You can also define your own classification types if the default ones are not sufficient for you.

A practical example of how to define a tagger for your own custom language can be found [here]({%slug syntax-editor-custom-language%}).







