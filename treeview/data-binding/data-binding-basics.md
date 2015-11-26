---
title: Data Binding Basics
page_title: Data Binding Basics | UI for WinForms Documentation
description: Data Binding Basics
slug: winforms/treeview/data-binding/data-binding-basics
tags: data,binding,basics
published: True
position: 0
---

# Data Binding Basics



RadTreeView binds to any object that implements IList, IListSource or IBindingList. This includes generic lists and BindingSource for example. To make databinding work, you must assign the __DataSource__ property of the treeview. 
      

Set the __DisplayMember__ to the name of the field that you want visible in the treeview and the __ValueMember__ to the name of a field that is stored in each node's __Value__ property.
      

## 

The example below binds a generic list of "Product" objects and displays only a single level of data. "Product" has an integer field, a float field and a string field. In this example, we set the ValueMember to the int field and the DisplayMember to the string field:

{{source=..\SamplesCS\TreeView\DataBinding\DataBindingBasics.cs region=dataBindingBasics}} 
{{source=..\SamplesCS\TreeView\DataBinding\Product.cs region=product}} 
````C#
public partial class DataBindingBasics : Form
{
    public DataBindingBasics()
    {
        InitializeComponent();
        List<Product> products = new List<Product>();
        products.Add(new Product(567, "Bicycle", 5));
        products.Add(new Product(456, "Car", 5000));
        products.Add(new Product(789, "Bike", 1500));
        radTreeView1.DataSource = products;
        radTreeView1.DisplayMember = "Description";
        radTreeView1.ValueMember = "ID";
        radTreeView1.SelectedNodeChanged += radTreeView1_SelectedNodeChanged;
        radTreeView1.NodeDataBound += radTreeView1_NodeDataBound;
    }
    #region nodeDataBoundEvent
    void radTreeView1_NodeDataBound(object sender, Telerik.WinControls.UI.RadTreeViewEventArgs e)
    {
        DataRowView dataRow = e.Node.DataBoundItem as DataRowView;
        if(dataRow != null)
        {
            e.Node.ForeColor = (Color)dataRow["ForeColor"];
        }
    }

````
````VB.NET
public class Product
{
    private int _id;
    private string _description;
    private float _price;
    public int ID
    {
        get { return _id; }
        set { _id = value; }
    }
    public string Description
    {
        get { return _description; }
        set { _description = value; }
    }
    public float Price
    {
        get { return _price; }
        set { _price = value; }
    }
    public Product(int id, string description, float price)
    {
        _id = id;
        _description = description;
        _price = price;
    }
}

````

{{endregion}} 

## Getting the data bound object

To extend the previous example, let's get the price of a product when we select the node of that product. Obviously, RadTreeNode contains information only about the ID and the Description of a Product. So, in order to be able to retrieve the Price value, we need to get the DataBoundItem of the RadTreeNode as shown below:

{{source=..\SamplesCS\TreeView\DataBinding\DataBindingBasics.cs region=dataBoundItem}} 
{{source=..\SamplesVB\TreeView\DataBinding\DataBindingBasics.vb region=dataBoundItem}} 

````C#
void radTreeView1_SelectedNodeChanged(object sender, Telerik.WinControls.UI.RadTreeViewEventArgs e)
{
    Product product = e.Node.DataBoundItem as Product;
    if (product != null)
    {
        MessageBox.Show("Product: " + e.Node.Text + ", Price: " + product.Price);
    }
}

````
````VB.NET
Private Sub RadTreeView1_SelectedNodeChanged(ByVal sender As Object, ByVal e As Telerik.WinControls.UI.RadTreeViewEventArgs) Handles RadTreeView1.SelectedNodeChanged
    Dim product As Product = TryCast(e.Node.DataBoundItem, Product)
    If product IsNot Nothing Then
        MessageBox.Show("Product: " & e.Node.Text & ", Price: " & product.Price)
    End If
End Sub

````

{{endregion}} 

As a result, when we select a node, we will get a message box showing the price of the product related to the currently selected node:

![treeview-data-binding-data-binding-basics 001](images/treeview-data-binding-data-binding-basics001.png)

When a __RadTreeNode__ is assigned with a data-bound item for the first time, the __NodeDataBound__ event is fired. This event can be useful in situations where you  need to sync properties of RadTreeNode with properties of the data bound item.

{{source=..\SamplesCS\TreeView\DataBinding\DataBindingBasics.cs region=nodeDataBoundEvent}} 
{{source=..\SamplesVB\TreeView\DataBinding\DataBindingBasics.vb region=nodeDataBoundEvent}} 

````C#
void radTreeView1_NodeDataBound(object sender, Telerik.WinControls.UI.RadTreeViewEventArgs e)
{
    DataRowView dataRow = e.Node.DataBoundItem as DataRowView;
    if(dataRow != null)
    {
        e.Node.ForeColor = (Color)dataRow["ForeColor"];
    }
}

````
````VB.NET
Private Sub RadTreeView1_NodeDataBound(sender As Object, e As Telerik.WinControls.UI.RadTreeViewEventArgs) Handles RadTreeView1.NodeDataBound
    Dim dataRow As DataRowView = TryCast(e.Node.DataBoundItem, DataRowView)
    If dataRow IsNot Nothing Then
        e.Node.ForeColor = DirectCast(dataRow("ForeColor"), Color)
    End If
End Sub
ion
'#Region dataBoundItem
Private Sub RadTreeView1_SelectedNodeChanged(ByVal sender As Object, ByVal e As Telerik.WinControls.UI.RadTreeViewEventArgs) Handles RadTreeView1.SelectedNodeChanged
    Dim product As Product = TryCast(e.Node.DataBoundItem, Product)
    If product IsNot Nothing Then
        MessageBox.Show("Product: " & e.Node.Text & ", Price: " & product.Price)
    End If
End Sub

````

{{endregion}} 

## Binding and Displaying Hierarchical data

The great value of RadTreeView is the ability to display hierarchical data. It supports binding to and displaying Database hierarchy and hierarchy of custom objects which have member collections of related objects (ORM generated classes for example).
        

The next example extends the previous examples to include a new "Category" parent level where each category contains multiple products. "Categories" has a single "Name" property and a list of products.

![treeview-data-binding-data-binding-basics 002](images/treeview-data-binding-data-binding-basics002.png)

In order to display the hierarchy of business objects, we just need to set appropriate DisplayMember and ChildMember values. The DisplayMember value is built from the display members of the respective objects joined with the '\\' symbol ('\' for VB.NET). The ChildMember is built from the names of the properties that represent the collections of sub objects. Just like in the case of the DisplayMember, the names of these properties are joined with the '\\' symbol ('\' for VB.NET). The first member of the ChildMember string should represent the parent level of hierarchy and you can set it to a value of your choice. For example, in our case we set this member to "Categories", but we could also set it to "MyCategories":


{{source=..\SamplesCS\TreeView\DataBinding\BasicsHierarchyForm.cs region=hierarchy}} 
{{source=..\SamplesCS\TreeView\DataBinding\Product.cs region=product}} 
````C#
        
public BasicsHierarchyForm()
{
    InitializeComponent();
    
    List<Product> products = new List<Product>();
    products.Add(new Product(567, "Bicycle", 5));
    products.Add(new Product(456, "Car", 5000));
    products.Add(new Product(789, "Bike", 1500));
    List<Category> categories = new List<Category>();
    categories.Add(new Category("Bikes", products));
    categories.Add(new Category("Accessories", null));
    categories.Add(new Category("Clothing", null));
    radTreeView1.DataSource = categories;
    radTreeView1.DisplayMember = "Name\\Description";
    radTreeView1.ChildMember = "Categories\\Products";
}
        
void radTreeView1_SelectedNodeChanged(object sender, Telerik.WinControls.UI.RadTreeViewEventArgs e)
{
    Product product = e.Node.DataBoundItem as Product;
    if (product != null)
    {
        MessageBox.Show("Product: " + e.Node.Text + ", Price: " + product.Price);
    }
}

````
````VB.NET
public class Product
{
    private int _id;
    private string _description;
    private float _price;
    public int ID
    {
        get { return _id; }
        set { _id = value; }
    }
    public string Description
    {
        get { return _description; }
        set { _description = value; }
    }
    public float Price
    {
        get { return _price; }
        set { _price = value; }
    }
    public Product(int id, string description, float price)
    {
        _id = id;
        _description = description;
        _price = price;
    }
}

````

{{endregion}} 

## Binding check boxes

Since Q3 2014 __RadTreeView__ supports binding the check-boxes of the nodes to a field in the data. You just need to specify   the RadTreeView. __CheckedMember__ property. The following code snippet demonstrates how to setup hierarchical tree by using two separate DataTables:

![treeview-data-binding-data-binding-basics 003](images/treeview-data-binding-data-binding-basics003.png)

{{source=..\SamplesVB\TreeView\DataBinding\Product.vb region=product}} 

{{source=..\SamplesVB\TreeView\DataBinding\Category.vb region=category}} 

````C#
Public Class Product
    Private _id As Integer
    Private _description As String
    Private _price As Single
    Public Property ID() As Integer
        Get
            Return _id
        End Get
        Set(ByVal value As Integer)
            _id = value
        End Set
    End Property
    Public Property Description() As String
        Get
            Return _description
        End Get
        Set(ByVal value As String)
            _description = value
        End Set
    End Property
    Public Property Price() As Single
        Get
            Return _price
        End Get
        Set(ByVal value As Single)
            _price = value
        End Set
    End Property
    Public Sub New(ByVal id As Integer, ByVal description As String, ByVal price As Single)
        _id = id
        _description = description
        _price = price
    End Sub
End Class

````
````VB.NET
Public Class Category
    Public Sub New(ByVal name As String, ByVal products As List(Of Product))
        _name = name
        _products = products
    End Sub
    Private _products As List(Of Product)
    Private _name As String
    Public Property Name() As String
        Get
            Return _name
        End Get
        Set(ByVal value As String)
            _name = value
        End Set
    End Property
    Public Property Products() As List(Of Product)
        Get
            Return _products
        End Get
        Set(ByVal value As List(Of Product))
            _products = value
        End Set
    End Property
End Class

````

{{endregion}}
