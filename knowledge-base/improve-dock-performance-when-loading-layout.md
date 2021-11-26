---
title: How to Improve Performance when Loading XML Layout in RadDock
description: Learn how to improve performance when loading XML layout in RadDock
type: how-to
page_title: How to Improve Performance when Loading XML Layout in RadDock
slug: improve-dock-performance-when-loading-layout
position: 0
tags: dock, raddock, load, layout, performance, slow
res_type: kb
---

## Environment
 
|Product Version|Product|Author|
|----|----|----|
|2021.3.914|RadDock for WinForms|[Desislava Yordanova](https://www.telerik.com/blogs/author/desislava-yordanova)|
 
## Description

**RadDock** provides functionality to save and load layouts stored in XML. Depending on the XML content, the loading behavior may take some time. This article demonstrates a trick how to facilitate the initial load time when loading an XML with stored layout in RadDock. 
 
## Solution 

Using the **BeginTransactionBlock** and **EndTransactionBlock** methods while the layout is being loaded may improve the layout loading time significantly. However, depending on the exact layout that has to be restored, a lot of document windows may be contained even though most of them may be hidden. During the XML loading, multiple inner split containers may need to be created and layout logic is expected to be performed which is the most time consuming action. That is why the possible solution to eliminate the layout logic while loading the XML is to make the **RadDock** control invisible during this process: 


````C#

string fileName = @"..\..\Layout.xml";
this.radDock1.Visible = false;
// this.radDock1.BeginTransactionBlock();
this.radDock1.LoadFromXml(fileName);
//this.radDock1.EndTransactionBlock();
this.radDock1.Visible = true;

````
````VB.NET

Dim fileName As String = "..\..\Layout.xml"
Me.RadDock1.Visible = False
'Me.RadDock1.BeginTransactionBlock()
Me.RadDock1.LoadFromXml(fileName)
'Me.RadDock1.EndTransactionBlock()
Me.RadDock1.Visible = True

```` 

# See Also

* [Loading And Saving Layouts]({%slug winforms/dock/loading-and-saving-layouts/loading-and-saving-layouts%}) 





    
   
  
    
 
