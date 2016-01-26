---
title: Detecting when the User Drags the RadTitleBar
page_title: Detecting when the User Drags the RadTitleBar | UI for WinForms Documentation
description: Detecting when the User Drags the RadTitleBar
slug: winforms/forms-and-dialogs/radtitlebar/detecting-when-the-user-drags-the-radtitlebar
tags: detecting,when,the,user,drags,the,radtitlebar
published: True
position: 1
previous_url: forms-and-dialogs-radtitlebar-how-to-detecting-when-the-user-drags-the-radtitlebar
---

# Detecting when the User Drags the RadTitleBar
 
## 

The following example, demonstrates how to detect when the user drags the title bar and to how to get its coordinates:

#### Detecting when the TitleBar is dragged 

{{source=..\SamplesCS\Forms and Dialogs\ShapedForm1.cs region=detectTitleBarDragging}} 
{{source=..\SamplesVB\Forms and Dialogs\ShapedForm1.vb region=detectTitleBarDragging}} 

````C#
public const int WM_WINDOWPOSCHANGED = 0x47;
protected override void WndProc(ref Message m)
{
    if (m.Msg == WM_WINDOWPOSCHANGED)
    {
        this.Text = Control.MousePosition.ToString();
    }
    base.WndProc(ref m);
}

````
````VB.NET
Public Const WM_WINDOWPOSCHANGED As Integer = 71
Protected Overloads Overrides Sub WndProc(ByRef m As Message)
    If m.Msg = WM_WINDOWPOSCHANGED Then
        Me.Text = Control.MousePosition.ToString()
    End If
    MyBase.WndProc(m)
End Sub

````

{{endregion}} 



