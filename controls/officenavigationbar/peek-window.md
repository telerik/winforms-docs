---
title: Peek Window
page_title: Peek Window - WinForms OfficeNavigationBar Control
description: Get familiar with the design time options that the WinForms OfficeNavigationBar offers.   
slug: officenavigationbar-peek-window
tags: officenavigationbar
published: True
position: 5
CTAControlName: OfficeNavigationBar
---

# Peek Window 

RadOfficeNavigationBar provides popup preview option for its elements when the mouse is over a them. This functionality is disabled by default. To enable it, you can set the __EnablePeekPopup__ property to true.

![WinForms RadOfficeNavigationBar winforms/officenavigationbar-peek-window 001](images/officenavigationbar-peek-window001.png) 

{{source=..\SamplesCS\OfficeNavigationBar\OfficeNavigationBarGettingStarted.cs region=PeekWindow}} 
{{source=..\SamplesVB\OfficeNavigationBar\OfficeNavigationBarGettingStarted.vb region=PeekWindow}} 

````C#

this.radOfficeNavigationBar1.OfficeNavigationBarElement.EnablePeekPopup = true;

````
````VB.NET

Me.radOfficeNavigationBar1.OfficeNavigationBarElement.EnablePeekPopup = True


````

{{endregion}}

To set a content for each peek window, we can use the __PeekPopupOpening__ event. In the event handler, we have access to the current hovered RadPageViewItem and depending on it, we can set the __Page.PeekPopupContent__ property. This property is of type __Control__.

>The Peek Window will take the size of its content. This needs to be considered while using UserControl as a content of the Peek Window.

{{source=..\SamplesCS\OfficeNavigationBar\OfficeNavigationBarGettingStarted.cs region=PeekWindowEvent}} 
{{source=..\SamplesVB\OfficeNavigationBar\OfficeNavigationBarGettingStarted.vb region=PeekWindowEvent}} 

````C#

private void OfficeNavigationBarElement_PeekPopupOpening(object sender, Telerik.WinControls.UI.OfficeNavigationBar.RadPageViewPeekPopupEventArgs e)
{
    RadLabel content = new RadLabel();
    content.Text = e.Page.Item.Text;
    content.Font = new Font("Segoe UI Semibold", 27f);
    content.LoadElementTree();
    e.Page.PeekPopupContent = content;
}

````
````VB.NET

Private Sub OfficeNavigationBarElement_PeekPopupOpening(ByVal sender As Object, ByVal e As Telerik.WinControls.UI.OfficeNavigationBar.RadPageViewPeekPopupEventArgs)
    Dim content As RadLabel = New RadLabel()
    content.Text = e.Page.Item.Text
    content.Font = New Font("Segoe UI Semibold", 27F)
    content.LoadElementTree()
    e.Page.PeekPopupContent = content
End Sub


````

{{endregion}}

In the following image we can see the Peek Window content when it hosts a custom user control.

![WinForms RadOfficeNavigationBar winforms/officenavigationbar-peek-window 001](images/officenavigationbar-peek-window002.png) 

# See Also

* [Getting Started]({%slug officenavigationbar-getting-started%})
* [Design Time]({%slug officenavigationbar-design-time%})
* [Structure]({%slug officenavigationbar-structure%})
 
        
