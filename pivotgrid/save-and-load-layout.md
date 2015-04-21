---
title: Save and Load Layout
page_title: Save and Load Layout
description: Save and Load Layout
slug: pivotgrid-save-and-load-layout
tags: save,and,load,layout
published: True
position: 18
---

# Save and Load Layout



## 

__RadPivotGrid__ supports save and load layout functionality, which gives your applications the opportunity to preserve user 
          __RadPivotGrid__ settings such as group descriptors and restore them later. Those layout settings are written in a xml file.
        

Here is a sample demonstrating how you can implement a Save Layout button event handler:

#### __[C#]__

{{source=..\SamplesCS\PivotGrid\PivotGridSaveLoadLayout.cs region=SaveLayout}}
	        
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
	        
	{{endregion}}



#### __[VB]__

{{source=..\SamplesVB\PivotGrid\PivotGridSaveLoadLayout.vb region=SaveLayout}}
	
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
	
	{{endregion}}



The code snippet below demonstrates how you can implement a Load Layout button event handler: 

#### __[C#]__

{{source=..\SamplesCS\PivotGrid\PivotGridSaveLoadLayout.cs region=LoadLayout}}
	        
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
	        
	{{endregion}}



#### __[VB]__

{{source=..\SamplesVB\PivotGrid\PivotGridSaveLoadLayout.vb region=LoadLayout}}
	
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
	
	{{endregion}}


