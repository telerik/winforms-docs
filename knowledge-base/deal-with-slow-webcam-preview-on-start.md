---
title: How to Deal with Slow WebCam Preview on Start
description: Learn how to handle slow initial preview in the WinForms WebCam control.     
type: how-to
page_title: How to Deal with Slow WebCam Preview on Start
slug: deal-with-slow-webcam-preview-on-start
position: 34
tags: webcam, preview, slow
ticketid: 1534505 
res_type: kb
---

## Environment
<table>
	<tr>
		<td>Product Version</td>
		<td>2021.3.1123</td>
	</tr>
	<tr>
		<td>Product</td>
		<td>RadWebCam for WinForms</td>
	</tr>
</table>


## Problem

Camera preview is very slow on its first start-up. When you click on the snapshot icon and afterwards the button with the cross to retake another snapshot, the camera preview is smooth. 
 
## Solution

One possible approach is to force taking a snapshot at least once and then reject the preview image. This can be achieved using the following code snippet:


````C#

private ReadOnlyCollection<MediaFoundationDeviceInfo> videoDevices;
private ReadOnlyCollection<MediaFoundationVideoFormatInfo> videoFormats;
private ReadOnlyCollection<MediaFoundationDeviceInfo> audioDevices; 

Timer t = new Timer();
public CameraView()
{
    InitializeComponent();
    videoDevices = RadWebCam.GetVideoCaptureDevices();
    videoFormats = RadWebCam.GetVideoFormats(videoDevices[0], true);
    audioDevices = RadWebCam.GetAudioCaptureDevices(); 
} 
private void CameraView_Load(object sender, EventArgs e)
{
    radWebCam1.Initialized += RadWebCam1_Initialized;
    radWebCam1.Initialize(videoDevices[0], videoFormats[0], audioDevices[0]);
    radWebCam1.Start(); 
}

private void RadWebCam1_Initialized(object sender, EventArgs e)
{
    t.Interval = 200;
    t.Tick += T_Tick;
    t.Start();
}

private void T_Tick(object sender, EventArgs e)
{
    t.Stop();
    radWebCam1.TakeSnapshot();
    radWebCam1.DiscardSnapshot();
}

 
````
````VB.NET

Private videoDevices As ReadOnlyCollection(Of MediaFoundationDeviceInfo)
Private videoFormats As ReadOnlyCollection(Of MediaFoundationVideoFormatInfo)
Private audioDevices As ReadOnlyCollection(Of MediaFoundationDeviceInfo)
Private t As Timer = New Timer()

Public Sub New()
    InitializeComponent()
    videoDevices = RadWebCam.GetVideoCaptureDevices()
    videoFormats = RadWebCam.GetVideoFormats(videoDevices(0), True)
    audioDevices = RadWebCam.GetAudioCaptureDevices()
End Sub

Private Sub CameraView_Load(ByVal sender As Object, ByVal e As EventArgs)
    AddHandler RadWebCam1.Initialized, AddressOf RadWebCam1_Initialized
    RadWebCam1.Initialize(videoDevices(0), videoFormats(0), audioDevices(0))
    RadWebCam1.Start()
End Sub

Private Sub RadWebCam1_Initialized(ByVal sender As Object, ByVal e As EventArgs)
    t.Interval = 200
    AddHandler t.Tick, AddressOf T_Tick
    t.Start()
End Sub

Private Sub T_Tick(ByVal sender As Object, ByVal e As EventArgs)
    t.[Stop]()
    RadWebCam1.TakeSnapshot()
    RadWebCam1.DiscardSnapshot()
End Sub


````

An alternative solution if the audio is not important for the precise scenario, feel free to pass **null** parameter to it: 


````C#

radWebCam1.Initialize(videoDevices[0], videoFormats[0], null);

 
````
````VB.NET

RadWebCam1.Initialize(videoDevices(0), videoFormats(0), Nothing)

````

# See Also

* [Connect to a Camera Device]({%slug winforms/editors/webcam/connect-to-camera-device%})