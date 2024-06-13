---
title: NotSupportedException “Startxref keyword cannot be found” when loading pdf file in RadPdfViewer for WinForms
description: NotSupportedException “Startxref keyword cannot be found” when loading pdf file in RadPdfViewer for WinForms. Check it now!
type: how-to
page_title: NotSupportedException “Startxref keyword cannot be found” when loading pdf file in RadPdfViewer for WinForms
slug: notsupportedexception-startxref-keyword-cannot-be-found
tags: pdfviewer, startxref, notsupportedexception
res_type: kb
---

|Product Version|Product|Author|Last modified|
|----|----|----|----|
|Q1 2015|RadPdfViewer for WinForms|Stefan Stefanov|May 07, 2015|

## PROBLEM
    
A NotSupportedException (with message *“Startxref keyword cannot be found”*) is thrown, when attempting to load a pdf file in RadPdfViewer.  
   
## SOLUTION  

The reason for the observed behavior is an invalid pdf file according to the pdf specification. Such files contain empty bytes after the %%EOF marker.

![NotSupportedException “Startxref keyword cannot be found” when loading pdf file in RadPdfViewer for WinForms](images/notsupportedexception-startxref-keyword-cannot-be-found001.png)  
   
 
By specification within the last 1024 bytes of the pdf file the %%EOF marker should be found and when we attempt to look for it, we can’t locate it because of these empty bytes, which should not be in the document at first place. Here is a quote from the adobe pdf specs:

  
***3.4.4, “File Trailer”***
 
*18.Acrobat viewers require only that the %%EOF marker appear somewhere within the last 1024 bytes of the file.*
 
The solution is to trim those empty bytes and continue with the document loading.
 
````C#
byte[] bytes = File.ReadAllBytes(@"C:\myfile.pdf");
int eofPos = -1;
for (int i = bytes.Length - 1; i >= 0; i--)
{
    if (bytes[i] != 0)
    {
        eofPos = i;
        break;
    }
}
 
byte[] newBytes = new byte[eofPos + 1];
Array.Copy(bytes, newBytes, eofPos + 1);
 
MemoryStream ms = new MemoryStream(newBytes);
radPdfViewer1.LoadDocument(ms);

````
````VB.NET
Dim bytes As Byte() = File.ReadAllBytes("C:\myfile.pdf")
Dim eofPos As Integer = -1

For i As Integer = bytes.Length - 1 To 0

    If bytes(i) <> 0 Then
        eofPos = i
        Exit For
        End If
    Next

Dim newBytes As Byte() = New Byte(eofPos + 1 - 1) {}
Array.Copy(bytes, newBytes, eofPos + 1)
Dim ms As MemoryStream = New MemoryStream(newBytes)
radPdfViewer1.LoadDocument(ms)

````
 


