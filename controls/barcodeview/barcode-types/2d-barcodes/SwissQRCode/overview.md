---
title: Overview
page_title: Overview - WinForms Swiss QR BarcodeView Control
description: WinForms Swiss QR Barcode encodes all the information necessary for a payment in specific format and structure.  
slug: barcodeview-barcode-types-2d-barcodes-swissqrcode-overview 
tags: barcode, qrcode
published: True
position: 0 
---

# Swiss QR Barcode

The QR-bill makes issuing and paying invoices simpler, and is being introduced throughout Switzerland to modernize payment transactions. Its most striking feature is the Swiss QR code, which contains all the payment information in a digital format, which can be read using a smart phone or a slip scanner.

>caption Figure 1: A Swiss QR-bill

![winforms-2d-barcodes-swissqrcode-overview 001](images/winforms-2d-barcodes-swissqrcode-overview001.png)

The Swiss QR Code encodes all the information necessary for a payment in specific format and structure. Along with the printed information, the Swiss QR Code forms the payment part of the QR-bill. The allowed currencies for payments are CHF and EUR. The QR-Bill also guarantees you compliance with the regulatory requirements arising from the revised Anti-Money Laundering Ordinance.

## Requirements

The Swiss QR Code symbol requires an error correction level "M", which means a redundancy or assurance of around 15%.

In addition, the measurements of the Swiss QR Code for printing must always be 46 x 46 mm (without surrounding quiet space) regardless of the Swiss QR Code version. Depending on the printer resolution, the Swiss QR Code produced might require size adjustments.

## Generating a Swiss Barcode

To generate a Swiss Barcode using Telerik UI for WinForms, you need to first set the **Symbology** of the barcode to **SwissQRCode**.

#### Example 1: Setting the SwissQRCode symbology

{{source=..\SamplesCS\BarcodeViewGettingStarted.cs region=SetSwissQRCode}} 
{{source=..\SamplesVB\BarcodeViewGettingStarted.vb region=SetSwissQRCode}}

````C#

SwissQRCode symbology = new SwissQRCode();
symbology.Module = 4;
symbology.SizingMode = SizingMode.Manual;
this.radBarcodeView1.Symbology = symbology;   

````
````VB.NET
Dim symbology As SwissQRCode = New SwissQRCode()
symbology.[Module] = 4
symbology.SizingMode = SizingMode.Manual
Me.radBarcodeView1.Symbology = symbology

```` 
{{endregion}}

The Swiss QR code standard mandates that the input provided for the generation of the barcode is strictly formatted. Both, validating and generating this input, are complex processes and to facilitate them you can use the **SwissQRCodeValueStringBuilder** helper class. Its purpose is to hold the information needed for a **SwissQRCode** in a type-safe manner, to validate this information and to generate the input. Through its constructor, you need to set the following properties:

* **Iban**: The IBAN of the Account/Payable to.

* **Currency**: The currency of the payment - CHF or EUR.

* **Creditor**: The information of the contact that receives the payment.

* **Reference**: The reference information for the payment.

* **AdditionalInformation**: The additional information for the payment.

* **Debtor**: The information of the contact that makes the payment.

* **Amount**: The amount of the payment.

* **AlternativeProcedure**: The alternative procedures for the payment.

#### Example 2: Creating the SwissQRCodeValueStringBuilder

{{source=..\SamplesCS\BarcodeViewGettingStarted.cs region=SwissQRCodeValueStringBuilder}} 
{{source=..\SamplesVB\BarcodeViewGettingStarted.vb region=SwissQRCodeValueStringBuilder}}

````C#
Telerik.Barcode.SwissQRCodeValueStringBuilder qrCodeValue = new Telerik.Barcode.SwissQRCodeValueStringBuilder(
    new Telerik.Barcode.Iban("CH4431999123000889012", Telerik.Barcode.IbanType.QRIBAN),
    Telerik.Barcode.SwissQRCodeCurrency.EUR,
    new Telerik.Barcode.Contact("Max Muster &amp; Söhne",
    new Telerik.Barcode.StructuredAddress("CH", "8000", "Seldwyla", "Musterstrasse", "123")),
    new Telerik.Barcode.Reference(Telerik.Barcode.ReferenceType.QRR, "210000000003139471430009017"),
    new Telerik.Barcode.AdditionalInformation("Order from 15.03.2021", "//S1/10/1234/11/201021/30/102673386/32/7.7/40/0:30"),
    new Telerik.Barcode.Contact("Simon Muster", new Telerik.Barcode.StructuredAddress("CH", "8000", "Seldwyla", "Musterstrasse", "1")),
    (decimal)1949.75,
    new Telerik.Barcode.AlternativeProcedure("Name AV1: UV;UltraPay005;12345", "Name AV2: XY;XYService;54321"));
   

````
````VB.NET

Dim qrCodeValue As Telerik.Barcode.SwissQRCodeValueStringBuilder = New Telerik.Barcode.SwissQRCodeValueStringBuilder(
    New Telerik.Barcode.Iban("CH4431999123000889012", Telerik.Barcode.IbanType.QRIBAN),
    Telerik.Barcode.SwissQRCodeCurrency.EUR,
    New Telerik.Barcode.Contact("Max Muster &amp; Söhne",
                                New Telerik.Barcode.StructuredAddress("CH", "8000", "Seldwyla", "Musterstrasse", "123")),
    New Telerik.Barcode.Reference(Telerik.Barcode.ReferenceType.QRR, "210000000003139471430009017"),
    New Telerik.Barcode.AdditionalInformation("Order from 15.03.2021", "//S1/10/1234/11/201021/30/102673386/32/7.7/40/0:30"),
    New Telerik.Barcode.Contact("Simon Muster",
                                New Telerik.Barcode.StructuredAddress("CH", "8000", "Seldwyla", "Musterstrasse", "1")), CDec(1949.75),
                                       New Telerik.Barcode.AlternativeProcedure("Name AV1: UV;UltraPay005;12345", "Name AV2: XY;XYService;54321"))


```` 
{{endregion}}

Once you've set up the **SwissQRCodeValueStringBuilder** you can call its **Validate** method which validates all its fields and the relations between them. The method returns a string which contains the accumulated errors. If there are no errors - **null** is returned. In this case, you can call the **BuildValue** method of the string builder which will build the string value to be provided to the **RadBarcodeView**.

#### Example 3: Validate and build barcode value

{{source=..\SamplesCS\BarcodeViewGettingStarted.cs region=ValidateSwissQR}} 
{{source=..\SamplesVB\BarcodeViewGettingStarted.vb region=ValidateSwissQR}}

````C#

 string errors = qrCodeValue.Validate();

if (string.IsNullOrEmpty(errors))
{
    this.radBarcodeView1.Value = qrCodeValue.BuildValue();
}
  

````
````VB.NET

Dim errors As String = qrCodeValue.Validate()

If String.IsNullOrEmpty(errors) Then
    Me.radBarcodeView1.Value = qrCodeValue.BuildValue()
End If


```` 
{{endregion}}

Invoking the code from **Example 3** will generate the following result:

![winforms-2d-barcodes-swissqrcode-overview 002](images/winforms-2d-barcodes-swissqrcode-overview002.png)

 