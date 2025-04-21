---
title: Disabling Video Recording Button in RadWebCam for WinForms
description: Learn how to disable video recording button in RadWebCam for WinForms to utilize only the snapshot feature.
type: how-to
page_title: How to Disable Video Recording in RadWebCam
slug: webcam-disable-video-recording
tags: webcam, winforms, videorecording, ui, customization
res_type: kb
ticketid: 1685265
---

## Environment

|Product Version|Product|Author|
|----|----|----|
|2025.1.211|RadWebCam for WinForms|[Nadya Todorova](https://www.telerik.com/blogs/author/nadya-karaivanova)|

## Description

This article explains how to disable video recording in RadWebCam and use only snapshots.

## Solution
To disable the video recording button in RadWebCam and restrict the control to only use the snapshot feature, set the visibility of the recording button to `Collapsed`. This action hides the recording button from the UI.

```csharp

this.radWebCam.WebCamElement.ToggleRecordingButton.Visibility = Telerik.WinControls.ElementVisibility.Collapsed;

```

## See Also

- [RadWebCam Overview](https://docs.telerik.com/devtools/winforms/controls/radwebcam/overview)
- [Customizing RadWebCam UI](https://docs.telerik.com/devtools/winforms/controls/radwebcam/customizing-appearance)
