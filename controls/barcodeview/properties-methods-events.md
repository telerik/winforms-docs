---
title: Properties, Methods and Events
page_title: Properties, Methods and Events | BarcodeView
description: RadBarcodeView is a set of components that can be used to create, show and read barcodes. 
slug: barcodeview-properties-methods-events
tags: barcode, getting started
published: True
position: 2
---

# Properties

|Property|Description|
|----|----|
|**BarcodeElement**|Gets the barcode element of this control.|
|**BackColor**|Gets or sets the back color for the barcode.|
|**Value**|Gets or sets the value that will be converted into a barcode.|
|**Symbology**|Gets or sets the symbology that will be used to convert the value of this element into a visual barcode representation.|

# RadBarcodeElement's Properties

|Property|Description|
|----|----|
|**ElementFactory**|Gets or sets the element factory that is used to create the elements of the displayed barcode.|

# Methods

|Method|Description|
|----|----|
|**ExportToImage()**|Exports the barcode with the current dimentions of the control.|
|**ExportToImage(int width, int height)**|Layouts the barcode using the provided dimentions and exports it to an image.|
|**ExportToImage(Stream stream, Size size)**| Layouts the barcode using the provided size and exports it to the specified stream.|
|**ExportToImage(string filePath, Size size)**|Layouts the barcode using the provided size and exports it to the specified file location.|
|**ExportToImage(Stream stream, Size size, ImageFormat imageFormat)**|Layouts the barcode using the provided size and exports it to the specified stream in the specified image format.|
|**ExportToImage(string filePath, Size size, ImageFormat imageFormat)**|Layouts the barcode using the provided size and exports it to the specified file location in the specified image format.|

# Events

|Event|Description|
|----|----|
|**ValueChanged**|Occurs after the value of the barcode is changed.|
|**ValueChanging**|Occurs before the value of the barcode is changed.|
|**SymbologyChanged**|Occurs after the symbology of the barcode is changed.|
|**SymbologyChanging**|Occurs before the symbology of the barcode is changed.|
 
        