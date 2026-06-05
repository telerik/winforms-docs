---
title: Errors
page_title: Errors - WinForms WebCam Control
description: Learn how to customize the error content shown when one of the few known camera errors appear in WinForms WebCam.    
slug: webcam-errors
tags: webcam
published: True
position: 3
---

# Errors

This article demonstrates how to customize the error content shown when one of the few known camera errors appear.

When one of the following errors appears, the camera buttons and player get replaced by an error message.

## Error Types

There are few expected errors that could appear using the control:

* CameraErrorState.**NoCamera**: This error appears when there is no camera device connected to the computer.

	![WinForms RadWebCam NoCamera Error](images/webcam-errors001.png)

* CameraErrorState.**CameraIsBusy**: This error appears when another application is using the camera device.

	![WinForms RadWebCam CameraIsBusy Error](images/webcam-errors002.png)

>caution **RadWebCam** can be used by a single application. Once a second application tries to access it, **CameraIsBusy** error will be shown. 

* CameraErrorState.**CameraAccessDenied**: This error appears when the access to the camera is denied.

	![WinForms RadWebCam AccessDenied Error](images/webcam-errors004.png)

## Replacing the Error Message

To replace the error message use the **CameraError** event of **RadWebCam**. The **CameraErrorEventArgs** give access to an **ErrorInfo** object, which contains information about the error state and message. Use the event to replace the default message with a custom one.

<snippet id='webcam-webcamgettingstarted-errors-cs' />
<snippet id='webcam-webcamgettingstarted-errors-vb' />



![WinForms RadWebCam Replace Error Message](images/webcam-errors003.png)


## See Also
* [Commands]({%slug webcam-commands%})
* [Snapshots]({%slug webcam-snapshots%})
* [Video Recording]({%slug webcam-recording-video%})
* [Media Information]({%slug webcam-media-information%})
* [Settings Dialog]({%slug camera-settings-dialog%}) 

