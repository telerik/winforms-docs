---
title: Add Header and Footer to the Exported Document
page_title: Add Header and Footer to the Exported Document - WinForms GridView Control
description: Learn how you can add header and footer to your exported document in WinForms GridView.
slug: winforms/gridview/exporting-data/how-to/add-header-and-footer-to-the-exported-document
tags: add,header,and,footer,to,the,exported,document
published: True
position: 0
previous_url: radgridview-exporting-data-how-to-add-header-and-footer
---

# Add Header and Footer to the Exported Document

This article will show how you can add header and footer to your exported document. After the document is exported it will look like in figure 1.

>caption Fig.1 The final exported document.
![WinForms RadGridView Final Exported Document](images/radgridview-exporting-data-how-to-add-header-and-footer001.png)

## 

The [spread export]({%slug winforms/gridview/exporting-data/spread-export%}) functionality gives you access to the exported document. It can be accessed in the __WorkbookCreated__ event. The following steps are showing how you can use this event to add header and footer.

1\. You can use the following code to initialize the exporter and subscribe to the event.

#### Initialize the exporter

<snippet id='gridview-headerandfooter-setexporter-cs' />
<snippet id='gridview-headerandfooter-setexporter-vb' />

2\. Before adding the header you should declare the two elements which will be used later for the cell value format and the background color.

#### Define styles and formats

<snippet id='gridview-headerandfooter-stlylesandformats-cs' />
<snippet id='gridview-headerandfooter-stlylesandformats-vb' />

>important You need to add a reference to the `PresentationCore` assembly and the `System.Windows.Media` namespace.

3\. Now you can add the header, first you need to insert a new row on top of the document. Then you can merge the all the cells above the grid and set the new cell value and styles.

#### Add header

<snippet id='gridview-headerandfooter-header-cs' />
<snippet id='gridview-headerandfooter-header-vb' />

4\. The final part is adding the footer. For example you can select the left most and right most cells below the actual grid data and set their styles and value. At the end you can set the fill for the entire row.

#### Add footer

<snippet id='gridview-headerandfooter-footer-cs' />
<snippet id='gridview-headerandfooter-footer-vb' />
