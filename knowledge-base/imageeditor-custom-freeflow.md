---
title: How to create custom FreeFlow shape
description: This article shows how to create custom FreeFlow shape using GraphicsPath object
type: how-to
page_title:  How to Create Custom FreeFlow shape using GraphicsPath Object
slug: imageeditor-custom-freeflow
position: 29
tags: imageeditor, freeflow, graphicspath,custom,drawshape
res_type: kb
---

## Environment
|Product Version|Product|Author|
|----|----|----|
|2022.2.622|ImageEditor for WinForms|[Dinko Krastev](https://www.telerik.com/blogs/author/dinko-krastev)|


## Description

An example demonstrating how to create custom __FreeFlow__ shape using [__GraphicsPath__](https://docs.microsoft.com/en-us/dotnet/api/system.drawing.drawing2d.graphicspath?view=netframework-4.5) object. 

![imageeditor-custom-freeflow 001](images/imageeditor-custom-freeflow.png)

#### Sample Implementation


````C#

	public RadForm1()
	{
		InitializeComponent();
		this.radImageEditor1.LoadAsync("../../London_01.jpg");
		this.radImageEditor1.ImageLoaded += radImageEditor1_ImageLoaded;
	}
	private void radButton1_Click(object sender, EventArgs e)
	{
		GraphicsPath path = new GraphicsPath();
		path.AddLine(20, 20, 200, 20);
		path.AddLine(20, 20, 20, 200);
		path.AddEllipse(new Rectangle(30, 30, 40, 40));
		radImageEditor1.ImageEditorElement.DrawShape(path, Color.Red, Color.Green, 3);
		radImageEditor1.ImageEditorElement.SaveState();
	}
	

````
````VB.NET

	Class SurroundingClass
    Public Sub New()
        InitializeComponent()
        Me.radImageEditor1.LoadAsync("../../London_01.jpg")
        AddHandler Me.radImageEditor1.ImageLoaded, AddressOf radImageEditor1_ImageLoaded
    End Sub

    Private Sub radButton1_Click(ByVal sender As Object, ByVal e As EventArgs)
        Dim path As GraphicsPath = New GraphicsPath()
        path.AddLine(20, 20, 200, 20)
        path.AddLine(20, 20, 20, 200)
        path.AddEllipse(New Rectangle(30, 30, 40, 40))
        radImageEditor1.ImageEditorElement.DrawShape(path, Color.Red, Color.Green, 3)
        radImageEditor1.ImageEditorElement.SaveState()
    End Sub
End Class


````



## See Also

[Understanding and Using Graphics Paths in GDI+](https://www.c-sharpcorner.com/UploadFile/mahesh/understanding-and-using-graphics-paths-in-gdi/)
