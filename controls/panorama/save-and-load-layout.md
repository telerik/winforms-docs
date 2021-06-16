---
title: Save and Load Layout
page_title: Save and Load Layout - WinForms Panorama Control
description: WinForms Panorama support Save/Load layout functionality which gives your applications the opportunity to preserve user grid settings such as tile elements order and restore them later.
slug: winforms/panorama/save-and-load-layout
tags: save-and-load-layout
published: True
position: 9
---

# Save and Load Layout

As of R2 2021 SP1 **RadPanorama** supports Save/Load layout functionality. The Save/Load layout functionality gives your applications the opportunity to preserve user panorama settings such as tile elements order and restore them later. Those layout settings are written in a XML file.

Here is a sample demonstrating how you can implement a *Save Layout* button event handler:

#### Save layout

{{source=..\SamplesCS\Panorama\SaveLoadLayout.cs region=saveLayout}} 
{{source=..\SamplesVB\Panorama\SaveLoadLayout1.vb region=saveLayout}} 

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
    this.radPanorama1.SaveLayout(s);
}

````
````VB.NET
Private Sub SaveButton_Click(ByVal sender As Object, ByVal e As EventArgs)
    Dim s As String = "default.xml"
    Dim dialog As SaveFileDialog = New SaveFileDialog()
    dialog.Filter = "xml files (*.xml)|*.xml|All files (*.*)|*.*"
    dialog.Title = "Select a xml file"

    If dialog.ShowDialog() = DialogResult.OK Then
        s = dialog.FileName
    End If
    Me.RadPanorama1.SaveLayout(s)
End Sub

````

{{endregion}} 

The code snippets below demonstrates how you can implement a *Load Layout* button event handler: 

#### Load layout

{{source=..\SamplesCS\Panorama\SaveLoadLayout.cs region=loadLayout}} 
{{source=..\SamplesVB\Panorama\SaveLoadLayout1.vb region=loadLayout}} 

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
    this.radPanorama1.LoadLayout(s);
}

````
````VB.NET
Private Sub LoadButton_Click(ByVal sender As Object, ByVal e As EventArgs)
    Dim s As String = "default.xml"
    Dim dialog As OpenFileDialog = New OpenFileDialog()
    dialog.Filter = "xml files (*.xml)|*.xml|All files (*.*)|*.*"
    dialog.Title = "Select a xml file"

    If dialog.ShowDialog() = DialogResult.OK Then
        s = dialog.FileName
    End If
    Me.RadPanorama1.LoadLayout(s)
End Sub

````

{{endregion}} 


