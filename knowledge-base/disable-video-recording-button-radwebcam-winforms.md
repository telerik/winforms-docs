---
title: Disabling Video Recording Button in RadWebCam for WinForms
description: Learn how to hide the video recording button in RadWebCam for WinForms to utilize only the snapshot feature.
type: how-to
page_title: How to Hide the Video Recording Button in RadWebCam for WinForms
slug: disable-video-recording-button-radwebcam-winforms
tags: radwebcam, winforms, videorecording, ui, customization
res_type: kb
ticketid: 1685265
---

## Environment

<table>
<tbody>
<tr>
<td>Product</td>
<td>RadWebCam for WinForms</td>
</tr>
<tr>
<td>Version</td>
<td>2024.3.924</td>
</tr>
</tbody>
</table>

## Description
I want to disable the video recording button in the RadWebCam control. My application only requires the snapshot feature, and the video recording option is unnecessary for my use case.

This knowledge base article also answers the following questions:
- How can I hide the video recording button in RadWebCam?
- Is it possible to use RadWebCam for snapshots only?
- Can I customize the RadWebCam UI to remove the video recording functionality?

## Solution
To disable the video recording button in RadWebCam and restrict the control to only use the snapshot feature, set the visibility of the recording button to `Collapsed`. This action hides the recording button from the UI.

```csharp
radWebCam.WebCamElement.ToggleRecordingButton.Visibility = Telerik.WinControls.ElementVisibility.Collapsed;
```

By applying this code, the RadWebCam control will continue to function, but without displaying the video recording button, effectively limiting its use to taking snapshots.

## See Also

- [RadWebCam Overview](https://docs.telerik.com/devtools/winforms/controls/radwebcam/overview)
- [Customizing RadWebCam UI](https://docs.telerik.com/devtools/winforms/controls/radwebcam/customizing-appearance)
