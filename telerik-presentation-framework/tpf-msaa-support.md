---
title: Microsoft Active Accessibility Support
page_title: Microsoft Active Accessibility Support
description: Microsoft Active Accessibility Support
slug: tpf-msaa-support
tags: microsoft,active,accessibility,support
published: True
position: 11
---

# Microsoft Active Accessibility Support



## 

Microsoft Active Accessibility is a COM-based technology that provides a standard, consistent mechanism for applications and Active Accessibility
          clients to exchange information. Additionally, it provides lightweight UI test automation. For more information refer to the following articles:
        

* [MSAA](http://msdn.microsoft.com/en-us/library/ms971310.aspx)

* [UI Test Automation](http://msdn.microsoft.com/en-us/magazine/cc163864.aspx)

MSAA it is also a great automation tool, which Microsoft included in Visual Studio 2010. The automation allows developers to access and manipulate
          all UI elements in applications
          that support it. However, at this point only the standard Windows Forms controls have support for this technology, and it is quite limited
        

Telerik UI for WinForms allow you to create a simple coded UI test using MSAA in a few mouse clicks (we are using RadListControl for
          the purpose of this demo). Here is how this works:
        

1. Let's choose "Coded UI Test" from Visual Studio's Test menu. Press OK![tpf-msaa-support 001](images/tpf-msaa-support001.png)

1. Choose the first option -- "Record actions, edit UI map or add assertions"![tpf-msaa-support 002](images/tpf-msaa-support002.png)

1. Then, start an application using Telerik UI for WinForms - in our case this is a form with RadListControl.![tpf-msaa-support 003](images/tpf-msaa-support003.png)

1. Once the test has been recorded, choose "Generate Code" from the Record window and then add a Debug.Assert call manually
              to check the value, for example, of the SelectedIndex property:
            

	
              Mouse.Click(uIListItem1ListItem, new Point(47, 33));
              Assert.AreEqual(this.UIRadListControlTestWindow.GetProperty("SelectedIndex"), 1);
            



	
              Mouse.Click(uIListItem1ListItem, New Point(47, 33))
              Assert.AreEqual(Me.UIRadListControlTestWindow.GetProperty("SelectedIndex"), 1)
            



1. Finally, select the test from Visual Studio and run the test in the current context.

After you execute these steps, you will see how Visual Studio's [automated] test opens the form and presses the second
          item of RadListControl. The test will fail if RadListControl SelectIndex is not equal to 1.
        
