---
title: Change the Editor to a Bound RadDropDownList
page_title: Change the Editor to a Bound RadDropDownList | RadDataLayout
description: This article shows how you can change the default editor to a bound RadDropDownList.
slug: winforms/datalayout/change-the-editor-to-a-bound-raddropdownlist
tags: change,the,editor,to,a,bound,raddropdownlist
published: True
position: 8
previous_url: datalayout-how-to-change-editor-to-drop-down-list
---

# Change the Editor to a Bound RadDropDownList

This article will walk you through the process of changing the default editor to a bound drop down list, where the current value corresponds to a value within the drop down list data source. The case where the corresponding values are nullable is also handled.
      
>caption Figure 1: DropDownListEditor

![datalayout-how-to-change-editor-to-drop-down-list 001](images/datalayout-how-to-change-editor-to-drop-down-list001.png)

1\. First you can subscribe to the __BindingCreating__, __BindingCreated__ and __EditorInitializing__ events of __RadDataLayout__ (please note that this should be done before the control has been bound).

{{source=..\SamplesCS\DataLayout\DataLayoutChangeEditor.cs region=subscribe}} 
{{source=..\SamplesVB\DataLayout\DataLayoutChangeEditor.vb region=subscribe}} 

````C#
this.radDataLayout1.EditorInitializing += radDataLayout1_EditorInitializing;
this.radDataLayout1.BindingCreating += radDataLayout1_BindingCreating;
this.radDataLayout1.BindingCreated += radDataLayout1_BindingCreated;
this.radDataLayout1.DataSource = productsBinding;

````
````VB.NET
AddHandler Me.RadDataLayout1.EditorInitializing, AddressOf radDataLayout1_EditorInitializing
AddHandler Me.RadDataLayout1.BindingCreating, AddressOf radDataLayout1_BindingCreating
AddHandler Me.RadDataLayout1.BindingCreated, AddressOf radDataLayout1_BindingCreated
Me.RadDataLayout1.DataSource = productsBinding

````

{{endregion}} 

2\. In the __EditorInitializing__ event handler, you will be able to change the automatically generated editor with a __RadDropDownList__. In addition, you should set it up as needed. In this case we will set the __DataSource__, __DisplayMember__ and  __ValueMember__ properties.

{{source=..\SamplesCS\DataLayout\DataLayoutChangeEditor.cs region=editor}} 
{{source=..\SamplesVB\DataLayout\DataLayoutChangeEditor.vb region=editor}} 

````C#
RadDropDownList radDropDownList1;
void radDataLayout1_EditorInitializing(object sender, Telerik.WinControls.UI.EditorInitializingEventArgs e)
{
    if (e.Property.Name == "SupplierID")
    {
        radDropDownList1 = new RadDropDownList();
        radDropDownList1.DataSource = suplierList;
        radDropDownList1.ValueMember = "SupplierID";
        radDropDownList1.DisplayMember = "CompanyName";
        e.Editor = radDropDownList1;
    }
}

````
````VB.NET
Private radDropDownList1 As RadDropDownList
Private Sub radDataLayout1_EditorInitializing(sender As Object, e As Telerik.WinControls.UI.EditorInitializingEventArgs)
    If e.[Property].Name = "SupplierID" Then
        radDropDownList1 = New RadDropDownList()
        radDropDownList1.DataSource = suplierList
        radDropDownList1.ValueMember = "SupplierID"
        radDropDownList1.DisplayMember = "CompanyName"
        e.Editor = radDropDownList1
    End If
End Sub

````

{{endregion}} 


3\. In order the values to be synchronized correctly, the bound property should be set in the __BindingCreating__ event handler. In this case it should be set to the __SelectedValue__ property.

{{source=..\SamplesCS\DataLayout\DataLayoutChangeEditor.cs region=creating}} 
{{source=..\SamplesVB\DataLayout\DataLayoutChangeEditor.vb region=creating}} 

````C#
void radDataLayout1_BindingCreating(object sender, Telerik.WinControls.UI.BindingCreatingEventArgs e)
{
    if (e.DataMember == "SupplierID")
    {
        e.PropertyName = "SelectedValue";
    }
}

````
````VB.NET
Private Sub radDataLayout1_BindingCreating(sender As Object, e As Telerik.WinControls.UI.BindingCreatingEventArgs)
    If e.DataMember = "SupplierID" Then
        e.PropertyName = "SelectedValue"
    End If
End Sub

````

{{endregion}}

4\. When the data source is using nullable values in order the user to be able to change the current value via the drop down list, the result value should be manually parsed. This can be done in the binding's __Parse__ event. You can subscribe to this event in the __BindingCreated__ event handler (in order this event to fire the formatting should be enabled).

{{source=..\SamplesCS\DataLayout\DataLayoutChangeEditor.cs region=created}} 
{{source=..\SamplesVB\DataLayout\DataLayoutChangeEditor.vb region=created}} 

````C#
void radDataLayout1_BindingCreated(object sender, BindingCreatedEventArgs e)
{
    if (e.DataMember == "SupplierID")
    {
        e.Binding.FormattingEnabled = true;
        e.Binding.Parse += new ConvertEventHandler(Binding_Parse);
    }
}
       
private void Binding_Parse(object sender, ConvertEventArgs e)
{
    int tmpvalue;
    int? result = int.TryParse(e.Value.ToString(), out tmpvalue) ? tmpvalue : (int?)null;
    e.Value = result;
}

````
````VB.NET
Private Sub radDataLayout1_BindingCreated(sender As Object, e As BindingCreatedEventArgs)
    If e.DataMember = "SupplierID" Then
        e.Binding.FormattingEnabled = True
        AddHandler e.Binding.Parse, AddressOf Binding_Parse
    End If
End Sub
Private Sub Binding_Parse(sender As Object, e As ConvertEventArgs)
    Dim tmpvalue As Integer
    Dim result As System.Nullable(Of Integer) = If(Integer.TryParse(e.Value.ToString(), tmpvalue), tmpvalue, DirectCast(Nothing, System.Nullable(Of Integer)))
    e.Value = result
End Sub

````

{{endregion}} 

To make the example complete you can use the following classes.

{{source=..\SamplesCS\DataLayout\DataLayoutChangeEditor.cs region=data}} 
{{source=..\SamplesVB\DataLayout\DataLayoutChangeEditor.vb region=data}} 

````C#
public class ProductModel
{
    private int? _supplierID;
    private string _productName;
    public ProductModel(int? supplierID, string productName)
    {
        this._supplierID = supplierID;
        this._productName = productName;
    }
    public int? SupplierID
    {
        get
        {
            return this._supplierID;
        }
        set
        {
            this._supplierID = value;
        }
    }
    public string ProductName
    {
        get
        {
            return this._productName;
        }
        set
        {
            this._productName = value;
        }
    }
}
public partial class SupplierModel
{
    private int? _supplierID;
    private string _companyName;
    public SupplierModel(int? supplierID, string companyName)
    {
        this._supplierID = supplierID;
        this._companyName = companyName;
    }
    public int? SupplierID
    {
        get
        {
            return this._supplierID;
        }
        set
        {
            this._supplierID = value;
        }
    }
    public string CompanyName
    {
        get
        {
            return this._companyName;
        }
        set
        {
            this._companyName = value;
        }
    }
}

````
````VB.NET
Public Class ProductModel
    Private _supplierID As System.Nullable(Of Integer)
    Private _productName As String
    Public Sub New(supplierID As System.Nullable(Of Integer), productName As String)
        Me._supplierID = supplierID
        Me._productName = productName
    End Sub
    Public Property SupplierID() As System.Nullable(Of Integer)
        Get
            Return Me._supplierID
        End Get
        Set(value As System.Nullable(Of Integer))
            Me._supplierID = value
        End Set
    End Property
    Public Property ProductName() As String
        Get
            Return Me._productName
        End Get
        Set(value As String)
            Me._productName = value
        End Set
    End Property
End Class
Partial Public Class SupplierModel
    Private _supplierID As System.Nullable(Of Integer)
    Private _companyName As String
    Public Sub New(supplierID As System.Nullable(Of Integer), companyName As String)
        Me._supplierID = supplierID
        Me._companyName = companyName
    End Sub
    Public Property SupplierID() As System.Nullable(Of Integer)
        Get
            Return Me._supplierID
        End Get
        Set(value As System.Nullable(Of Integer))
            Me._supplierID = value
        End Set
    End Property
    Public Property CompanyName() As String
        Get
            Return Me._companyName
        End Get
        Set(value As String)
            Me._companyName = value
        End Set
    End Property
End Class

````

{{endregion}}

You can initialize the data sources in the Form’s constructor.

{{source=..\SamplesCS\DataLayout\DataLayoutChangeEditor.cs region=init}} 
{{source=..\SamplesVB\DataLayout\DataLayoutChangeEditor.vb region=init}} 

````C#
List<ProductModel> productList;
List<SupplierModel> suplierList;
BindingSource productsBinding;
public DataLayoutChangeEditor()
{
    InitializeComponent();
    productList = new List<ProductModel>();
    suplierList = new List<SupplierModel>();
    productList.Add(new ProductModel(1, "Chai"));
    productList.Add(new ProductModel(2, "Chang"));
    productList.Add(new ProductModel(3, "Aniseed Syrup"));
    productList.Add(new ProductModel(4, "Chef Anton's Gumbo Mix"));
    productList.Add(new ProductModel(5, "Tofu"));
    productList.Add(new ProductModel(null, "Sir Rodney's Marmalade"));
    productList.Add(new ProductModel(6, "Boston Crab Meat"));
    productList.Add(new ProductModel(5, "Chartreuse verte"));
    productList.Add(new ProductModel(2, "Ravioli Angelo"));
    productList.Add(new ProductModel(4, "Perth Pasties"));
    suplierList.Add(new SupplierModel(1, "Exotic Liquids"));
    suplierList.Add(new SupplierModel(2, "New Orleans Cajun Delights"));
    suplierList.Add(new SupplierModel(3, "Tokyo Traders"));
    suplierList.Add(new SupplierModel(4, "Norske Meierier"));
    suplierList.Add(new SupplierModel(5, "New England Seafood Cannery"));
    suplierList.Add(new SupplierModel(6, "Leka Trading"));
    productsBinding = new BindingSource();
    productsBinding.DataSource = productList;
}

````
````VB.NET
Private productList As List(Of ProductModel)
Private suplierList As List(Of SupplierModel)
Private productsBinding As BindingSource
Public Sub New()
    InitializeComponent()
    productList = New List(Of ProductModel)()
    suplierList = New List(Of SupplierModel)()
    productList.Add(New ProductModel(1, "Chai"))
    productList.Add(New ProductModel(2, "Chang"))
    productList.Add(New ProductModel(3, "Aniseed Syrup"))
    productList.Add(New ProductModel(4, "Chef Anton's Gumbo Mix"))
    productList.Add(New ProductModel(5, "Tofu"))
    productList.Add(New ProductModel(Nothing, "Sir Rodney's Marmalade"))
    productList.Add(New ProductModel(6, "Boston Crab Meat"))
    productList.Add(New ProductModel(5, "Chartreuse verte"))
    productList.Add(New ProductModel(2, "Ravioli Angelo"))
    productList.Add(New ProductModel(4, "Perth Pasties"))
    suplierList.Add(New SupplierModel(1, "Exotic Liquids"))
    suplierList.Add(New SupplierModel(2, "New Orleans Cajun Delights"))
    suplierList.Add(New SupplierModel(3, "Tokyo Traders"))
    suplierList.Add(New SupplierModel(4, "Norske Meierier"))
    suplierList.Add(New SupplierModel(5, "New England Seafood Cannery"))
    suplierList.Add(New SupplierModel(6, "Leka Trading"))
    productsBinding = New BindingSource()
    productsBinding.DataSource = productList
End Sub

````

{{endregion}}

# See Also

 * [Structure]({%slug winforms/datalayout/control-element-structure%})
 * [Getting Started]({%slug winforms/datalayout/getting-started%})
 * [Properties, events and attributes]({%slug winforms/datalayout/properties,-events-and-attributes%})
 * [Validation]({%slug winforms/datalayout/validation%})
 * [Customizing Appearance ]({%slug winforms/raddatalayout/customizing-appearance%})
