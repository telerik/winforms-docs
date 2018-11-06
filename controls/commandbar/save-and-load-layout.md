---
title: Save and Load Layout
page_title: Save and Load Layout | UI for WinForms Documentation
description: RadCommandBar is a fully theme-able tool strip that provides unprecedented flexibility
slug: winforms/commandbar/save-and-load-layout
tags: save,and,load,layout
published: True
position: 4
previous_url: commandbar-save-and-load-layout
---

# Save and Load Layout

__RadCommandBar__ allows  the user to add and remove items and rearrange strip elements on different rows. The Save/Load layout functionality gives your applications the opportunity to preserve user settings concerning position, visibility and orientation.      

When you save the layout, all the preferences of a user will be saved in an XML file. When you load the file, the saved layout settings will be applied to __RadCommandBar__.

Here is an example demonstrating how you can implement a *Save Layout* button event handler:

Initially the layout looks like this:

![command-bar-save-and-load-layout 001](images/command-bar-save-and-load-layout001.png) 
 
{{source=..\SamplesCS\CommandBar\SaveAndLoadLayout1.cs region=saveLayout}} 
{{source=..\SamplesVB\CommandBar\SaveAndLoadLayout.vb region=saveLayout}} 

````C#
private void radButton1_Click(object sender, EventArgs e)
{
    string s = "default.xml";
    SaveFileDialog dialog = new SaveFileDialog();
    dialog.Filter =
       "xml files (*.xml)|*.xml|All files (*.*)|*.*";
    dialog.Title = "Select a xml file";
    if (dialog.ShowDialog() == DialogResult.OK)
    {
        s = dialog.FileName;
    }
    this.radCommandBar1.CommandBarElement.SaveLayout(s);
}

````
````VB.NET
Private Sub RadButton1_Click(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles RadButton1.Click
    Dim s As String = "default.xml"
    Dim dialog As New SaveFileDialog()
    dialog.Filter = "xml files (*.xml)|*.xml|All files (*.*)|*.*"
    dialog.Title = "Select a xml file"
    If dialog.ShowDialog() = DialogResult.OK Then
        s = dialog.FileName
    End If
    Me.RadCommandBar1.CommandBarElement.SaveLayout(s)
End Sub

````

{{endregion}} 
 

Now we are going to set some of the items __VisibleInStrip__ properties to *false*![command-bar-save-and-load-layout 002](images/command-bar-save-and-load-layout002.png)

The code snippets below demonstrate how you can implement a *Load Layout* button event handler:  
{{source=..\SamplesCS\CommandBar\SaveAndLoadLayout1.cs region=loadLayout}} 
{{source=..\SamplesVB\CommandBar\SaveAndLoadLayout.vb region=loadLayout}} 

````C#
private void radButton2_Click(object sender, EventArgs e)
{
    string s = "default.xml";
    OpenFileDialog dialog = new OpenFileDialog();
    dialog.Filter =
       "xml files (*.xml)|*.xml|All files (*.*)|*.*";
    dialog.Title = "Select a xml file";
    if (dialog.ShowDialog() == DialogResult.OK)
    {
        s = dialog.FileName;
    }
    this.radCommandBar1.CommandBarElement.LoadLayout(s);
}

````
````VB.NET
Private Sub RadButton2_Click(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles RadButton2.Click
    Dim s As String = "default.xml"
    Dim dialog As New OpenFileDialog()
    dialog.Filter = "xml files (*.xml)|*.xml|All files (*.*)|*.*"
    dialog.Title = "Select a xml file"
    If dialog.ShowDialog() = DialogResult.OK Then
        s = dialog.FileName
    End If
    Me.RadCommandBar1.CommandBarElement.LoadLayout(s)
End Sub

````

{{endregion}} 

After loading the layout it will reload the initial settings of the existing items:![command-bar-save-and-load-layout 001](images/command-bar-save-and-load-layout001.png)

>important When loading the layout it will only load the settings for the items that were there by the time when the layout was saved. If some of the items (i.e. CommandBarButton, CommandBarToggleButton) were deleted - the layout loading will not recreate them and if some items were added the layout will not effect them either.
>

__Sample save/load scenario__

The following example demonstrates how you can save the layout settings of a __RadCommandBar__ when the parent form of this command bar is closed and how you can load these settings when the form is reopened. Basically, you need to handle the __Load__ and __FormClosing__ events of the form.  
 
{{source=..\SamplesCS\CommandBar\SaveAndLoadLayout1.cs region=autoLoadLayoutOnFormLoad}} 
{{source=..\SamplesVB\CommandBar\SaveAndLoadLayout.vb region=autoLoadLayoutOnFormLoad}} 

````C#
private void SaveAndLoadLayout1_Load(object sender, EventArgs e)
{
    if (File.Exists("MyLayout.xml"))
    {
        this.radCommandBar1.CommandBarElement.LoadLayout("MyLayout.xml");
    }
}

````
````VB.NET
Private Sub SaveAndLoadLayout_Load(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles MyBase.Load
    If File.Exists("MyLayout.xml") Then
        Me.RadCommandBar1.CommandBarElement.LoadLayout("MyLayout.xml")
    End If
End Sub

````

{{endregion}} 



