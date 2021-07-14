---
title: Performance considerations
description: Performance considerations. Check it now!
type: how-to
page_title: Performance considerations
slug: performance-considerations
res_type: kb
---

|Article relates to|Product|Author|Last modified|  
|----|----|----|----|
|RadControls for WinForms|Telerik UI for WinForms|Nikolay Diyanov|Sep 23, 2020| 

## Overview
   
Performance plays a very important part in every application. To get the best out of your RadControls-enabled application, we have put together the following non-extensive list of frequently asked questions, which should give you an insight on RadControls for WinForms performance. The article also includes some tips and tricks on how to address certain performance concerns.  
   
## FAQ
  
Q: *Why standard toolbox controls load faster than RadControls?*

A: RadControls are built on an especially designed framework ([Telerik Presentation Framework](https://docs.telerik.com/devtools/winforms/telerik-presentation-framework/overview/introducing-the-telerik-presentation-framework)) which allows for greater customizations and outstanding visual effects, which is only comparable to the ones provided by the Windows Presentation Foundation technology. This approach has its challenges, because the Windows Forms platform was not build with rich visualizations in mind.
   
Telerik RadControls load more elements than the standard controls, which has an impact on loading performance. Moreover, the standard controls are Win32 controls of the operating system and as such they normally load faster than any other controls that have additional features.  
Loading/start-up performance suffers in the following cases:  
 • Too many RadControl elements are animated on the form. A RadCarousel with many items is a good example;  
 • The form/application has too many visual elements on the form, etc, such as RadGridView, RadPanelBar, and/or RadListBox with many items;  
   
Q: *I have an MDI application. The first time I open a RadControls enabled MDI child, it loads slower than the sequential RadControls MDI children.*
  
A: The first time a RadControl loads, static resources related to the themes are deserialized into the memory. Once initialized, these resources do not need to be recreated again. In addition, certain Rad types should be registered and this is a one-time effort as well. So, the second time you try to create and open a RadControls MDI enabled form while the application is running, it will load faster.  
   
## Tips and Tricks
   
Tips and tricks for optimizing your RadControls enabled application  
   
- Load themes components in a separate thread.   

	In case you want to load more than one [theme components](https://docs.telerik.com/devtools/winforms/styling-and-appearance/using-default-themes) in your application, but you need to show only one initially, you can load the rest of the components in a separate thread. For additional information refer to the following article: [Load theme components in a separate thread](https://www.telerik.com/support/kb/winforms/details/load-theme-components-in-a-separate-thread).

- Build your application for the x86 platform.  

    For additional information, refer to the following article: [Building applications for x64 (or AnyCPU at 64-bit OS)](https://www.telerik.com/support/kb/winforms/details/building-applications-for-x64-(or-anycpu-at-64-bit-os)).

- Optimize RadGridView.  

    In case you are using RadGridView with a lot of data, you can speed it up by using [RadVirtualGrid](https://docs.telerik.com/devtools/winforms/controls/virtualgrid/overview). It provides a convenient way to implement your own data management operations and optimizes the performance when interacting with large amounts of data.

- Optimize RadTreeView.   

    As in the case of RadGridView, the BeginUpdate/EndUpdate structure which suspends all visual updates will allow you to boost the performance when you add RadTreeNodes to RadTreeView:  
 
 
````C#
this.radTreeView1.BeginUpdate();
  
for (int i = 0; i < 10000; i++)
{
    RadTreeNode node = new RadTreeNode(i.ToString());
    this.radTreeView1.Nodes.Add(node);
}
  
this.radTreeView1.EndUpdate();

````
 

The other way to optimize RadTreeView is to use its Load on Demand feature. For additional information, refer to the following article: [Load on Demand](https://docs.telerik.com/devtools/winforms/treeview/data-binding/load-on-demand).



