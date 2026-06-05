---
title: Save and Load Layout
page_title: Save and Load Layout - RadDiagram
description: RadDiagram offers save and load layout to XML functionality.
slug: winforms/diagram/features/save-and-load-layout
tags: diagram, save, load, layout, xml
published: True
position: 9 
---

# Save and Load Layout

Save/Load layout functionality gives your application the opportunity to preserve **RadDiagram**'s shapes and restore them later. The whole shapes' data is written in a XML file.

Here is a sample demonstrating how you can save the layout to a file:

## Save Layout

#### Save Layout

<snippet id='diagram-save-and-load-layout-savelayout-cs'/>
<snippet id='diagram-save-and-load-layout-savelayout-vb'/>

 

>note You can use the RadDiagram.**Save** method in case you need just the string representation of the XML data.

## Load Layout

Here is a sample demonstrating how you can load the layout from a file:

#### Load Layout

<snippet id='diagram-save-and-load-layout-loadlayout-cs'/>
<snippet id='diagram-save-and-load-layout-loadlayout-vb'/>

 

>note You can use the RadDiagram.**Load** method in order to load data from a string representation of the XML data.
