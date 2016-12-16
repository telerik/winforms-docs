---
title: Overview
page_title: Save and Load Layout | RadVirtualGrid
description: Save/Load layout functionality gives your applications the opportunity to preserve user grid settings such as column order and restore them later. 
slug: winforms/virtualgrid/save-and-load-layout/overview
tags: save-and-load-layout
published: True
position: 0
---

# Save and Load Layout Overview

Save/Load layout functionality gives your applications the opportunity to preserve user grid settings such as column order and restore them later. Those layout settings are written in a xml file.

Here is a sample demonstrating how you can implement a *Save Layout* button event handler:

#### Save layout

{{source=..\SamplesCS\VirtualGrid\SaveLoadLayout\VirtualGridSaveLoadLayout.cs region=SaveLayout}} 
{{source=..\SamplesVB\VirtualGrid\SaveLoadLayout\VirtualGridSaveLoadLayout.vb region=SaveLayout}} 

````C#
private void SaveButton_Click(object sender, EventArgs e)
{
    string s = "default.xml";
    SaveFileDialog dialog = new SaveFileDialog();
    dialog.Filter = "xml files (*.xml)|*.xml|All files (*.*)|*.*";
    dialog.Title = "Select a xml file";
    if (dialog.ShowDialog() == DialogResult.OK)
    {
        s = dialog.FileName;
    }
    this.radVirtualGrid1.SaveLayout(s);
}

````
````VB.NET
Private Sub SaveButton_Click(sender As Object, e As EventArgs) Handles RadButton1.Click
    Dim s As String = "default.xml"
    Dim dialog As New SaveFileDialog()
    dialog.Filter = "xml files (*.xml)|*.xml|All files (*.*)|*.*"
    dialog.Title = "Select a xml file"
    If dialog.ShowDialog() = DialogResult.OK Then
        s = dialog.FileName
    End If
    Me.RadVirtualGrid1.SaveLayout(s)
End Sub

````

{{endregion}} 

The code snippets below demonstrates how you can implement a *Load Layout* button event handler: 

#### Load layout

{{source=..\SamplesCS\VirtualGrid\SaveLoadLayout\VirtualGridSaveLoadLayout.cs region=LoadLayout}} 
{{source=..\SamplesVB\VirtualGrid\SaveLoadLayout\VirtualGridSaveLoadLayout.vb region=LoadLayout}} 

````C#
private void LoadButton_Click(object sender, EventArgs e)
{
    string s = "default.xml";
    OpenFileDialog dialog = new OpenFileDialog();
    dialog.Filter = "xml files (*.xml)|*.xml|All files (*.*)|*.*";
    dialog.Title = "Select a xml file";
    if (dialog.ShowDialog() == DialogResult.OK)
    {
        s = dialog.FileName;
    }
    this.radVirtualGrid1.LoadLayout(s);
}

````
````VB.NET
Private Sub LoadButton_Click(sender As Object, e As EventArgs) Handles RadButton2.Click
    Dim s As String = "default.xml"
    Dim dialog As New OpenFileDialog()
    dialog.Filter = "xml files (*.xml)|*.xml|All files (*.*)|*.*"
    dialog.Title = "Select a xml file"
    If dialog.ShowDialog() = DialogResult.OK Then
        s = dialog.FileName
    End If
    Me.RadVirtualGrid1.LoadLayout(s)
End Sub

````

{{endregion}} 

>note Once the layout is being loaded the __LayoutLoaded__ event is being thrown in order to notify that the load process is being finished.
>





