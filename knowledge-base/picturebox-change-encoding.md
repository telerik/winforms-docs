---
title: How to change the encoding configuration of a SVG file from UTF-16 to UTF-8
description: This article shows how to change the encoding configuration of a SVG file from UTF-16 to UTF-8
type: how-to
page_title: Manually change the encoding configuration of a SVG file from UTF-16 to UTF-8
slug: picturebox-change-encoding
position: 0
tags: picturebox, svg, encoding, byte,mark ,unicode ,utf-16,utf-8
res_type: kb
---

## Environment
|Product Version|Product|Author|
|----|----|----|
|2022.2.622|PictureBox for WinForms|[Dinko Krastev](https://www.telerik.com/blogs/author/dinko-krastev)|


## Description

When trying to show an SVG XML file inside the RadPictureBox control, while this file is encoded with the UTF-16 algorithm, an error will be thrown. The RadPictureBox internal reader will throw __System.Xml.XmlException: 'There is no Unicode byte order mark. Cannot switch to Unicode.'__. 

## Solution

To make this work we need to change the encoding attribute in the SVG XML file at the top. You can try to manually open the file in an editor and change the encoding attribute to __utf-8__ or use custom code.

````C#

public RadForm1()
{
    InitializeComponent();

    string path = @"..//..//Document.svg";
    string path_new = @"..//..//Document_new.svg";
         
    Encoding utf8 = new UTF8Encoding(false);
    Encoding ansi = Encoding.GetEncoding(1252);
    string xml = File.ReadAllText(path, ansi);
            
    XDocument xmlDoc = XDocument.Parse(xml);
    File.WriteAllText(
        path_new,
        @"<?xml version=""1.0"" encoding=""utf-8""?>" + xmlDoc.ToString(),
        utf8
    );
    this.radPictureBox1.SvgImage = RadSvgImage.FromFile(path);
}

````
````VB.NET

Public Sub New()
    InitializeComponent()
    Dim path As String = "..//..//Document.svg"
    Dim path_new As String = "..//..//Document_new.svg"
    Dim utf8 As Encoding = New UTF8Encoding(False)
    Dim ansi As Encoding = Encoding.GetEncoding(1252)
    Dim xml As String = File.ReadAllText(path, ansi)
    Dim xmlDoc As XDocument = XDocument.Parse(xml)
    File.WriteAllText(path_new, "<?xml version=""1.0"" encoding=""utf-8""?>" & xmlDoc.ToString(), utf8)
    Me.radPictureBox1.SvgImage = RadSvgImage.FromFile(path)
End Sub
 
 
````


