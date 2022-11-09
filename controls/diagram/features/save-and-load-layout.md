---
title: Save and Load Layout
page_title: Save and Load Layout - RadDiagram
description: RadDiagram offers save and load layout to XML functionality.
slug: winforms/diagram/features/save-and-load-layout
tags: diagram, save, load, layout, xml
published: True
position: 9 
---

# Save and Load Layout

Save/Load layout functionality gives your application the opportunity to preserve **RadDiagram**'s shapes and restore them later. The whole shapes' data is written in a XML file.

Here is a sample demonstrating how you can save the layout to a file:

## Save Layout

#### Save Layout

{{source=..\SamplesCS\Diagram\DiagramItemsManipulation.cs region=SaveLayout}} 
{{source=..\SamplesVB\Diagram\DiagramItemsManipulation.vb region=SaveLayout}} 

````C#
            
string s = "default.xml";
System.Windows.Forms.SaveFileDialog dialog = new System.Windows.Forms.SaveFileDialog();
dialog.Filter = "xml files (*.xml)|*.xml|All files (*.*)|*.*";
dialog.Title = "Select a xml file";
if (dialog.ShowDialog() == DialogResult.OK)
{
    s = dialog.FileName;
}
this.radDiagram1.SaveToFile(s);

````
````VB.NET
Dim s As String = "default.xml"
Dim dialog As New System.Windows.Forms.SaveFileDialog()
dialog.Filter = "xml files (*.xml)|*.xml|All files (*.*)|*.*"
dialog.Title = "Select a xml file"
If dialog.ShowDialog() = DialogResult.OK Then
    s = dialog.FileName
End If
Me.radDiagram1.SaveToFile(s)

````

{{endregion}} 

>note You can use the RadDiagram.**Save** method in case you need just the string representation of the XML data.

## Load Layout

Here is a sample demonstrating how you can load the layout from a file:

#### Load Layout

{{source=..\SamplesCS\Diagram\DiagramItemsManipulation.cs region=LoadLayout}} 
{{source=..\SamplesVB\Diagram\DiagramItemsManipulation.vb region=LoadLayout}} 

````C#
string s = "default.xml";
System.Windows.Forms.OpenFileDialog dialog = new System.Windows.Forms.OpenFileDialog();
dialog.Filter = "xml files (*.xml)|*.xml|All files (*.*)|*.*";
dialog.Title = "Select a xml file";
if (dialog.ShowDialog() == DialogResult.OK)
{
    s = dialog.FileName;
}
this.radDiagram1.LoadFromFile(s);

````
````VB.NET
Dim s As String = "default.xml"
Dim dialog As New System.Windows.Forms.OpenFileDialog()
dialog.Filter = "xml files (*.xml)|*.xml|All files (*.*)|*.*"
dialog.Title = "Select a xml file"
If dialog.ShowDialog() = DialogResult.OK Then
    s = dialog.FileName
End If
Me.radDiagram1.LoadFromFile(s)

````

{{endregion}} 

>note You can use the RadDiagram.**Load** method in order to load data from a string representation of the XML data.
