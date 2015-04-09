---
title: Assign Shortcuts to Menu Items
page_title: Assign Shortcuts to Menu Items
description: Assign Shortcuts to Menu Items
slug: menus-menu-working-with-radmenu-items-assign-shorcut
tags: assign,shortcuts,to,menu,items
published: True
position: 6
---

# Assign Shortcuts to Menu Items



## 

1. In a new Windows Application add a RadMenu to the form.

1. On the RadMenu that reads "*Type here*" enter "*New*". This will automatically create a menu item object "radMenuItem1":
            ![shortcuts-getting-started-(radmenuitems)001](images/shortcuts-getting-started-(radmenuitems)001.png)

1. Click and the newly created item to open the dropdown menu and create a submenu item. By default, the text of the new item will be set to *radMenuItem2*. Change it to *File*:
            ![shortcuts-getting-started-(radmenuitems)002](images/shortcuts-getting-started-(radmenuitems)002.png)

1. In the Properties Window locate the Click events for radMenuItem1 and radMenuItem2 and double-click them to create event handlers.

1. Inside the event handlers add the following code:
            

#### __[C#]__

{{source=..\SamplesCS\Shortcuts\Form2.cs region=handlingClickEvent}}
	        void radMenuItem1_Click(object sender, EventArgs e)
	        {
	            MessageBox.Show("New");
	        }
	
	        void radMenuItem2_Click(object sender, EventArgs e)
	        {
	            MessageBox.Show("File");
	        }
	{{endregion}}



#### __[VB.NET]__

{{source=..\SamplesVB\Shortcuts\Form2.vb region=handlingClickEvent}}
	    Private Sub radMenuItem1_Click(ByVal sender As Object, ByVal e As EventArgs)
	        MessageBox.Show("New")
	    End Sub
	
	    Private Sub radMenuItem2_Click(ByVal sender As Object, ByVal e As EventArgs)
	        MessageBox.Show("File")
	    End Sub
	{{endregion}}



1. Now all you have to do is to add the shortcuts to the desired items
            

#### __[C#]__

{{source=..\SamplesCS\Shortcuts\Form2.cs region=menuShortcuts}}
	            this.radMenuItem1.Shortcuts.Add(new RadShortcut(Keys.Control, Keys.N));
	            this.radMenuItem2.Shortcuts.Add(new RadShortcut(Keys.Shift, Keys.F, Keys.K));
	{{endregion}}



#### __[VB.NET]__

{{source=..\SamplesVB\Shortcuts\Form2.vb region=menuShortcuts}}
	        Me.RadMenuItem1.Shortcuts.Add(New RadShortcut(Keys.Control, Keys.N))
	        Me.RadMenuItem2.Shortcuts.Add(New RadShortcut(Keys.Shift, Keys.F, Keys.K))
	{{endregion}}



>In the constructor of RadShortcut, you should first pass the key modifier as a parameter and then an array of the key mappings.

As a result, you will get this picture runtime. As you can see, the shortcuts are automatically displayed for the RadMenuItems:![shortcuts-getting-started-(radmenuitems)003](images/shortcuts-getting-started-(radmenuitems)003.png)

Interesting functionality to mention is the ability to set your own custom text to describe the shortcut added.
          This can be achieved via the __HintText__ property of the menu item
        

#### __[C#]__

{{source=..\SamplesCS\Shortcuts\Form2.cs region=SetHintText}}
	            radMenuItem2.HintText = "Custom Text";
	{{endregion}}



#### __[VB.NET]__

{{source=..\SamplesVB\Shortcuts\Form2.vb region=SetHintText}}
	        RadMenuItem2.HintText = "Custom Text"
	{{endregion}}

![shortcuts-getting-started-(radmenuitems)004](images/shortcuts-getting-started-(radmenuitems)004.png)
