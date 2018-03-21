---
title: Resources in resx files are lost when the form is modified
description: Resources in resx files are lost when the form is modified
type: troubleshooting
page_title: Resources in resx files are lost when the form is modified
slug: resources-in-resx-files-are-lost-when-the-form-is-modified
tags: version 
position: 1
res_type: kb
---

## Problem

Custom resources (such as strings) that are saved in a form's resx file get lost when the form is modified. 
 
## Description

The form resource files (like Form1.resx) are serialized by VisualStudio. For this reason all manually added resources will be removed during design-time serialization. You should only edit resources in the resx file, which have already been added by the design time. Adding resources directly into the resx file will result in their deletion next time the form is changed (and has been subsequently serialized).

For example:
If you put a TextBox on a form and set its **Text** property to a long string, the string will be serialized to the resx file. Afterwards, that string can be modified in the resx file with no problems. However, it does not make sense to add new strings in the resx file, because during the next serialization the newly added string will be lost.

The resx files of the Form are also used when the **Localizable** property of the form is set to true. In that case, all localizable properties for each control on the form will be serialized in a language-dependent resx file. The name of the resx file is determined by the Language property of the form (Form1.resx is for the default language).

## Solution

Store all manually defined strings (or custom resources) in the application resources. By default, this file is **Resources.resx** and is located in the **Properties** folder in your application.
