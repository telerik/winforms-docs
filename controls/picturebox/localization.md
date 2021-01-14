---
title: Localization
page_title: Localization
description: Localization
slug: radpicturebox-localization
tags: localization
published: True
position: 8
---

# Localization

To localize **RadPictureBox** to display control text and messages in a specific language:

* All required classes for localization are defined in **Telerik.WinControls.UI.Localization** namespace.

* Start by creating a descendant of the **RadPictureBoxLocalizationProvider** class.

Override the **GetLocalizedString(string id)** method and provide a translation for the label and user messages. If a translation is not provided, the default value will be returned. This behavior is guaranteed by the call of the base **GetLocalizedString** method in the default clause of the switch statement in the example.

Below is a sample implementation of an English localization provider:

{{source=..\SamplesCS\PictureBox\PictureBoxLocalizationProvider.cs region=LocalizationProvider}} 
{{source=..\SamplesVB\PictureBox\PictureBoxLocalizationProvider.vb region=LocalizationProvider}}

````C#
public class EnglishPictureBoxLocalizationProvider : RadPictureBoxLocalizationProvider
{

    public override string GetLocalizedString(string id)
    {
        switch (id)
        {
            case RadPictureBoxStringId.NoPictureText: return "No image";
            case RadPictureBoxStringId.CutMenuItem: return "Cut";
            case RadPictureBoxStringId.CopyMenuItem: return "Copy";
            case RadPictureBoxStringId.PasteMenuItem: return "Paste";
            case RadPictureBoxStringId.OpenMenuItem: return "Open";
            case RadPictureBoxStringId.SaveMenuItem: return "Save";
            case RadPictureBoxStringId.RemoveMenuItem: return "Remove";
            case RadPictureBoxStringId.EditMenuItem: return "Edit image";
            case RadPictureBoxStringId.DefaultImageSaveName: return "Image";
            case RadPictureBoxStringId.ErrorLoadingImageCaption: return "Error loading image";
            case RadPictureBoxStringId.ErrorLoadingImageText: return "Could not load the image.";
            case RadPictureBoxStringId.ErrorSavingImageCaption: return "Error saving image";
            case RadPictureBoxStringId.ErrorSavingImageText: return "Could not save the image.";
            case RadPictureBoxStringId.ImageEditorDialogHeader: return "Image Editor Dialog";
            case RadPictureBoxStringId.ImageEditorDialogOkButton: return "OK";
            case RadPictureBoxStringId.ImageEditorDialogCancelButton: return "Cancel";
            case RadPictureBoxStringId.EditSvgDialogImageCaption: return "Warning - Cannot edit SVG";
            case RadPictureBoxStringId.EditSvgDialogImageText: return "RadPictureBox cannot edit SVG images.\r\nWould you like to convert the SVG to a raster image and start editing?";

            default: return string.Empty;
        }
    }
}

````
````VB.NET
Public Class EnglishPictureBoxLocalizationProvider
    Inherits RadPictureBoxLocalizationProvider

    Public Overrides Function GetLocalizedString(ByVal id As String) As String
        Select Case id
            Case RadPictureBoxStringId.NoPictureText
                Return "No image"
            Case RadPictureBoxStringId.CutMenuItem
                Return "Cut"
            Case RadPictureBoxStringId.CopyMenuItem
                Return "Copy"
            Case RadPictureBoxStringId.PasteMenuItem
                Return "Paste"
            Case RadPictureBoxStringId.OpenMenuItem
                Return "Open"
            Case RadPictureBoxStringId.SaveMenuItem
                Return "Save"
            Case RadPictureBoxStringId.RemoveMenuItem
                Return "Remove"
            Case RadPictureBoxStringId.EditMenuItem
                Return "Edit image"
            Case RadPictureBoxStringId.DefaultImageSaveName
                Return "Image"
            Case RadPictureBoxStringId.ErrorLoadingImageCaption
                Return "Error loading image"
            Case RadPictureBoxStringId.ErrorLoadingImageText
                Return "Could not load the image."
            Case RadPictureBoxStringId.ErrorSavingImageCaption
                Return "Error saving image"
            Case RadPictureBoxStringId.ErrorSavingImageText
                Return "Could not save the image."
            Case RadPictureBoxStringId.ImageEditorDialogHeader
                Return "Image Editor Dialog"
            Case RadPictureBoxStringId.ImageEditorDialogOkButton
                Return "OK"
            Case RadPictureBoxStringId.ImageEditorDialogCancelButton
                Return "Cancel"
            Case RadPictureBoxStringId.EditSvgDialogImageCaption
                Return "Warning - Cannot edit SVG"
            Case RadPictureBoxStringId.EditSvgDialogImageText
                Return "RadPictureBox cannot edit SVG images." & vbCrLf & "Would you like to convert the SVG to a raster image and start editing?"
            Case Else
                Return String.Empty
        End Select
    End Function
End Class

````

{{endregion}}

To apply the custom localization provider, instantiate and assign it to the current localization provider:
### Assigning the Current Localization Provider

{{source=..\SamplesCS\PictureBox\PictureBoxLocalizationProvider.cs region=AssignLocalizationProvider}} 
{{source=..\SamplesVB\PictureBox\PictureBoxLocalizationProvider.vb region=AssignLocalizationProvider}} 

````C#
RadPictureBoxLocalizationProvider.CurrentProvider = new EnglishPictureBoxLocalizationProvider();

````
````VB.NET
RadPictureBoxLocalizationProvider.CurrentProvider = new EnglishPictureBoxLocalizationProvider()

````

{{endregion}}

