---
title: Manipulating Annotations
page_title: Manipulating Annotations - WinForms RadRichTextEditor Control
description: Learn which are the most commonly used manipulations with regard to Annotations in the WinForms RadRichTextEditor control.
slug: winforms/richtexteditor-/document-elements/annotations/manipulating-annotations
tags: manipulating,annotations
published: True
position: 1
previous_url: richtexteditor-document-elements-annotations-manipulating-annotations
---

# Manipulating Annotations

This article outlines the most commonly used manipulations with regard to **Annotations**.

The types of manipulations that can be performed on annotations include:

* Presentation in the document;

* Retrieving annotations;

* Inserting an annotation;

* Deleting an annotation;

* Splitting an annotation at a given position.

## Presentation

By default, all annotations are markup-only in the sense that they do not have any appearance. If you want to display a highlight, range brackets or anything else, you can use the UI layers feature of **RadRichTextEditor**. You can read more about them in [this article]({%slug winforms/richtexteditor-/how-to/customize-presentation-through-ui-layers%}).        

## Methods for Retrieving Annotations

* **RadDocument** exposes the following general methods for retrieving annotation markers or checking if such exist in the document at all:

<snippet id='richtexteditor-manipulatingannotations-contains-cs' />
<snippet id='richtexteditor-manipulatingannotations-contains-vb' />



* Methods for retrieving the containing annotations around a particular inline. This is particularly convenient if you would like to perform checks against the position where the caret is at. First, you can obtain the current inline like this:

<snippet id='richtexteditor-manipulatingannotations-inline-cs' />
<snippet id='richtexteditor-manipulatingannotations-inline-vb' />



and then, check if this inline is contained in a range using one of the methods below: 

<snippet id='richtexteditor-manipulatingannotations-inrange-cs' />
<snippet id='richtexteditor-manipulatingannotations-inrange-vb' />



* More finely tuned methods that filter the annotation ranges at the time of their retrieval include: 

<snippet id='richtexteditor-manipulatingannotations-inrange1-cs' />
<snippet id='richtexteditor-manipulatingannotations-inrange1-vb' />



## Inserting Annotations

Annotations can be inserted in the document using the following method of [RadDocumentEditor]({%slug winforms/richtexteditor-/features/raddocumenteditor%}).
 
<snippet id='richtexteditor-manipulatingannotations-insert-cs' />
<snippet id='richtexteditor-manipulatingannotations-insert-vb' />



There are also some methods that insert specific types of annotations for the commonly used types, such as Hyperlinks, Comments, etc. For more information, check the respective article.

## Deleting Annotations

In order to delete an annotation, you need to obtain a reference to its range start first. After that, you can use the following method of [RadDocumentEditor]({%slug winforms/richtexteditor-/features/raddocumenteditor%}) to remove it.

<snippet id='richtexteditor-manipulatingannotations-delete-cs' />
<snippet id='richtexteditor-manipulatingannotations-delete-vb' />



Note that this method will remove the annotation, but will keep its contents. In order to delete the contents as well, you can select it and use the **Delete** method of the editor:

<snippet id='richtexteditor-manipulatingannotations-delete1-cs' />
<snippet id='richtexteditor-manipulatingannotations-delete1-vb' />



There are also some methods that remove specific types of annotations for the commonly used types, such as **Hyperlinks**, **Comments**, etc. For more information, check the respective article.

## Splitting Annotations

Some user scenarios require that there would be an easy way to split annotation ranges. In such cases, one can use the following methods:

<snippet id='richtexteditor-manipulatingannotations-split-cs' />
<snippet id='richtexteditor-manipulatingannotations-split-vb' />



# See Also

 * [Annotations]({%slug winforms/richtexteditor-/document-elements/annotations%})

 * [Custom Annotations]({%slug winforms/richtexteditor-/document-elements/annotations/custom-annotations%})
