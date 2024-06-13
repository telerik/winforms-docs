---
title: Add close buttons in tab elements into RadDocking's DocumentPanes
description: Add close buttons in tab elements into RadDocking's DocumentPanes. Check it now!
type: how-to
page_title: Add close buttons in tab elements into RadDocking's DocumentPanes
slug: add-close-buttons-in-tab-elements-into-raddocking-s-documentpanes
tags: dock
res_type: kb
---

|Product Version|Product|Author|Last modified|
|----|----|----|----|
|Q3 2008 SP1|RadDock for WinForms|Martin Vassilev|Jan 14, 2009|

   
**HOW-TO**  
Add close buttons in tab elements into RadDocking's DocumentPanes  
   
**DESCRIPTION**  
DockingManager uses RadTabStrip to organize its DocumentPane elements. This allows adding custom items in the tab elements, similarly to the approach for RadTabStrip control. Adding close button for every tab is a common scenario, because this increase the usability.   
   
**SOLUTION**  
In order to place a RadButtonElement inside the tab elements, you should use their Children collection. In addition, a non-zero margin of the ImageAndTextLayoutPanel should be set. This will make enough room for the button element to be placed directly in the tab item, but not in the layout panel.  
The Click event handler attached to the button element implements removing a DocumentPane from the DockingManager. This makes the button element behave as a close button..  
   
Refer to the example code snippet below. You can find the whole example application at the end of this article.  

````C#
private void AddNewDocument()  
{  
    DocumentPane panel = new DocumentPane();  
    panel.Text = String.Format ("DocumentPane{0}", this.docNum);  
 
    this.dockingManager1.SetDocument(panel);  
    this.AddCloseButtonToPane(panel);  
 
    this.docNum++;  
}  
 
private RadButtonElement CreateNewButtonElement()  
{  
    RadButtonElement closeButton = new RadButtonElement();  
 
    closeButton.DisplayStyle = Telerik.WinControls.DisplayStyle.Image;  
    closeButton.Alignment = System.Drawing.ContentAlignment.MiddleRight;  
    closeButton.ClickMode = ClickMode.Release;  
    closeButton.Image =   
        this.InitializeImageFromResource("TabWithCloseButton.Resources.icon_button_close.gif");  
 
    return closeButton;  
}  
 
private void AddCloseButtonToPane(DocumentPane documentPane)  
{  
    StackLayoutPanel layoutPanel = new StackLayoutPanel();  
    layoutPanel.Alignment = ContentAlignment.MiddleRight;  
 
    TabItem tab = (TabItem)documentPane.DockableTab;  
    ImageAndTextLayoutPanel currentLayout = (ImageAndTextLayoutPanel)tab.Children[2];  
    currentLayout.Margin = new Padding(0, 0, 20, 0);              
 
    RadButtonElement buttonElement = this.CreateNewButtonElement();  
    buttonElement.Tag = documentPane;  
    buttonElement.Click += new EventHandler(TabButton_Click);   
 
    tab.Children.Add(buttonElement);  
    ((BorderPrimitive)tab.Children[1]).ZIndex = 1;          
}  
 
void TabButton_Click(object sender, EventArgs e)  
{  
    DocumentPane pane = ((DocumentPane)((RadButtonElement)sender).Tag);  
 
    this.dockingManager1.RemoveDocument(pane);  
} 

````
````VB.NET
Private Sub AddNewDocument()   
    Dim panel As New DocumentPane()   
    panel.Text = [String].Format("DocumentPane{0}", Me.docNum)   
      
    Me.dockingManager1.SetDocument(panel)   
    Me.AddCloseButtonToPane(panel)   
      
    Me.docNum += 1   
End Sub   
 
Private Function CreateNewButtonElement() As RadButtonElement   
    Dim closeButton As New RadButtonElement()   
      
    closeButton.DisplayStyle = Telerik.WinControls.DisplayStyle.Image   
    closeButton.Alignment = System.Drawing.ContentAlignment.MiddleRight   
    closeButton.ClickMode = ClickMode.Release   
    closeButton.Image = Me.InitializeImageFromResource("TabWithCloseButton.Resources.icon_button_close.gif")   
      
    Return closeButton   
End Function   
 
Private Sub AddCloseButtonToPane(ByVal documentPane As DocumentPane)   
    Dim layoutPanel As New StackLayoutPanel()   
    layoutPanel.Alignment = ContentAlignment.MiddleRight   
      
    Dim tab As TabItem = DirectCast(documentPane.DockableTab, TabItem)   
    Dim currentLayout As ImageAndTextLayoutPanel = DirectCast(tab.Children(2), ImageAndTextLayoutPanel)   
    currentLayout.Margin = New Padding(0, 0, 20, 0)   
      
    Dim buttonElement As RadButtonElement = Me.CreateNewButtonElement()   
    buttonElement.Tag = documentPane   
    AddHandler buttonElement.Click, AddressOf TabButton_Click   
      
    tab.Children.Add(buttonElement)   
    DirectCast(tab.Children(1), BorderPrimitive).ZIndex = 1   
End Sub   
 
Private Sub TabButton_Click(ByVal sender As Object, ByVal e As EventArgs)   
    Dim pane As DocumentPane = DirectCast(DirectCast(sender, RadButtonElement).Tag, DocumentPane)   
      
    Me.dockingManager1.RemoveDocument(pane)   
End Sub  

````

