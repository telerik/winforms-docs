---
title: Media Information
page_title: Media Information - WinForms WebCam Control
description: Learn about the connected devices and change the WinForms WebCam's device and video format based on this.   
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

<snippet id='webcam-webcamfeatures-getdevices-cs' />
<snippet id='webcam-webcamfeatures-getdevices-vb' />



## Get Video Formats

To get the available video file formats for the connected device, you can use the RadWebCam.**GetVideoFormats** static method.

<snippet id='webcam-webcamfeatures-videoformats-cs' />
<snippet id='webcam-webcamfeatures-videoformats-vb' />



## See Also
* [Commands]({%slug webcam-commands%})
* [Snapshots]({%slug webcam-snapshots%})
* [Video Recording]({%slug webcam-recording-video%})
* [Settings Dialog]({%slug camera-settings-dialog%})
* [Errors]({%slug webcam-errors%})
