---
title: Binding to a Collection of Interfaces
page_title: Binding to a Collection of Interfaces
description: Binding to a Collection of Interfaces
slug: gridview-populating-with-data-binding-to-a-collection-of-interfaces
tags: binding,to,a,collection,of,interfaces
published: True
position: 15
---

# Binding to a Collection of Interfaces



There may be a case where you want to bind RadGridView to a collection of interfaces in order to be as abstract as possible or due to other reasons.
        RadGridView does not support this out of the box since when a new item is added its parameterless constructor is being invoked and interfaces cannot be created
        in such a way. The solution is to override the __AddNew__ method of the __GridViewListSource__.
      

## 

First, we will need to create a custom GridViewListSource:

#### __[C#] Creating sample class __

{{region GridCode}}
	        public class MyGrid : RadGridView
	        {
	            protected override RadGridViewElement CreateGridViewElement()
	            {
	                return new MyGridViewElement();
	            }
	        }
	
	        public class MyGridViewElement : RadGridViewElement
	        {
	            protected override MasterGridViewTemplate CreateTemplate()
	            {
	                return new MyMasterGridViewTemplate();
	            }
	
	            protected override Type ThemeEffectiveType
	            {
	                get
	                {
	                    return typeof(RadGridViewElement);
	                }
	            }
	        }
	
	        public class MyMasterGridViewTemplate : MasterGridViewTemplate
	        {
	            protected override GridViewListSource CreateListSource()
	            {
	                return new MyGridViewListSource(this);
	            }
	        }
	
	        public class MyGridViewListSource : GridViewListSource
	        {
	            private GridViewTemplate template;
	
	            public MyGridViewListSource(GridViewTemplate template)
	                : base(template)
	            {
	                this.template = template;
	            }
	
	            public override GridViewRowInfo AddNew()
	            {
	                GridObj gridObj = new GridObj();
	                IList list = (this as ICurrencyManagerProvider).CurrencyManager.List;
	                list.Add(gridObj);
	                IDataItem dataItem = (this.template as IDataItemSource).NewItem();
	                if (this.IsDataBound)
	                {
	                    this.InitializeBoundRow((GridViewRowInfo)dataItem, gridObj);
	                }
	
	                return dataItem as GridViewRowInfo;
	            }
	        }
	{{endregion}}



#### __[VB.NET] Creating sample class__

{{region GridCode}}
	    Public Class MyGrid
	        Inherits RadGridView
	        Protected Overrides Function CreateGridViewElement() As RadGridViewElement
	            Return New MyGridViewElement()
	        End Function
	    End Class
	
	    Public Class MyGridViewElement
	        Inherits RadGridViewElement
	        Protected Overrides Function CreateTemplate() As MasterGridViewTemplate
	            Return New MyMasterGridViewTemplate()
	        End Function
	
	        Protected Overrides ReadOnly Property ThemeEffectiveType() As Type
	            Get
	                Return GetType(RadGridViewElement)
	            End Get
	        End Property
	    End Class
	
	    Public Class MyMasterGridViewTemplate
	        Inherits MasterGridViewTemplate
	        Protected Overrides Function CreateListSource() As GridViewListSource
	            Return New MyGridViewListSource(Me)
	        End Function
	    End Class
	
	    Public Class MyGridViewListSource
	        Inherits GridViewListSource
	        Private template As GridViewTemplate
	
	        Public Sub New(template As GridViewTemplate)
	            MyBase.New(template)
	            Me.template = template
	        End Sub
	
	        Public Overrides Function AddNew() As GridViewRowInfo
	            Dim gridObj As New GridObj()
	            Dim list As IList = TryCast(Me, ICurrencyManagerProvider).CurrencyManager.List
	            list.Add(gridObj)
	            Dim dataItem As IDataItem = TryCast(Me.template, IDataItemSource).NewItem()
	            If Me.IsDataBound Then
	                Me.InitializeBoundRow(DirectCast(dataItem, GridViewRowInfo), gridObj)
	            End If
	
	            Return TryCast(dataItem, GridViewRowInfo)
	        End Function
	    End Class
	{{endregion}}



The GridObj type is a type, which inherits from the interface, which you have bound your RadGridView. Consider the following example:

#### __[C#] Creating sample class __

{{region ExampleCode}}
	        public BindingToCollectionOfInterfaces()
	        {
	            InitializeComponent();
	
	            MyGrid grid = new MyGrid();
	            this.Controls.Add(grid);
	            grid.Dock = DockStyle.Fill;
	
	            IEnumerable<IGridObj> dataSource = new BindingList<IGridObj>();
	
	            grid.DataSource = dataSource;
	            grid.AllowAddNewRow = true;
	        }
	
	        public interface IGridObj
	        {
	            int Id { get; set; }
	            string Name { get; set; }
	        }
	
	        public class GridObj : IGridObj
	        {
	            public int Id { get; set; }
	
	            public string Name { get; set; }
	
	            public string RandomString { get; set; }
	        }
	{{endregion}}



#### __[VB.NET] Creating sample class__

{{region ExampleCode}}
	    Public Sub New()
	        InitializeComponent()
	
	        Dim grid As New MyGrid()
	        Me.Controls.Add(grid)
	        grid.Dock = DockStyle.Fill
	
	        Dim dataSource As IEnumerable(Of IGridObj) = New BindingList(Of IGridObj)()
	
	        grid.DataSource = dataSource
	        grid.AllowAddNewRow = True
	    End Sub
	
	    Public Interface IGridObj
	        Property Id() As Integer
	        Property Name() As String
	    End Interface
	
	    Public Class GridObj
	        Implements IGridObj
	        Public Property Id() As Integer Implements BindingToCollectionOfInterfaces.IGridObj.Id
	            Get
	                Return m_Id
	            End Get
	            Set(value As Integer)
	                m_Id = value
	            End Set
	        End Property
	        Private m_Id As Integer
	
	        Public Property Name() As String Implements BindingToCollectionOfInterfaces.IGridObj.Name
	            Get
	                Return m_Name
	            End Get
	            Set(value As String)
	                m_Name = value
	            End Set
	        End Property
	        Private m_Name As String
	
	        Public Property RandomString() As String
	            Get
	                Return m_RandomString
	            End Get
	            Set(value As String)
	                m_RandomString = value
	            End Set
	        End Property
	        Private m_RandomString As String
	    End Class
	{{endregion}}



You will notice that we are creating a __BindingList__ of __IGridObject__, because the new items are manually added and this way the grid will be notified for the new objects.
          
