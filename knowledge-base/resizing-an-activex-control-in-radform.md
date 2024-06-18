---
title: Resizing an ActiveX control in RadForm
description: Resizing an ActiveX control in RadForm. Check it now!
type: how-to
page_title: Resizing an ActiveX control in RadForm
slug: resizing-an-activex-control-in-radform
tags: forms, activex, resize
res_type: kb
---

|Article relates to|Product|Author|Last modified|  
|----|----|----|----|
|RadForm for WinForms |Telerik UI for WinForms|Tsvetan Raykov|June 23, 2008 | 

## How To

Resize an ActiveX control in RadForm 
   

## Problem
  
Currently **RadForm** does not resize **ActiveX** controls that are anchored or docked inside the form. For example this issue occurs when a **WebBrowser** is dropped on a **RadForm** and the form is maximized at run time.  
   
## Solution

The solution is to resize the **ActiveX **control when resizing the form:  
 
1\. Set an appropriate size for your **ActiveX **control.  
   
````C#
this.webBrowser1.Size = new System.Drawing.Size(1024, 768); 

````

2\. Process the **Resize **event of the form.  
   
````C#

Resize += new System.EventHandler(this.frmWindow_Resize); 
private void frmWindow_Resize(object sender, EventArgs e) 
{ 
    Point pt = (Point)this.Size; 
    radTitleBar1.Width = pt.X; 
    webBrowser1.Width = pt.X - 20; 
    webBrowser1.Height = pt.Y - 30; 
} 

````

The above code snippet will allow you to expand and contract the window by using the form's handles or using the Maximize/Restore on the title bar. If you have a custom title bar, this code will also allow it to resize according to the window size.  

 
  
 


