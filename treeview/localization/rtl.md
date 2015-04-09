---
title: Right-to-left support
page_title: Right-to-left support
description: Right-to-left support
slug: treeview-localization-rtl
tags: right-to-left,support
published: True
position: 1
---

# Right-to-left support



## 

You can present the content of your treeview instance in a right-to-left direction by 
        setting the __RightToLeft__ property to *Yes*:
        

#### __[C#]__

{{source=..\SamplesCS\TreeView\TreeLocalization.cs region=rtl}}
	            this.radTreeView1.RightToLeft = System.Windows.Forms.RightToLeft.Yes;
	{{endregion}}



#### __[VB.NET]__

{{source=..\SamplesVB\TreeView\TreeLocalization.vb region=rtl}}
	        Me.RadTreeView1.RightToLeft = Windows.Forms.RightToLeft.Yes
	{{endregion}}

![treeview-localization-rtl 001](images/treeview-localization-rtl001.png)
