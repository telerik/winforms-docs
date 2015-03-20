---
title: Workspaces
page_title: Workspaces
description: Workspaces
slug: telerik-cab-enabling-kit-telerik-cab-enabling-kit-workspaces
tags: workspaces
published: True
position: 1
---

# Workspaces



Workspaces are components that encapsulate the user interface of the Windows
application without affecting the underlying programming layers. Telerik CAB
Enabling Kit provides the following workspaces:

## RadDockWorkspace

RadDockWorkspace implements the RadDock as a workspace that shows the SmartParts as dockable windows.
        	RadDockWorkspace is based on WorkspaceComposer and inherit the RadDock control. Each SmartPart 
        	gets wrapped into a dockable object and then shown. A Dockable workspace creates an instance 
        	with the Host form and with the instance of RadDock.
        

## RadPageViewPageWorkspace

RadPageViewPageWorkspace implements a workspace, which shows SmartParts as tabbed pages inside a 
        	RadPageView control. Most of the properties available in PageSmartPartInfo and ease the
        	RadPageView control customization.
        

The RadPageViewPageWorkspace is based on the WorkspaceComposer. The RadPageViewPageWorkspace
        	inherit the RadPageView control and expose all its functionality including sets the view mode
        	of RadPageView. The supported modes are Strip, Stack and Outlook. The RadPageViewPageWorkspace
        	lets you show and hide controls and SmartParts inside a tabbed page.
        

## RadFormMdiWorkspace

RadFormMdiWorkspace implements a workspace, which shows SmartParts as MDI child windows.
        	The RadFormMdiWorkspace is based on the WindowWoskpace. The RadFormMdiWorkspace lets you
        	show and hide controls and SmartParts inside a themed RadForm MDI container.
        

## RadTabbedMdiWorkspace

RadTabbedMdiWorkspace implements a workspace, which shows SmartParts as MDI child windows 
        	as tabbed pages. The RadTabbedMdiWorkspace is based on the RadFormMdiWorkspace. The
        	RadTabbedMdiWorkspace lets you show and hide controls and SmartParts inside a themed 
        	RadForm MDI container with tabbed interface of RadDock control.
        
