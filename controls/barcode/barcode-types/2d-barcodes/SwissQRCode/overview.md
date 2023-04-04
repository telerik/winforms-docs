---
title: Overview
page_title: Overview - WinForms Swiss QR Barcode Control
description: WinForms Swiss QR Barcode encodes all the information necessary for a payment in specific format and structure.  
slug: winforms-2d-barcodes-swissqrcode-overview 
tags: barcode, qrcode
published: True
position: 0 
---

# WinForms SwissQR Barcode Overview

The QR-bill makes issuing and paying invoices simpler, and is being introduced throughout Switzerland to modernize payment transactions. Its most striking feature is the Swiss QR code, which contains all the payment information in a digital format, which can be read using a smart phone or a slip scanner.

>caption Figure 1: A Swiss QR-bill

![WinForms RadBarcode A Swiss QR-bill](images/winforms-2d-barcodes-swissqrcode-overview001.png)

The Swiss QR Code encodes all the information necessary for a payment in specific format and structure. Along with the printed information, the Swiss QR Code forms the payment part of the QR-bill. The allowed currencies for payments are CHF and EUR. The QR-Bill also guarantees you compliance with the regulatory requirements arising from the revised Anti-Money Laundering Ordinance.

## Requirements

The Swiss QR Code symbol requires an error correction level "M", which means a redundancy or assurance of around 15%.

In addition, the measurements of the Swiss QR Code for printing must always be 46 x 46 mm (without surrounding quiet space) regardless of the Swiss QR Code version. Depending on the printer resolution, the Swiss QR Code produced might require size adjustments.

## Generating a Swiss Barcode

To generate a Swiss Barcode using Telerik UI for WinForms, you need to first set the **Symbology** of the barcode to **SwissQRCode**.

#### Example 1: Setting the SwissQRCode symbology

{{source=..\SamplesCS\Barcode\BarcodeSettings.cs region=SetSwissQRCode}} 
{{source=..\SamplesVB\Barcode\BarcodeSettings.vb region=SetSwissQRCode}}

````C#

SwissQRCode symbology = new SwissQRCode();
symbology.Module = 4;
symbology.SizingMode = Telerik.WinForms.UI.Barcode.SizingMode.Manual;
this.radBarcode1.Symbology = symbology;       

````
````VB.NET
Dim symbology As SwissQRCode = New SwissQRCode()
symbology.[Module] = 4
symbology.SizingMode = Telerik.WinForms.UI.Barcode.SizingMode.Manual
Me.radBarcode1.Symbology = symbology

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

{{source=..\SamplesCS\Barcode\BarcodeSettings.cs region=SwissQRCodeValueStringBuilder}} 
{{source=..\SamplesVB\Barcode\BarcodeSettings.vb region=SwissQRCodeValueStringBuilder}}

````C#
            Telerik.WinForms.UI.Barcode.SwissQRCodeValueStringBuilder qrCodeValue = new SwissQRCodeValueStringBuilder(
        new Iban("CH4431999123000889012", IbanType.QRIBAN),
        SwissQRCodeCurrency.EUR,
        new Contact("Max Muster &amp; Söhne",
        new StructuredAddress("CH", "8000", "Seldwyla", "Musterstrasse", "123")),
        new Reference(ReferenceType.QRR, "210000000003139471430009017"),
        new AdditionalInformation("Order from 15.03.2021", "//S1/10/1234/11/201021/30/102673386/32/7.7/40/0:30"),
        new Contact("Simon Muster", new StructuredAddress("CH", "8000", "Seldwyla", "Musterstrasse", "1")),
        (decimal)1949.75,
        new AlternativeProcedure("Name AV1: UV;UltraPay005;12345", "Name AV2: XY;XYService;54321"));
     

````
````VB.NET
        Dim qrCodeValue As Telerik.WinForms.UI.Barcode.SwissQRCodeValueStringBuilder = New SwissQRCodeValueStringBuilder(
            New Iban("CH4431999123000889012", IbanType.QRIBAN),
            SwissQRCodeCurrency.EUR,
            New Contact("Max Muster &amp; Söhne", New StructuredAddress("CH", "8000", "Seldwyla", "Musterstrasse", "123")),
            New Reference(ReferenceType.QRR, "210000000003139471430009017"),
            New AdditionalInformation("Order from 15.03.2021", "//S1/10/1234/11/201021/30/102673386/32/7.7/40/0:30"),
            New Contact("Simon Muster", New StructuredAddress("CH", "8000", "Seldwyla", "Musterstrasse", "1")),
            CDec(1949.75), New AlternativeProcedure("Name AV1: UV;UltraPay005;12345", "Name AV2: XY;XYService;54321"))

```` 
{{endregion}}

Once you've set up the **SwissQRCodeValueStringBuilder** you can call its **Validate** method which validates all its fields and the relations between them. The method returns a string which contains the accumulated errors. If there are no errors - **null** is returned. In this case, you can call the **BuildValue** method of the string builder which will build the string value to be provided to the **RadBarcode**.

#### Example 3: Validate and build barcode value

{{source=..\SamplesCS\Barcode\BarcodeSettings.cs region=ValidateSwissQR}} 
{{source=..\SamplesVB\Barcode\BarcodeSettings.vb region=ValidateSwissQR}}

````C#
            string errors = qrCodeValue.Validate();

            if (string.IsNullOrEmpty(errors))
            {
                this.radBarcode1.Value = qrCodeValue.BuildValue();
            }     

````
````VB.NET
        Dim errors As String = qrCodeValue.Validate()

        If String.IsNullOrEmpty(errors) Then
            Me.radBarcode1.Value = qrCodeValue.BuildValue()
        End If

```` 
{{endregion}}

Invoking the code from **Example 3** will generate the following result:

![WinForms RadBarcode A SwissQRCode Validate](images/winforms-2d-barcodes-swissqrcode-overview002.png)

 
