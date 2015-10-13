---
title: Control Element Structure 
page_title: Control Element Structure  | UI for WinForms Documentation
description: Control Element Structure 
slug: winforms/dataentry/control-element-structure-
tags: control,element,structure,
published: True
position: 2
---

# Control Element Structure 



## 

__RadDataEntry__ control inherits __RadScrollablePanel__ control, so __RadDataEntry__ has support for horizontal and vertical scrollbars. In __RadDataEntry__ there is embedded Validation Panel that can be used to show some additional information according the validation requirements. The figure below demonstrates the structure of __RadDataEntry__.
 
![dataentry-overview-control-element-structure 001](images/dataentry-overview-control-element-structure001.png)

__RadDataEntry__ generates content item for each public property that can be edited. These items represent one __RadPanel__ with hidden border and inside this panel, there are two labels and one editor.
        
![dataentry-overview-control-element-structure 002](images/dataentry-overview-control-element-structure002.png)

The Validation label does not have any text by default. It is designed to be used in cases where users want to show some additional information.
        
