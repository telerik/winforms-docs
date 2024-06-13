---
title: How to position the RadDesktopAlert control in the center of a Form
description: Position the RadDesktopAlert control in the center of a Form.
type: how-to
page_title: Position the RadDesktopAlert Control in the Center of a Form
slug: desktop-position-center-form
position: 1
tags: desktopalert, manual, position,location,center
ticketid: 1588288
res_type: kb
---

## Environment
|Product Version|Product|Author|
|----|----|----|
|2022.3.913|RadDesktopAlert for WinForms|[Dinko Krastev](https://www.telerik.com/blogs/author/dinko-krastev)|


## Description

This tutorial demonstrates how to position the RadDesktopAlert control in the center of a Form.

## Solution

To center the RadDesktopAlert control in your Form, you can subscribe to the LocationChanged event. Inside the event handler, you can calculate the location so that the popup will be positioned in the form center. The following code snippet demonstrates how this can be achieved.

````C#

private void radButton1_Click(object sender, EventArgs e)
{
    this.radDesktopAlert1.Popup.LocationChanged += Popup_LocationChanged;
    this.radDesktopAlert1.CaptionText = "New E-mail Notification";
    this.radDesktopAlert1.ContentText = "Hello Jack, I am writing to inform you " +
                                        "that the planning meeting scheduled for Wednesday has been postponed and" +
                                        "it will eventually be rescheduled, possibly for the next Tuesday";

    this.radDesktopAlert1.Show();
}

int x = 0;
int y = 0;
private void Popup_LocationChanged(object sender, EventArgs e)
{
    DesktopAlertPopup popup = sender as DesktopAlertPopup;
    if (popup != null)
    {
        x = this.Location.X + this.Width/2 - popup.Size.Width/2;
        y = this.Location.Y + this.Height/2 - popup.Size.Height/2;
        popup.Location = new Point(x, y);
    }
}

````
````VB.NET

Private Sub radButton1_Click(ByVal sender As Object, ByVal e As EventArgs)
	AddHandler Me.radDesktopAlert1.Popup.LocationChanged, AddressOf Popup_LocationChanged
	Me.radDesktopAlert1.CaptionText = "New E-mail Notification"
	Me.radDesktopAlert1.ContentText = "Hello Jack, I am writing to inform you " & "that the planning meeting scheduled for Wednesday has been postponed and" & "it will eventually be rescheduled, possibly for the next Tuesday"
	Me.radDesktopAlert1.Show()
End Sub

Private x As Integer = 0
Private y As Integer = 0

Private Sub Popup_LocationChanged(ByVal sender As Object, ByVal e As EventArgs)
	Dim popup As DesktopAlertPopup = TryCast(sender, DesktopAlertPopup)

	If popup IsNot Nothing Then
		x = Me.Location.X + Me.Width / 2 - popup.Size.Width / 2
		y = Me.Location.Y + Me.Height / 2 - popup.Size.Height / 2
		popup.Location = New Point(x, y)
	End If
End Sub


````


