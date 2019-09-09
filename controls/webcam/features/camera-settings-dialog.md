---
title: Settings Dialog
page_title: Settings Dialog | RadWebCam
description: RadWebCam allows you to control the settings of the connected camera via the CameraSettingsDialog.
slug: camera-settings-dialog
tags: webcam
published: True
position: 5
---

# Settings Dialog

**RadWebCam** allows you to control the settings of the connected camera. You can do this using the settings dialog which opens when you press the [Open settings dialog button]({%slug webcam-structure%}).

![camera-settings-dialog 001](images/camera-settings-dialog001.png)

>important The changes applied via the settings dialog reflects the settings of the camera device. This means that when you close the application, the settings will be still applied to the device.

**RadWebCam** offers the **SettingsDialogShowing** event. It is a cancelable event. Hence, you can prevent the dialog from showing in certain conditions. The **CameraSettingsDialogShowingEventArgs** gives you access to the **CameraSettingsDialog**. 

## See Also
* [Snapshots]({%slug webcam-snapshots%})
* [Video Recording]({%slug webcam-recording-video%})
* [Media Information]({%slug webcam-media-information%})
* [Settings Dialog]({%slug camera-settings-dialog%})
* [Errors]({%slug webcam-errors%})
