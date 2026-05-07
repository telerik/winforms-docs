---
title: Building an Advanced Layout at Runtime
page_title: Building an Advanced Layout at Runtime - WinForms Dock Control
description: Learn how to build an advanced layout at runtime.
slug: winforms/dock/object-model/example:-building-an-advanced-layout-at-runtime
tags: example,building,an,advanced,layout,at,runtime
published: True
position: 6
previous_url: dock-object-model-example-building-an-advanced-layout-at-runtime
---

# Example: Building an advanced layout at runtime
 
In this tutorial we are going to create an advanced layout of __ToolWindows__ and __DocumentWindows__ programmatically. Our aim is to build the layout shown on the screenshot below:

![WinForms RadDock Elements Measure](images/dock-object-model-example-building-an-advanced-layout-at-runtime001.png)

We will have a floating window with two **ToolWindows** and dimensions of the floating window 150 height and 300 width. An interesting part of building the layout is using the __SizeInfo__ property of the **TabStrip** containers. This property gives you:

* The ability to set a precise size of a **TabStrip** which will not be changed when a user resizes the whole __RadDock__ control. For example, the **TabStrip** of `window7` will not be resized when we resize the whole form. Its width will always be 150 unless we explicitly resize the **TabStrip** of the `window7` by using the splitter. 

* The ability to set a relative size of a **TabStrip** so to keep two **TabStrips** in a specific size ratio. When we resize the form, the **TabStrips** of `window1` and `window2` will keep the ration of 1:2 between them - the **TabStrip** of `window2` having 1/3 parts and the **TabStrip** of `window1` having 2/3 parts. 

So, let's start building the layout:

1\. First, let's drag and drop a __RadDock__ instance on our form. Set the __Dock__ property to *Fill*. Subscribe to the **Load** event which we will use to implement our windows layout.

2\. Next, we are going to make to **ToolWindows**. The first one will be docked left, and the other will be docked left-bottom. For this case we need to give the first **ToolWindow** as a target in the **DockWindow** method responsible for docking the second **ToolWindow**:

#### Docking two ToolWindows 

<snippet id='dock-example-building-an-advanced-layout-at-runtime-dockingtwotoolwindows-cs' />
<snippet id='dock-example-building-an-advanced-layout-at-runtime-dockingtwotoolwindows-vb' />

 

![WinForms RadDock Two Windows Docked](images/dock-object-model-example-building-an-advanced-layout-at-runtime002.png)

3\. Next, let's make the height of `window2` relative to the height of the `window1`:

#### Setting relative size 

<snippet id='dock-example-building-an-advanced-layout-at-runtime-settingrelativesize-cs' />
<snippet id='dock-example-building-an-advanced-layout-at-runtime-settingrelativesize-vb' />

 
 
The result is shown on the picture below:

![WinForms RadDock Setting Relative Size](images/dock-object-model-example-building-an-advanced-layout-at-runtime003.png)

Now, if we decide to resize the form, the ration of the **TabStrips**' height will be kept:

![WinForms RadDock TabStrips Height](images/dock-object-model-example-building-an-advanced-layout-at-runtime004.png)
 
4\. Let's add two more windows:

#### Setting absolute size 

<snippet id='dock-example-building-an-advanced-layout-at-runtime-settingabsolitesize-cs' />
<snippet id='dock-example-building-an-advanced-layout-at-runtime-settingabsolitesize-vb' />

 
 
This time we set the __Width__ of the `window4` to an absolute value of 150 pixels.  

![WinForms RadDock Setting AbsoluteSize](images/dock-object-model-example-building-an-advanced-layout-at-runtime005.png)

![WinForms RadDock Resize Windows With AbsoluteSize](images/dock-object-model-example-building-an-advanced-layout-at-runtime006.png)

5\. Add two more **ToolWindows**. The interesting thing here is that these **ToolWindows** will be in a __Floating__ *DockState*. Please note that you can give the size and location of the form that will host the **ToolWindows**.

#### Floating ToolWindows 

<snippet id='dock-example-building-an-advanced-layout-at-runtime-floatingwindows-cs' />
<snippet id='dock-example-building-an-advanced-layout-at-runtime-floatingwindows-vb' />

 

![WinForms RadDock Floating ToolWindows](images/dock-object-model-example-building-an-advanced-layout-at-runtime007.png) 

6\. We will add one more **ToolWindow**. The specific thing here is that although the **ToolWindow** should be auto-hidden to `Bottom` if the user decides to click the `Pin` button, this window will be auto-hidden to top. This is done with the help of __AutoHidePosition__ property of the **TabStrip** which hosts the **ToolWindow**. In addition, this auto-hidden window will have a specific size of (200, 200). Since the __AutoHidePosition__ is set to *Top*, **Height** of the given size will be taken into consideration:

#### Setting the AutoHidePosition and AutoHideSize properties 

<snippet id='dock-example-building-an-advanced-layout-at-runtime-autohide-cs' />
<snippet id='dock-example-building-an-advanced-layout-at-runtime-autohide-vb' />

  

Initially, the layout will look like this:

![WinForms RadDock Setting AutoHidePosition and AutoHideSize](images/dock-object-model-example-building-an-advanced-layout-at-runtime008.png) 

If the user clicks the `Pin` button of `window7`, it will become auto-hidden to the top. Next, when the user hovers the `window7` tab, a window with 100 pixels in height is shown:

![WinForms RadDock Auto-Hidden Window](images/dock-object-model-example-building-an-advanced-layout-at-runtime009.png)

7\. Finally, we should decide if we want to show several **DocumentWindows**. If yes, we can add them as shown below:

#### Adding DocumentWindows 

<snippet id='dock-example-building-an-advanced-layout-at-runtime-addingdocumentwindows-cs' />
<snippet id='dock-example-building-an-advanced-layout-at-runtime-addingdocumentwindows-vb' />

 


![WinForms RadDock Adding DocumentWindows](images/dock-object-model-example-building-an-advanced-layout-at-runtime010.png)

However, you may not want to have any documents. In this case, set the __MainDocumentContainerVisible__ property to *false*:

#### Hiding the main DocumentContainer 

<snippet id='dock-example-building-an-advanced-layout-at-runtime-dockcontainervisible-cs' />
<snippet id='dock-example-building-an-advanced-layout-at-runtime-dockcontainervisible-vb' />

 

![WinForms RadDock Hiding the Main DocumentContainer ](images/dock-object-model-example-building-an-advanced-layout-at-runtime011.png)

# See Also

* [AllowedDockStates]({%slug winforms/dock/object-model/alloweddockstates%})
* [Creating a RadDock at Runtime]({%slug winforms/dock/object-model/creating-a-raddock-at-runtime%})
* [ Creating ToolWindow and DocumentWindow at Runtime]({%slug winforms/dock/object-model/creating-toolwindow-and-documentwindow-at-runtime%})
* [Customizing Floating Windows]({%slug winforms/dock/object-model/customizing-floating-windows%})
* [Customizing TabStrip Items]({%slug winforms/dock/object-model/customizing-tabstrip-items%})
* [Accessing DockWindows]({%slug winforms/dock/object-model/accessing-dockwindows%})
* [RadDock Properties and Methods]({%slug winforms/dock/object-model/raddock-properties-and-methods%})
* [Removing ToolWindow and DocumentWindow at Runtime]({%slug winforms/dock/object-model/removing-toolwindow-and-documentwindow-at-runtime%})
* [Tabs and Captions]({%slug winforms/dock/object-model/tabs-and-captions%})
* [ToolWindow and DocumentWindow Properties and Methods]({%slug winforms/dock/object-model/toolwindow-and-documentwindow-properties-and-methods%})
* [Tracking the ActiveWindow]({%slug winforms/dock/object-model/tracking-the-activewindow%})
