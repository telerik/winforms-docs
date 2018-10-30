---
title: Overview
page_title: Save and Load Layout | RadGridView
description: Save/Load layout functionality gives your applications the opportunity to preserve user grid settings such as column order and restore them later.
slug: winforms/gridview/save-and-load-layout/overview
tags: save-and-load-layout
published: True
position: 0
previous_url: gridview-save-and-load-layout-overview
---

# Save and Load Layout Overview

Save/Load layout functionality gives your applications the opportunity to preserve user grid settings such as column order and restore them later. Those layout settings are written in a XML file.

Here is a sample demonstrating how you can implement a *Save Layout* button event handler:

#### Save layout

{{source=..\SamplesCS\GridView\SaveLoadLayout\SaveLoadLayoutOverview.cs region=saveLayout}} 
{{source=..\SamplesVB\GridView\SaveLoadLayout\SaveLoadLayoutOverview.vb region=saveLayout}} 

````C#
private void SaveButton_Click(object sender, EventArgs e)
{
    string s = "default.xml";
    SaveFileDialog dialog = new SaveFileDialog();
    dialog.Filter ="xml files (*.xml)|*.xml|All files (*.*)|*.*";
    dialog.Title = "Select a xml file";
    if (dialog.ShowDialog() == DialogResult.OK)
    {
        s = dialog.FileName;
    }
    this.radGridView1.SaveLayout(s);
}

````
````VB.NET
Private Sub SaveButton_Click(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles RadButton1.Click
    Dim s As String = "default.xml"
    Dim dialog As New SaveFileDialog()
    dialog.Filter = "xml files (*.xml)|*.xml|All files (*.*)|*.*"
    dialog.Title = "Select a xml file"
    If dialog.ShowDialog() = DialogResult.OK Then
        s = dialog.FileName
    End If
    Me.RadGridView1.SaveLayout(s)
End Sub

````

{{endregion}} 

The code snippets below demonstrates how you can implement a *Load Layout* button event handler: 

#### Load layout

{{source=..\SamplesCS\GridView\SaveLoadLayout\SaveLoadLayoutOverview.cs region=loadLayout}} 
{{source=..\SamplesVB\GridView\SaveLoadLayout\SaveLoadLayoutOverview.vb region=loadLayout}} 

````C#
private void LoadButton_Click(object sender, EventArgs e)
{
    string s = "default.xml";
    OpenFileDialog dialog = new OpenFileDialog();
    dialog.Filter ="xml files (*.xml)|*.xml|All files (*.*)|*.*";
    dialog.Title = "Select a xml file";
    if (dialog.ShowDialog() == DialogResult.OK)
    {
        s = dialog.FileName;
    }
    this.radGridView1.LoadLayout(s);
}

````
````VB.NET
Private Sub LoadButton_Click(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles RadButton2.Click
    Dim s As String = "default.xml"
    Dim dialog As New OpenFileDialog()
    dialog.Filter = "xml files (*.xml)|*.xml|All files (*.*)|*.*"
    dialog.Title = "Select a xml file"
    If dialog.ShowDialog() = DialogResult.OK Then
        s = dialog.FileName
    End If
    Me.RadGridView1.LoadLayout(s)
End Sub

````

{{endregion}} 

>tip Once the layout is being loaded the __LayoutLoaded__ event is being thrown in order to notify that the load process is being finished.
>





# See Also
* [Advanced]({%slug winforms/gridview/save-and-load-layout/advanced%})

* [Save/Load layout buttons in the Property Grid]({%slug winforms/gridview/save-and-load-layout/load-layout-buttons-in-the-property-grid%})

