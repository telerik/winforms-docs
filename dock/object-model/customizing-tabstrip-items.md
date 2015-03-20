---
title: Customizing TabStrip Items
page_title: Customizing TabStrip Items
description: Customizing TabStrip Items
slug: dock-object-model-customizing-tabstrip-items
tags: customizing,tabstrip,items
published: True
position: 10
---

# Customizing TabStrip Items



This article demonstrates how you can customize or replace the TabStrip items.

## Adding element to the TabStrip item

The TabStripItemCreating event can be used for adding any kind of RadElement to the TabStrip.
        For example the following code adds text box to each TabStrip item:

#### __[C#]__

{{region element}}
	        void RadDockEvents_TabStripItemCreating1(object sender, TabStripItemCreatingEventArgs args)
	        {
	            RadTextBoxControlElement textbox = new RadTextBoxControlElement();
	            textbox.Margin = new System.Windows.Forms.Padding(80, 5, 5, 5);
	            textbox.MinSize = new System.Drawing.Size(50, 0);
	            args.TabItem.Children.Add(textbox);
	        }
	{{endregion}}



#### __[VB.NET]__

{{region element}}
	    Private Sub RadDockEvents_TabStripItemCreating1(ByVal sender As Object, ByVal args As TabStripItemCreatingEventArgs)
	        Dim textbox As New RadTextBoxControlElement()
	        textbox.Margin = New System.Windows.Forms.Padding(80, 5, 5, 5)
	        textbox.MinSize = New System.Drawing.Size(50, 0)
	        args.TabItem.Children.Add(textbox)
	    End Sub
	    '#End Region
	    '#Region "replace"
	    Private Sub RadDockEvents_TabStripItemCreating(ByVal sender As Object, ByVal args As TabStripItemCreatingEventArgs)
	        args.TabItem = New MyTabStripItem(args.TabItem.TabPanel)
	    End Sub
	    '#End Region
	End Class
	'#Region "Item"
	Friend Class MyTabStripItem
	    Inherits TabStripItem
	
	    Public Sub New(ByVal panel As TabPanel)
	        MyBase.New(panel)
	    End Sub
	    Protected Overrides Sub CreateChildElements()
	        MyBase.CreateChildElements()
	        Me.Children.Add(CreateCustomElement())
	    End Sub
	    Private Function CreateCustomElement() As RadElement
	        Dim element As New StackLayoutElement()
	        element.Orientation = Orientation.Horizontal
	        element.StretchHorizontally = True
	        element.MinSize = New System.Drawing.Size(100, 0)
	
	        Dim button As New RadButtonElement()
	        button.Text = "Search"
	        element.Children.Add(button)
	
	        Dim textbox As New RadTextBoxControlElement()
	        element.Children.Add(textbox)
	        element.Margin = New Padding(5, 2, 2, 2)
	        Me.DrawText = False
	        Me.Padding = New Padding(40, 5, 40, 5)
	
	        Return element
	    End Function
	    Protected Overrides ReadOnly Property ThemeEffectiveType() As Type
	        Get
	            Return GetType(TabStripItem)
	        End Get
	    End Property
	End Class
	'#End Region
	



The tabs will look like this:![dock-object-model-customizing-tabstrip-items 001](images/dock-object-model-customizing-tabstrip-items001.png)

## 
        Replacing the entire TabStrip element.
      

The TabStripItemCreating event can be used for replacing the entire element as well. Firs you need to create a TabStripItem class descendant

#### __[C#]__

{{region Item}}
	    class MyTabStripItem : TabStripItem
	    {
	        public MyTabStripItem(TabPanel panel)
	            : base(panel)
	        { }
	        protected override void CreateChildElements()
	        {
	            base.CreateChildElements();
	            this.Children.Add(CreateCustomElement());
	        }
	        RadElement CreateCustomElement()
	        {
	            StackLayoutElement element = new StackLayoutElement();
	            element.Orientation = Orientation.Horizontal;
	            element.StretchHorizontally = true;
	            element.MinSize = new System.Drawing.Size(100, 0);
	
	            RadButtonElement button = new RadButtonElement();
	            button.Text = "Search";
	            element.Children.Add(button);
	
	            RadTextBoxControlElement textbox = new RadTextBoxControlElement();
	            element.Children.Add(textbox);
	            element.Margin = new Padding(5, 2, 2, 2);
	            this.DrawText = false;
	            this.Padding = new Padding(40, 5, 40, 5);
	
	            return element;
	        }
	        protected override Type ThemeEffectiveType
	        {
	            get
	            {
	                return typeof(TabStripItem);
	            }
	        }
	    }
	{{endregion}}



#### __[VB.NET]__

{{region Item}}
	Friend Class MyTabStripItem
	    Inherits TabStripItem
	
	    Public Sub New(ByVal panel As TabPanel)
	        MyBase.New(panel)
	    End Sub
	    Protected Overrides Sub CreateChildElements()
	        MyBase.CreateChildElements()
	        Me.Children.Add(CreateCustomElement())
	    End Sub
	    Private Function CreateCustomElement() As RadElement
	        Dim element As New StackLayoutElement()
	        element.Orientation = Orientation.Horizontal
	        element.StretchHorizontally = True
	        element.MinSize = New System.Drawing.Size(100, 0)
	
	        Dim button As New RadButtonElement()
	        button.Text = "Search"
	        element.Children.Add(button)
	
	        Dim textbox As New RadTextBoxControlElement()
	        element.Children.Add(textbox)
	        element.Margin = New Padding(5, 2, 2, 2)
	        Me.DrawText = False
	        Me.Padding = New Padding(40, 5, 40, 5)
	
	        Return element
	    End Function
	    Protected Overrides ReadOnly Property ThemeEffectiveType() As Type
	        Get
	            Return GetType(TabStripItem)
	        End Get
	    End Property
	End Class
	'#End Region
	



Then you can just replace the default item:
        

#### __[C#]__

{{region replace}}
	        void RadDockEvents_TabStripItemCreating(object sender, TabStripItemCreatingEventArgs args)
	        {
	            args.TabItem = new MyTabStripItem(args.TabItem.TabPanel);
	        }
	{{endregion}}



#### __[VB.NET]__

{{region replace}}
	    Private Sub RadDockEvents_TabStripItemCreating(ByVal sender As Object, ByVal args As TabStripItemCreatingEventArgs)
	        args.TabItem = New MyTabStripItem(args.TabItem.TabPanel)
	    End Sub
	    '#End Region
	End Class
	'#Region "Item"
	Friend Class MyTabStripItem
	    Inherits TabStripItem
	
	    Public Sub New(ByVal panel As TabPanel)
	        MyBase.New(panel)
	    End Sub
	    Protected Overrides Sub CreateChildElements()
	        MyBase.CreateChildElements()
	        Me.Children.Add(CreateCustomElement())
	    End Sub
	    Private Function CreateCustomElement() As RadElement
	        Dim element As New StackLayoutElement()
	        element.Orientation = Orientation.Horizontal
	        element.StretchHorizontally = True
	        element.MinSize = New System.Drawing.Size(100, 0)
	
	        Dim button As New RadButtonElement()
	        button.Text = "Search"
	        element.Children.Add(button)
	
	        Dim textbox As New RadTextBoxControlElement()
	        element.Children.Add(textbox)
	        element.Margin = New Padding(5, 2, 2, 2)
	        Me.DrawText = False
	        Me.Padding = New Padding(40, 5, 40, 5)
	
	        Return element
	    End Function
	    Protected Overrides ReadOnly Property ThemeEffectiveType() As Type
	        Get
	            Return GetType(TabStripItem)
	        End Get
	    End Property
	End Class
	'#End Region
	



The tabs will look like in the following image:
        ![dock-object-model-customizing-tabstrip-items 002](images/dock-object-model-customizing-tabstrip-items002.png)

## 
        Using the TabStripItemCreating event
      

The above examples are using the __TabStripItemCreating__ event. This event cannot be accessed via the RadDock instance.
          You can subscribe to it event by using the static __RadDockEvents__ class. You should do that before the InitializeComponent method call:
        

#### __[C#]__

{{region subscribe}}
	        public CustomizingTabStripItems()
	        {
	            RadDockEvents.TabStripItemCreating += RadDockEvents_TabStripItemCreating;
	            InitializeComponent();
	        }
	{{endregion}}



#### __[VB.NET]__

{{region subscribe}}
	    Public Sub New()
	        AddHandler RadDockEvents.TabStripItemCreating, AddressOf RadDockEvents_TabStripItemCreating
	        InitializeComponent()
	    End Sub
	    '#End Region
	
	    '#Region "closed"
	    Protected Overrides Sub OnClosed(ByVal e As EventArgs)
	        RemoveHandler RadDockEvents.TabStripItemCreating, AddressOf RadDockEvents_TabStripItemCreating
	        MyBase.OnClosed(e)
	    End Sub
	    '#End Region
	
	    '#Region "element"
	    Private Sub RadDockEvents_TabStripItemCreating1(ByVal sender As Object, ByVal args As TabStripItemCreatingEventArgs)
	        Dim textbox As New RadTextBoxControlElement()
	        textbox.Margin = New System.Windows.Forms.Padding(80, 5, 5, 5)
	        textbox.MinSize = New System.Drawing.Size(50, 0)
	        args.TabItem.Children.Add(textbox)
	    End Sub
	    '#End Region
	    '#Region "replace"
	    Private Sub RadDockEvents_TabStripItemCreating(ByVal sender As Object, ByVal args As TabStripItemCreatingEventArgs)
	        args.TabItem = New MyTabStripItem(args.TabItem.TabPanel)
	    End Sub
	    '#End Region
	End Class
	'#Region "Item"
	Friend Class MyTabStripItem
	    Inherits TabStripItem
	
	    Public Sub New(ByVal panel As TabPanel)
	        MyBase.New(panel)
	    End Sub
	    Protected Overrides Sub CreateChildElements()
	        MyBase.CreateChildElements()
	        Me.Children.Add(CreateCustomElement())
	    End Sub
	    Private Function CreateCustomElement() As RadElement
	        Dim element As New StackLayoutElement()
	        element.Orientation = Orientation.Horizontal
	        element.StretchHorizontally = True
	        element.MinSize = New System.Drawing.Size(100, 0)
	
	        Dim button As New RadButtonElement()
	        button.Text = "Search"
	        element.Children.Add(button)
	
	        Dim textbox As New RadTextBoxControlElement()
	        element.Children.Add(textbox)
	        element.Margin = New Padding(5, 2, 2, 2)
	        Me.DrawText = False
	        Me.Padding = New Padding(40, 5, 40, 5)
	
	        Return element
	    End Function
	    Protected Overrides ReadOnly Property ThemeEffectiveType() As Type
	        Get
	            Return GetType(TabStripItem)
	        End Get
	    End Property
	End Class
	'#End Region
	



Please note that when such static events are used it is mandatory to unsubscribe from the event. If you do not do that the form would not be disposed properly:

#### __[C#]__

{{region closed}}
	        protected override void OnClosed(EventArgs e)
	        {
	            RadDockEvents.TabStripItemCreating -= RadDockEvents_TabStripItemCreating;
	            base.OnClosed(e);
	        }
	{{endregion}}



#### __[VB.NET]__

{{region closed}}
	    Protected Overrides Sub OnClosed(ByVal e As EventArgs)
	        RemoveHandler RadDockEvents.TabStripItemCreating, AddressOf RadDockEvents_TabStripItemCreating
	        MyBase.OnClosed(e)
	    End Sub
	    '#End Region
	
	    '#Region "element"
	    Private Sub RadDockEvents_TabStripItemCreating1(ByVal sender As Object, ByVal args As TabStripItemCreatingEventArgs)
	        Dim textbox As New RadTextBoxControlElement()
	        textbox.Margin = New System.Windows.Forms.Padding(80, 5, 5, 5)
	        textbox.MinSize = New System.Drawing.Size(50, 0)
	        args.TabItem.Children.Add(textbox)
	    End Sub
	    '#End Region
	    '#Region "replace"
	    Private Sub RadDockEvents_TabStripItemCreating(ByVal sender As Object, ByVal args As TabStripItemCreatingEventArgs)
	        args.TabItem = New MyTabStripItem(args.TabItem.TabPanel)
	    End Sub
	    '#End Region
	End Class
	'#Region "Item"
	Friend Class MyTabStripItem
	    Inherits TabStripItem
	
	    Public Sub New(ByVal panel As TabPanel)
	        MyBase.New(panel)
	    End Sub
	    Protected Overrides Sub CreateChildElements()
	        MyBase.CreateChildElements()
	        Me.Children.Add(CreateCustomElement())
	    End Sub
	    Private Function CreateCustomElement() As RadElement
	        Dim element As New StackLayoutElement()
	        element.Orientation = Orientation.Horizontal
	        element.StretchHorizontally = True
	        element.MinSize = New System.Drawing.Size(100, 0)
	
	        Dim button As New RadButtonElement()
	        button.Text = "Search"
	        element.Children.Add(button)
	
	        Dim textbox As New RadTextBoxControlElement()
	        element.Children.Add(textbox)
	        element.Margin = New Padding(5, 2, 2, 2)
	        Me.DrawText = False
	        Me.Padding = New Padding(40, 5, 40, 5)
	
	        Return element
	    End Function
	    Protected Overrides ReadOnly Property ThemeEffectiveType() As Type
	        Get
	            Return GetType(TabStripItem)
	        End Get
	    End Property
	End Class
	'#End Region
	


