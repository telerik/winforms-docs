---
title: Use a custom JPXDecode filter with RadPdfViewer
description: Use a custom JPXDecode filter with RadPdfViewer.. Check it now!
type: how-to
page_title: Use a custom JPXDecode filter with RadPdfViewer
slug: use-a-custom-jpxdecode-filter-with-radpdfviewer
res_type: kb
---


|Product Version|Product|Author|Last modified|
|----|----|----|----|
|2014_3_1104|RadPdfViewer for WinForms|Dimitar Karamfilov|December 25, 2014|

## Problem

Currently, RadPdfViewer does not support the **JPXDecode** filter and documents that uses this filter will display a blank pages.  
   
## Solution

Use a custom filter to view such documents. The following example uses the [OpenJPEG](https://code.google.com/p/openjpeg/) library to convert the images that are using this particular filter. To use this library with RadPdfViewer you should create a custom class that implements the **IPdfFilter** interface. Then you can perform the conversion in the **Decode** method:
   
````C#
class JpxFilterCodec : IPdfFilter
{
    private readonly string OpenJpegPath = @"..\..\openjpeg-2.1.0-win32-x86\bin\opj_decompress";
 
    public byte[] Encode(PdfObject encodedObject, byte[] inputData)
    {
        throw new NotImplementedException();
    }
 
    public byte[] Decode(PdfObject decodedObject, byte[] inputData, DecodeParameters decodeParameters)
    {
        string filename = Guid.NewGuid().ToString();
 
        File.WriteAllBytes(filename + ".j2k", inputData);
        ProcessStartInfo processInfo = new ProcessStartInfo(OpenJpegPath, " -i " + filename + ".j2k -o " + filename + ".bmp");
        processInfo.WorkingDirectory = Directory.GetCurrentDirectory();
        processInfo.WindowStyle = ProcessWindowStyle.Hidden;
        processInfo.CreateNoWindow = true;
        var process = Process.Start(processInfo);
        process.WaitForExit();
        System.Drawing.Bitmap bitmap = System.Drawing.Image.FromFile(filename + ".bmp") as Bitmap;
        if (bitmap == null)
        {
            return new byte[0];
        }
 
        BitmapData bitmapData = bitmap.LockBits(new Rectangle(Point.Empty, bitmap.Size), ImageLockMode.ReadOnly, bitmap.PixelFormat);
 
        int length = bitmapData.Stride * bitmapData.Height;
        int stride = bitmapData.Stride;
        byte[] bytes = new byte[length];
 
        System.Runtime.InteropServices.Marshal.Copy(bitmapData.Scan0, bytes, 0, length);
        bitmap.UnlockBits(bitmapData);
 
        byte[] bytePixels = new byte[bitmapData.Width * bitmapData.Height * 3];
 
        int resLength = bytePixels.Length;
        for (int i = 0; i < resLength; i++)
        {
            int row = i / (bitmapData.Width * 3);
            int col = i % (bitmapData.Width * 3);
            bytePixels[i] = bytes[row * stride + col];
        }
 
        bitmap.Dispose();
        File.Delete(filename + ".j2k");
        File.Delete(filename + ".bmp");
 
        return bytePixels;
    }
 
    public string Name
    {
        get { return "JPXDecode"; }
    }
}

````
````VB.NET
Friend Class JpxFilterCodec
    Implements IPdfFilter
 
    Private ReadOnly OpenJpegPath As String = "..\..\openjpeg-2.1.0-win32-x86\bin\opj_decompress"
 
    Public Function Encode(ByVal encodedObject As PdfObject, ByVal inputData() As Byte) As Byte() Implements IPdfFilter.Encode
        Throw New NotImplementedException()
    End Function
 
    Public Function Decode(ByVal decodedObject As PdfObject, ByVal inputData() As Byte, ByVal decodeParameters As DecodeParameters) As Byte() Implements IPdfFilter.Decode
        Dim filename As String = Guid.NewGuid().ToString()
 
        File.WriteAllBytes(filename & ".j2k", inputData)
        Dim processInfo As New ProcessStartInfo(OpenJpegPath, " -i " & filename & ".j2k -o " & filename & ".bmp")
        processInfo.WorkingDirectory = Directory.GetCurrentDirectory()
        processInfo.WindowStyle = ProcessWindowStyle.Hidden
        processInfo.CreateNoWindow = True
        Dim process = System.Diagnostics.Process.Start(processInfo)
        process.WaitForExit()
        Dim bitmap As System.Drawing.Bitmap = TryCast(System.Drawing.Image.FromFile(filename & ".bmp"), Bitmap)
        If bitmap Is Nothing Then
            Return New Byte(){}
        End If
 
        Dim bitmapData As BitmapData = bitmap.LockBits(New Rectangle(Point.Empty, bitmap.Size), ImageLockMode.ReadOnly, bitmap.PixelFormat)
 
        Dim length As Integer = bitmapData.Stride * bitmapData.Height
        Dim stride As Integer = bitmapData.Stride
        Dim bytes(length - 1) As Byte
 
        System.Runtime.InteropServices.Marshal.Copy(bitmapData.Scan0, bytes, 0, length)
        bitmap.UnlockBits(bitmapData)
 
        Dim bytePixels((bitmapData.Width * bitmapData.Height * 3) - 1) As Byte
 
        Dim resLength As Integer = bytePixels.Length
        For i As Integer = 0 To resLength - 1
            Dim row As Integer = i \ (bitmapData.Width * 3)
            Dim col As Integer = i Mod (bitmapData.Width * 3)
            bytePixels(i) = bytes(row * stride + col)
        Next i
 
        bitmap.Dispose()
        File.Delete(filename & ".j2k")
        File.Delete(filename & ".bmp")
 
        Return bytePixels
    End Function
 
    Public ReadOnly Property Name() As String Implements IPdfFilter.Name
        Get
            Return "JPXDecode"
        End Get
    End Property
End Class

````


Currently, you can use the above class by calling the RegisterFilter method with reflection:

````C#
Telerik.Windows.Pdf.Documents.Fixed.FormatProviders.Old.Pdf.Filters.FiltersManager.RegisterFilter(new JpxFilterCodec());

````
````VB.NET
Telerik.Windows.Pdf.Documents.Fixed.FormatProviders.Old.Pdf.Filters.FiltersManager.RegisterFilter(New JpxFilterCodec())

````

>note You can download a VB and C# project from the following [link](https://github.com/telerik/winforms-sdk/tree/master/PdfViewer/CustomDecoder).
