---
title: Commands
page_title: Commands - WinForms WebCam Control
description: Have a look at a full list of the actions that WinForms WebCam can execute.    
slug: webcam-commands
tags: webcam
published: True
position: 4
---

# Commands

The actions in the UI of **RadWebCam** are executed via the following methods:

* **TakeSnapshot**: Takes a snapshot from the currently displayed video feed. To get the snapshot subscribe to the **SnapshotTaken** event.
* **SaveSnapshot**: Triggers the **SnapshotTaken** event when the control is in preview snapshot mode.
* **DiscardSnapshot**: Discards the taken snapshot when the control is in preview snapshot mode.
* **StartRecording**: Starts capturing the media source(s) to a file. The **RecordingFilePath** property must be set before calling this method.
* **StopRecording**: Stops the file capture.
* **ShutDown**: Shuts down the video pipeline.
* **ShowSettingsDialog**: Shows the settings dialog that allows you to adjust the camera options.
* **Start**: Starts displaying the video feed from the camera.
* **Pause**: Pauses the video pipeline and pauses displaying the video feed.
* **Stop**: Stops displaying the video feed from the camera.
  
You can use the commands outside of the **RadWebCam** control or modify their default behavior by overriding the respective method.

The following public static methods are also available for **RadWebCam**:

* **GetAudioCaptureDevices**: Gets a list with all the available audio capture devices.
* **GetVideoCaptureDevices**: Gets a list with all the available video capture devices.
* **GetVideoFormats**: Gets a list with all the available video file formats for the provided device.
* **Initialize**: Starts up the video pipeline and displays the video from the source inside of the control.

## See Also
* [Snapshots]({%slug webcam-snapshots%})
* [Video Recording]({%slug webcam-recording-video%})
* [Media Information]({%slug webcam-media-information%})
* [Settings Dialog]({%slug camera-settings-dialog%})
* [Errors]({%slug webcam-errors%})
