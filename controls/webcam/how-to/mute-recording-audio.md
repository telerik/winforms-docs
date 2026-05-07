---
title: Disable Audio Recording
page_title: Disable Audio Recording - RadWebCam
description: This article shows how to stop the audio recording when capturing a video.   
slug: webcam-mute-recording-audio
tags: webcam
published: True
position: 1
---

# Disable Audio Recording

This article shows how to stop the audio recording in two steps when a video is captured:

1. Add a **RadWebCam** to the form and subscribe to its Form.**Load** event. Then, set its **AutoStart** property to *false*.
2. In the event handler, get the camera device and video format, and call the **Initialize** method of the control. To disable the audio, set the last parameter ("*audioDevice*") of the **Initialize** method to *null*. Then start the camera.


<snippet id='webcam-webcamfeatures-mutecamera-cs' />
<snippet id='webcam-webcamfeatures-mutecamera-vb' />



## See Also
* [Commands]({%slug webcam-commands%})
* [Snapshots]({%slug webcam-snapshots%})
* [Video Recording]({%slug webcam-recording-video%})
* [Media Information]({%slug webcam-media-information%})
* [Settings Dialog]({%slug camera-settings-dialog%})
* [Errors]({%slug webcam-errors%})
