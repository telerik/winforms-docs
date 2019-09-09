---
title: Media Information
page_title: Media Information | RadWebCam
description: This article gives you information about the connected devices and change the control's device and video format based on this.   
slug: webcam-media-information
tags: webcam
published: True
position: 2
---

# Media Information

The **RadWebCam**'s API allows you to get information about the connected devices (cameras) and change the control's device and video format based on this.
 
## MediaFoundationDeviceInfo

The **MediaFoundationDeviceInfo** object provides information about the connected device. This object is used by the control to read video.

## MediaFoundationVideoFormatInfo

The **MediaFoundationVideoFormatInfo** object provides information about the video format used by the connected camera.

## Get Video Capture Devices

To get the available video capture devices (cameras), use the RadWebCam.**GetVideoCaptureDevices** static method.

#### Getting the available cameras

{{source=..\SamplesCS\WebCam\WebCamFeatures.cs region=GetDevices}} 
{{source=..\SamplesVB\WebCam\WebCamFeatures.vb region=GetDevices}} 

````C#

            ReadOnlyCollection<MediaFoundationDeviceInfo> videoDevices = RadWebCam.GetVideoCaptureDevices(); 

````
````VB.NET

        Dim videoDevices As ReadOnlyCollection(Of MediaFoundationDeviceInfo) = RadWebCam.GetVideoCaptureDevices()

````

{{endregion}} 

## Get Video Formats

To get the available video file formats for the connected device, you can use the RadWebCam.**GetVideoFormats** static method.

{{source=..\SamplesCS\WebCam\WebCamFeatures.cs region=VideoFormats}} 
{{source=..\SamplesVB\WebCam\WebCamFeatures.vb region=VideoFormats}} 

````C#

            ReadOnlyCollection<MediaFoundationDeviceInfo> myVideoDevices = RadWebCam.GetVideoCaptureDevices();
            ReadOnlyCollection<MediaFoundationVideoFormatInfo> videoFormats = RadWebCam.GetVideoFormats(videoDevices[0]); 

````
````VB.NET

        Dim myVideoDevices As ReadOnlyCollection(Of MediaFoundationDeviceInfo) = RadWebCam.GetVideoCaptureDevices() 
        Dim videoFormats As ReadOnlyCollection(Of MediaFoundationVideoFormatInfo) = RadWebCam.GetVideoFormats(videoDevices(0))

````

{{endregion}} 


## See Also
* [Commands]({%slug webcam-commands%})
* [Snapshots]({%slug webcam-snapshots%})
* [Video Recording]({%slug webcam-recording-video%})
* [Settings Dialog]({%slug camera-settings-dialog%})
* [Errors]({%slug webcam-errors%})
