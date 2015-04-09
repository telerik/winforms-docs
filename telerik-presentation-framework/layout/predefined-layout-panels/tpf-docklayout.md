---
title: DockLayout
page_title: DockLayout
description: DockLayout
slug: tpf-layout-predefined-layout-panels-docklayout
tags: docklayout
published: True
position: 5
---

# DockLayout



## 

__DockLayoutPanel__ is a panel that docks its child elements to a predefined-position.
	        The possible Dock positions are *Left*, *Top*,
	        *Right* and *Bottom*.
        

__Methods and properties:__

* __SetDock(RadElement element, Dock dock)__ - is a static method that assigns an element a given docking position.
		  	

* __LastChildFill__ - indicates whether the dock position of the last child should be ignored, 
		  		so that the element stretches to fill the area left by the other children elements. When this property is set to 
		  		*false* the dock position of the last child is taken under consideration, 
		  		thus leaving an empty area in the center of the panel.
		  	

The Dock of each element is set through the static method of DockLayoutPanel __SetDock__.

#### __[C#] __

{{source=..\SamplesCS\TPF\Layouts\PredefinedLayoutPanels\MyDockLayoutPanelElement.cs region=snippet1}}
	            RadButtonElement button = new RadButtonElement("button1");
	            DockLayoutPanel.SetDock(button, Telerik.WinControls.Layouts.Dock.Left);
	{{endregion}}



#### __[VB.NET] __

{{source=..\SamplesVB\TPF\Layouts\PredefinedLayoutPanels\MyDockLayoutPanelElement.vb region=snippet1}}
	        Dim button As New RadButtonElement("button1")
	        DockLayoutPanel.SetDock(button, Telerik.WinControls.Layouts.Dock.Left)
	        '#End Region
	
	        '#Region "snippet2"
	        Dim button1 As New RadButtonElement("button1")
	        DockLayoutPanel.SetDock(button1, Telerik.WinControls.Layouts.Dock.Left)
	
	        Dim button2 As New RadButtonElement("button2")
	        DockLayoutPanel.SetDock(button2, Telerik.WinControls.Layouts.Dock.Right)
	
	        Dim button3 As New RadButtonElement("button3")
	        DockLayoutPanel.SetDock(button3, Telerik.WinControls.Layouts.Dock.Top)
	
	        Dim button4 As New RadButtonElement("button4")
	        DockLayoutPanel.SetDock(button4, Telerik.WinControls.Layouts.Dock.Bottom)
	        '#End Region
	
	        '#Region "snippet3"
	        Dim dockPanel As New DockLayoutPanel()
	        dockPanel.Children.Add(button1)
	        dockPanel.Children.Add(button2)
	        dockPanel.Children.Add(button3)
	        dockPanel.Children.Add(button4)
	        '#End Region
	    End Sub
	
	    Private Sub snippets()
	        Dim button1 As New RadButtonElement("button1")
	        Dim button2 As New RadButtonElement("button2")
	        Dim button3 As New RadButtonElement("button3")
	        Dim button4 As New RadButtonElement("button4")
	
	        '#Region "snippet4"
	        Dim dockPanel As New DockLayoutPanel()
	        dockPanel.Children.Add(button4)
	        dockPanel.Children.Add(button3)
	        dockPanel.Children.Add(button2)
	        dockPanel.Children.Add(button1)
	        '#End Region
	    End Sub
	
	End Class
	
	'#region dockLayoutClass
	Public Class MyDockLayoutPanelControl
	    Inherits RadControl
	
	    Protected Overrides Sub CreateChildItems(parent As RadElement)
	        MyBase.CreateChildItems(parent)
	        parent.Children.Add(New MyDockLayoutPanelElement())
	    End Sub
	End Class
	{{endregion}}



Essential for the final layout of the DockLayoutPanel is the sequence in which elements are added to the panel. Consider the following four RadButtonElements: 
		

#### __[C#] __

{{source=..\SamplesCS\TPF\Layouts\PredefinedLayoutPanels\MyDockLayoutPanelElement.cs region=snippet2}}
	            RadButtonElement button1 = new RadButtonElement("button1");
	            DockLayoutPanel.SetDock(button1, Telerik.WinControls.Layouts.Dock.Left);
	
	            RadButtonElement button2 = new RadButtonElement("button2");
	            DockLayoutPanel.SetDock(button2, Telerik.WinControls.Layouts.Dock.Right);
	
	            RadButtonElement button3 = new RadButtonElement("button3");
	            DockLayoutPanel.SetDock(button3, Telerik.WinControls.Layouts.Dock.Top);
	
	            RadButtonElement button4 = new RadButtonElement("button4");
	            DockLayoutPanel.SetDock(button4, Telerik.WinControls.Layouts.Dock.Bottom);
	{{endregion}}



#### __[VB.NET] __

{{source=..\SamplesVB\TPF\Layouts\PredefinedLayoutPanels\MyDockLayoutPanelElement.vb region=snippet2}}
	        Dim button1 As New RadButtonElement("button1")
	        DockLayoutPanel.SetDock(button1, Telerik.WinControls.Layouts.Dock.Left)
	
	        Dim button2 As New RadButtonElement("button2")
	        DockLayoutPanel.SetDock(button2, Telerik.WinControls.Layouts.Dock.Right)
	
	        Dim button3 As New RadButtonElement("button3")
	        DockLayoutPanel.SetDock(button3, Telerik.WinControls.Layouts.Dock.Top)
	
	        Dim button4 As New RadButtonElement("button4")
	        DockLayoutPanel.SetDock(button4, Telerik.WinControls.Layouts.Dock.Bottom)
	        '#End Region
	
	        '#Region "snippet3"
	        Dim dockPanel As New DockLayoutPanel()
	        dockPanel.Children.Add(button1)
	        dockPanel.Children.Add(button2)
	        dockPanel.Children.Add(button3)
	        dockPanel.Children.Add(button4)
	        '#End Region
	    End Sub
	
	    Private Sub snippets()
	        Dim button1 As New RadButtonElement("button1")
	        Dim button2 As New RadButtonElement("button2")
	        Dim button3 As New RadButtonElement("button3")
	        Dim button4 As New RadButtonElement("button4")
	
	        '#Region "snippet4"
	        Dim dockPanel As New DockLayoutPanel()
	        dockPanel.Children.Add(button4)
	        dockPanel.Children.Add(button3)
	        dockPanel.Children.Add(button2)
	        dockPanel.Children.Add(button1)
	        '#End Region
	    End Sub
	
	End Class
	
	'#region dockLayoutClass
	Public Class MyDockLayoutPanelControl
	    Inherits RadControl
	
	    Protected Overrides Sub CreateChildItems(parent As RadElement)
	        MyBase.CreateChildItems(parent)
	        parent.Children.Add(New MyDockLayoutPanelElement())
	    End Sub
	End Class
	{{endregion}}



Adding the above in the following order results in the layout below:

#### __[C#] __

{{source=..\SamplesCS\TPF\Layouts\PredefinedLayoutPanels\MyDockLayoutPanelElement.cs region=snippet3}}
	            DockLayoutPanel dockPanel = new DockLayoutPanel();
	            dockPanel.Children.Add(button1);
	            dockPanel.Children.Add(button2);
	            dockPanel.Children.Add(button3);
	            dockPanel.Children.Add(button4);
	{{endregion}}



#### __[VB.NET] __

{{source=..\SamplesVB\TPF\Layouts\PredefinedLayoutPanels\MyDockLayoutPanelElement.vb region=snippet3}}
	        Dim dockPanel As New DockLayoutPanel()
	        dockPanel.Children.Add(button1)
	        dockPanel.Children.Add(button2)
	        dockPanel.Children.Add(button3)
	        dockPanel.Children.Add(button4)
	        '#End Region
	    End Sub
	
	    Private Sub snippets()
	        Dim button1 As New RadButtonElement("button1")
	        Dim button2 As New RadButtonElement("button2")
	        Dim button3 As New RadButtonElement("button3")
	        Dim button4 As New RadButtonElement("button4")
	
	        '#Region "snippet4"
	        Dim dockPanel As New DockLayoutPanel()
	        dockPanel.Children.Add(button4)
	        dockPanel.Children.Add(button3)
	        dockPanel.Children.Add(button2)
	        dockPanel.Children.Add(button1)
	        '#End Region
	    End Sub
	
	End Class
	
	'#region dockLayoutClass
	Public Class MyDockLayoutPanelControl
	    Inherits RadControl
	
	    Protected Overrides Sub CreateChildItems(parent As RadElement)
	        MyBase.CreateChildItems(parent)
	        parent.Children.Add(New MyDockLayoutPanelElement())
	    End Sub
	End Class
	{{endregion}}



![tpf-layout-predefined-layout-panels-docklayout 001](images/tpf-layout-predefined-layout-panels-docklayout001.png)

However, if the same elements are added in a reversed order, the outcome will be different:

#### __[C#] __

{{source=..\SamplesCS\TPF\Layouts\PredefinedLayoutPanels\MyDockLayoutPanelElement.cs region=snippet4}}
	            DockLayoutPanel dockPanel = new DockLayoutPanel();
	            dockPanel.Children.Add(button4);
	            dockPanel.Children.Add(button3);
	            dockPanel.Children.Add(button2);
	            dockPanel.Children.Add(button1);
	{{endregion}}



#### __[VB.NET] __

{{source=..\SamplesVB\TPF\Layouts\PredefinedLayoutPanels\MyDockLayoutPanelElement.vb region=snippet4}}
	        Dim dockPanel As New DockLayoutPanel()
	        dockPanel.Children.Add(button4)
	        dockPanel.Children.Add(button3)
	        dockPanel.Children.Add(button2)
	        dockPanel.Children.Add(button1)
	        '#End Region
	    End Sub
	
	End Class
	
	'#region dockLayoutClass
	Public Class MyDockLayoutPanelControl
	    Inherits RadControl
	
	    Protected Overrides Sub CreateChildItems(parent As RadElement)
	        MyBase.CreateChildItems(parent)
	        parent.Children.Add(New MyDockLayoutPanelElement())
	    End Sub
	End Class
	{{endregion}}



![tpf-layout-predefined-layout-panels-docklayout 002](images/tpf-layout-predefined-layout-panels-docklayout002.png)

>In both examples above the Dock setting of the last added child is ignored, i.e. in the first example *button4*
		  	is docked, so that it fills the area left by the other buttons. In the second example *button1* docking setting is 
		  	not taken under consideration and the element fills the empty panel area. Setting the __LastChildFill__ property to
		  	*false*, however, transforms the above layouts, so that the last added children are not stretched:
		  

![tpf-layout-predefined-layout-panels-docklayout 003](images/tpf-layout-predefined-layout-panels-docklayout003.png)

![tpf-layout-predefined-layout-panels-docklayout 004](images/tpf-layout-predefined-layout-panels-docklayout004.png)

Here is an example of creating a control holding custom DockPanelElement:

#### __[C#] __

{{source=..\SamplesCS\TPF\Layouts\PredefinedLayoutPanels\MyDockLayoutPanelElement.cs region=dockLayoutClass}}
	    class MyDockLayoutPanelControl : RadControl
	    {
	        protected override void CreateChildItems(RadElement parent)
	        {
	            base.CreateChildItems(parent);
	            parent.Children.Add(new MyDockLayoutPanelElement());
	        }
	    }
	{{endregion}}



#### __[VB.NET] __

{{source=..\SamplesVB\TPF\Layouts\PredefinedLayoutPanels\MyDockLayoutPanelElement.vb region=dockLayoutClass}}
	Public Class MyDockLayoutPanelControl
	    Inherits RadControl
	
	    Protected Overrides Sub CreateChildItems(parent As RadElement)
	        MyBase.CreateChildItems(parent)
	        parent.Children.Add(New MyDockLayoutPanelElement())
	    End Sub
	End Class
	{{endregion}}



And here is the element itself:

#### __[C#] __

{{source=..\SamplesCS\TPF\Layouts\PredefinedLayoutPanels\MyDockLayoutPanelElement.cs region=myDockLayoutPanelElement}}
	    public class MyDockLayoutPanelElement : RadElement
	    {
	        protected override void CreateChildElements()
	        {
	            RadButtonElement button1 = new RadButtonElement("button1");
	            DockLayoutPanel.SetDock(button1, Telerik.WinControls.Layouts.Dock.Left);
	
	            RadButtonElement button2 = new RadButtonElement("button2");
	            DockLayoutPanel.SetDock(button2, Telerik.WinControls.Layouts.Dock.Right);
	
	            RadButtonElement button3 = new RadButtonElement("button3");
	            DockLayoutPanel.SetDock(button3, Telerik.WinControls.Layouts.Dock.Top);
	
	            RadButtonElement button4 = new RadButtonElement("button4");
	            DockLayoutPanel.SetDock(button4, Telerik.WinControls.Layouts.Dock.Bottom);
	
	            DockLayoutPanel dockPanel = new DockLayoutPanel();
	            dockPanel.Children.Add(button4);
	            dockPanel.Children.Add(button3);
	            dockPanel.Children.Add(button2);
	            dockPanel.Children.Add(button1);
	        }
	{{endregion}}



#### __[VB.NET] __

{{source=..\SamplesVB\TPF\Layouts\PredefinedLayoutPanels\MyDockLayoutPanelElement.vb region=myDockLayoutPanelElement}}
	Public Class MyDockLayoutPanelElement
	    Inherits RadElement
	    Protected Overrides Sub CreateChildElements()
	        Dim button1 As New RadButtonElement("button1")
	        DockLayoutPanel.SetDock(button1, Telerik.WinControls.Layouts.Dock.Left)
	
	        Dim button2 As New RadButtonElement("button2")
	        DockLayoutPanel.SetDock(button2, Telerik.WinControls.Layouts.Dock.Right)
	
	        Dim button3 As New RadButtonElement("button3")
	        DockLayoutPanel.SetDock(button3, Telerik.WinControls.Layouts.Dock.Top)
	
	        Dim button4 As New RadButtonElement("button4")
	        DockLayoutPanel.SetDock(button4, Telerik.WinControls.Layouts.Dock.Bottom)
	
	
	        Dim dockPanel As New DockLayoutPanel()
	        dockPanel.Children.Add(button4)
	        dockPanel.Children.Add(button3)
	        dockPanel.Children.Add(button2)
	        dockPanel.Children.Add(button1)
	    End Sub
	{{endregion}}


