---
title: How to Deal with Incorrect Spanish Symbols Pasted in RadRichTextEditor
description: Learn how to deal with the weird characters in the HTML content coming from the clipboard when pasting  in the WinForms RichTextEditor. 
type: how-to
page_title: Incorrect Spanish Symbols are Pasted in RadRichTextEditor
slug: incorrect-spanish-symbols-pasted-in-radrichtexteditor
position: 5
tags: richtext, html, clipboard, windows, net4, encoding, utf8
ticketid: 1602936
res_type: kb
---


## Environment
|Product Version|Product|Author|
|----|----|----|
|2023.1.117|RadRichTextEditor for WinForms|[Desislava Yordanova](https://www.telerik.com/blogs/author/desislava-yordanova)|

## Description

When the end-users copy some Spanish text from a web pages and paste it in RadRichTextEditor, weird symbols are inserted:

![incorrect-spanish-symbols-pasted-in-radrichtexteditor003](images/incorrect-spanish-symbols-pasted-in-radrichtexteditor003.png)

![incorrect-spanish-symbols-pasted-in-radrichtexteditor001](images/incorrect-spanish-symbols-pasted-in-radrichtexteditor001.png)
 

## Solution

It seems to be an issue with **.NET 4.0** which is addressed in the later .NET versions: [DataFormats.Html specification states it's encoded in UTF-8. But there's a bug in .NET 4 Framework and lower, and it actually reads as UTF-8 as Windows-1252. You get a lot of wrong encodings, leading funny/bad characters such as 'Å','â€¹','Å’','Å½','Å¡','Å“','Å¾','Å¸','Â','Â¡','Â¢','Â£','Â¤','Â¥','Â¦','Â§','Â¨','Â©'](https://stackoverflow.com/a/38067962).

The possible solution is to use higher version than .NET 4.0:

![incorrect-spanish-symbols-pasted-in-radrichtexteditor002](images/incorrect-spanish-symbols-pasted-in-radrichtexteditor002.png)

It is also possible to try the option called ["Beta: Use Unicode UTF-8 for worldwide language support"](https://stackoverflow.com/questions/56419639/what-does-beta-use-unicode-utf-8-for-worldwide-language-support-actually-do) and test whether the default behavior will be affected in a positive way:

![incorrect-spanish-symbols-pasted-in-radrichtexteditor004](images/incorrect-spanish-symbols-pasted-in-radrichtexteditor004.png)







 
