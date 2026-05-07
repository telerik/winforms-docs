---
title: Connect to a Camera Device
page_title: Connect to a Camera Device - RadWebCam
description: In case of more than one camera devices, you can specify which device to use.   
slug: winforms/editors/webcam/connect-to-camera-device
tags: webcam
published: True
position: 5
---

# Connect to a Camera Device

If you have more than one camera devices, you can specify which device to use. The code snippet below demonstrates how to get the video and audio devices and initialize the camera with them.

>important The RadWebCam.**AutoStart** property should be set to *false* if you want to initialize it with a specific camera device.

To connect to a web cam manually, execute the following steps:

1. Get the camera device. To do this, use the RadWebCam.**GetVideoCaptureDevices** static method.
2. Get a video format from the camera. To do this, use the RadWebCam.**GetVideoFormats** static method.
3. Initialize the camera device in the control. To do this, use the **Initialize** method of the **RadWebCam** control.
4. Start the web cam control. To do this, use the **Start** method of the control.

>note The manual initialization of RadWebCam should be executed after the control gets loaded. For example, you can use the form's Load event.

<snippet id='webcam-webcamgettingstarted-selectdevice-cs' />
<snippet id='webcam-webcamgettingstarted-selectdevice-vb' />



## See Also
* [Commands]({%slug webcam-commands%})
* [Snapshots]({%slug webcam-snapshots%})
* [Video Recording]({%slug webcam-recording-video%})
* [Media Information]({%slug webcam-media-information%})
* [Settings Dialog]({%slug camera-settings-dialog%})
* [Errors]({%slug webcam-errors%})
* [How to Deal with Slow WebCam Preview on Start]({%slug deal-with-slow-webcam-preview-on-start%})
