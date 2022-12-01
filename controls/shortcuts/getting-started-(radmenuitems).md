---
title: Getting Started (RadMenuItems)
page_title: Getting Started (RadMenuItems) - RadShortcut
description: Almost each application uses the so called “Shortcuts” – a keyboard combination that triggers a specific action.
slug: winforms/shortcuts/getting-started-(radmenuitems)
tags: getting,started,(radmenuitems)
published: True
position: 1
previous_url: shortcuts-getting-started-(radmenuitems)
---

# Getting Started (RadMenuItems)

1\. In a new Windows Application add a **RadMenu** to the form.

2\. On the **RadMenu** that reads "*Type here*" enter "*New*". This will automatically create a menu item object "radMenuItem1":

![WinForms RadShortcuts shortcuts-getting-started-(radmenuitems)001](images/shortcuts-getting-started-(radmenuitems)001.png)

3\. Click and the newly created item to open the drop down menu and create a sub menu item. By default, the text of the new item will be set to *radMenuItem2*. Change it to *File*:

![WinForms RadShortcuts shortcuts-getting-started-(radmenuitems)002](images/shortcuts-getting-started-(radmenuitems)002.png)

4\. In the *Properties* Window locate the **Click** events for **radMenuItem1** and **radMenuItem2** and double-click them to create event handlers.

5\. Inside the event handlers add the following code:

{{source=..\SamplesCS\Shortcuts\Form2.cs region=handlingClickEvent}} 
{{source=..\SamplesVB\Shortcuts\Form2.vb region=handlingClickEvent}} 

````C#
void radMenuItem1_Click(object sender, EventArgs e)
{
    MessageBox.Show("New");
}
void radMenuItem2_Click(object sender, EventArgs e)
{
    MessageBox.Show("File");
}

````
````VB.NET
Private Sub radMenuItem1_Click(ByVal sender As Object, ByVal e As EventArgs)
    MessageBox.Show("New")
End Sub
Private Sub radMenuItem2_Click(ByVal sender As Object, ByVal e As EventArgs)
    MessageBox.Show("File")
End Sub

````

{{endregion}} 

6\. Now, all you have to do is to add the shortcuts to the desired items

{{source=..\SamplesCS\Shortcuts\Form2.cs region=menuShortcuts}} 
{{source=..\SamplesVB\Shortcuts\Form2.vb region=menuShortcuts}} 

````C#
this.radMenuItem1.Shortcuts.Add(new RadShortcut(Keys.Control, Keys.N));
this.radMenuItem2.Shortcuts.Add(new RadShortcut(Keys.Shift, Keys.F, Keys.K));

````
````VB.NET
Me.RadMenuItem1.Shortcuts.Add(New RadShortcut(Keys.Control, Keys.N))
Me.RadMenuItem2.Shortcuts.Add(New RadShortcut(Keys.Shift, Keys.F, Keys.K))

````

{{endregion}} 

>note In the constructor of **RadShortcut**, you should first pass the key modifier as a parameter and then an array of the key mappings.
>

As a result, you will get this picture at run time. As you can see, the shortcuts are automatically displayed for the **RadMenuItems**:

![WinForms RadShortcuts shortcuts-getting-started-(radmenuitems)003](images/shortcuts-getting-started-(radmenuitems)003.png)

Interesting functionality to mention is the ability to set your own custom text to describe the shortcut added. This can be achieved via the __HintText__ property of the menu item:

#### Specifying HintText

{{source=..\SamplesCS\Shortcuts\Form2.cs region=SetHintText}} 
{{source=..\SamplesVB\Shortcuts\Form2.vb region=SetHintText}} 

````C#
radMenuItem2.HintText = "Custom Text";

````
````VB.NET
RadMenuItem2.HintText = "Custom Text"

````

{{endregion}} 

![WinForms RadShortcuts shortcuts-getting-started-(radmenuitems)004](images/shortcuts-getting-started-(radmenuitems)004.png)

# See Also

* [Getting Started (RadButtons)]({%slug winforms/shortcuts/getting-started-(radbuttons)%})	
* [Assigning Global RadShortcuts]({%slug winforms/shortcuts/assigning-global-radshortcuts%})	
