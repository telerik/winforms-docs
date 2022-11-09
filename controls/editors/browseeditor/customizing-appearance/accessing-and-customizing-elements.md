---
title: Accessing and Customizing Elements
page_title: Accessing and Customizing Elements - Browse Editor
description: Accessing and customizing elements can be performed either at design time, or at run time
slug: winforms/browseeditor/customizing-appearance/acessing-and-customizing-appearance
tags: button, themes
published: True
position: 0
---

# Accessing and Customizing Elements

Accessing and customizing elements can be performed either at design time, or at run time. Before proceeding with this topic, it is recommended to get familiar with the [visual structure]({%slug winforms/editors/browseeditor/structure%}) of __RadBrowseEditor__.

## Design time

You can access and modify the style for different elements in __RadBrowseEditor__ by using the Element hierarchy editor.

>caption Fig.1 Element Hierarchy Editor

![browseeditor customizing appearance customizing appearance 001](images/browseeditor-customizing-appearance-customizing-appearance001.png)

## Programmatically

You can customize the nested elements at run time as well:
>caption Fig.2 Customize Elements

![browseeditor customizing appearance customizing appearance 002](images/browseeditor-customizing-appearance-customizing-appearance002.png)

#### Customize elements 

{{source=..\SamplesCS\Editors\BrowseEditor1.cs region=CustomizeElementProgrammatically}} 
{{source=..\SamplesVB\Editors\BrowseEditor1.vb region=CustomizeElementProgrammatically}}
````C#
this.radBrowseEditor1.BrowseElement.BrowseButton.ButtonFillElement.NumberOfColors = 1;
this.radBrowseEditor1.BrowseElement.BrowseButton.ButtonFillElement.BackColor = Color.LightGreen;

````
````VB.NET
Me.RadBrowseEditor1.BrowseElement.BrowseButton.ButtonFillElement.NumberOfColors = 1
Me.RadBrowseEditor1.BrowseElement.BrowseButton.ButtonFillElement.BackColor = Color.LightGreen

```` 



{{endregion}} 

# See Also 

* [Element Hierarchy Editor]({%slug winforms/tools/element-hierarchy-editor%})
* [Themes]({%slug winforms/browseeditor/customizing-appearance/themes%})
