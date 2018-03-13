---
title: Hosting Windows Forms in MFC/COM client applications
description: Host Windows Forms in MFC/COM client applications 
type: troubleshooting
page_title: Hosting Windows Forms in MFC/COM client applications
slug: hosting-windows-forms-in-mfccom-client-applications
tags: version 
res_type: kb
---

# Hosting Windows Forms in MFC/COM client applications

## How To
 
Host Windows Forms in MFC/COM client applications 

## Solution

When you open a Windows Form from a COM client application, such as a Visual Basic 6.0 application or an MFC application, the form may behave unexpectedly. For example, when you press the TAB key, the focus does not change from one control to another control. When you press the ENTER key while a command button has focus, the button's Click event is not raised. You may also experience unexpected behavior for keystrokes or mouse activity. 

This behavior occurs because the unmanaged application does not implement the message loop support that Windows Forms requires to work correctly. The message loop provided by the COM client application is fundamentally different from the Windows Forms message loop. 

An application's message loop is an internal program loop that retrieves messages from a thread's message queue, translates them, and then sends them to the application to be handled. The message loop for a Windows Form does not have the same architecture as message loops that earlier applications, such as Visual Basic 6.0 applications and MFC applications, provide. The window messages that are posted to the message loop may be handled differently than the Windows Form expects. Therefore, unexpected behavior may occur. Some keystroke combinations may not work, some mouse activity may not work, or some events may not be raised as expected. 

You can resolve these problems by displaying the form on a .NET Framework message loop, which is created by using the [System.Windows.Forms.Application.Run](https://msdn.microsoft.com/en-us/library/ms157900(VS.80).aspx) method.
To make a Windows Form work correctly from a COM client application, you must run it on a Windows Forms message loop. To do this, use one of the following approaches:

* Use the [System.Windows.Forms.Form.ShowDialog](https://msdn.microsoft.com/en-us/library/c7ykbedk(VS.80).aspx) method to display the Windows Form. For more information, see How to: Support COM Interop by Displaying a Windows Form with the ShowDialog Method .

* Display each Windows Form on a new thread. For more information, see [How to: Support COM Interop by Displaying Each Windows Form on Its Own Thread](http://msdn2.microsoft.com/en-us/library/ms229591(VS.80).aspx).

* Create a shared message loop on a new thread in the .NET Framework component. For more information, see [How to: Support COM Interop by Displaying Windows Forms on a Shared Thread](http://msdn2.microsoft.com/en-us/library/ms229609(VS.80).aspx).
