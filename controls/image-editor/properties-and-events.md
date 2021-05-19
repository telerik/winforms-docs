---
title: Properties and Methods 
page_title: Properties and Methods - WinForms ImageEditor Control 
description: This article contains the most important properties methods and events of RadIamgeEditor.
slug: radimageeditor-properties-and-events
tags: properties, methods
published: True
position: 7
---

# Properties, Methods and Events 

This article contains the most important properties methods and events of __RadImageEditor__.

## Properties

|Property|Description|
|---|---|
|__CurrentBitmap__|Gets or sets the current bitmap. If you want to open an image for edit use one of the OpenImage methods.|
|__BitmapPath__|Gets or sets the path that will be used for save operations.|
|__ZoomFactor__|Gets or sets the zoom factor of the editor.|
|RadImageEditorElement.__CommandsElementWidth__| Gets or sets the width of the CommandsElement.|
|RadImageEditorElement.__ZoomElementHeight__| Gets or sets the height of the ZoomElement.|
 

## Methods

|Method|Description|
|---|---|
|__OpenImage__|Opens an image for editing, the method can take a bitmap or file path as parameter.|
|__SaveImage__|Saves the currently opened image. Optionally you can pass a path or ImageFormat as parameter.|
|__SaveImageAs__|Opens the SaveFileDialog and allows you to save the image to a specific location.|

## Events

|Method|Description|
|---|---|
|__ImageSaved__|Occurs after the image is saved.|
|__CurrentImageChanged__|Occurs after a specific operation is performed over the image.|


# See Also

* [Getting Started]({%slug radimageeditor-getting-started%})
* [Structure]({%slug radimageeditor-structure%})
 
