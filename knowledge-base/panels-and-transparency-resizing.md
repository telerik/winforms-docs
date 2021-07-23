---
title: Panels and Transparency - Resizing
description: Panels and Transparency - Resizing. Check it now!
type: how-to
page_title: Panels and Transparency - Resizing
slug: panels-and-transparency-resizing
res_type: kb
---

|Product Version|Product|Author|Last modified|
|----|----|----|----|
|Q2 2008|RadControls for WinForms|Nikolay Diyanov|Dec 4, 2008| 
 
 
**PROBLEM**  
   
When you have Panel, TableLayoutPanel or FlowLayoutPanel with transparent BackColor and gradient background, your scenario might include resizing these panels. However, you will notice undesired flickering while resizing.  
   
**HOW-TO**  
Overcome the issue with the flickering panels on resize.  
   
**SOLUTION**  

In order to reduce the flickering, you should make your own panels' descendant classes. Then, in the constructor of the inherited class, you should set the [**DoubleBuffer**](http://msdn.microsoft.com/en-us/library/b367a457.aspx) to *true*:  

````C#   
public class CustomTableLayoutPanel : TableLayoutPanel  
{  
    public CustomTableLayoutPanel()  
    {  
        this.DoubleBuffered = true;  
    }  
} 

````


This is also useful when your scenario regards scrolling. A sample project is available at the [following link](https://github.com/telerik/winforms-sdk/tree/master/ResizingPanelsDoubleBuffer) to demonstrate how panels are behaving with and without DoubleBuffer. 

