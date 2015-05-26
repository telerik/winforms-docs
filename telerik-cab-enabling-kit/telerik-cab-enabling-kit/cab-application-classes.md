---
title: CAB Application Classes
page_title: CAB Application Classes | UI for WinForms Documentation
description: CAB Application Classes
slug: winforms/telerik-cab-enabling-kit/telerik-cab-enabling-kit/cab-application-classes
tags: cab,application,classes
published: True
position: 3
---

# CAB Application Classes



## RadWindowsFormsApplication

This class inherits from the original WindowsFormsApplication class. It controls the elements that are added to the application in its AfterShellCreated method by:

1. Registering the Command Adapters

1. Registering the UI Element Adapters

## RadFormShellApplication

The basis of a typical Composite UI Application Block application is the FormShellApplication class. This class helps to start building an application that will have a startup form. 

The __RadFormShellApplication__ class inherits from the RadWindowsFormsApplication class and calls the Run method in the application main routine.

## RadApplicationContextApplication

This class is used in applications that show up without a visual window or applications that require the complex creation of a UI before start up. This class also inherits from  RadWindowsFormsApplication class and calls the Application.Run method to start the application. 
