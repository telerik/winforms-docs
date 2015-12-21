---
title: Save/Load Layout
page_title: Save/Load Layout | UI for WinForms Documentation
description: Save/Load Layout
slug: winforms/layoutcontrol/load-layout
tags: save/load,layout
published: True
position: 4
---

# Save/Load Layout



## 

__RadLayoutControl__ allows layout changes at runtime. To preserve the changed layout you can use the predefined __SaveLayout__ and __LoadLayout__ methods. Both methods can take path, stream or XmlWriter as parameters. The following example demonstrates the functionality:

#### Save Layout

{{source=..\SamplesCS\LayoutControl\LoadSaveLayout.cs region=SaveLayout}} 
{{source=..\SamplesVB\LayoutControl\LoadSaveLayout.vb region=SaveLayout}} 

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
    this.radLayoutControl1.SaveLayout(s);
}

````
````VB.NET
Private Sub SaveButton_Click(ByVal sender As Object, ByVal e As EventArgs)
    Dim s As String = "default.xml"
    Dim dialog As New SaveFileDialog()
    dialog.Filter = "xml files (*.xml)|*.xml|All files (*.*)|*.*"
    dialog.Title = "Select a xml file"
    If dialog.ShowDialog() = DialogResult.OK Then
        s = dialog.FileName
    End If
    Me.radLayoutControl1.SaveLayout(s)
End Sub

````

{{endregion}} 

#### Load Layout

{{source=..\SamplesCS\LayoutControl\LoadSaveLayout.cs region=LoadLayout}} 
{{source=..\SamplesVB\LayoutControl\LoadSaveLayout.vb region=LoadLayout}} 

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
    this.radLayoutControl1.LoadLayout(s);
}

````
````VB.NET
Private Sub LoadButton_Click(ByVal sender As Object, ByVal e As EventArgs)
    Dim s As String = "default.xml"
    Dim dialog As New OpenFileDialog()
    dialog.Filter = "xml files (*.xml)|*.xml|All files (*.*)|*.*"
    dialog.Title = "Select a xml file"
    If dialog.ShowDialog() = DialogResult.OK Then
        s = dialog.FileName
    End If
    Me.radLayoutControl1.LoadLayout(s)
End Sub

````

{{endregion}} 

The layout can be saved/loaded with the [customize dialog]({%slug winforms/layoutcontrol/customize-layout-mode%}) as well.
      
