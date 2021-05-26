---
title: Things to keep in mind when inspecting your application's memory usage
description: Things to keep in mind when inspecting your application's memory usage. Check it now!
type: how-to
page_title: Things to keep in mind when inspecting your application's memory usage
slug: things-to-keep-in-mind-when-inspecting-your-application-s-memory-usage
res_type: kb
---

|Product Version|Product|Author|Last modified|
|----|----|----|----|
|Q3 2014|RadControls for WinForms|Georgi Georgiev|November 14, 2014|
    
# Problem
 
Your application consumes more memory when it has RadControls and some of the memory is not immediately or is never disposed.
 
# Solution
 
The increased memory usage might come from the fact that our controls provide rich UI capabilities and theming mechanism. Furthermore our components are built from the [Telerik Presentation Framework](https://docs.telerik.com/devtools/winforms/telerik-presentation-framework/overview/overview) which is built on top of the .NET Framework which once again, inevitably increases memory usage compared to the standard controls which simply wrap native objects.
 
### Themes
 
When the first RadControl for an application is created it also loads its theme. Loading the theme consists of parsing a number of XML files and creating objects from that files. Since recreating these objects every time a control needs a theme is not efficient they are being saved for the lifetime of the application. These objects will not be disposed unless the application is closed.
 
### Garbage collector
 
However, there are cases when the memory will continue to raise over time. This case happen, for example when you open and close new Forms/RadForms with RadControls inside multiple times. Closing or calling the Dispose method of the form will **NOT** actually dispose the objects immediately. They will simply be marked for disposal and the next time the Garbage Collector passes by it will decide whether they are suitable for disposal. This is due to the non-deterministic behavior of the Garbage Collector. Our objects are mostly from Generation 3, which means that they will be disposed at a later state ([more about garbage collection](http://msdn.microsoft.com/en-us/library/ee787088%28v=vs.110%29.aspx)).
 
### Memory usage in Task Manager
 
Moreover, even if the Task Manager shows a certain amount of memory usage that does not necessarily mean that your application is actually using this amount of memory. Since taking memory from the Operating System is an expensive operation .NET tries to keep the memory for the application for as long as possible, for example until another application needs this memory. When inspecting your application for memory leaks with the Task Manager, always look at the [private working set](http://windows.microsoft.com/en-us/windows/what-task-manager-memory-columns-mean#1TC=windows-7) of the process. It shows the memory which cannot be used by another process. For example, on the image below you can see that Visual Studio is actually using 1,126,508 K of memory while its working set is 1,461,308:
 
![Working set vs private working set](images/memoryusage.png)
 
### The ShowDialog case
 
When showing forms using the ShowDialog method make sure to dispose them manually. Here is a quite from [MSDN](http://msdn.microsoft.com/en-us/library/c7ykbedk%28v=vs.110%29.aspx):
 
*Unlike non-modal forms, the Close method is not called by the .NET Framework when the user clicks the close form button of a dialog box or sets the value of the DialogResult property. Instead the form is hidden and can be shown again without creating a new instance of the dialog box. Because a form displayed as a dialog box is hidden instead of closed, you must call the Dispose method of the form when the form is no longer needed by your application.*

### Implementing IDisposable
In .NET the IDisposable interface indicates that this object should be disposed by invoking its Dispose method. In Windows Forms every Component such as a Timer or Control implement this interface. When a form is closed its dispose method is invoked and every child control is recursively disposed. You can choose to override this method. If you do so, you need to dispose only objects which will not be disposed otherwise. In another words, you should not dispose the controls which already have a parent, the base logic is smart enough to take them into consideration.

