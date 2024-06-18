---
title: How to add image icons to RadAutoCompleteBox
description: This article shows how you can add image icons to RadAutoCompleteBox
type: how-to
page_title: How to add image icons to RadAutoCompleteBox
slug: autocompletebox-with-icons  
position: 0
tags: editors, autocompletebox, image, icon
res_type: kb
---

## Environment
 
|Product Version|Product|Author|
|----|----|----|
|2019.2.618|RadAutoCompleteBox for WinForms|[Desislava Yordanova](https://www.telerik.com/blogs/author/desislava-yordanova)|
 

## Description

**RadAutoCompleteBox** allows the end-user to easily fill-in text thanks to the auto-complete functionality and tokens of text. This behavior is similar to the "To" field of Outlook and Facebook where you are filling-in the recipients to which you are going to send a message.

A common requirement is to add an image next to text in the editable part and autocomplete popup. 
 
![autocompletebox-with-icons ](images/autocompletebox-with-icons.png)

The following solution will demonstrate how to use the Northwind.Customers table and show the contact's image next to the name. 

## Solution 
 
The easiest way to insert an image next to text in each token is to create a custom **TokenizedTextBlockElement** and add an **ImagePritimive** to it. You can assign images to the popup's items as well. For this purpose, it is necessary to subscribe to the RadAutoCompleteBox.ListElement.**VisualItemFormatting** event and set the image to the VisualItemFormattingEventArgs.VisualItem.**Image** property. You can find below a sample solution which result is illustrated in the above screenshot:

#### Add image icons to RadAutoCompleteBox

````C#
     
        Size imageSize = new Size(18, 18);

        private void RadForm1_Load(object sender, EventArgs e)
        {
            this.customersTableAdapter.Fill(this.nwindDataSet.Customers);

            this.radAutoCompleteBox1.CreateTextBlock += radAutoCompleteBox1_CreateTextBlock;
            this.radAutoCompleteBox1.TextBlockFormatting += radAutoCompleteBox1_TextBlockFormatting;
            this.radAutoCompleteBox1.ListElement.VisualItemFormatting += ListElement_VisualItemFormatting;
            this.radAutoCompleteBox1.ListElement.ItemHeight = imageSize.Height;

            this.radAutoCompleteBox1.AutoCompleteDataSource = this.customersBindingSource;
            this.radAutoCompleteBox1.AutoCompleteDisplayMember = "ContactName";
            this.radAutoCompleteBox1.AutoCompleteValueMember = "Photo";
        }

        private void radAutoCompleteBox1_TextBlockFormatting(object sender, TextBlockFormattingEventArgs e)
        {
            ImageTokenizedTextBlockElement imageToken = e.TextBlock as ImageTokenizedTextBlockElement;
            if (imageToken != null)
            {
                using (var ms = new MemoryStream(imageToken.Item.Value as byte[]))
                { 
                    imageToken.Image.Image = ResizeImage(Image.FromStream(ms), imageSize); 
                }
            }
        }
        
        private void radAutoCompleteBox1_CreateTextBlock(object sender, CreateTextBlockEventArgs e)
        {
            if (e.TextBlock is TokenizedTextBlockElement)
            {
                e.TextBlock = new ImageTokenizedTextBlockElement();
            }
        }

        //add an image to each contact in the autocomplete popup
        private void ListElement_VisualItemFormatting(object sender, VisualItemFormattingEventArgs args)
        {
            if (args.VisualItem.Data.Tag == null)
            {
                using (var ms = new MemoryStream(args.VisualItem.Data.Value as byte[]))
                {
                    args.VisualItem.Data.Tag = ResizeImage(Image.FromStream(ms), imageSize);
                }
            }
            args.VisualItem.Image = (Image)args.VisualItem.Data.Tag;
        }

        public static Bitmap ResizeImage(Image image, Size s)
        {
            int width = s.Width;
            int height = s.Height;
            var destRect = new Rectangle(0, 0, width, height);
            var destImage = new Bitmap(width, height);

            destImage.SetResolution(image.HorizontalResolution, image.VerticalResolution);

            using (var graphics = Graphics.FromImage(destImage))
            {
                graphics.CompositingMode = CompositingMode.SourceCopy;
                graphics.CompositingQuality = CompositingQuality.HighQuality;
                graphics.InterpolationMode = InterpolationMode.HighQualityBicubic;
                graphics.SmoothingMode = SmoothingMode.HighQuality;
                graphics.PixelOffsetMode = PixelOffsetMode.HighQuality;

                using (var wrapMode = new ImageAttributes())
                {
                    wrapMode.SetWrapMode(WrapMode.TileFlipXY);
                    graphics.DrawImage(image, destRect, 0, 0, image.Width, image.Height, GraphicsUnit.Pixel, wrapMode);
                }
            }

            return destImage;
        }
       
````
````VB.NET
    	
     Private imageSize As Size = New Size(18, 18)
    Private Sub RadForm1_Load(sender As Object, e As EventArgs) Handles MyBase.Load

        Me.CustomersTableAdapter.Fill(Me.NwindDataSet.Customers)
        AddHandler Me.RadAutoCompleteBox1.CreateTextBlock, AddressOf radAutoCompleteBox1_CreateTextBlock
        AddHandler Me.RadAutoCompleteBox1.TextBlockFormatting, AddressOf radAutoCompleteBox1_TextBlockFormatting
        AddHandler Me.RadAutoCompleteBox1.ListElement.VisualItemFormatting, AddressOf ListElement_VisualItemFormatting
        Me.RadAutoCompleteBox1.ListElement.ItemHeight = imageSize.Height
        Me.RadAutoCompleteBox1.AutoCompleteDataSource = Me.CustomersBindingSource
        Me.RadAutoCompleteBox1.AutoCompleteDisplayMember = "ContactName"
        Me.RadAutoCompleteBox1.AutoCompleteValueMember = "Photo"
    End Sub

    Private Sub radAutoCompleteBox1_TextBlockFormatting(ByVal sender As Object, ByVal e As TextBlockFormattingEventArgs)
        Dim imageToken As ImageTokenizedTextBlockElement = TryCast(e.TextBlock, ImageTokenizedTextBlockElement)

        If imageToken IsNot Nothing Then

            Using ms = New MemoryStream(TryCast(imageToken.Item.Value, Byte()))
                imageToken.Image.Image = ResizeImage(Image.FromStream(ms), imageSize)
            End Using
        End If
    End Sub

    Private Sub radAutoCompleteBox1_CreateTextBlock(ByVal sender As Object, ByVal e As CreateTextBlockEventArgs)
        If TypeOf e.TextBlock Is TokenizedTextBlockElement Then
            e.TextBlock = New ImageTokenizedTextBlockElement()
        End If
    End Sub

    Private Sub ListElement_VisualItemFormatting(ByVal sender As Object, ByVal args As VisualItemFormattingEventArgs)
        If args.VisualItem.Data.Tag Is Nothing Then

            Using ms = New MemoryStream(TryCast(args.VisualItem.Data.Value, Byte()))
                args.VisualItem.Data.Tag = ResizeImage(Image.FromStream(ms), imageSize)
            End Using
        End If

        args.VisualItem.Image = CType(args.VisualItem.Data.Tag, Image)
    End Sub

    Public Shared Function ResizeImage(ByVal image As Image, ByVal s As Size) As Bitmap
        Dim width As Integer = s.Width
        Dim height As Integer = s.Height
        Dim destRect = New Rectangle(0, 0, width, height)
        Dim destImage = New Bitmap(width, height)
        destImage.SetResolution(image.HorizontalResolution, image.VerticalResolution)

        Using graphics As Graphics = graphics.FromImage(destImage)
            graphics.CompositingMode = CompositingMode.SourceCopy
            graphics.CompositingQuality = CompositingQuality.HighQuality
            graphics.InterpolationMode = InterpolationMode.HighQualityBicubic
            graphics.SmoothingMode = SmoothingMode.HighQuality
            graphics.PixelOffsetMode = PixelOffsetMode.HighQuality

            Using wrapMode As ImageAttributes = New ImageAttributes()
                wrapMode.SetWrapMode(Drawing2D.WrapMode.TileFlipXY)
                graphics.DrawImage(image, destRect, 0, 0, image.Width, image.Height, GraphicsUnit.Pixel, wrapMode)
            End Using
        End Using

        Return destImage
    End Function    

````

The custom [TokenizedTextBlockElement's]({%slug winforms/editors/autocompletebox/creating-custom-blocks%}) implementation is illustrated below: 

````C#
     
    public class ImageTokenizedTextBlockElement : TokenizedTextBlockElement
    {
        private ImagePrimitive image;

        public ImagePrimitive Image
        {
            get
            {
                return this.image;
            }
        }

        protected override void CreateChildElements()
        {
            base.CreateChildElements();
            this.image = new ImagePrimitive();
            this.image.ImageLayout = System.Windows.Forms.ImageLayout.Zoom;
            this.image.StretchVertically = false;
            this.image.StretchHorizontally = false;
            this.image.MaxSize = new Size(0, 20);
            this.Children.Insert(0, this.image);
        }

        protected override RadTokenizedTextItem CreateTokenizedTextItem(string text, object value)
        {
            RadTokenizedTextItem item = base.CreateTokenizedTextItem(text, value);
            return item;
        }

        protected override Type ThemeEffectiveType
        {
            get
            {
                return typeof(TokenizedTextBlockElement);
            }
        }
    }
       
````
````VB.NET

Public Class ImageTokenizedTextBlockElement
    Inherits TokenizedTextBlockElement

    Private _image As ImagePrimitive

    Public ReadOnly Property Image As ImagePrimitive
        Get
            Return Me._image
        End Get
    End Property

    Protected Overrides Sub CreateChildElements()
        MyBase.CreateChildElements()
        Me._image = New ImagePrimitive()
        Me._image.ImageLayout = System.Windows.Forms.ImageLayout.Zoom
        Me._image.StretchVertically = False
        Me._image.StretchHorizontally = False
        Me._image.MaxSize = New Size(0, 20)
        Me.Children.Insert(0, Me._image)
    End Sub

    Protected Overrides Function CreateTokenizedTextItem(ByVal text As String, ByVal value As Object) As RadTokenizedTextItem
        Dim item As RadTokenizedTextItem = MyBase.CreateTokenizedTextItem(text, value)
        Return item
    End Function

    Protected Overrides ReadOnly Property ThemeEffectiveType As Type
        Get
            Return GetType(TokenizedTextBlockElement)
        End Get
    End Property
End Class

````


    	
      



 

 