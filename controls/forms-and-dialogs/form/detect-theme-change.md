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

<snippet id='form-form1-osthemechange-cs' />
<snippet id='form-form1-osthemechange-vb' />

 







