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

![webcam-snapshots 001](images/webcam-snapshots001.png)

#### Taking a snapshot in code

{{source=..\SamplesCS\WebCam\WebCamFeatures.cs region=TakeSnapshots}} 
{{source=..\SamplesVB\WebCam\WebCamFeatures.vb region=TakeSnapshots}} 

````C#

        public WebCamFeatures()
        {
            InitializeComponent();

            this.radWebCam1.SnapshotTaken += radWebCam1_SnapshotTaken;
        }

        private void radWebCam1_SnapshotTaken(object sender, Telerik.WinControls.UI.SnapshotTakenEventArgs e)
        {
            Image snapshot = e.Snapshot;
            // here you save the image to a file, in memory, or to show it in the UI 
        }

        private void OnTakeSnapshot(object sender, EventArgs e)
        {
            this.radWebCam1.TakeSnapshot();
        }

````
````VB.NET

    Public Sub New()
        InitializeComponent()
        AddHandler Me.RadWebCam1.SnapshotTaken, AddressOf radWebCam1_SnapshotTaken
    End Sub

    Private Sub radWebCam1_SnapshotTaken(ByVal sender As Object, ByVal e As Telerik.WinControls.UI.SnapshotTakenEventArgs)
        Dim snapshot As Image = e.Snapshot
    End Sub

    Private Sub OnTakeSnapshot(ByVal sender As Object, ByVal e As EventArgs)
        Me.RadWebCam1.TakeSnapshot()
    End Sub

````

{{endregion}} 


## Preview Snapshots

By default, when you take a snapshot a preview of the image will be shown. To disable this, set the **PreviewSnapshots** property to *false*.

{{source=..\SamplesCS\WebCam\WebCamFeatures.cs region=Preview}} 
{{source=..\SamplesVB\WebCam\WebCamFeatures.vb region=Preview}} 

````C#

        this.radWebCam1.PreviewSnapshots = false;

````
````VB.NET

        Me.RadWebCam1.PreviewSnapshots = False

````

{{endregion}} 

You can indicate if the snapshot preview is displayed via the **IsPreviewingSnapshot** property of **RadWebCam**.

## See Also
* [Commands]({%slug webcam-commands%})
* [Video Recording]({%slug webcam-recording-video%})
* [Media Information]({%slug webcam-media-information%})
* [Settings Dialog]({%slug camera-settings-dialog%})
* [Errors]({%slug webcam-errors%})

