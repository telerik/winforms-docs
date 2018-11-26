---
title: Localization
page_title: Localization
description: Localization
slug: radimageeditor-localization
tags: localization
published: True
position: 8
---

# Localization

To localize __RadImageEditor__ to display control text and messages in a specific language:

*  All required classes for localization are defined in __Telerik.WinControls.UI.Localization__ namespace.

*  Start by creating a descendant of the __ImageEditorLocalizationProvider__ class.

*  Override the __GetLocalizedString(string id)__ method and provide a translation for the label and user messages. If a translation is not provided, the default value will be returned. This behavior is guaranteed by the call of the base __GetLocalizedString__ method in the __default__ clause of the __switch__ statement in the example.

Below is a sample implementation of an English localization provider:

#### Localizing RadImageEditor Strings

{{source=..\SamplesCS\ImageEditor\ImageEditorLocalization.cs region=MyLocalizationProvider}} 
{{source=..\SamplesVB\ImageEditor\ImageEditorLocalization.vb region=MyLocalizationProvider}}
````C#
public class MyImageEditorLocalizationProvider : ImageEditorLocalizationProvider
{
    public override string GetLocalizedString(string id)
    {
        switch (id)
        {
            case ImageEditorStringId.OpenCommandTooltip: return "Open Image";
            case ImageEditorStringId.SaveCommandTooltip: return "Save Image";
            case ImageEditorStringId.UndoCommandTooltip: return "Undo";
            case ImageEditorStringId.RedoCommandTooltip: return "Redo";
            case ImageEditorStringId.ResizeDialogTitle: return "Resize";
            case ImageEditorStringId.ResizeDialogImageSize: return "Image Size (px)";
            case ImageEditorStringId.ResizeDialogWidth: return "Width";
            case ImageEditorStringId.ResizeDialogHeight: return "Height";
            case ImageEditorStringId.ResizeDialogRelativeSize: return "Relative Size (%)";
            case ImageEditorStringId.ResizeDialogRelativeWidth: return "Width";
            case ImageEditorStringId.ResizeDialogRelativeHeight: return "Height";
            case ImageEditorStringId.ResizeDialogPreserveAspectRatio: return "Preserve Aspect Ratio";
            case ImageEditorStringId.ResizeDialogReset: return "Reset";
            case ImageEditorStringId.CanvasResizeDialogTitle: return "Resize Canvas";
            case ImageEditorStringId.CanvasResizeDialogCanvasSize: return "Canvas Size";
            case ImageEditorStringId.CanvasResizeDialogWidth: return "Width";
            case ImageEditorStringId.CanvasResizeDialogHeight: return "Height";
            case ImageEditorStringId.CanvasResizeDialogImageAlignment: return "Image Alignment";
            case ImageEditorStringId.CanvasResizeDialogBackground: return "Background";
            case ImageEditorStringId.CanvasResizeDialogReset: return "Reset";
            case ImageEditorStringId.RoundCornersDialogTitle: return "Round Corners";
            case ImageEditorStringId.RoundCornersDialogRadius: return "Radius";
            case ImageEditorStringId.RoundCornersDialogBackground: return "Background";
            case ImageEditorStringId.RoundCornersDialogBorderThickness: return "Border Thickness";
            case ImageEditorStringId.RoundCornersDialogBorderColor: return "Border Color";
            case ImageEditorStringId.RoundCornersDialogReset: return "Reset";
            case ImageEditorStringId.CropAccept: return "Accept";
            case ImageEditorStringId.CropCancel: return "Cancel";
            case ImageEditorStringId.DrawTextDialogTitle: return "Draw Text";
            case ImageEditorStringId.DrawTextDialogText: return "Text";
            case ImageEditorStringId.DrawTextDialogYourTextHere: return "Your Text Here...";
            case ImageEditorStringId.DrawTextDialogFontSize: return "Font Size";
            case ImageEditorStringId.DrawTextDialogTextColort: return "Text Colort";
            case ImageEditorStringId.DrawTextDialogHorizontalPosition: return "Horizontal Position";
            case ImageEditorStringId.DrawTextDialogVerticalPosition: return "Vertical Position";
            case ImageEditorStringId.DrawTextDialogRotation: return "Rotation";
            case ImageEditorStringId.DrawTextDialogReset: return "Reset";
            case ImageEditorStringId.DrawDialogTitle: return "Draw";
            case ImageEditorStringId.DrawDialogBrushSize: return "Brush Size";
            case ImageEditorStringId.DrawDialogBrushColor: return "Brush Color";
            case ImageEditorStringId.DrawShapeDialogTitle: return "Draw Shape";
            case ImageEditorStringId.DrawShapeDialogShape: return "Shape";
            case ImageEditorStringId.DrawShapeDialogShapeFill: return "Shape Fill";
            case ImageEditorStringId.DrawShapeDialogBorderThickness: return "Border Thickness";
            case ImageEditorStringId.DrawShapeDialogBorderColor: return "Border Color";
            case ImageEditorStringId.ShapeTypeRectangle: return "Rectangle";
            case ImageEditorStringId.ShapeTypeSquare: return "Square";
            case ImageEditorStringId.ShapeTypeEllipse: return "Ellipse";
            case ImageEditorStringId.ShapeTypeCircle: return "Circle";
            case ImageEditorStringId.ShapeTypeLine: return "Line";
            case ImageEditorStringId.ShapeTypeFreeflow: return "Freeflow";
            case ImageEditorStringId.HueDialogTitle: return "Hue";
            case ImageEditorStringId.HueDialogHueShift: return "Hue Shift";
            case ImageEditorStringId.HueDialogReset: return "Reset";
            case ImageEditorStringId.SaturationDialogTitle: return "Saturation";
            case ImageEditorStringId.SaturationDialogSaturation: return "Saturation";
            case ImageEditorStringId.SaturationDialogReset: return "Reset";
            case ImageEditorStringId.ContrastAndBrightnessDialogTitle: return "Contrast & Brightness";
            case ImageEditorStringId.ContrastAndBrightnessDialogBrightness: return "Brightness";
            case ImageEditorStringId.ContrastAndBrightnessDialogContrast: return "Contrast";
            case ImageEditorStringId.ContrastAndBrightnessDialogReset: return "Reset";
            case ImageEditorStringId.SharpenDialogTitle: return "Sharpen";
            case ImageEditorStringId.SharpenDialogAmount: return "Amount";
            case ImageEditorStringId.SharpenDialogReset: return "Reset";
            case ImageEditorStringId.BlurDialogTitle: return "Blur";
            case ImageEditorStringId.BlurDialogAmount: return "Amount";
            case ImageEditorStringId.BlurDialogReset: return "Reset";
            case ImageEditorStringId.ZoomFactorAuto: return "Auto";
            case ImageEditorStringId.CommandsTransform: return "Transform";
            case ImageEditorStringId.CommandsResize: return "Resize";
            case ImageEditorStringId.CommandsCanvasResize: return "Canvas Resize";
            case ImageEditorStringId.CommandsRotate90: return "Rotate 90";
            case ImageEditorStringId.CommandsRotate180: return "Rotate 180";
            case ImageEditorStringId.CommandsRotate270: return "Rotate 270";
            case ImageEditorStringId.CommandsRoundCorners: return "Round Corners";
            case ImageEditorStringId.CommandsFlipHorizontal: return "Flip Horizontal";
            case ImageEditorStringId.CommandsFlipVertical: return "Flip Vertical";
            case ImageEditorStringId.CommandsCrop: return "Crop";
            case ImageEditorStringId.CommandsDrawText: return "Draw Text";
            case ImageEditorStringId.CommandsDraw: return "Draw";
            case ImageEditorStringId.CommandsDrawShape: return "Draw Shape";
            case ImageEditorStringId.CommandsPan: return "Pan";
            case ImageEditorStringId.CommandsAdjust: return "Adjust";
            case ImageEditorStringId.CommandsHue: return "Hue";
            case ImageEditorStringId.CommandsSaturation: return "Saturation";
            case ImageEditorStringId.CommandsContrast: return "Contrast";
            case ImageEditorStringId.CommandsInvertColors: return "InvertColors";
            case ImageEditorStringId.CommandsEffects: return "Effects";
            case ImageEditorStringId.CommandsSharpen: return "Sharpen";
            case ImageEditorStringId.CommandsBlur: return "Blur";
            default: return base.GetLocalizedString(id);
        }
    }
}

````
````VB.NET
Public Class MyImageEditorLocalizationProvider
    Inherits ImageEditorLocalizationProvider
    Public Overrides Function GetLocalizedString(ByVal id As String) As String
        Select Case id
            Case ImageEditorStringId.OpenCommandTooltip
                Return "Open Image"
            Case ImageEditorStringId.SaveCommandTooltip
                Return "Save Image"
            Case ImageEditorStringId.UndoCommandTooltip
                Return "Undo"
            Case ImageEditorStringId.RedoCommandTooltip
                Return "Redo"
            Case ImageEditorStringId.ResizeDialogTitle
                Return "Resize"
            Case ImageEditorStringId.ResizeDialogImageSize
                Return "Image Size (px)"
            Case ImageEditorStringId.ResizeDialogWidth
                Return "Width"
            Case ImageEditorStringId.ResizeDialogHeight
                Return "Height"
            Case ImageEditorStringId.ResizeDialogRelativeSize
                Return "Relative Size (%)"
            Case ImageEditorStringId.ResizeDialogRelativeWidth
                Return "Width"
            Case ImageEditorStringId.ResizeDialogRelativeHeight
                Return "Height"
            Case ImageEditorStringId.ResizeDialogPreserveAspectRatio
                Return "Preserve Aspect Ratio"
            Case ImageEditorStringId.ResizeDialogReset
                Return "Reset"
            Case ImageEditorStringId.CanvasResizeDialogTitle
                Return "Resize Canvas"
            Case ImageEditorStringId.CanvasResizeDialogCanvasSize
                Return "Canvas Size"
            Case ImageEditorStringId.CanvasResizeDialogWidth
                Return "Width"
            Case ImageEditorStringId.CanvasResizeDialogHeight
                Return "Height"
            Case ImageEditorStringId.CanvasResizeDialogImageAlignment
                Return "Image Alignment"
            Case ImageEditorStringId.CanvasResizeDialogBackground
                Return "Background"
            Case ImageEditorStringId.CanvasResizeDialogReset
                Return "Reset"
            Case ImageEditorStringId.RoundCornersDialogTitle
                Return "Round Corners"
            Case ImageEditorStringId.RoundCornersDialogRadius
                Return "Radius"
            Case ImageEditorStringId.RoundCornersDialogBackground
                Return "Background"
            Case ImageEditorStringId.RoundCornersDialogBorderThickness
                Return "Border Thickness"
            Case ImageEditorStringId.RoundCornersDialogBorderColor
                Return "Border Color"
            Case ImageEditorStringId.RoundCornersDialogReset
                Return "Reset"
            Case ImageEditorStringId.CropAccept
                Return "Accept"
            Case ImageEditorStringId.CropCancel
                Return "Cancel"
            Case ImageEditorStringId.DrawTextDialogTitle
                Return "Draw Text"
            Case ImageEditorStringId.DrawTextDialogText
                Return "Text"
            Case ImageEditorStringId.DrawTextDialogYourTextHere
                Return "Your Text Here..."
            Case ImageEditorStringId.DrawTextDialogFontSize
                Return "Font Size"
            Case ImageEditorStringId.DrawTextDialogTextColort
                Return "Text Colort"
            Case ImageEditorStringId.DrawTextDialogHorizontalPosition
                Return "Horizontal Position"
            Case ImageEditorStringId.DrawTextDialogVerticalPosition
                Return "Vertical Position"
            Case ImageEditorStringId.DrawTextDialogRotation
                Return "Rotation"
            Case ImageEditorStringId.DrawTextDialogReset
                Return "Reset"
            Case ImageEditorStringId.DrawDialogTitle
                Return "Draw"
            Case ImageEditorStringId.DrawDialogBrushSize
                Return "Brush Size"
            Case ImageEditorStringId.DrawDialogBrushColor
                Return "Brush Color"
            Case ImageEditorStringId.DrawShapeDialogTitle
                Return "Draw Shape"
            Case ImageEditorStringId.DrawShapeDialogShape
                Return "Shape"
            Case ImageEditorStringId.DrawShapeDialogShapeFill
                Return "Shape Fill"
            Case ImageEditorStringId.DrawShapeDialogBorderThickness
                Return "Border Thickness"
            Case ImageEditorStringId.DrawShapeDialogBorderColor
                Return "Border Color"
            Case ImageEditorStringId.ShapeTypeRectangle
                Return "Rectangle"
            Case ImageEditorStringId.ShapeTypeSquare
                Return "Square"
            Case ImageEditorStringId.ShapeTypeEllipse
                Return "Ellipse"
            Case ImageEditorStringId.ShapeTypeCircle
                Return "Circle"
            Case ImageEditorStringId.ShapeTypeLine
                Return "Line"
            Case ImageEditorStringId.ShapeTypeFreeflow
                Return "Freeflow"
            Case ImageEditorStringId.HueDialogTitle
                Return "Hue"
            Case ImageEditorStringId.HueDialogHueShift
                Return "Hue Shift"
            Case ImageEditorStringId.HueDialogReset
                Return "Reset"
            Case ImageEditorStringId.SaturationDialogTitle
                Return "Saturation"
            Case ImageEditorStringId.SaturationDialogSaturation
                Return "Saturation"
            Case ImageEditorStringId.SaturationDialogReset
                Return "Reset"
            Case ImageEditorStringId.ContrastAndBrightnessDialogTitle
                Return "Contrast & Brightness"
            Case ImageEditorStringId.ContrastAndBrightnessDialogBrightness
                Return "Brightness"
            Case ImageEditorStringId.ContrastAndBrightnessDialogContrast
                Return "Contrast"
            Case ImageEditorStringId.ContrastAndBrightnessDialogReset
                Return "Reset"
            Case ImageEditorStringId.SharpenDialogTitle
                Return "Sharpen"
            Case ImageEditorStringId.SharpenDialogAmount
                Return "Amount"
            Case ImageEditorStringId.SharpenDialogReset
                Return "Reset"
            Case ImageEditorStringId.BlurDialogTitle
                Return "Blur"
            Case ImageEditorStringId.BlurDialogAmount
                Return "Amount"
            Case ImageEditorStringId.BlurDialogReset
                Return "Reset"
            Case ImageEditorStringId.ZoomFactorAuto
                Return "Auto"
            Case ImageEditorStringId.CommandsTransform
                Return "Transform"
            Case ImageEditorStringId.CommandsResize
                Return "Resize"
            Case ImageEditorStringId.CommandsCanvasResize
                Return "Canvas Resize"
            Case ImageEditorStringId.CommandsRotate90
                Return "Rotate 90"
            Case ImageEditorStringId.CommandsRotate180
                Return "Rotate 180"
            Case ImageEditorStringId.CommandsRotate270
                Return "Rotate 270"
            Case ImageEditorStringId.CommandsRoundCorners
                Return "Round Corners"
            Case ImageEditorStringId.CommandsFlipHorizontal
                Return "Flip Horizontal"
            Case ImageEditorStringId.CommandsFlipVertical
                Return "Flip Vertical"
            Case ImageEditorStringId.CommandsCrop
                Return "Crop"
            Case ImageEditorStringId.CommandsDrawText
                Return "Draw Text"
            Case ImageEditorStringId.CommandsDraw
                Return "Draw"
            Case ImageEditorStringId.CommandsDrawShape
                Return "Draw Shape"
            Case ImageEditorStringId.CommandsPan
                Return "Pan"
            Case ImageEditorStringId.CommandsAdjust
                Return "Adjust"
            Case ImageEditorStringId.CommandsHue
                Return "Hue"
            Case ImageEditorStringId.CommandsSaturation
                Return "Saturation"
            Case ImageEditorStringId.CommandsContrast
                Return "Contrast"
            Case ImageEditorStringId.CommandsInvertColors
                Return "InvertColors"
            Case ImageEditorStringId.CommandsEffects
                Return "Effects"
            Case ImageEditorStringId.CommandsSharpen
                Return "Sharpen"
            Case ImageEditorStringId.CommandsBlur
                Return "Blur"
            Case Else
                Return MyBase.GetLocalizedString(id)
        End Select
    End Function
End Class

```` 


{{endregion}} 

#### Assigning the Current Localization Provider

{{source=..\SamplesCS\ImageEditor\ImageEditorLocalization.cs region=SetProvider}} 
{{source=..\SamplesVB\ImageEditor\ImageEditorLocalization.vb region=SetProvider}}
````C#
ImageEditorLocalizationProvider.CurrentProvider = new MyImageEditorLocalizationProvider();

````
````VB.NET
ImageEditorLocalizationProvider.CurrentProvider = New MyImageEditorLocalizationProvider()

```` 

{{endregion}}


# See Also

* [Structure]({%slug radimageeditor-structure%})
* [Properties and Events]({%slug radimageeditor-properties-and-events%})