---
title: Settings
page_title: Settings | BarcodeView
description: Data Matrix barcode is a two-dimensional type of code used widely in industry for marking small parts and items due to its high data density and reliability.   
slug: barcodeview-barcode-types-2d-barcodes-datamatrix-settings 
tags: barcode, datamatrix
published: True
position: 1 
---

# Settings

This article explains the specific Data Matrix code settings.

## Encodation

The encodation determines the type of contents encoded by the Data Matrix barcode. Choosing a proper encodation imposes validation rules, but reduces the barcode size and improves its readability.

The following table shows the supported encodations and provides information about their restrictions and data storing requirements:

* **ASCII** - allowed characters include double digit numerics and all values from the ASCII table. The double digit numerics use 4 bits. The ASCII values in the 0-127 range use 8 bits. The ASCII values in 128-255 range use 16 bits.

* **C40** - Used primarily for upper-case alphanumerics. The upper-case alphanumeric characters use 5.33 bits. The lower-case and special characters use 10.66 bits.

* **Text** - Used primarily for lower-case alphanumerics. The lower-case alphanumeric characters use 5.33 bits. The upper-case and special characters use 10.66 bits.

* **X12** - Uses the characters from [ANSI X12 EDI](https://edi3.dicentral.com/ansi-x12) data set. Each character takes 5.33 bits.

* **EDIFACT** - Used to encode ASCII values in the 32-94 range. Each character takes 6 bits.

* **Base256** - Used to encode characters in the whole ASCII range. Each character takes 8 bits.

* **AsciiGS1** - Used to encode FNC1 characters in the ASCII range

## SymbolSize

Sets the symbol size and shape of the generated barcode. It can be automatically determined using **SquareAuto** or **RectangleAuto**, or specific like **Square32x32** or **Rectangle16x48**.

## Encoding

Determines character encoding used to encode the barcode contents. By default it is set to UTF-8, which uses more bits per character and may increase the size of the barcode image.

## Example

{{source=..\SamplesCS\Barcode\BarcodeSettings.cs region=DataMatrix}} 
{{source=..\SamplesVB\Barcode\BarcodeSettings.vb region=DataMatrix}}

````C#

DataMatrix encoder = new DataMatrix();
encoder.Encodation = Telerik.WinControls.UI.Barcode.Encodation.Ascii;
encoder.SymbolSize = Telerik.WinControls.UI.Barcode.SymbolSize.SquareAuto;
encoder.Encoding = Encoding.UTF8;
this.radBarcodeView1.Symbology = encoder;


````
````VB.NET

Dim encoder As DataMatrix = New DataMatrix()
encoder.Encodation = Telerik.WinControls.UI.Barcode.Encodation.Ascii
encoder.SymbolSize = Telerik.WinControls.UI.Barcode.SymbolSize.SquareAuto
encoder.Encoding = Encoding.UTF8
Me.radBarcodeView1.Symbology = encoder

```` 
{{endregion}}

# See Also

* [Encoding](https://docs.microsoft.com/en-us/dotnet/api/system.text.encoding?view=netcore-3.1)
