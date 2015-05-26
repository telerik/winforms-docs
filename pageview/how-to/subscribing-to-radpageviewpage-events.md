---
title: Subscribing to RadPageViewPage Events
page_title: Subscribing to RadPageViewPage Events | UI for WinForms Documentation
description: Subscribing to RadPageViewPage Events
slug: winforms/pageview/how-to/subscribing-to-radpageviewpage-events
tags: subscribing,to,radpageviewpage,events
published: True
position: 2
---

# Subscribing to RadPageViewPage Events



## Subscribing to RadPageViewPage events

Subscribing to RadPageViewPage event is no different then subscribing to any other event. Following is an example code snippet:#_[C#]_

	

#_[C#]_

	



#_[VB.NET]_

	



{{source=..\SamplesCS\PageView\HowTo.cs region=subscribeToEvents}} 
{{source=..\SamplesCS\PageView\HowTo.cs region=eventHandlers}} 
{{source=..\SamplesVB\PageView\HowTo.vb region=subscribeToEvents}} 

{{source=..\SamplesVB\PageView\HowTo.vb region=eventHandlers}} 

````C#

        void radPageViewPage1_MouseDoubleClick(object sender, MouseEventArgs e)
        {
            //do something
        }
        void radPageViewPage1_MouseClick(object sender, MouseEventArgs e)
        {
           //do something
        }
````
````VB.NET

    Private Sub radPageViewPage1_MouseDoubleClick(ByVal sender As Object, ByVal e As MouseEventArgs)
        'do something
    End Sub

    Private Sub radPageViewPage1_MouseClick(ByVal sender As Object, ByVal e As MouseEventArgs)
        'do something
    End Sub

    '
````

{{endregion}} 



