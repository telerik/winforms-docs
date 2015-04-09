---
title: Custom items
page_title: Custom items
description: Custom items
slug: propertygrid-custom-items
tags: custom,items
published: True
position: 5
---

# Custom items



__RadPropertyGrid__ allows you to create and use your own custom value items, allowing you to add the desired editors to fit your business need.
        In the following example, we will add two radio buttons as value editor for a property grid item.![propertygrid-custom-items 001](images/propertygrid-custom-items001.gif)

## 

Let’s start by specifying the RadPropertyGrid.__SelectedObject__ property, so out controls gets populated with some data. 
        For this purpose, we will use the *Item* class which is defined below:

#### __[C#]__

{{source=..\SamplesCS\PropertyGrid\PropertyGridCustomItems.cs region=ClassItem}}
	        
	        public class Item
	        {
	            public int Id { get; set; }
	            
	            public string Title { get; set; }
	            
	            public DeliveryType DeliveryType { get; set; }
	            
	            public Item(int id, string title, DeliveryType deliveryType)
	            {
	                this.Id = id;
	                this.Title = title;
	                this.DeliveryType = deliveryType;
	            }
	        }
	        
	        public enum DeliveryType
	        {
	            Delivery,
	            PickUp,
	        }
	    
	{{endregion}}



#### __[VB.NET]__

{{source=..\SamplesVB\PropertyGrid\PropertyGridCustomItems.vb region=ClassItem}}
	
	    Public Class Item
	        Public Property Id() As Integer
	            Get
	                Return m_Id
	            End Get
	            Set(value As Integer)
	                m_Id = value
	            End Set
	        End Property
	        Private m_Id As Integer
	
	        Public Property Title() As String
	            Get
	                Return m_Title
	            End Get
	            Set(value As String)
	                m_Title = value
	            End Set
	        End Property
	        Private m_Title As String
	
	        Public Property DeliveryType() As DeliveryType
	            Get
	                Return m_DeliveryType
	            End Get
	            Set(value As DeliveryType)
	                m_DeliveryType = value
	            End Set
	        End Property
	        Private m_DeliveryType As DeliveryType
	
	        Public Sub New(id As Integer, title As String, deliveryType As DeliveryType)
	            Me.Id = id
	            Me.Title = title
	            Me.DeliveryType = deliveryType
	        End Sub
	    End Class
	
	    Public Enum DeliveryType
	        Delivery
	        PickUp
	    End Enum
	
	    '#End Region
	End Class



Next, we should create a custom __PropertyGridValueElement__ which is purposed to be used in a derived __PropertyGridItemElement__. 
        Our custom implementation of the __PropertyGridValueElement__ will demonstrate how to insert radio buttons for the Item.__DeliveryType__ property. 

#### __[C#]__

{{source=..\SamplesCS\PropertyGrid\PropertyGridCustomItems.cs region=PropertyGridValueElement}}
	        
	        public class CustomPropertyGridValueElement : PropertyGridValueElement
	        {
	            StackLayoutElement stackPanel;
	            
	            protected override void CreateChildElements()
	            {
	                base.CreateChildElements();
	                
	                stackPanel = new StackLayoutElement();
	                stackPanel.Orientation = Orientation.Vertical;
	                foreach (var enumItem in Enum.GetValues(typeof(DeliveryType)))
	                {
	                    RadRadioButtonElement rb = new RadRadioButtonElement();
	                    rb.Text = enumItem.ToString();
	                    rb.ToggleStateChanged += rb_ToggleStateChanged;
	                    stackPanel.Children.Add(rb);
	                }
	                this.Children.Add(stackPanel);
	            }
	            
	            private void rb_ToggleStateChanged(object sender, StateChangedEventArgs args)
	            {
	                RadRadioButtonElement rb = sender as RadRadioButtonElement;
	                PropertyGridItem item = this.VisualItem.Data as PropertyGridItem;
	                if (item != null && rb.Text != item.FormattedValue && rb.ToggleState == ToggleState.On)
	                {
	                    item.Value = rb.Text;
	                }
	            }
	            
	            public override void Synchronize()
	            { 
	                PropertyGridItem item = this.VisualItem.Data as PropertyGridItem;
	                foreach (RadRadioButtonElement rb in stackPanel.Children)
	                {
	                    if (rb.Text == item.FormattedValue)
	                    {
	                        rb.ToggleState = ToggleState.On;  
	                        break;
	                    }
	                }
	            }
	        }
	        
	{{endregion}}



#### __[VB.NET]__

{{source=..\SamplesVB\PropertyGrid\PropertyGridCustomItems.vb region=PropertyGridValueElement}}
	
	    Public Class CustomPropertyGridValueElement
	    Inherits PropertyGridValueElement
	        Private stackPanel As StackLayoutElement
	
	        Protected Overrides Sub CreateChildElements()
	            MyBase.CreateChildElements()
	
	            stackPanel = New StackLayoutElement()
	            stackPanel.Orientation = Orientation.Vertical
	            For Each enumItem As Object In [Enum].GetValues(GetType(DeliveryType))
	                Dim rb As New RadRadioButtonElement()
	                rb.Text = enumItem.ToString()
	                AddHandler rb.ToggleStateChanged, AddressOf rb_ToggleStateChanged
	                stackPanel.Children.Add(rb)
	            Next
	            Me.Children.Add(stackPanel)
	        End Sub
	
	        Private Sub rb_ToggleStateChanged(sender As Object, args As StateChangedEventArgs)
	            Dim rb As RadRadioButtonElement = TryCast(sender, RadRadioButtonElement)
	            Dim item As PropertyGridItem = TryCast(Me.VisualItem.Data, PropertyGridItem)
	            If item IsNot Nothing AndAlso rb.Text <> item.FormattedValue AndAlso rb.ToggleState = ToggleState.[On] Then
	                item.Value = rb.Text
	            End If
	        End Sub
	
	        Public Overrides Sub Synchronize()
	            Dim item As PropertyGridItem = TryCast(Me.VisualItem.Data, PropertyGridItem)
	            For Each rb As RadRadioButtonElement In stackPanel.Children
	                If rb.Text = item.FormattedValue Then
	                    rb.ToggleState = ToggleState.[On]
	                    Exit For
	                End If
	            Next
	        End Sub
	    End Class
	
	    '#End Region
	
	    '#Region "PropertyGridItemElement"
	
	    Public Class CustomItemElement
	    Inherits PropertyGridItemElement
	        Protected Overrides Function CreatePropertyGridValueElement() As PropertyGridValueElement
	            Return New CustomPropertyGridValueElement()
	        End Function
	
	        Protected Overrides ReadOnly Property ThemeEffectiveType() As Type
	            Get
	                Return GetType(PropertyGridItemElement)
	            End Get
	        End Property
	    End Class
	
	    '#End Region
	
	    '#Region "ClassItem"
	
	    Public Class Item
	        Public Property Id() As Integer
	            Get
	                Return m_Id
	            End Get
	            Set(value As Integer)
	                m_Id = value
	            End Set
	        End Property
	        Private m_Id As Integer
	
	        Public Property Title() As String
	            Get
	                Return m_Title
	            End Get
	            Set(value As String)
	                m_Title = value
	            End Set
	        End Property
	        Private m_Title As String
	
	        Public Property DeliveryType() As DeliveryType
	            Get
	                Return m_DeliveryType
	            End Get
	            Set(value As DeliveryType)
	                m_DeliveryType = value
	            End Set
	        End Property
	        Private m_DeliveryType As DeliveryType
	
	        Public Sub New(id As Integer, title As String, deliveryType As DeliveryType)
	            Me.Id = id
	            Me.Title = title
	            Me.DeliveryType = deliveryType
	        End Sub
	    End Class
	
	    Public Enum DeliveryType
	        Delivery
	        PickUp
	    End Enum
	
	    '#End Region
	End Class



To put this value element in action, we will create a descendant of __PropertyGridItemElement__, and we will override its 
        __CreatePropertyGridValueElement__ method:

#### __[C#]__

{{source=..\SamplesCS\PropertyGrid\PropertyGridCustomItems.cs region=PropertyGridItemElement}}
	        
	        public class CustomItemElement : PropertyGridItemElement
	        {
	            protected override PropertyGridValueElement CreatePropertyGridValueElement()
	            {
	                return new CustomPropertyGridValueElement();
	            }
	            
	            protected override Type ThemeEffectiveType
	            {
	                get
	                {
	                    return typeof(PropertyGridItemElement);
	                }
	            }
	        }
	        
	{{endregion}}



#### __[VB.NET]__

{{source=..\SamplesVB\PropertyGrid\PropertyGridCustomItems.vb region=PropertyGridItemElement}}
	
	    Public Class CustomItemElement
	    Inherits PropertyGridItemElement
	        Protected Overrides Function CreatePropertyGridValueElement() As PropertyGridValueElement
	            Return New CustomPropertyGridValueElement()
	        End Function
	
	        Protected Overrides ReadOnly Property ThemeEffectiveType() As Type
	            Get
	                Return GetType(PropertyGridItemElement)
	            End Get
	        End Property
	    End Class
	
	    '#End Region
	
	    '#Region "ClassItem"
	
	    Public Class Item
	        Public Property Id() As Integer
	            Get
	                Return m_Id
	            End Get
	            Set(value As Integer)
	                m_Id = value
	            End Set
	        End Property
	        Private m_Id As Integer
	
	        Public Property Title() As String
	            Get
	                Return m_Title
	            End Get
	            Set(value As String)
	                m_Title = value
	            End Set
	        End Property
	        Private m_Title As String
	
	        Public Property DeliveryType() As DeliveryType
	            Get
	                Return m_DeliveryType
	            End Get
	            Set(value As DeliveryType)
	                m_DeliveryType = value
	            End Set
	        End Property
	        Private m_DeliveryType As DeliveryType
	
	        Public Sub New(id As Integer, title As String, deliveryType As DeliveryType)
	            Me.Id = id
	            Me.Title = title
	            Me.DeliveryType = deliveryType
	        End Sub
	    End Class
	
	    Public Enum DeliveryType
	        Delivery
	        PickUp
	    End Enum
	
	    '#End Region
	End Class



Back to the control, let’s subscribe to the RadPropertyGrid.__CreateItemElement__ event which gives you the opportunity to replace the
        item created for the __DeliveryType__ property with your custom one:

#### __[C#]__

{{source=..\SamplesCS\PropertyGrid\PropertyGridCustomItems.cs region=CreateItemElement}}
	        
	        private void radPropertyGrid1_CreateItemElement(object sender,
	            CreatePropertyGridItemElementEventArgs e)
	        {
	            if (e.Item.Name == "DeliveryType")
	            {
	                e.ItemElementType = typeof(CustomItemElement);
	            }
	        }
	        
	{{endregion}}



#### __[VB.NET]__

{{source=..\SamplesVB\PropertyGrid\PropertyGridCustomItems.vb region=CreateItemElement}}
	
	    Private Sub radPropertyGrid1_CreateItemElement(sender As Object, e As CreatePropertyGridItemElementEventArgs)
	        If e.Item.Name = "DeliveryType" Then
	            e.ItemElementType = GetType(CustomItemElement)
	        End If
	    End Sub
	
	    '#End Region
	
	    '#Region "PropertyGridValueElement"
	
	    Public Class CustomPropertyGridValueElement
	    Inherits PropertyGridValueElement
	        Private stackPanel As StackLayoutElement
	
	        Protected Overrides Sub CreateChildElements()
	            MyBase.CreateChildElements()
	
	            stackPanel = New StackLayoutElement()
	            stackPanel.Orientation = Orientation.Vertical
	            For Each enumItem As Object In [Enum].GetValues(GetType(DeliveryType))
	                Dim rb As New RadRadioButtonElement()
	                rb.Text = enumItem.ToString()
	                AddHandler rb.ToggleStateChanged, AddressOf rb_ToggleStateChanged
	                stackPanel.Children.Add(rb)
	            Next
	            Me.Children.Add(stackPanel)
	        End Sub
	
	        Private Sub rb_ToggleStateChanged(sender As Object, args As StateChangedEventArgs)
	            Dim rb As RadRadioButtonElement = TryCast(sender, RadRadioButtonElement)
	            Dim item As PropertyGridItem = TryCast(Me.VisualItem.Data, PropertyGridItem)
	            If item IsNot Nothing AndAlso rb.Text <> item.FormattedValue AndAlso rb.ToggleState = ToggleState.[On] Then
	                item.Value = rb.Text
	            End If
	        End Sub
	
	        Public Overrides Sub Synchronize()
	            Dim item As PropertyGridItem = TryCast(Me.VisualItem.Data, PropertyGridItem)
	            For Each rb As RadRadioButtonElement In stackPanel.Children
	                If rb.Text = item.FormattedValue Then
	                    rb.ToggleState = ToggleState.[On]
	                    Exit For
	                End If
	            Next
	        End Sub
	    End Class
	
	    '#End Region
	
	    '#Region "PropertyGridItemElement"
	
	    Public Class CustomItemElement
	    Inherits PropertyGridItemElement
	        Protected Overrides Function CreatePropertyGridValueElement() As PropertyGridValueElement
	            Return New CustomPropertyGridValueElement()
	        End Function
	
	        Protected Overrides ReadOnly Property ThemeEffectiveType() As Type
	            Get
	                Return GetType(PropertyGridItemElement)
	            End Get
	        End Property
	    End Class
	
	    '#End Region
	
	    '#Region "ClassItem"
	
	    Public Class Item
	        Public Property Id() As Integer
	            Get
	                Return m_Id
	            End Get
	            Set(value As Integer)
	                m_Id = value
	            End Set
	        End Property
	        Private m_Id As Integer
	
	        Public Property Title() As String
	            Get
	                Return m_Title
	            End Get
	            Set(value As String)
	                m_Title = value
	            End Set
	        End Property
	        Private m_Title As String
	
	        Public Property DeliveryType() As DeliveryType
	            Get
	                Return m_DeliveryType
	            End Get
	            Set(value As DeliveryType)
	                m_DeliveryType = value
	            End Set
	        End Property
	        Private m_DeliveryType As DeliveryType
	
	        Public Sub New(id As Integer, title As String, deliveryType As DeliveryType)
	            Me.Id = id
	            Me.Title = title
	            Me.DeliveryType = deliveryType
	        End Sub
	    End Class
	
	    Public Enum DeliveryType
	        Delivery
	        PickUp
	    End Enum
	
	    '#End Region
	End Class



The next thing we need to do is to stop entering edit mode when clicking over one of the radio buttons by using the RadPropertyGrid.__Editing__ event. 
        Thus, the user will be allowed to select directly the preferred delivery type without necessity to enter edit mode. 

#### __[C#]__

{{source=..\SamplesCS\PropertyGrid\PropertyGridCustomItems.cs region=Editing}}
	        
	        private void radPropertyGrid1_Editing(object sender,
	            PropertyGridItemEditingEventArgs e)
	        {
	            if (e.Item.Name == "DeliveryType")
	            {
	                e.Cancel = true;
	            }
	        }
	        
	{{endregion}}



#### __[VB.NET]__

{{source=..\SamplesVB\PropertyGrid\PropertyGridCustomItems.vb region=Editing}}
	
	    Private Sub radPropertyGrid1_Editing(sender As Object, e As PropertyGridItemEditingEventArgs)
	        If e.Item.Name = "DeliveryType" Then
	            e.Cancel = True
	        End If
	    End Sub
	
	    '#End Region
	
	    '#Region "CreateItemElement"
	
	    Private Sub radPropertyGrid1_CreateItemElement(sender As Object, e As CreatePropertyGridItemElementEventArgs)
	        If e.Item.Name = "DeliveryType" Then
	            e.ItemElementType = GetType(CustomItemElement)
	        End If
	    End Sub
	
	    '#End Region
	
	    '#Region "PropertyGridValueElement"
	
	    Public Class CustomPropertyGridValueElement
	    Inherits PropertyGridValueElement
	        Private stackPanel As StackLayoutElement
	
	        Protected Overrides Sub CreateChildElements()
	            MyBase.CreateChildElements()
	
	            stackPanel = New StackLayoutElement()
	            stackPanel.Orientation = Orientation.Vertical
	            For Each enumItem As Object In [Enum].GetValues(GetType(DeliveryType))
	                Dim rb As New RadRadioButtonElement()
	                rb.Text = enumItem.ToString()
	                AddHandler rb.ToggleStateChanged, AddressOf rb_ToggleStateChanged
	                stackPanel.Children.Add(rb)
	            Next
	            Me.Children.Add(stackPanel)
	        End Sub
	
	        Private Sub rb_ToggleStateChanged(sender As Object, args As StateChangedEventArgs)
	            Dim rb As RadRadioButtonElement = TryCast(sender, RadRadioButtonElement)
	            Dim item As PropertyGridItem = TryCast(Me.VisualItem.Data, PropertyGridItem)
	            If item IsNot Nothing AndAlso rb.Text <> item.FormattedValue AndAlso rb.ToggleState = ToggleState.[On] Then
	                item.Value = rb.Text
	            End If
	        End Sub
	
	        Public Overrides Sub Synchronize()
	            Dim item As PropertyGridItem = TryCast(Me.VisualItem.Data, PropertyGridItem)
	            For Each rb As RadRadioButtonElement In stackPanel.Children
	                If rb.Text = item.FormattedValue Then
	                    rb.ToggleState = ToggleState.[On]
	                    Exit For
	                End If
	            Next
	        End Sub
	    End Class
	
	    '#End Region
	
	    '#Region "PropertyGridItemElement"
	
	    Public Class CustomItemElement
	    Inherits PropertyGridItemElement
	        Protected Overrides Function CreatePropertyGridValueElement() As PropertyGridValueElement
	            Return New CustomPropertyGridValueElement()
	        End Function
	
	        Protected Overrides ReadOnly Property ThemeEffectiveType() As Type
	            Get
	                Return GetType(PropertyGridItemElement)
	            End Get
	        End Property
	    End Class
	
	    '#End Region
	
	    '#Region "ClassItem"
	
	    Public Class Item
	        Public Property Id() As Integer
	            Get
	                Return m_Id
	            End Get
	            Set(value As Integer)
	                m_Id = value
	            End Set
	        End Property
	        Private m_Id As Integer
	
	        Public Property Title() As String
	            Get
	                Return m_Title
	            End Get
	            Set(value As String)
	                m_Title = value
	            End Set
	        End Property
	        Private m_Title As String
	
	        Public Property DeliveryType() As DeliveryType
	            Get
	                Return m_DeliveryType
	            End Get
	            Set(value As DeliveryType)
	                m_DeliveryType = value
	            End Set
	        End Property
	        Private m_DeliveryType As DeliveryType
	
	        Public Sub New(id As Integer, title As String, deliveryType As DeliveryType)
	            Me.Id = id
	            Me.Title = title
	            Me.DeliveryType = deliveryType
	        End Sub
	    End Class
	
	    Public Enum DeliveryType
	        Delivery
	        PickUp
	    End Enum
	
	    '#End Region
	End Class



The last thing we should update is to adjust the PropertyGridElement.PropertyTableElement.__ItemHeight__ property with such a value to fit the available content:

#### __[C#]__

{{source=..\SamplesCS\PropertyGrid\PropertyGridCustomItems.cs region=ItemHeight}}
	            
	            this.radPropertyGrid1.PropertyGridElement.PropertyTableElement.ItemHeight = Enum.GetValues(typeof(DeliveryType)).Length * 20;
	            
	{{endregion}}



#### __[VB.NET]__

{{source=..\SamplesVB\PropertyGrid\PropertyGridCustomItems.vb region=ItemHeight}}
	
	        Me.radPropertyGrid1.PropertyGridElement.PropertyTableElement.ItemHeight = [Enum].GetValues(GetType(DeliveryType)).Length * 20
	        '#End Region
	
	    End Sub
	
	    '#Region "Editing"
	
	    Private Sub radPropertyGrid1_Editing(sender As Object, e As PropertyGridItemEditingEventArgs)
	        If e.Item.Name = "DeliveryType" Then
	            e.Cancel = True
	        End If
	    End Sub
	
	    '#End Region
	
	    '#Region "CreateItemElement"
	
	    Private Sub radPropertyGrid1_CreateItemElement(sender As Object, e As CreatePropertyGridItemElementEventArgs)
	        If e.Item.Name = "DeliveryType" Then
	            e.ItemElementType = GetType(CustomItemElement)
	        End If
	    End Sub
	
	    '#End Region
	
	    '#Region "PropertyGridValueElement"
	
	    Public Class CustomPropertyGridValueElement
	    Inherits PropertyGridValueElement
	        Private stackPanel As StackLayoutElement
	
	        Protected Overrides Sub CreateChildElements()
	            MyBase.CreateChildElements()
	
	            stackPanel = New StackLayoutElement()
	            stackPanel.Orientation = Orientation.Vertical
	            For Each enumItem As Object In [Enum].GetValues(GetType(DeliveryType))
	                Dim rb As New RadRadioButtonElement()
	                rb.Text = enumItem.ToString()
	                AddHandler rb.ToggleStateChanged, AddressOf rb_ToggleStateChanged
	                stackPanel.Children.Add(rb)
	            Next
	            Me.Children.Add(stackPanel)
	        End Sub
	
	        Private Sub rb_ToggleStateChanged(sender As Object, args As StateChangedEventArgs)
	            Dim rb As RadRadioButtonElement = TryCast(sender, RadRadioButtonElement)
	            Dim item As PropertyGridItem = TryCast(Me.VisualItem.Data, PropertyGridItem)
	            If item IsNot Nothing AndAlso rb.Text <> item.FormattedValue AndAlso rb.ToggleState = ToggleState.[On] Then
	                item.Value = rb.Text
	            End If
	        End Sub
	
	        Public Overrides Sub Synchronize()
	            Dim item As PropertyGridItem = TryCast(Me.VisualItem.Data, PropertyGridItem)
	            For Each rb As RadRadioButtonElement In stackPanel.Children
	                If rb.Text = item.FormattedValue Then
	                    rb.ToggleState = ToggleState.[On]
	                    Exit For
	                End If
	            Next
	        End Sub
	    End Class
	
	    '#End Region
	
	    '#Region "PropertyGridItemElement"
	
	    Public Class CustomItemElement
	    Inherits PropertyGridItemElement
	        Protected Overrides Function CreatePropertyGridValueElement() As PropertyGridValueElement
	            Return New CustomPropertyGridValueElement()
	        End Function
	
	        Protected Overrides ReadOnly Property ThemeEffectiveType() As Type
	            Get
	                Return GetType(PropertyGridItemElement)
	            End Get
	        End Property
	    End Class
	
	    '#End Region
	
	    '#Region "ClassItem"
	
	    Public Class Item
	        Public Property Id() As Integer
	            Get
	                Return m_Id
	            End Get
	            Set(value As Integer)
	                m_Id = value
	            End Set
	        End Property
	        Private m_Id As Integer
	
	        Public Property Title() As String
	            Get
	                Return m_Title
	            End Get
	            Set(value As String)
	                m_Title = value
	            End Set
	        End Property
	        Private m_Title As String
	
	        Public Property DeliveryType() As DeliveryType
	            Get
	                Return m_DeliveryType
	            End Get
	            Set(value As DeliveryType)
	                m_DeliveryType = value
	            End Set
	        End Property
	        Private m_DeliveryType As DeliveryType
	
	        Public Sub New(id As Integer, title As String, deliveryType As DeliveryType)
	            Me.Id = id
	            Me.Title = title
	            Me.DeliveryType = deliveryType
	        End Sub
	    End Class
	
	    Public Enum DeliveryType
	        Delivery
	        PickUp
	    End Enum
	
	    '#End Region
	End Class


