---
title: Overview
page_title: Overview | RadPivotGrid
description: Overview
slug: winforms/pivotgrid/save-load-layout/overview
tags: save,and,load,layout
published: True
position: 0
previous_url: pivotgrid-save-and-load-layout
---

# Save and Load Layout

__RadPivotGrid__ supports save and load layout functionality, which gives your applications the opportunity to preserve user  __RadPivotGrid__ settings such as group descriptors and restore them later. Those layout settings are written in a xml file.

Here is a sample demonstrating how you can implement a Save Layout button event handler.

#### SaveLayout

{{source=..\SamplesCS\PivotGrid\PivotGridSaveLoadLayout.cs region=SaveLayout}} 
{{source=..\SamplesVB\PivotGrid\PivotGridSaveLoadLayout.vb region=SaveLayout}} 

````C#
        
private void radButtonSaveLayout_Click(object sender, EventArgs e)
{
    string s = "default.xml";
    SaveFileDialog dialog = new SaveFileDialog();
    dialog.Filter = "xml files (*.xml)|*.xml|All files (*.*)|*.*";
    dialog.Title = "Select a xml file";
    if (dialog.ShowDialog() == DialogResult.OK)
    {
        s = dialog.FileName;
    }
    this.radPivotGrid1.SaveLayout(s); 
}

````
````VB.NET
Private Sub RadButtonSaveLayout_Click(sender As Object, e As EventArgs) Handles RadButtonSaveLayout.Click
    Dim s As String = "default.xml"
    Dim dialog As New SaveFileDialog()
    dialog.Filter = "xml files (*.xml)|*.xml|All files (*.*)|*.*"
    dialog.Title = "Select a xml file"
    If dialog.ShowDialog() = DialogResult.OK Then
        s = dialog.FileName
    End If
    Me.RadPivotGrid1.SaveLayout(s)
End Sub

````

{{endregion}}

The code snippet below demonstrates how you can implement a Load Layout button event handler. 

#### LoadLayout

{{source=..\SamplesCS\PivotGrid\PivotGridSaveLoadLayout.cs region=LoadLayout}} 
{{source=..\SamplesVB\PivotGrid\PivotGridSaveLoadLayout.vb region=LoadLayout}} 

````C#
        
private void radButtonLoadLayout_Click(object sender, EventArgs e)
{
    string s = "default.xml";
    OpenFileDialog dialog = new OpenFileDialog();
    dialog.Filter = "xml files (*.xml)|*.xml|All files (*.*)|*.*";
    dialog.Title = "Select a xml file";
    if (dialog.ShowDialog() == DialogResult.OK)
    {
        s = dialog.FileName;
    }
    this.radPivotGrid1.LoadLayout(s);
}

````
````VB.NET
Private Sub RadButtonLoadLayout_Click(sender As Object, e As EventArgs) Handles RadButtonLoadLayout.Click
    Dim s As String = "default.xml"
    Dim dialog As New OpenFileDialog()
    dialog.Filter = "xml files (*.xml)|*.xml|All files (*.*)|*.*"
    dialog.Title = "Select a xml file"
    If dialog.ShowDialog() = DialogResult.OK Then
        s = dialog.FileName
    End If
    Me.RadPivotGrid1.LoadLayout(s)
End Sub

````

{{endregion}}

>important This API should be used only if the data binding has been performed via the __DataSource__ property or using a __LocalSourceDataProvider__. The API also does not export custom aggregate functions. 
For SAAS cubes and custom aggregation serialization please refer to:
* [Serialize AdomdDataProvider]({%slug winforms/pivotgrid/save-and-load-layout/serialize-adomddataprovider%})
* [Serialize XmlaDataProvider]({%slug winforms/pivotgrid/save-and-load-layout/serialize-xmladataprovider%})
* [Serialize Custom Aggregates]({%slug winforms/pivotgrid/save-and-load-layout/serialize-xmladataprovider%})


# See Also

* [Serialize AdomdDataProvider]({%slug winforms/pivotgrid/save-and-load-layout/serialize-adomddataprovider%})
* [Serialize XmlaDataProvider]({%slug winforms/pivotgrid/save-and-load-layout/serialize-xmladataprovider%})