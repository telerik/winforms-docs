---
title: Scale Controls Manually
page_title: Scale Controls Manually 
description: Scale Controls Manually
slug: scale-controls-manually
tags: scale, controls, hdpi
published: True
res_type: kb
position: 0
---

# Description

You need to manually scale the controls. This is needed when you are using the standard .NET form which is not scaling the Telerik UI for WinForms controls. Or you want to use the build-in scaling mechanism to enlarge the controls dynamically. 

# Solution

Use the __Scale__ method to scale the controls. You can check the current DPI settings in the code as well 


````C#
protected override void OnLoad(EventArgs e)
{
    base.OnLoad(e);
     ScaleChildControls();
}

public void ScaleChildControls()
{
    if (TelerikHelper.IsWindows8OrLower || TelerikHelper.IsWindows10CreatorsUpdateOrHigher)
    {

        Screen showScreen = Screen.FromControl(this);
        SizeF scale = NativeMethods.GetMonitorDpi(showScreen, NativeMethods.DpiType.Effective);
        foreach (var item in this.Controls)
        {
            if (item is RadControl)
            {
                var control = item as RadControl;
                if (scale != control.RootElement.DpiScaleFactor)
                {
                    scale = TelerikDpiHelper.ScaleSizeF(scale, new SizeF(1f / control.RootElement.DpiScaleFactor.Width, 1f / control.RootElement.DpiScaleFactor.Height));
                    control.Scale(scale);
                }
            }
        }
    }
}

````
````VB.NET
Protected Overrides Sub OnLoad(ByVal e As EventArgs)
	MyBase.OnLoad(e)
	 ScaleChildControls()
End Sub

Public Sub ScaleChildControls()
	If TelerikHelper.IsWindows8OrLower OrElse TelerikHelper.IsWindows10CreatorsUpdateOrHigher Then

		Dim showScreen As Screen = Screen.FromControl(Me)
		Dim scale As SizeF = NativeMethods.GetMonitorDpi(showScreen, NativeMethods.DpiType.Effective)
		For Each item In Me.Controls
			If TypeOf item Is RadControl Then
				Dim control = TryCast(item, RadControl)
				If scale <> control.RootElement.DpiScaleFactor Then
					scale = TelerikDpiHelper.ScaleSizeF(scale, New SizeF(1F / control.RootElement.DpiScaleFactor.Width, 1F / control.RootElement.DpiScaleFactor.Height))
					control.Scale(scale)
				End If
			End If
		Next item
	End If
End Sub
````


