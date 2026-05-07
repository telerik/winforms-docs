---
title: Recording Video
page_title: Recording Video - WinForms WebCam Control
description: Learn how to start recording video in WinForms WebCam.    
slug: webcam-recording-video
tags: webcam
published: True
position: 0
---

# Recording Video

To start recording a video you can press the "Start recording" button or call the **StartRecording** method of **RadWebCam** control.

![WinForms RadWebcam Recording Video](images/webcam-recording-video001.png)

To enable video recording set the **RecordingFilePath** property of the control. This is the path to the video where the recording will be stored.

<snippet id='webcam-webcamgettingstarted-video-cs' />
<snippet id='webcam-webcamgettingstarted-video-vb' />



To stop recording, press the "Stop" button or call the **StopRecording** method of **RadWebCam**. This will stop the recording and close the file stream.

<snippet id='webcam-webcamgettingstarted-endrecording-cs' />
<snippet id='webcam-webcamgettingstarted-endrecording-vb' />



You can indicate that the camera control is recording via its **IsRecording** property.

>note Setting the **IsRecording** property of **RadWebCam** will also start or stop the recording.

## Elapsed Time Format

The control allows you to replace the default elapsed date-time format. To do this, set the **VideoRecordingElapsedTimeFormat** property of the **RadWebCam** control.

![WinForms RadWebcam Elapsed Time](images/webcam-recording-video002.png)

<snippet id='webcam-webcamgettingstarted-ellapsedtimeformat-cs' />
<snippet id='webcam-webcamgettingstarted-ellapsedtimeformat-vb' />



## See Also
* [Commands]({%slug webcam-commands%})
* [Snapshots]({%slug webcam-snapshots%})
* [Media Information]({%slug webcam-media-information%})
* [Settings Dialog]({%slug camera-settings-dialog%})
* [Errors]({%slug webcam-errors%})

