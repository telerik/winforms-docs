---
title: Localization
page_title: Localization - RadWebCam
description: RadWebCam allows localizing the settings dialog.
slug: webcam-localizing
tags: webcam
published: True
position: 0
---

# Localization

To localize **RadWebCam** to display control text and messages in a specific language:

* All required classes for localization are defined in Telerik.WinControls.UI.Localization namespace.

* Start by creating a descendant of the **RadWebCamLocalizationProvider** class.

Override the **GetLocalizedString**(string id) method and provide a translation for the label and user messages. If a translation is not provided, the default value will be returned. This behavior is guaranteed by the call of the base **GetLocalizedString** method in the default clause of the switch statement in the example.

Below is a sample implementation of an English localization provider:

#### Localizing RadWebCam Strings

````C#

        public class EnglishWebCamLocalizationProvider : RadWebCamLocalizationProvider
        {
            public override string GetLocalizedString(string id)
            {
                switch (id)
                {
                    case RadWebCamStringId.NoCamera:
                        return "No camera detected.";
                    case RadWebCamStringId.CameraBusy:
                        return "The camera is unavailable.";
                    case RadWebCamStringId.CameraAccessDenied:
                        return "Access to the camera is denied.";
                    case RadWebCamStringId.TakeSnapshot:
                        return "Take Snapshot";
                    case RadWebCamStringId.SaveSnapshot:
                        return "Save Snapshot";
                    case RadWebCamStringId.DiscardSnapshot:
                        return "Discard Snapshot";
                    case RadWebCamStringId.StartRecording:
                        return "Start Recording";
                    case RadWebCamStringId.StopRecording:
                        return "Stop Recording";
                    case RadWebCamStringId.Settings:
                        return "Settings";
                    case RadWebCamStringId.VideoProcAmp:
                        return "Video Processing Amplifier";
                    case RadWebCamStringId.CameraControl:
                        return "Camera Control";
                    case RadWebCamStringId.Auto:
                        return "Auto";
                    case RadWebCamStringId.Brightness:
                        return "Brightness";
                    case RadWebCamStringId.Contrast:
                        return "Contrast";
                    case RadWebCamStringId.Hue:
                        return "Hue";
                    case RadWebCamStringId.Saturation:
                        return "Saturation";
                    case RadWebCamStringId.Sharpness:
                        return "Sharpness";
                    case RadWebCamStringId.Gamma:
                        return "Gamma";
                    case RadWebCamStringId.WhiteBalance:
                        return "White Balance";
                    case RadWebCamStringId.BacklightComp:
                        return "Backlight Comp";
                    case RadWebCamStringId.Gain:
                        return "Gain";
                    case RadWebCamStringId.Zoom:
                        return "Zoom";
                    case RadWebCamStringId.Focus:
                        return "Focus";
                    case RadWebCamStringId.Exposure:
                        return "Exposure";
                    case RadWebCamStringId.Aperture:
                        return "Aperture";
                    case RadWebCamStringId.Pan:
                        return "Pan";
                    case RadWebCamStringId.Tilt:
                        return "Tilt";
                    case RadWebCamStringId.Roll:
                        return "Roll";
                    case RadWebCamStringId.Default:
                        return "Default";
                    case RadWebCamStringId.Ok:
                        return "OK";
                    case RadWebCamStringId.Cancel:
                        return "Cancel";
                }

                return string.Empty;
            }
        }
        

````
````VB.NET

Public Class EnglishWebCamLocalizationProvider
    Inherits RadWebCamLocalizationProvider

    Public Overrides Function GetLocalizedString(ByVal id As String) As String
        Select Case id
            Case RadWebCamStringId.NoCamera
                Return "No camera detected."
            Case RadWebCamStringId.CameraBusy
                Return "The camera is unavailable."
            Case RadWebCamStringId.CameraAccessDenied
                Return "Access to the camera is denied."
            Case RadWebCamStringId.TakeSnapshot
                Return "Take Snapshot"
            Case RadWebCamStringId.SaveSnapshot
                Return "Save Snapshot"
            Case RadWebCamStringId.DiscardSnapshot
                Return "Discard Snapshot"
            Case RadWebCamStringId.StartRecording
                Return "Start Recording"
            Case RadWebCamStringId.StopRecording
                Return "Stop Recording"
            Case RadWebCamStringId.Settings
                Return "Settings"
            Case RadWebCamStringId.VideoProcAmp
                Return "Video Processing Amplifier"
            Case RadWebCamStringId.CameraControl
                Return "Camera Control"
            Case RadWebCamStringId.Auto
                Return "Auto"
            Case RadWebCamStringId.Brightness
                Return "Brightness"
            Case RadWebCamStringId.Contrast
                Return "Contrast"
            Case RadWebCamStringId.Hue
                Return "Hue"
            Case RadWebCamStringId.Saturation
                Return "Saturation"
            Case RadWebCamStringId.Sharpness
                Return "Sharpness"
            Case RadWebCamStringId.Gamma
                Return "Gamma"
            Case RadWebCamStringId.WhiteBalance
                Return "White Balance"
            Case RadWebCamStringId.BacklightComp
                Return "Backlight Comp"
            Case RadWebCamStringId.Gain
                Return "Gain"
            Case RadWebCamStringId.Zoom
                Return "Zoom"
            Case RadWebCamStringId.Focus
                Return "Focus"
            Case RadWebCamStringId.Exposure
                Return "Exposure"
            Case RadWebCamStringId.Aperture
                Return "Aperture"
            Case RadWebCamStringId.Pan
                Return "Pan"
            Case RadWebCamStringId.Tilt
                Return "Tilt"
            Case RadWebCamStringId.Roll
                Return "Roll"
            Case RadWebCamStringId.[Default]
                Return "Default"
            Case RadWebCamStringId.Ok
                Return "OK"
            Case RadWebCamStringId.Cancel
                Return "Cancel"
        End Select

        Return String.Empty
    End Function
End Class

```` 

To apply the custom localization provider, instantiate and assign it to the current localization provider:

#### Assigning the Current Localization Provider
 
````C#

RadWebCamLocalizationProvider.CurrentProvider = new EnglishWebCamLocalizationProvider();        

````
````VB.NET

RadWebCamLocalizationProvider.CurrentProvider = New EnglishWebCamLocalizationProvider()

```` 


## See Also
* [Structure]({%slug webcam-structure%})
* [Design Time]({%slug webcam-design-time%})
* [Getting Started]({%slug webcam-getting-started%})

