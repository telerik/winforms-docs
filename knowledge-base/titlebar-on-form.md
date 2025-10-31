---
title: Use RadTitleBar on a standart MS Form/RadForm
description: This article demonstrates how to use RadTitle on standart MS Form/RadForm.
type: how-to
page_title: Use RadTitleBar on a standart MS Form/RadForm
slug: titlebar-on-form
position: 0
tags: titlebar, forms, minimize, maximize, winforms
res_type: kb
---

## Environment
 
|Product Version|Product|Author|
|----|----|----|
|2025.3.812|RadTitleBar for WinForms|[Nadya Karaivanova](https://www.telerik.com/blogs/author/nadya-karaivanova)|
 
## Description

The standart Form as well as RadForm, do provide their own title bar integrated in the form. However, a common requirement is to want to customize the bottons on the form, or change their behavior, etc. Here comes [RadTitleBar](https://docs.telerik.com/devtools/winforms/controls/forms-and-dialogs/radtitlebar/radtitlebar) that allows to be fully customized. 

## Solution 

To use RadTitleBar on a standart Form or RadForm, and achieve the same behavior when minimizing/maximizing the form you need to override the `WndProc()` as shown below:

A full code snippet is illustrated below. You can use the following approach for either [MS Form](https://learn.microsoft.com/en-us/dotnet/api/system.windows.forms.form?view=windowsdesktop-9.0) or [RadForm](https://docs.telerik.com/devtools/winforms/controls/forms-and-dialogs/form/form).
 

````C#
public partial class Form1 : Form
{
    public Form1()
    {
        InitializeComponent();
        //remove title bar of existing Form
        this.ControlBox = false;
        this.FormBorderStyle = FormBorderStyle.None;

        //Add RadTitleBar
        RadTitleBar radTitleBar = new Telerik.WinControls.UI.RadTitleBar();
        radTitleBar.Dock = DockStyle.Top;
        this.Controls.Add(radTitleBar);

    }

    protected override void WndProc(ref Message m)
    {
        if (m.Msg == NativeMethods.WM_GETMINMAXINFO)
        {
            NativeMethods.MINMAXINFO info = (NativeMethods.MINMAXINFO)Marshal.PtrToStructure(m.LParam, typeof(NativeMethods.MINMAXINFO));

            if (this.Parent == null)
            {
                Screen scr = Screen.FromControl(this);
                Rectangle workingArea = scr.WorkingArea;
                Rectangle screenRect = scr.Bounds;

                info.ptMaxSize.x = workingArea.Width;
                info.ptMaxSize.y = workingArea.Height;
                info.ptMaxPosition.x = workingArea.X - screenRect.X;
                info.ptMaxPosition.y = workingArea.Y - screenRect.Y;
                Marshal.StructureToPtr(info, m.LParam, false);
            }
        }

        base.WndProc(ref m);
    }
}
   
````
````VB.NET
Public Partial Class Form1
    Inherits Form

    Public Sub New()
        InitializeComponent()
        ' remove title bar of existing Form
        Me.ControlBox = False
        Me.FormBorderStyle = FormBorderStyle.None

        ' Add RadTitleBar
        Dim radTitleBar As RadTitleBar = New Telerik.WinControls.UI.RadTitleBar()
        radTitleBar.Dock = DockStyle.Top
        Me.Controls.Add(radTitleBar)
    End Sub

    Protected Overrides Sub WndProc(ByRef m As Message)
        If m.Msg = NativeMethods.WM_GETMINMAXINFO Then
            Dim info As NativeMethods.MINMAXINFO = CType(Marshal.PtrToStructure(m.LParam, GetType(NativeMethods.MINMAXINFO)), NativeMethods.MINMAXINFO)

            If Me.Parent Is Nothing Then
                Dim scr As Screen = Screen.FromControl(Me)
                Dim workingArea As Rectangle = scr.WorkingArea
                Dim screenRect As Rectangle = scr.Bounds
                info.ptMaxSize.x = workingArea.Width
                info.ptMaxSize.y = workingArea.Height
                info.ptMaxPosition.x = workingArea.X - screenRect.X
                info.ptMaxPosition.y = workingArea.Y - screenRect.Y
                Marshal.StructureToPtr(info, m.LParam, False)
            End If
        End If

        MyBase.WndProc(m)
    End Sub
End Class

````

