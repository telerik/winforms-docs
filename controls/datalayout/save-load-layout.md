---
title: Save/Load Layout
page_title: Save/Load Layout | RadDataLayout
description: This article describes how the end user can build and Save/Load custom layouts.
slug: winforms/datalayout/save/load-layout
tags: save/load,layout
published: True
position: 7
previous_url: datalayout-save-load-layout
---

# Save/Load Layout

__RadDataLayout__ allows changes at runtime. The control can export/import its layout which is stored in Xml format. This funtionality can be utilized by calling the __SaveLayout__ and __LoadLayout__ methods.

#### Save the layout.
{{source=..\SamplesCS\DataLayout\LoadSaveLayout.cs region=SaveLayout}} 
{{source=..\SamplesVB\DataLayout\LoadSaveLayout.vb region=SaveLayout}} 

````C#
private void SaveLayout()
{
    using (SaveFileDialog sfd = new SaveFileDialog())
    {
        sfd.DefaultExt = ".xml";
        sfd.Filter = "XML files (*.xml)|*.xml|All files (*.*)|*.*";
        if (sfd.ShowDialog() == System.Windows.Forms.DialogResult.OK)
        {
            this.radDataLayout1.LayoutControl.SaveLayout(sfd.FileName);
        }
    }
}

````
````VB.NET
Private Sub SaveLayout()
    Using sfd As New SaveFileDialog()
        sfd.DefaultExt = ".xml"
        sfd.Filter = "XML files (*.xml)|*.xml|All files (*.*)|*.*"
        If sfd.ShowDialog() = System.Windows.Forms.DialogResult.OK Then
            Me.RadDataLayout1.LayoutControl.SaveLayout(sfd.FileName)
        End If
    End Using
End Sub

````

{{endregion}} 

#### Load the Layout

{{source=..\SamplesCS\DataLayout\LoadSaveLayout.cs region=LoadLayout}} 
{{source=..\SamplesVB\DataLayout\LoadSaveLayout.vb region=LoadLayout}} 

````C#
private void LoadLayout()
{
    using (OpenFileDialog ofd = new OpenFileDialog())
    {
        ofd.DefaultExt = ".xml";
        ofd.Filter = "XML files (*.xml)|*.xml|All files (*.*)|*.*";
        if (ofd.ShowDialog() == System.Windows.Forms.DialogResult.OK)
        {
            this.radDataLayout1.LayoutControl.LoadLayout(ofd.FileName);
        }
    }
}

````
````VB.NET
Private Sub LoadLayout()
    Using ofd As New OpenFileDialog()
        ofd.DefaultExt = ".xml"
        ofd.Filter = "XML files (*.xml)|*.xml|All files (*.*)|*.*"
        If ofd.ShowDialog() = System.Windows.Forms.DialogResult.OK Then
            Me.RadDataLayout1.LayoutControl.LoadLayout(ofd.FileName)
        End If
    End Using
End Sub

````

{{endregion}}

The layout can be saved/loaded with the [customize dialog]({%slug winforms/datalayout/customize-layout-mode%}) as well.
        
# See Also

 * [Structure]({%slug winforms/datalayout/control-element-structure%})
 * [Getting Started]({%slug winforms/datalayout/getting-started%})
 * [Properties, events and attributes]({%slug winforms/datalayout/properties,-events-and-attributes%})
 * [Localization]({%slug winforms/datalayout/localization%})
 * [Change the editor to RadDropDownList]({%slug  winforms/dataentry/how-to/change-the-editor-to-a-bound-raddropdownlist%})
 * [Customizing Appearance ]({%slug winforms/raddatalayout/customizing-appearance%})
