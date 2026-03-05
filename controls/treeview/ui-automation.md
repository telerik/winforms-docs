---
title: UI Automation Support (UI Accessibility)
page_title: UI Automation Support (UI Accessibility) - RadTreeView
description: UI Automation Support (UI Accessibility) for RadTreeView.   
slug: treeview-ui-automation
tags: treeview,ui,automation
published: True
position: 21
---

# UI Automation Support

With the Q4 2025 version of our controls, RadTreeView supports UI Automation. The current implementation of UI Automation for RadTreeView is similar to the MS WinForms TreeView implementation with some extended functionality. The main goal of this implementation is to ensure compliance with accessibility standards and to provide a common practice for automated testing. 

This functionality is enabled by default. To disable it, you can set the __EnableUIAutomation__ property to false.

````C#

this.radTreeView1.EnableUIAutomation = false;

````
````VB.NET

Me.radTreeView1.EnableUIAutomation = False

````

| **Tree Structure**|
|------------------------|
| ├─ [Tree](https://learn.microsoft.com/en-us/dotnet/framework/ui-automation/ui-automation-support-for-the-tree-control-type) (RadTreeView Control)|
| &nbsp;&nbsp;&nbsp;&nbsp;├─ [TreeItem](https://learn.microsoft.com/en-us/dotnet/framework/ui-automation/ui-automation-support-for-the-treeitem-control-type) (RadTreeNode)|
| &nbsp;&nbsp;&nbsp;&nbsp;├─ [TreeItem](https://learn.microsoft.com/en-us/dotnet/framework/ui-automation/ui-automation-support-for-the-treeitem-control-type) (RadTreeNode)|
| &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;└─ [Expander](https://learn.microsoft.com/en-us/dotnet/framework/ui-automation/ui-automation-support-for-the-button-control-type) (RadButton)|
| &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;└─ [CheckBox](https://learn.microsoft.com/en-us/dotnet/framework/ui-automation/ui-automation-support-for-the-checkbox-control-type) (RadCheckBox)|
| &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;└─ [Image](https://learn.microsoft.com/en-us/dotnet/framework/ui-automation/ui-automation-support-for-the-image-control-type) (Node Image Element)|
| &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;└─ [Text](https://learn.microsoft.com/en-us/dotnet/framework/ui-automation/ui-automation-support-for-the-text-control-type) (Node Text Element)|
| &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;└─ [TreeItem](https://learn.microsoft.com/en-us/dotnet/framework/ui-automation/ui-automation-support-for-the-treeitem-control-type) (RadTreeNode)|
| &nbsp;&nbsp;&nbsp;&nbsp;├─ [TreeItem](https://learn.microsoft.com/en-us/dotnet/framework/ui-automation/ui-automation-support-for-the-treeitem-control-type) (RadTreeNode)|
| &nbsp;&nbsp;&nbsp;&nbsp;├─ [HScrollbar](https://learn.microsoft.com/en-us/dotnet/framework/ui-automation/ui-automation-support-for-the-scrollbar-control-type) (Horizontal ScrollBar)|
| &nbsp;&nbsp;&nbsp;&nbsp;└─ [VScrollbar](https://learn.microsoft.com/en-us/dotnet/framework/ui-automation/ui-automation-support-for-the-scrollbar-control-type) (Vertical ScrollBar)|

## Relevant Properties 

The table below outlines the __UI Automation__ properties most important for understanding and interacting with RadTreeView control.

#### RadTreeView 

* AutomationElementIdentifiers.ControlTypeProperty.Id => ControlType.Tree.Id
* AutomationElementIdentifiers.LocalizedControlTypeProperty.Id => "tree"
* AutomationElementIdentifiers.HelpTextProperty.Id => this.Owner.AccessibleDescription
* AutomationElementIdentifiers.IsContentElementProperty.Id => true
* AutomationElementIdentifiers.IsKeyboardFocusableProperty.Id => true
* AutomationElementIdentifiers.IsSelectionPatternAvailableProperty.Id => true
* AutomationElementIdentifiers.IsScrollPatternAvailableProperty.Id => true
* AutomationElementIdentifiers.NameProperty.Id => this.Owner.Name

#### RadTreeNode
 
* AutomationElementIdentifiers.ControlTypeProperty.Id => ControlType.TreeItem.Id
* AutomationElementIdentifiers.LocalizedControlTypeProperty.Id => "tree item"
* AutomationElementIdentifiers.HelpTextProperty.Id => this.Owner.ToolTipText
* AutomationElementIdentifiers.IsOffscreenProperty.Id => GetIsOffscreen()
* AutomationElementIdentifiers.NameProperty.Id => this.Owner.Text
* AutomationElementIdentifiers.HasKeyboardFocusProperty.Id => this.Owner.Selected
* AutomationElementIdentifiers.IsKeyboardFocusableProperty.Id => this.Owner.Enabled
* AutomationElementIdentifiers.IsEnabledProperty.Id => this.Owner.Enabled
* AutomationElementIdentifiers.IsContentElementProperty.Id => true
* AutomationElementIdentifiers.IsSelectionItemPatternAvailableProperty.Id => true
* AutomationElementIdentifiers.IsScrollItemPatternAvailableProperty.Id => true
* AutomationElementIdentifiers.IsExpandCollapsePatternAvailableProperty.Id => true
* AutomationElementIdentifiers.IsInvokePatternAvailableProperty.Id => true
* AutomationElementIdentifiers.IsTogglePatternAvailableProperty.Id => this.Owner.TreeViewElement?.CheckBoxes == true

## Supported Control Patterns

The following section outlines the supported automation patterns for the __RadTreeView__ control and its constituent elements.

#### RadTreeView

* [Selection Control Pattern](https://learn.microsoft.com/en-us/windows/win32/winauto/uiauto-implementingselection)
* [Scroll Control Pattern](https://learn.microsoft.com/en-us/windows/win32/winauto/uiauto-implementingscroll)

#### RadTreeNode

* [SelectionItem Control Pattern](https://learn.microsoft.com/en-us/windows/win32/winauto/uiauto-implementingselectionitem)
* [ExpandCollapse Control Pattern](https://learn.microsoft.com/en-us/windows/win32/winauto/uiauto-implementingexpandcollapse)
* [ScrollItem Control Pattern](https://learn.microsoft.com/en-us/windows/win32/winauto/uiauto-implementingscrollitem)
* [Invoke Control Pattern](https://learn.microsoft.com/en-us/windows/win32/winauto/uiauto-implementinginvoke)
* [Toggle Control Pattern](https://learn.microsoft.com/en-us/windows/win32/winauto/uiauto-implementingtoggle)


## See Also
 
* [Getting Started]({%slug winforms/treeview/getting-started%})
* [Structure]({%slug winforms/treeview/structure%})



