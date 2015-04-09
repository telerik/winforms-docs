---
title: Subscribing to RadPageViewPage Events
page_title: Subscribing to RadPageViewPage Events
description: Subscribing to RadPageViewPage Events
slug: pageview-how-to-subscribing-to-radpageviewpage-events
tags: subscribing,to,radpageviewpage,events
published: True
position: 2
---

# Subscribing to RadPageViewPage Events



## Subscribing to RadPageViewPage events

Subscribing to RadPageViewPage event is no different then subscribing to any other event. Following is an example code snippet:

#### __[C#]__

{{source=..\SamplesCS\PageView\HowTo.cs region=subscribeToEvents}}
	
	            radPageViewPage1.MouseClick += new MouseEventHandler(radPageViewPage1_MouseClick);
	            radPageViewPage1.MouseDoubleClick += new MouseEventHandler(radPageViewPage1_MouseDoubleClick);
	
	{{endregion}}



#### __[C#]__

{{source=..\SamplesCS\PageView\HowTo.cs region=eventHandlers}}
	
	        void radPageViewPage1_MouseDoubleClick(object sender, MouseEventArgs e)
	        {
	            //do something
	        }
	        void radPageViewPage1_MouseClick(object sender, MouseEventArgs e)
	        {
	           //do something
	        }
	
	{{endregion}}





#### __[VB.NET]__

{{source=..\SamplesVB\PageView\HowTo.vb region=subscribeToEvents}}
	
	        AddHandler radPageViewPage1.MouseClick, AddressOf radPageViewPage1_MouseClick
	        AddHandler radPageViewPage1.MouseDoubleClick, AddressOf radPageViewPage1_MouseDoubleClick
	
	{{endregion}}



#### __[VB.NET]__

{{source=..\SamplesVB\PageView\HowTo.vb region=eventHandlers}}
	
	    Private Sub radPageViewPage1_MouseDoubleClick(ByVal sender As Object, ByVal e As MouseEventArgs)
	        'do something
	    End Sub
	
	    Private Sub radPageViewPage1_MouseClick(ByVal sender As Object, ByVal e As MouseEventArgs)
	        'do something
	    End Sub
	
	    '#End Region
	
	    '#Region "createContextMenu"
	
	    Private Sub CreateContextMenu()
	        Dim addNewTabMenuItem As New RadMenuItem()
	        addNewTabMenuItem.Text = "Add New Tab"
	        AddHandler addNewTabMenuItem.Click, AddressOf addNewTabMenuItem_Click
	        contextMenu1.Items.Add(addNewTabMenuItem)
	        Dim separator As New RadMenuSeparatorItem()
	        contextMenu1.Items.Add(separator)
	        Dim closeTabMenuItem As New RadMenuItem()
	        closeTabMenuItem.Text = "Close Tab"
	        AddHandler closeTabMenuItem.Click, AddressOf closeTabMenuItem_Click
	        contextMenu1.Items.Add(closeTabMenuItem)
	        Dim closeAllButThisMenuItem As New RadMenuItem()
	        closeAllButThisMenuItem.Text = "Close All But This"
	        AddHandler closeAllButThisMenuItem.Click, AddressOf closeAllButThisMenuItem_Click
	        contextMenu1.Items.Add(closeAllButThisMenuItem)
	        Dim closeAllTabsMenuItem As New RadMenuItem()
	        closeAllTabsMenuItem.Text = "Close All Tabs"
	        AddHandler closeAllTabsMenuItem.Click, AddressOf closeAllTabsMenuItem_Click
	        contextMenu1.Items.Add(closeAllTabsMenuItem)
	    End Sub
	
	    '#End Region
	
	    '#Region "eventHandlerImpl"
	
	    Private Sub addNewTabMenuItem_Click(ByVal sender As Object, ByVal e As EventArgs)
	        Dim newPage As New RadPageViewPage()
	        newPage.Text = "My new tab text"
	        radPageView1.Pages.Add(newPage)
	    End Sub
	
	    Private Sub closeTabMenuItem_Click(ByVal sender As Object, ByVal e As EventArgs)
	        radPageView1.Pages.Remove(radPageView1.SelectedPage)
	    End Sub
	
	    Private Sub closeAllButThisMenuItem_Click(ByVal sender As Object, ByVal e As EventArgs)
	        For i As Integer = radPageView1.Pages.Count - 1 To 0 Step -1
	            If radPageView1.Pages(i) IsNot radPageView1.SelectedPage Then
	                radPageView1.Pages.RemoveAt(i)
	            End If
	        Next i
	    End Sub
	
	    Private Sub closeAllTabsMenuItem_Click(ByVal sender As Object, ByVal e As EventArgs)
	        radPageView1.Pages.Clear()
	    End Sub
	
	    '#End Region
	
	    '#Region "mouseClick"
	
	    Private Sub radPageView1_MouseClick(ByVal sender As Object, ByVal e As MouseEventArgs)
	        Dim hitItem As RadPageViewItem = Me.radPageView1.ViewElement.ItemFromPoint(e.Location)
	        If e.Button = MouseButtons.Right AndAlso hitItem IsNot Nothing Then
	            contextMenu1.Show(Me.radPageView1.PointToScreen(e.Location))
	        End If
	    End Sub
	
	    '#End Region
	End Class


