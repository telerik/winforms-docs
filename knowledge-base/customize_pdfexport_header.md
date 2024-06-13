---
title: Create custom header when exporting RadGridView to PDF
description: Create custom header when exporting RadGridView to PDF
type: how-to
page_title: Create custom header when exporting RadGridView to PDF
slug:  customize-pdf-export-header
position: 0
tags: gridview, PDF, Header, Export
res_type: kb
---

 
|Product Version|Product|Author|
|----|----|----|
|2019.2.618|RadGridView for WinForms|[Dimitar Karamfilov]|

## Problem
 
You want to have multiline text when exporting RadGridView to PDF. By default the header supports only one line. 

## Solution

Create a custom exporter and override the __DrawHeader__ method. This way you can manually paint in the header area. 

````C#
public class CustomGridViewPdfExport : GridViewPdfExport
{
    public CustomGridViewPdfExport(Telerik.WinControls.UI.RadGridView radGridView) : base(radGridView)
    {
    }
 
    protected override void DrawHeader()
    {
        System.Reflection.FieldInfo fi = typeof(GridViewPdfExport).GetField("editor", System.Reflection.BindingFlags.NonPublic | System.Reflection.BindingFlags.Instance);
        PdfEditor editor = fi.GetValue(this) as PdfEditor;
 
        if (!this.ShowHeaderAndFooter)
        {
            return;
        }
 
        editor.SavePosition();
        editor.CreateMatrixPosition();
        editor.TranslatePosition(this.PageMargins.Left, this.PageMargins.Top);
        editor.SaveProperties();
 
        //specify the font for the first line
        this.HeaderFont = new System.Drawing.Font("Arial", 14f, FontStyle.Italic);
        editor.SetTextFontSize(this.HeaderFont.Size);
        editor.TrySetFont(this.HeaderFont.Name, this.HeaderFont.Style);
        //draw the first line
        editor.DrawText("First");
 
        editor.TranslatePosition(this.PageMargins.Left - 20, this.PageMargins.Top);
        //specify the font for the second line
        this.HeaderFont = new System.Drawing.Font("Verdana", 10f, FontStyle.Bold);
        editor.SetTextFontSize(this.HeaderFont.Size);
        editor.TrySetFont(this.HeaderFont.Name, this.HeaderFont.Style);
        //draw the second line
        editor.DrawText("Second");
 
        editor.RestoreProperties();
        editor.RestorePosition();
    }
}

````
````VB
Public Class CustomGridViewPdfExport
	Inherits GridViewPdfExport

	Public Sub New(ByVal radGridView As Telerik.WinControls.UI.RadGridView)
		MyBase.New(radGridView)
	End Sub

	Protected Overrides Sub DrawHeader()
		Dim fi As System.Reflection.FieldInfo = GetType(GridViewPdfExport).GetField("editor", System.Reflection.BindingFlags.NonPublic Or System.Reflection.BindingFlags.Instance)
		Dim editor As PdfEditor = TryCast(fi.GetValue(Me), PdfEditor)

		If Not Me.ShowHeaderAndFooter Then
			Return
		End If

		editor.SavePosition()
		editor.CreateMatrixPosition()
		editor.TranslatePosition(Me.PageMargins.Left, Me.PageMargins.Top)
		editor.SaveProperties()

		'specify the font for the first line
		Me.HeaderFont = New System.Drawing.Font("Arial", 14F, FontStyle.Italic)
		editor.SetTextFontSize(Me.HeaderFont.Size)
		editor.TrySetFont(Me.HeaderFont.Name, Me.HeaderFont.Style)
		'draw the first line
		editor.DrawText("First")

		editor.TranslatePosition(Me.PageMargins.Left - 20, Me.PageMargins.Top)
		'specify the font for the second line
		Me.HeaderFont = New System.Drawing.Font("Verdana", 10F, FontStyle.Bold)
		editor.SetTextFontSize(Me.HeaderFont.Size)
		editor.TrySetFont(Me.HeaderFont.Name, Me.HeaderFont.Style)
		'draw the second line
		editor.DrawText("Second")

		editor.RestoreProperties()
		editor.RestorePosition()
	End Sub
End Class
````


