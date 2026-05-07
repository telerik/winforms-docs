---
title: Snapshots
page_title: Snapshots - WinForms WebCam Control
description: WinForms WebCam allows you to snapshot the currently displayed video feed.   
slug: webcam-snapshots
tags: webcam
published: True
position: 1
---

# Snapshots

**RadWebCam** allows you to snapshot the currently displayed video feed. This can be done via the "Take snapshot" button of the control, or the **TakeSnapshot** method. This will fire the **SnapshotTaken** event where you can get the Image object.

![WinForms RadWebcam Snapshots](images/webcam-snapshots001.png)

#### Taking a snapshot in code

<snippet id='webcam-webcamfeatures-takesnapshots-cs' />
<snippet id='webcam-webcamfeatures-takesnapshots-vb' />



## Preview Snapshots

By default, when you take a snapshot a preview of the image will be shown. To disable this, set the **PreviewSnapshots** property to *false*.

<snippet id='webcam-webcamfeatures-preview-cs' />
<snippet id='webcam-webcamfeatures-previewcamerasnapshot-vb' />



You can indicate if the snapshot preview is displayed via the **IsPreviewingSnapshot** property of **RadWebCam**.

## See Also
* [Commands]({%slug webcam-commands%})
* [Video Recording]({%slug webcam-recording-video%})
* [Media Information]({%slug webcam-media-information%})
* [Settings Dialog]({%slug camera-settings-dialog%})
* [Errors]({%slug webcam-errors%})

