---
title: Highlighting tree node text on edit
description: Highlighting tree node text on edit. Check it now!
type: how-to
page_title: Highlighting tree node text on edit
slug: highlighting-tree-node-text-on-edit
res_type: kb
---

|Product Version|Product|Author|Last modified|
|----|----|----|----|
|Q1 2007 SP1|RadTreeView for WinForms|Iordan Pavlov|June 11, 2007| 

   
**HOW-TO**

Highlight tree node text on edit  
  
**SOLUTION**

The following code allows for highlighting the node text,  and focus on begin edit. The ENTER key ends the edit mode:  
  
 
````C#
//CALL THIS WHEN BeginEdit IS REQUIRED     
         private void AllowSelectedNodeEdit()     
        {     
            if (radTree.SelectedNode != null && radTree.SelectedNode != radTree.Nodes[0])     
            {     
                radTree.LabelEdit = true;     
    
                //BEGIN THE EDIT BEFORE MANIPULATING THE CONTROL     
                radTree.SelectedNode.BeginEdit(true);     
    
                foreach (Control ctl in radTree.Controls)     
                {     
                    //LOCATE THE RADTEXTBOX     
                    if (ctl is RadTextBox)     
                    {     
                        //IF REQUIRED, SET MODIFIED TEXT HERE     
                        ((RadTextBox)ctl).Text = radTree.SelectedNode.Text.Substring     
                            (0, radTree.SelectedNode.Text.Length - helper.GetTextSuffix(radTree.SelectedNode.Tag.ToString()).Length);     
    
                        //ADD A KEYDOWN EVENT HANDLER TO CAPTURE THE ENTER KEY     
                        ((RadTextBox)ctl).KeyDown += new KeyEventHandler(txt_KeyDown);     
    
                        //SET FOCUS  - THIS WILL AUTOMATICALLY SELECT ALL TEXT     
                        ((RadTextBox)ctl).Focus();     
                    }     
                }     
            }     
        }     
    
        void txt_KeyDown(object sender, KeyEventArgs e)     
        {     
            //TRAP THE ENTER KEY - HIDE THE CONTROL TO FIRE THE AFTERLABELEDIT EVENT     
            if (e.KeyCode == Keys.Enter)     
            {     
                if (radTree.IsEditing)     
                {     
                    if (radTree.SelectedNode != null)     
                    {     
                        ((RadTextBox)sender).Hide();     
                    }     
                }     
            }     
        }    

````
````VB.NET
Class SurroundingClass
    Private Sub AllowSelectedNodeEdit()
        If radTree.SelectedNode IsNot Nothing AndAlso radTree.SelectedNode <> radTree.Nodes(0) Then
            radTree.LabelEdit = True
            radTree.SelectedNode.BeginEdit(True)

            For Each ctl As Control In radTree.Controls

                If TypeOf ctl Is RadTextBox Then
                    (CType(ctl, RadTextBox)).Text = radTree.SelectedNode.Text.Substring(0, radTree.SelectedNode.Text.Length - helper.GetTextSuffix(radTree.SelectedNode.Tag.ToString()).Length)
                    (CType(ctl, RadTextBox)).KeyDown += New KeyEventHandler(AddressOf txt_KeyDown)
                    (CType(ctl, RadTextBox)).Focus()
                End If
            Next
        End If
    End Sub

    Private Sub txt_KeyDown(ByVal sender As Object, ByVal e As KeyEventArgs)
        If e.KeyCode = Keys.Enter Then

            If radTree.IsEditing Then

                If radTree.SelectedNode IsNot Nothing Then
                    (CType(sender, RadTextBox)).Hide()
                End If
            End If
        End If
    End Sub
End Class

````


