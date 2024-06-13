---
title: Duplicated Korean Characters in RichTextEditor
description: Learn how to deal with duplicated Korean characters in the WinForms RichTextEditor. 
type: how-to
page_title: Duplicated Korean Characters in RichTextEditor
slug: duplicated-korean-characters-in-richtexteditor
position: 5
tags: richtexteditor, ime, korean, duplicate
ticketid: 1500730
res_type: kb
---


## Environment
|Product Version|Product|Author|
|----|----|----|
|2022.3.913|RadRichTextEditor for WinForms|[Desislava Yordanova](https://www.telerik.com/blogs/author/desislava-yordanova)|

## Description

Add Korean language to your Windows 11 machine:

![duplicated-korean-characters-in-richtexteditor 001](images/duplicated-korean-characters-in-richtexteditor001.png)

![duplicated-korean-characters-in-richtexteditor 002](images/duplicated-korean-characters-in-richtexteditor002.png)

![duplicated-korean-characters-in-richtexteditor 003](images/duplicated-korean-characters-in-richtexteditor003.png)

Press keys in the following order with the __English__ keyboard, e.g.**rkskekfk**. In Korean IME you are expected to get Korean letters:

![duplicated-korean-characters-in-richtexteditor 003](images/duplicated-korean-characters-in-richtexteditor003.gif) 

However, on some Windows versions, the Korean symbols may be duplicated:

![duplicated-korean-characters-in-richtexteditor 004](images/duplicated-korean-characters-in-richtexteditor004.gif) 

## Solution

Microsoft IME has upgraded to a new version, but not all features are compatible with it. If you encounter issues, you can return to using the previous version:

![duplicated-korean-characters-in-richtexteditor 005](images/duplicated-korean-characters-in-richtexteditor005.png)

![duplicated-korean-characters-in-richtexteditor 006](images/duplicated-korean-characters-in-richtexteditor006.png)

Make sure that you switch to the previous Microsoft IME:

![duplicated-korean-characters-in-richtexteditor 007](images/duplicated-korean-characters-in-richtexteditor007.png)

Now, the Korean characters doesn't seem to be duplicated.


