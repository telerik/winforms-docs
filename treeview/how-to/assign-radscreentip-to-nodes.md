---
title: Assign RadScreenTip to nodes
page_title: Assign RadScreenTip to nodes
description: Assign RadScreenTip to nodes
slug: treeview-how-to-assign-radscreentip-to-nodes
tags: assign,radscreentip,to,nodes
published: True
position: 0
---

# Assign RadScreenTip to nodes





## Assign RadScreenTip to nodes



In order to assign RadScreenTip to the nodes of RadTreeView you should use the ScreenTipNeeded event of RadTreeView.

If the Item which needs a ScreenTip is a TreeNodeElement, you set the necessary properties of the globally instanciated RadOffice2007ScreenTip:



![treeview-how-to-assign-radscreentip-to-nodes 001](images/treeview-how-to-assign-radscreentip-to-nodes001.png)

#### __[C#]__

{{source=..\SamplesCS\TreeView\HowTo\TreeScreenTips.cs region=screenTip}}
	        RadOffice2007ScreenTipElement screenTip = new RadOffice2007ScreenTipElement();
	        Size size = new Size(120, 70);
	        Padding pad = new Padding(2);
	
	        void radTreeView1_ScreenTipNeeded(object sender, Telerik.WinControls.ScreenTipNeededEventArgs e)
	        {
	            TreeNodeElement node = e.Item as TreeNodeElement;
	            if (node != null)
	            {
	                screenTip.MainTextLabel.Image = node.ImageElement.Image;
	                screenTip.MainTextLabel.TextImageRelation = TextImageRelation.ImageBeforeText;
	                screenTip.MainTextLabel.Padding = pad;
	                screenTip.MainTextLabel.Text = "This is " + node.ContentElement.Text;
	                screenTip.MainTextLabel.Margin = new System.Windows.Forms.Padding(10);
	                screenTip.CaptionLabel.Padding = pad;
	                screenTip.CaptionLabel.Text = node.ContentElement.Text;
	                screenTip.EnableCustomSize = true;
	                screenTip.AutoSize = false;
	                screenTip.Size = size;
	                node.ScreenTip = this.screenTip;
	            }
	        }
	{{endregion}}



#### __[VB.NET]__

{{source=..\SamplesVB\TreeView\HowTo\TreeScreenTips.vb region=screenTip}}
	    Private screenTip As New RadOffice2007ScreenTipElement()
	    Private Shadows size As New Size(120, 70)
	    Private pad As New Padding(2)
	
	    Private Sub radTreeView1_ScreenTipNeeded(ByVal sender As Object, ByVal e As Telerik.WinControls.ScreenTipNeededEventArgs)
	        Dim node As TreeNodeElement = TryCast(e.Item, TreeNodeElement)
	        If node IsNot Nothing Then
	            screenTip.MainTextLabel.Image = node.ImageElement.Image
	            screenTip.MainTextLabel.TextImageRelation = TextImageRelation.ImageBeforeText
	            screenTip.MainTextLabel.Padding = pad
	            screenTip.MainTextLabel.Text = "This is " & node.ContentElement.Text
	            screenTip.MainTextLabel.Margin = New System.Windows.Forms.Padding(10)
	            screenTip.CaptionLabel.Padding = pad
	            screenTip.CaptionLabel.Text = node.ContentElement.Text
	            screenTip.EnableCustomSize = True
	            screenTip.AutoSize = False
	            screenTip.Size = size
	            node.ScreenTip = Me.screenTip
	        End If
	    End Sub
	    '#End Region
	
	    Private folderOpen As Bitmap = My.Resources.folder_open
	    Private folderClose As Bitmap = My.Resources.folder_close
	    Private file As Bitmap = My.Resources.file
	
	    Private Sub radTreeView1_NodeFormatting(ByVal sender As Object, ByVal e As TreeNodeFormattingEventArgs)
	        If e.Node.Nodes.Count > 0 Then
	            If e.Node.Expanded Then
	                e.NodeElement.ImageElement.Image = folderOpen
	            Else
	                e.NodeElement.ImageElement.Image = folderClose
	            End If
	        Else
	            e.NodeElement.ImageElement.Image = file
	        End If
	    End Sub
	End Class



 
