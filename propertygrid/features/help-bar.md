---
title: Help bar
page_title: Help bar | UI for WinForms Documentation
description: Help bar
slug: winforms/propertygrid/features/help-bar
tags: help,bar
published: True
position: 4
---

# Help bar



## 

RadPropertyGrid offers a help bar which reads and displays the name and content of the property __Description__ attribute. The help bar can be enabled by setting the __HelpVisible__ property to *true*:

#### Enabling the help bar

{{source=..\SamplesCS\PropertyGrid\Features\PropertyGridHelpBar.cs region=helpVisible}} 
{{source=..\SamplesVB\PropertyGrid\Features\PropertyGridHelpBar.vb region=helpVisible}} 

````C#
radPropertyGrid1.HelpVisible = true;

````
````VB.NET
RadPropertyGrid1.HelpVisible = True

````

{{endregion}} 

![propertygrid-features-helpbar](images/propertygrid-features-helpbar.png)

By double clicking over the size grip above the help section, the help section is being collapsed or expanded. Additionally, by using the size grip, the end—user can resize the help section.
        
