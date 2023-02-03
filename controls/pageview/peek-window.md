---
title: Peek Window
page_title: Peek Window - WinForms PageView Control
description: Get familiar with the design time options that the WinForms PageView offers.   
slug: pageview-peek-window
tags: pageview
published: True
position: 5
CTAControlName: PageView
---

# Peek Window 

RadPageView provides popup preview option for its elements when the mouse is over them. This functionality is disabled by default. To enable it, you can set the __EnablePeekPopup__ property to true.

![WinForms RadPageView Peek Window](images/pageview-peek-window001.png) 

{{source=..\SamplesCS\PageView\PeekWindow.cs region=EnablePeekWindow}} 
{{source=..\SamplesVB\PageView\PeekWindow.vb region=EnablePeekWindow}} 

````C#

this.radPageView1.EnablePeekPopup = true;

````
````VB.NET

Me.radPageView1.EnablePeekPopup = True


````

{{endregion}}

To set a content for each peek window, we can use the __PeekPopupOpening__ event. In the event handler, we have access to the current hovered RadPageViewItem and depending on it, we can set the __Page.PeekPopupContent__ property. This property is of type __Control__. 

>The Peek Window will take the size of its content. This needs to be considered while using UserControl as a content of the Peek Window.

{{source=..\SamplesCS\PageView\PeekWindow.cs region=PeekWindowEvent_PageView}} 
{{source=..\SamplesVB\PageView\PeekWindow.vb region=PeekWindowEvent_PageView}} 

````C#

private void RadPageView1_PeekPopupOpening(object sender, Telerik.WinControls.UI.OfficeNavigationBar.RadPageViewPeekPopupEventArgs e)
{
	RadLabel content = new RadLabel();
	content.Text = e.Page.Item.Text;
	content.Font = new Font("Segoe UI Semibold", 27f);
	content.LoadElementTree();
	e.Page.PeekPopupContent = content;
}

````
````VB.NET

Private Sub RadPageView1_PeekPopupOpening(ByVal sender As Object, ByVal e As Telerik.WinControls.UI.OfficeNavigationBar.RadPageViewPeekPopupEventArgs)
    Dim content As RadLabel = New RadLabel()
    content.Text = e.Page.Item.Text
    content.Font = New Font("Segoe UI Semibold", 27F)
    content.LoadElementTree()
    e.Page.PeekPopupContent = content
End Sub


````

{{endregion}}

In the following image we can see the Peek Window content when it hosts a custom user control.

![WinForms RadPageView Peek Window Content](images/pageview-peek-window002.png) 

# See Also

* [Getting Started]({%slug winforms/pageview/getting-started%})
* [Design Time]({%slug winforms/pageview/design-time%})
* [Structure]({%slug winforms/pageview/architecture%})
 
        
