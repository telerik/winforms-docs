---
title: Detecting when the User Drags the RadTitleBar
page_title: Detecting when the User Drags the RadTitleBar
description: Detecting when the User Drags the RadTitleBar
slug: forms-and-dialogs-radtitlebar-how-to-detecting-when-the-user-drags-the-radtitlebar
tags: detecting,when,the,user,drags,the,radtitlebar
published: True
position: 0
---

# Detecting when the User Drags the RadTitleBar



## 

The following example, demonstrates how to detect when the user drags the title bar and to how to get its coordinates:

#### __[C#] Detecting when the TitleBar is dragged__

{{source=..\SamplesCS\Forms and Dialogs\ShapedForm1.cs region=detectTitleBarDragging}}
	        public const int WM_WINDOWPOSCHANGED = 0x47;
	        protected override void WndProc(ref Message m)
	        {
	            if (m.Msg == WM_WINDOWPOSCHANGED)
	            {
	                this.Text = Control.MousePosition.ToString();
	            }
	            base.WndProc(ref m);
	        }
	{{endregion}}



#### __[VB.NET] Detecting when the TitleBar is dragged__

{{source=..\SamplesVB\Forms and Dialogs\ShapedForm1.vb region=detectTitleBarDragging}}
	    Public Const WM_WINDOWPOSCHANGED As Integer = 71
	    Protected Overloads Overrides Sub WndProc(ByRef m As Message)
	        If m.Msg = WM_WINDOWPOSCHANGED Then
	            Me.Text = Control.MousePosition.ToString()
	        End If
	        MyBase.WndProc(m)
	    End Sub
	{{endregion}}


