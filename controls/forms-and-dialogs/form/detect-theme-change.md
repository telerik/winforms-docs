---
title: Detect Theme Change
page_title: Detect Theme Change - WinForms RadForm
description: Learn how to detect when the OS theme is changed.
slug: form-detect-theme-change
tags: form
published: True
position: 3 
---

# Detect Theme Change

As of **R1 2022 SP1** RadForm offers the **WindowsThemeChanged** event which can be used to determine when OS theme change occurs at run-time. Its main purpose is to detect any theme changes on OS level in order to adjust the application theme.

>note The WindowsSettings.**CurrentWindowsTheme** can be used to detect the currently active windows theme.

{{source=..\SamplesCS\Forms and Dialogs\Form1.cs region=OSThemeChange}} 
{{source=..\SamplesVB\Forms and Dialogs\Form1.vb region=OSThemeChange}} 

````C#

private void RadForm_WindowsThemeChanged(object sender, Telerik.WinControls.WindowsThemeChangedEventArgs e)
{
    WindowsTheme newTheme = e.CurrentTheme;
    if (newTheme == WindowsTheme.Light)
    {
        this.BackColor = Color.LightBlue;
    }
    else if (newTheme == WindowsTheme.Dark)
    {
        this.BackColor = Color.DarkBlue;
    }
    else if (newTheme == WindowsTheme.HighContrast)
    {
        this.BackColor = Color.Black;
    }

    this.Text = "Windows Theme is " + newTheme.ToString();
}

````
````VB.NET

Private Sub RadForm_WindowsThemeChanged(sender As Object, e As WindowsThemeChangedEventArgs)
    Dim newTheme As WindowsTheme = e.CurrentTheme

    If newTheme = WindowsTheme.Light Then
        Me.BackColor = Color.LightBlue
    ElseIf newTheme = WindowsTheme.Dark Then
        Me.BackColor = Color.DarkBlue
    ElseIf newTheme = WindowsTheme.HighContrast Then
        Me.BackColor = Color.Black
    End If

    Me.Text = "Windows Theme is " & newTheme.ToString()
End Sub

```` 
 
{{endregion}} 







