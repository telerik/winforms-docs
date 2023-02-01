---
title: Memory Considerations when Using Telerik UI for WinForms Suite
description: Things to have in mind about memory consumption when using Telerik UI for WinForms. 
type: how-to
page_title: Memory Considerations when Using Telerik UI for WinForms Suite
slug: memory-considerations
position: 5
tags: memory, leak, garbage
ticketid: 1595836
res_type: kb
---


## Environment
|Product Version|Product|Author|
|----|----|----|
|2023.1.117|UI for WinForms|[Desislava Yordanova](https://www.telerik.com/blogs/author/desislava-yordanova)|

## Description

**RadControls** provide rich UI capabilities and theming mechanism which inevitably increases the memory usage. Furthermore, our components are built from the [Telerik Presentation Framework](http://www.telerik.com/help/winforms/tpf-overview.html) which is built on top of the .NET Framework which once again, inevitably increases memory usage compared to other controls, such as the standard controls which simply wrap native objects.  Unless a certain control has a memory leak, it is eventually being disposed. Calling GC.**Collect** will not dispose the objects immediately, they will simply be marked for disposal and the next time the Garbage Collector passes by it will decide whether they are suitable for actual disposal. This is due to the non-deterministic behavior of the Garbage Collector. Our objects are mostly from Generation 2, which means that they will be disposed at a later state ([more about garbage collection](https://learn.microsoft.com/en-us/dotnet/standard/garbage-collection/fundamentals)). 

Usually, it is mistakenly considered as a memory leak when you are showing a new Form instance every time with the **ShowDialog** method. A quote from MSDN says: ["*Unlike modeless forms, the Close method is not called by the .NET Framework when the user clicks the close form button of a dialog box or sets the value of the DialogResult property. Instead the form is hidden and can be shown again without creating a new instance of the dialog box. Because a form displayed as a dialog box is not closed, you must call the Dispose method of the form when the form is no longer needed by your application.*"](http://social.msdn.microsoft.com/Forums/windows/en-US/1004be6c-c559-4e57-a6fd-c189f01e3cd3/showdialog-dispose-memory-leak).

The questions about the memory management in .NET are usually tough because there is no guaranteed way of freeing memory deterministically. You could call GarbageColector.Collect() but that is just a polite request, not a demand and also all running threads must be suspended for garbage collection to be proceed. 
Anyway DELETE OBJECT will instance the garbage collector but the garbage collector does not perform a gen#2 collection very often, it is now more important to call Dispose() on them.
As you may or may not know, the GC is split into generations - Gen #0, #1 and #2, plus the Large Object Heap.
The thought process is that you'll likely use lots of objects that will be short lived. So those should be easy and fast for the GC to get to - Gen #0 objects. So, when there is memory pressure, the first thing it does is a Gen 0 collection. Now, if that does not resolve enough pressure, then it goes back and does a Gen #1 sweep (redoing Gen #0), and then if still not enough, it does a Gen #2 cleanup (redoing Gen #1 and Gen #0). So, cleaning up long lived objects can take a while and it is very expensive since your threads may be suspended during the operation.

Our RadControls due to its complexity, will live to Generation #2. MS Controls are gen #0 because they are tiny wrappers around native Win32 components.
Furthermore the Dispose() is NOT automatically called by the .Net Garbage Collector and must be explicitly called if resources are to be released (such Keyboard Shortcuts in our controls).  

In WinForms, controls that are owned by another control (in that control's Controls collection, either by calling Add or by setting the control's Parent property) are disposed automatically when that control is itself disposed. Top-level forms are disposed when the window is destroyed. This means that the programmer does not have to do anything related do calling Dispose manually. IDisposable is for disposing unmanaged resources - this is the pattern in .NET. and this will free up out (as our shortcuts). 

I will summarize here:

RadControls are Generation #2 and Form automatically calls its Dispose method when Form is shown and closed. MS Controls are gen #0 because they are just tiny wrappers and its Dispose() method is not necessary to call. If there is a memory leak even calling the Dispose() will not free the memory.






 
