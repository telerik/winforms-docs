---
title: Getting Started
page_title: Getting Started | RadWebCam
description: This tutorial will walk you through the creation of a sample application that contains a RadWebCam.   
slug: webcam-getting-started
tags: webcam
published: True
position: 3
---

# Getting Started

This tutorial will walk you through the creation of a sample application that contains a **RadWebCam**.

>caution **RadWebCam** requires .NET Framework 4.0 and cannot be used with an older version.

## Assembly References

In order to use **RadWebCam**, you will need to add references to the following assemblies:

* Telerik.WinControls
* Telerik.WinControls.UI
* TelerikCommon
* Telerik.WinControls.RadWebCam
* Telerik.Windows.MediaFoundation: This dll is located in the UI for WinForms installation folder. 
* MediaFoundation: This dll is located in the UI for WinForms installation folder.

You can download the required assemblies for each control from your Telerik account: [Download Product Files]({%slug winforms/installation-deployment-and-distribution/download-product-files%}).


>caution Microsoft Media Foundation enables the development of applications and components for using digital media on **Windows Vista and later**. Thus, [RadWebCam is not support for Windows XP machines](https://social.msdn.microsoft.com/Forums/Windows/en-US/3de928f0-1190-4ee8-9d94-06f5d2db5bd2/run-media-foundation-application-on-windows-xp?forum=mediafoundationdevelopment). 

## Setting up the Control

To start using the control you only need to add a **RadWebCam** control to the form either at design time by dragging it from toolbox and dropping it onto the form or via code.

>important **RadWebCam** video recording relies on USB web cams being able to use **MJPEG** or **H264** encoded streams.
On August 2nd, 2016, Microsoft released the Anniversary Update for Windows 10 (1607) which [has broken millions of Web cams](https://www.thurrott.com/windows/windows-10/76719/microsoft-broken-millions-webcams-windows-10-anniversary-update). In this update Windows no longer allowed USB web cams to use **MJPEG** or **H264** encoded streams and was only allowing **YUY2** encoding. 
According to a comment in [this discussion](https://social.msdn.microsoft.com/Forums/windowsdesktop/en-US/9d6a8704-764f-46df-a41c-8e9d84f7f0f3/mjpg-encoded-media-type-is-not-available-for-usbuvc-webcameras-after-windows-10-version-1607-os?forum=mediafoundationdevelopment) the bug was fixed in April 2017 (version 1703, 10.0.15063).
>

#### Adding a RadWebCam at runtime 

{{source=..\SamplesCS\WebCam\WebCamGettingStarted.cs region=CreatingWebCam}} 
{{source=..\SamplesVB\WebCam\WebCamGettingStarted.vb region=CreatingWebCam}} 

````C#

            RadWebCam radWebCam1 = new RadWebCam();
            string path = @"..\..\Test images and videos\";
            radWebCam1.AutoStart = true;
            radWebCam1.RecordingFilePath = path + @"\Video1.mp4";
            this.Controls.Add(radWebCam1);

````
````VB.NET

        Dim radWebCam1 As RadWebCam = New RadWebCam()
        Dim path As String = "..\..\Test images and videos\"
        radWebCam1.AutoStart = True
        radWebCam1.RecordingFilePath = path & "\Video1.mp4"
        Me.Controls.Add(radWebCam1)

````

{{endregion}} 

From this point on, you can start using the control without any additional set up.

## Auto Start

By default, the camera control will start automatically if a camera device is connected. You can change this by setting the **AutoStart** property of **RadWebCam** to *false*.

{{source=..\SamplesCS\WebCam\WebCamGettingStarted.cs region=WebCameraAutoStart}} 
{{source=..\SamplesVB\WebCam\WebCamGettingStarted.vb region=WebCameraAutoStart}} 

````C#

        radWebCam1.AutoStart = false;

````
````VB.NET

        radWebCam1.AutoStart = Falses

````

{{endregion}} 

## Connect to the Webcam Manually

To connect to the web cam manually you can call the **Start** method once the control is initialized.

{{source=..\SamplesCS\WebCam\WebCamGettingStarted.cs region=Start}} 
{{source=..\SamplesVB\WebCam\WebCamGettingStarted.vb region=Start}} 

````C#

        radWebCam1.Start();

````
````VB.NET

        radWebCam1.Start()

````

{{endregion}} 


>note Read more about the capture devices in the [Media Information]({%slug webcam-media-information%}) article.

## Stop the Camera Control

To stop the stream between the camera device and the **RadWebCam** control, call the **Stop** method.

{{source=..\SamplesCS\WebCam\WebCamGettingStarted.cs region=Stop}} 
{{source=..\SamplesVB\WebCam\WebCamGettingStarted.vb region=Stop}} 

````C#

        radWebCam1.Stop();

````
````VB.NET

        radWebCam1.Stop()

````

{{endregion}} 

## Recording Video

To record a video you need to set **RecordingFilePath** before start the recording. This is required in order to specify where the recording will be stored on the file system.

To start recording, press the "Start recording" button or call the **StartRecording** method of **RadWebCam**. This will start writing the media stream to the corresponding file.

>note Read more about this in the [Recording Video]({%slug webcam-recording-video%}) article.

{{source=..\SamplesCS\WebCam\WebCamGettingStarted.cs region=RecordingPath}} 
{{source=..\SamplesVB\WebCam\WebCamGettingStarted.vb region=RecordingPath}} 

````C#

        radWebCam1.RecordingFilePath = path + @"\Video1.mp4";

````
````VB.NET

        radWebCam1.RecordingFilePath = path + "\Video1.mp4"

````

{{endregion}} 

## Taking Snapshot

A snapshot of the currently displayed video feed can be taken using the **TakeSnapshot** method of the control, or by pressing the "Take snapshot button". This will fire the **SnapshotTaken** event where you get access to the current snapshot as an Image object.

{{source=..\SamplesCS\WebCam\WebCamGettingStarted.cs region=Snapshot}} 
{{source=..\SamplesVB\WebCam\WebCamGettingStarted.vb region=Snapshot}} 

````C#

        private void RadWebCam1_SnapshotTaken(object sender, SnapshotTakenEventArgs e)
        {
            Image snapshot = e.Snapshot;
            // here you save the source to a file, in memory, or to show it in the UI 
        }

````
````VB.NET

    Private Sub RadWebCam1_SnapshotTaken(ByVal sender As Object, ByVal e As SnapshotTakenEventArgs)
        Dim snapshot As System.Drawing.Image = e.Snapshot
    End Sub

````

{{endregion}} 

## See Also
* [Structure]({%slug webcam-structure%})
* [Design Time]({%slug webcam-design-time%})
* [Overview]({%slug webcam-overview%})

