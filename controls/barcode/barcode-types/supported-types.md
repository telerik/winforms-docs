---
title: Supported Types
page_title: Supported Types | Barcode
description: RadBarcode is a set of components that can be used to create, show and read barcodes. 
slug: winforms/barcode/barcode-types/supported-types 
tags: barcode, types
published: True
position: 0 
---

# Supported Types

There are two types of barcodes according to their dimensions:

## Linear (1D) barcodes

The linear (one dimensional) barcodes are made up of lines and spaces of various widths that create specific patterns. Currently, **RadBarcode** supports the following one dimensional barcode types:

|Barcode|Description|
|----|----|
|**Codabar**|(aka Ames Code/USD-4/NW-7/2 of 7 Code): Used in libraries and blood banks|
|**Code 11**|(USD-8): Used to identify telecommunications equipment|
|**Code 25 Standard**|Used in airline ticket marking, photofinishing|
|**Code 25 Interleaved**|Used in warehouse, industrial applications|
|**Code 39**|(aka USD-3, 3 of 9): U.S. Government and military use, required for DoD applications|
|**Code 39 Extended**|(aka USD-3, 3 of 9): U.S. Government and military use, required for DoD applications, supports full ASCII|
|**Code 93**|(aka USS-93): Compressed form of Code 39|
|**Code 93 Extended**|(aka USS-93): Compressed form of Code 39, supports full ASCII|
|**Code 128**|Very dense code, used extensively worldwide|
|**Code 128 A**|Subset of Code 128  *(more info in 1D Barcodes)|
|**Code 128 B**|Subset of Code 128  *(more info in 1D Barcodes)|
|**Code 128 C**|Subset of Code 128  *(more info in 1D Barcodes)|
|**MSI**|Variation of Plessey code, with similar applications|
|**EAN 8**|Short version of EAN-13, 8 characters|
|**EAN 13**|Used with consumer products internationally, 13 characters|
|**GS1-128**|Formerly known as UCC-128 and EAN-128. Used to encode shipping/product information  *(more info in 1D Barcodes)|
|**Postnet**|Printed by U.S. Post Office on envelopes|
|**Planet** |The Postal Alpha Numeric Encoding Technique (PLANET) barcode was used by the United States Postal Service to identify and track pieces of mail during delivery - the Post Office's "CONFIRM" services. It was fully superseded by Intelligent Mail Barcode by January 28, 2013.|
|**Intelligent Mail**|The Intelligent Mail Barcode (IM barcode) is a 65-bar barcode for use on mail in the United States. The IM barcode is intended to provide greater information and functionality than its predecessors POSTNET and PLANET.|
|**UPC A**|Used with consumer products in U.S., 12 characters|
|**UPC E**|Short version of UPC symbol, 6 characters|
|**UPC Supplement 2**|Used to indicate magazines and newspaper issue numbers|
|**UPC Supplement 5**|Used to mark suggested retail price of books|

## Matrix (2D) barcodes

The matrix code is a two-dimensional way for representing information. It can also be referred to as a 2D barcode or simply a 2D code. It is similar to the linear (one dimensional) barcode, but can represent more data per unit area.

Currently, **RadBarcode** supports *DataMatrix*, *QR Code* and *PDF417* matrix barcode types.
