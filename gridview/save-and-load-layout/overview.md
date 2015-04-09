---
title: Overview
page_title: Overview
description: Overview
slug: gridview-save-and-load-layout-overview
tags: overview
published: True
position: 0
---

# Overview



## 

Save/Load layout functionality gives your applications the opportunity to preserve user grid settings such as column order and restore them later. Those layout settings are written in a xml file.

Here is a sample demonstrating how you can implement a *Save Layout* button event handler:

#### __[C#] Save layout__

{{source=..\SamplesCS\GridView\SaveLoadLayout\SaveLoadLayoutOverview.cs region=saveLayout}}
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
	{{endregion}}



#### __[VB.NET] Save layout__

{{source=..\SamplesVB\GridView\SaveLoadLayout\SaveLoadLayoutOverview.vb region=saveLayout}}
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
	{{endregion}}



The code snippets below demonstrates how you can implement a *Load Layout* button event handler: 

#### __[C#] Load layout__

{{source=..\SamplesCS\GridView\SaveLoadLayout\SaveLoadLayoutOverview.cs region=loadLayout}}
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
	{{endregion}}



#### __[VB.NET] Load layout__

{{source=..\SamplesVB\GridView\SaveLoadLayout\SaveLoadLayoutOverview.vb region=loadLayout}}
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
	{{endregion}}



>Once the layout is being loaded the __LayoutLoaded__ event is being thrown in order to notify that the load process is being finished.




