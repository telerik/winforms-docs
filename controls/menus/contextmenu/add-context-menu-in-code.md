---
title: Add Context menu in the code
page_title: Add Context menu in the code - RadContextMenu
description: RadContextMenu is a non-visual component that sits in the component tray located below the form design surface.
slug: winforms/menus/add-contextmenu
tags: context,menus
published: True
position: 4
---


# Getting Started with WinForms ContextMenu

This tutorial will help you to quickly get started using the control.

## Adding Telerik Assemblies Using NuGet

To use `RadContextMenu` when working with NuGet packages, install the `Telerik.UI.for.WinForms.AllControls` package. The [package target framework version may vary]({%slug winforms-available-nugets%}).

Read more about NuGet installation in the [Install using NuGet Packages]({%slug winforms/nuget%}) article.

>tip With the 2025 Q1 release, the Telerik UI for WinForms has a new licensing mechanism. You can learn more about it [here]({%slug license-key%}).

## Adding Assembly References Manually

When dragging and dropping a control from the Visual Studio (VS) Toolbox onto the Form Designer, VS automatically adds the necessary assemblies. However, if you're adding the control programmatically, you'll need to manually reference the following assemblies:

* __Telerik.Licensing.Runtime__
* __Telerik.WinControls__
* __Telerik.WinControls.UI__
* __TelerikCommon__

The Telerik UI for WinForms assemblies can be install by using one of the available [installation approaches]({%slug winforms/installation-deployment-and-distribution/installing-on-your-computer%}). 

## Defining the RadContextMenu

This article demonstrates how you can add __RadContextMenu__ in the code and attach it to a specific control.  

1\.	Adding a __RadContextMenu__ at runtime. To programmatically add a __RadContextMenu__ to a form, create a new instance of a __RadContextMenu__

{{source=..\SamplesCS\Menus\ContextMenu\ContextMenuCode2.cs region=AddMenu}} 
{{source=..\SamplesVB\Menus\ContextMenu\ContextMenuCode2.vb region=AddMenu}} 


{{endregion}} 

2\. Add  __RadMenuItems__ to __RadContextMenu__.


{{source=..\SamplesCS\Menus\ContextMenu\ContextMenuCode2.cs region=AddItems}} 
{{source=..\SamplesVB\Menus\ContextMenu\ContextMenuCode2.vb region=AddItems}} 



{{endregion}} 

3\.	Subscribe to __МouseClick__ event of the control and call the __RadContextMenu.Show()__ method:


{{source=..\SamplesCS\Menus\ContextMenu\ContextMenuCode2.cs region=AttachToControl}} 
{{source=..\SamplesVB\Menus\ContextMenu\ContextMenuCode2.vb region=AttachToControl}} 



{{endregion}} 

4\.	Here is the result:

![WinForms RadContextMenu Apply Sample](images/menus-context-menu-add-context-meni-in-code001.png)


