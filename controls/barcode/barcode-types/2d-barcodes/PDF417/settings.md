---
title: Settings
page_title: PDF417 Settings - Barcode
description: PDF417 is a stacked linear barcode symbol format used in a variety of applications, primarily transport, identification cards, and inventory management. 
slug: winforms/barcode/barcode-types/2d-barcodes/pdf417/settings 
tags: barcode, pdf417
published: True
position: 0 
---

# Settings

This article explains the specific PDF417 code settings.

![WinForms RadBarcode PDF417 Settings](images/barcode-2d-barcodes-pdf417-settings001.png)

>note Depending on the mode and error correction levels, any invalid characters, entered by the user, as well as any characters, which surpass the maximum number of symbols, which can be accommodated, will be discarded.

## Encoding Mode

This is an enumeration, which determines the types of symbols, which will be accepted by the barcode, as well as the algorithm by which they will be encoded internally. The enumeration has the following values:

* **Auto** - This specifies no particular encoding mode. This means that the barcode control will determine internally how to encode each particular symbol, according to the ISO specification.
* **Byte** - The Byte Compaction mode enables a sequence of 8-bit bytes to be encoded into a sequence of codewords. It is accomplished by a Base 256 to Base 900 conversion, which achieves a compaction ratio of six bytes to five codewords. Characters with ascii codes from 0 to 255 are acceptable. The table below lists all the characters and their values.

	![WinForms RadBarcode PDF417 Encoding Mode Byte](images/barcode-2d-barcodes-pdf417-settings003.png)

* **Numeric** - The numeric mode allows encoding of numeric symbols only [0-9]. Any other characters are discarded.
* **Text** - The text mode allows encoding of text characters – upper and lowercase letters, as well as digits, punctuation and some additional characters. The complete character table is listed below:

	![WinForms RadBarcode PDF417 Encoding Mode Text](images/barcode-2d-barcodes-pdf417-settings004.png)

## Error Correction Level

This is an integer value from 0 to 8. This value determines how many error correction clusters will be added to the rendered data. The table below lists the values for each level of error correction:

![WinForms RadBarcode PDF417 Error Correction Level](images/barcode-2d-barcodes-pdf417-settings002.png)

## Rows and Columns

Internally, code PDF417 renders in columns and rows. These rows and columns create a grid, which in turn accommodates all the modules of encoded data. The maximum number of columns in the code is **30**, whereas the maximum number of rows is **90**. Depending on the scenario, this internal behavior may influence the readability of the control. To address this, two properties are exposed - **Rows** and **Columns**. These two properties will allow you to pre-determine the number of rows and columns in the rendered PDF417 code. For example, when you have limited width, you can increase the number of rows.

One thing to keep in mind is that these properties are related to the data, which needs to be encoded. If there is too much data, more rows/columns will be added. If there is insufficient data, not all rows/columns will be used.

#### Example

{{source=..\SamplesCS\Barcode\BarcodeSettings.cs region=PDF417}} 
{{source=..\SamplesVB\Barcode\BarcodeSettings.vb region=PDF417}}

````C#
            
Telerik.WinControls.UI.Barcode.Symbology.PDF417 encoder = new Telerik.WinControls.UI.Barcode.Symbology.PDF417();
encoder.Columns = 3;
encoder.Rows = 3;
encoder.EncodingMode = Telerik.WinControls.UI.Barcode.Symbology.EncodingMode.Auto;
encoder.ECLevel = 2;
this.radBarcode1.Value = "123456Sofia";
this.radBarcode1.Symbology = encoder;

````
````VB.NET
Dim encoder As Telerik.WinControls.UI.Barcode.Symbology.PDF417 = New Telerik.WinControls.UI.Barcode.Symbology.PDF417()
encoder.Columns = 3
encoder.Rows = 3
encoder.EncodingMode = Telerik.WinControls.UI.Barcode.Symbology.EncodingMode.Auto
encoder.ECLevel = 2
Me.radBarcode1.Value = "123456Sofia"
Me.radBarcode1.Symbology = encoder

```` 
{{endregion}}

 
