---
title: Key ShortCuts
page_title: Key ShortCuts
description: Key ShortCuts
slug: buttons-dropdownbutton-key-shortcuts
tags: key,shortcuts
published: True
position: 1
---

# Key ShortCuts



## 

Use the code below to open the drop-down menu using shortcuts(*Please refer to the help section about adding shortcuts to controls for adding the shortcut itself*):

#### __[C#] Adding sub items__

{{region keyShortcuts}}
	
	        public DropDownButton()
	        {
	            InitializeComponent();
	
	            this.radDropDownButton1.DropDownButtonElement.Shortcuts.Add(new RadShortcut(Keys.Control, Keys.N));
	            this.radDropDownButton1.DropDownButtonElement.Click += new EventHandler(DropDownButtonElement_Click);
	        }
	
	        void DropDownButtonElement_Click(object sender, EventArgs e)
	        {
	            this.radDropDownButton1.ShowDropDown();
	        }
	
	{{endregion}}



#### __[VB.NET] Adding sub items__

{{region keyShortcuts}}
	
	    Public Sub New()
	        InitializeComponent()
	
	        Me.radDropDownButton1.DropDownButtonElement.Shortcuts.Add(New RadShortcut(Keys.Control, Keys.B))
	        AddHandler Me.radDropDownButton1.DropDownButtonElement.Click, AddressOf DropDownButtonElement_Click
	    End Sub
	
	    Sub DropDownButtonElement_Click(ByVal sender As Object, ByVal e As EventArgs)
	        Me.radDropDownButton1.ShowDropDown()
	    End Sub
	
	{{endregion}}




