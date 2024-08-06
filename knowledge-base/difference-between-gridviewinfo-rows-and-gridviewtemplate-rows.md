---
title: Difference between GridViewInfo.Rows and GridViewTemplate.Rows
description: Difference between GridViewInfo.Rows and GridViewTemplate.Rows. Check it now!
type: how-to
page_title: Difference between GridViewInfo.Rows and GridViewTemplate.Rows
slug: difference-between-gridviewinfo-rows-and-gridviewtemplate-rows
tags: gridview
res_type: kb
---

|Article relates to|Product|Author|Last modified|  
|----|----|----|----|
|RadControls for WinForms, Q2 2010 SP2|Telerik UI for WinForms|Nikolay Diyanov|Oct 7, 2010| 
 
## Introduction   
    
Many of you have noticed that RadGridView has **MasterTemplate** and **MasterView** of types **GridViewTemplate** and **GridViewInfo**, respectively. The aim of this article is to explain what these properties are.  
   
## Explanation
  
One **GridViewTemplate** corresponds to one DataSource. As its name speaks, it is a template and it defines the structure of the data presented - the number, order, header text and other properties of the columns. In addition it has properties for user interaction - **AllowAddNewRow**, **ShowColumnHeaders**, etc.   
   
On the other side, you may have several **GridViewInfo**'s (views) for one DataSource. In a RadGridView displaying flat data, there is one **GridViewTemplate **and one **GridViewInfo **for one DataSource. Therefore, you will find that some of their properties will return one and the same values.   
   
 In order to understand the actual difference, let's analyze the case of hierarchical grid with 2 levels of hierarchy - one parent and one child levels. Since there are two DataSources in this case, there are two **GridViewTemplates** - one per level. These **GridViewTemplates** govern the data structure properties.   
 However, you may have several **GridViewInfos** for one **GridViewTemplate** - if you have three rows of the **MasterGridViewTemplate** expanded, you will have three **GridViewInfos** for the child **GridViewTemplate**.

