---
title: ImagePrimitive
page_title: ImagePrimitive - Telerik Presentation Framework
description: Use the __ImagePrimitive__ class whenever you need to draw an image as part of a control.
slug: winforms/telerik-presentation-framework/primitives/imageprimitive
tags: imageprimitive
published: True
position: 7
previous_url: tpf-primitives-imageprimitive
---

# ImagePrimitive

Use the __ImagePrimitive__ class whenever you need to draw an image as part of rendering a control. The properties specific to displaying images are:

* __Image:__ A Windows Forms standard __Image__ object.

* __ImageKey:__ The key of an image in an __ImageList__ control.

* __ImageIndex:__ The index of an image in an __ImageList__ control.

* __ImageScaling:__ Either __None__ or __ScaleToFit__ controls whether the image should be scaled to fit the available space.
  
* __SvgImage:__ Gets or sets the SVG image.


>note The __ImageList__ property is introduced in the RadControl class.
>

The example below loads a series of images from a directory and creates an ImagePrimitive for each.

![tpf-primitives-imageprimitive 001](images/tpf-primitives-imageprimitive001.png)

#### Creating an ImagePrimitive

{{source=..\SamplesCS\TPF\Primitives\ImagePrimitive1\MyImagePrimitiveElement.cs region=myImagePrimitiveElement}} 
{{source=..\SamplesVB\TPF\Primitives\ImagePrimitive1\MyImagePrimitiveElement.vb region=myImagePrimitiveElement}} 

````C#
public class MyImagePrimitiveElement : RadElement
{
    protected override void CreateChildElements()
    {
        WrapLayoutPanel layoutPanel = new WrapLayoutPanel();
        layoutPanel.Orientation = System.Windows.Forms.Orientation.Horizontal;
        string myPicturesPath = @"C:\Users\Public\Pictures\Sample Pictures";
        string[] files = Directory.GetFiles(myPicturesPath, "*.jpg");
        foreach (string path in files)
        {
            StackLayoutPanel panel = new StackLayoutPanel();
            panel.Orientation = System.Windows.Forms.Orientation.Vertical;
            panel.Margin = new System.Windows.Forms.Padding(3);
            ImagePrimitive imagePrimitive = new ImagePrimitive();
            imagePrimitive.Image = Image.FromFile(path).GetThumbnailImage(110, 85, null, IntPtr.Zero);
            imagePrimitive.MinSize = new Size(100, 85);
            panel.Children.Add(imagePrimitive);
            TextPrimitive textPrimitive = new TextPrimitive();
            textPrimitive.Font = new Font(textPrimitive.Font.FontFamily, 9.25f, FontStyle.Bold);
            textPrimitive.Text = Path.GetFileName(path);
            textPrimitive.ForeColor = Color.DarkGray;
            panel.Children.Add(textPrimitive);
            layoutPanel.Children.Add(panel);
        }
        this.Children.Add(layoutPanel);
        base.CreateChildElements();
    }
}

````
````VB.NET
Public Class MyImagePrimitiveElement
    Inherits RadElement
    Protected Overrides Sub CreateChildElements()
        Dim layoutPanel As New WrapLayoutPanel()
        layoutPanel.Orientation = System.Windows.Forms.Orientation.Horizontal
        Dim myPicturesPath As String = "C:\Users\Public\Pictures\Sample Pictures"
        Dim files() As String = Directory.GetFiles(myPicturesPath, "*.jpg")
        For Each path As String In files
            Dim panel As New StackLayoutPanel()
            panel.Orientation = System.Windows.Forms.Orientation.Vertical
            panel.Margin = New System.Windows.Forms.Padding(3)
            Dim imagePrimitive As New ImagePrimitive()
            imagePrimitive.Image = Image.FromFile(path).GetThumbnailImage(110, 85, Nothing, IntPtr.Zero)
            imagePrimitive.MinSize = New Size(100, 85)
            panel.Children.Add(imagePrimitive)
            Dim textPrimitive As New TextPrimitive()
            textPrimitive.Font = New Font(textPrimitive.Font.FontFamily, 9.25F, FontStyle.Bold)
            textPrimitive.Text = System.IO.Path.GetFileName(path)
            textPrimitive.ForeColor = Color.DarkGray
            panel.Children.Add(textPrimitive)
            layoutPanel.Children.Add(panel)
        Next path
        Me.Children.Add(layoutPanel)
        MyBase.CreateChildElements()
    End Sub
End Class

````

{{endregion}}

# See Also
* [ArrowPrimitive]({%slug winforms/telerik-presentation-framework/primitives/arrowprimitive%})

* [BorderPrimitive]({%slug winforms/telerik-presentation-framework/primitives/borderprimitive%})

* [CheckPrimitive]({%slug winforms/telerik-presentation-framework/primitives/checkprimitive%})

* [FillPrimitive]({%slug winforms/telerik-presentation-framework/primitives/fillprimitive%})

* [FocusPrimitive]({%slug winforms/telerik-presentation-framework/primitives/focusprimitive%})

* [GripPrimitive]({%slug winforms/telerik-presentation-framework/primitives/gripprimitive%})

* [ImageShape]({%slug winforms/telerik-presentation-framework/primitives/imageshape%})

* [LightVisualElement]({%slug winforms/telerik-presentation-framework/primitives/lightvisualelement%})
  
