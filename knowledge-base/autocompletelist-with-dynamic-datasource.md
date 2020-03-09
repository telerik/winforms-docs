---
title: Dynamic DataSource in AutoCompleteBox/DropDownList
description: This article demonstrates how to simulate server-side autocomplete functionality in RadAutoCompleteBox/RadDropDownList
type: how-to
page_title: How to simulate server side autocomplete functionality in RadAutoCompleteBox/RadDropDownList
slug: autocompletelist-with-dynamic-datasource
position: 0
tags: autocomplete, dropdown, dynamic, datasource
res_type: kb
---

## Environment
 
|Product Version|Product|Author|
|----|----|----|
|2020.1.113|RadAutoCompleteBox/RadDropDownList for WinForms|[Desislava Yordanova](https://www.telerik.com/blogs/author/desislava-yordanova)|
 
## Description

This tutorial demonstrates a sample approach how to simulate server-side auto complete functionality.

![autocompletelist-with-dynamic-datasource](images/autocompletelist-with-dynamic-datasource.gif)

## Solution 

As a starting point we will use the [Server side auto complete for RadDropDownList](https://www.telerik.com/support/kb/winforms/details/server-side-auto-complete-for-raddropdownlist) KB article. Since it is relevant for **RadDropDownList**, this article will show you how to update the provided solution and adjust it for **RadAutoCompleteBox**.

The different auto-complete helpers are relevant for **RadDropDownList** and they are not available in **RadAutoCompletebox**. However, you can use the **RadDropDownList** and just insert a **RadAutoCompleteBox** in its editable area in order to obtain the tokens. Then, hide the arrow button and Voilà! 
 

````C#

RadDropDownList autoCompleteList = new RadDropDownList();
RadAutoCompleteBoxElement acb = new RadAutoCompleteBoxElement();

public RadForm1()
{
    InitializeComponent();
    autoCompleteList.Parent = this;
    autoCompleteList.Dock = DockStyle.Top;
    
    autoCompleteList.DropDownListElement.EditableElement.TextBox.Visibility = Telerik.WinControls.ElementVisibility.Collapsed;
    autoCompleteList.DropDownListElement.EditableElement.Children.Add(acb);
    autoCompleteList.DropDownListElement.ArrowButton.Visibility = Telerik.WinControls.ElementVisibility.Collapsed;
    acb.TextChanged += acb_TextChanged;

    List<Item> items = new List<Item>();
    for (int i = 0; i < 100000; i++)
    {
        items.Add(new Item(i, Guid.NewGuid().ToString()));
    }
    autoCompleteList.AutoCompleteValueMember = "Title";

    autoCompleteList.DropDownListElement.AutoCompleteSuggest = new ServerAutoCompleteSuggestHelper<Item>(autoCompleteList.DropDownListElement, items); 
    autoCompleteList.DropDownListElement.AutoCompleteSuggest.DropDownList.SelectedIndexChanged += DropDownList_SelectedIndexChanged;
}

private void DropDownList_SelectedIndexChanged(object sender, Telerik.WinControls.UI.Data.PositionChangedEventArgs e)
{
    if (e.Position > -1)
    {
        autoCompleteList.DropDownListElement.AutoCompleteSuggest.DropDownList.SelectedIndexChanged -= DropDownList_SelectedIndexChanged;
        string selectedText = autoCompleteList.DropDownListElement.AutoCompleteSuggest.DropDownList.Items[e.Position].Text;
        acb.Text = acb.Text.Substring(0, Math.Max(0, acb.Text.LastIndexOf(";") + 1)) + selectedText + ";";
        autoCompleteList.DropDownListElement.AutoCompleteSuggest.DropDownList.SelectedIndexChanged += DropDownList_SelectedIndexChanged;
    }
}

private void acb_TextChanged(object sender, EventArgs e)
{
    string filterCriteria = acb.Text.Substring(Math.Max(0, acb.Text.LastIndexOf(";") + 1));
    autoCompleteList.DropDownListElement.EditableElement.TextBox.Text = filterCriteria;
    autoCompleteList.DropDownListElement.AutoCompleteSuggest.ApplyFilterToDropDown(filterCriteria);
    autoCompleteList.DropDownListElement.AutoCompleteSuggest.ShowDropDownList();
}

public class Item
{
    public int Id { get; set; }

    public string Title { get; set; }

    public Item(int id, string title)
    {
        this.Id = id;
        this.Title = title;
    }
}

public class ServerAutoCompleteSuggestHelper<T> : AutoCompleteSuggestHelper
        {
            public IQueryable<T> Data { get; private set; }

            public int MaxItems { get; set; }

            public ServerAutoCompleteSuggestHelper(RadDropDownListElement owner, IEnumerable<T> data,
                int maxItems = 1000) : base(owner)
            {
                this.Data = data.AsQueryable();
                this.MaxItems = maxItems;
                ExpressionBuilder.Instance.Optimize(this.Data);
            }

            public override void ApplyFilterToDropDown(string filter)
            {
                this.DropDownList.BeginUpdate();

                this.DropDownList.ListElement.Items.Clear();

                var dataItemsExp = ExpressionBuilder.Instance.BuildContainsExpression<T>(this.Owner.AutoCompleteValueMember, filter);
                var dataItemsQuery = this.Data.Where(dataItemsExp).Take(this.MaxItems);
                var dataItems = dataItemsQuery.ToList();

                var selectExp = ExpressionBuilder.Instance.BuildSelectExpression<T>(this.Owner.AutoCompleteValueMember);
                var displayItemsQuery = dataItemsQuery.Select(selectExp);
                var displayItems = displayItemsQuery.ToList();

                for (int i = 0; i < dataItems.Count; i++)
                {
                    var dataItem = dataItems[i];
                    var displayMember = displayItems[i];
                    this.DropDownList.ListElement.Items.Add(new RadListDataItem(displayMember, dataItem));
                }

                this.DropDownList.EndUpdate();
                this.Owner.SelectionLength = this.Owner.Text.Length;
            }
        }

public class ExpressionBuilder
        {
            private static ExpressionBuilder instance;
            private static readonly object syncRoot = new object();
            private HashSet<Type> optimizationCache = new HashSet<Type>();

            public static ExpressionBuilder Instance
            {
                get
                {
                    lock (syncRoot)
                    {
                        if (instance == null)
                        {
                            lock (syncRoot)
                            {
                                instance = new ExpressionBuilder();
                            }
                        }
                    }

                    return instance;
                }
            }

            public bool Optimize<T>(IQueryable<T> collection)
            {
                if (this.optimizationCache.Contains(typeof(T)))
                {
                    return false;
                }

                this.optimizationCache.Add(typeof(T));
                collection.ToList();
                return true;
            }

            public System.Linq.Expressions.Expression<Func<T, TResult>> BuildMethodCallExpression<T, TResult>(string parameter, string property, Type ownerType,
                string methodName, int parametersCount)
            {
                var param = Expression.Parameter(typeof(T));
                var constant = Expression.Constant(parameter);
                var prop = Expression.Property(param, property);
                var method = ownerType.GetMethods().First(x => x.Name == methodName && x.GetParameters().Length == parametersCount);
                var body = Expression.Call(prop, method, constant);

                return Expression.Lambda<Func<T, TResult>>(body, param);
            }

            public Expression<Func<T, bool>> BuildContainsExpression<T>(string property, string filter)
            {
                var dataItemsExp = this.BuildMethodCallExpression<T, bool>(filter, property, typeof(String), "Contains", 1);
                return dataItemsExp;
            }

            public Expression<Func<T, string>> BuildSelectExpression<T>(string property)
            {
                var param = Expression.Parameter(typeof(T));
                var prop = Expression.Property(param, property);
                var expression = Expression.Lambda<Func<T, string>>(prop, param);
                return expression;
            }

            public Expression<Func<T, bool>> BuildStartsWithExpression<T>(string property, string filter)
            {
                var lambda = this.BuildMethodCallExpression<T, bool>(filter, property, typeof(String), "StartsWith", 1);
                var newBody = Expression.And(lambda.Body,
                    Expression.NotEqual(Expression.Property(lambda.Parameters.First(), property), Expression.Constant(filter)));
                var newExpression = Expression.Lambda<Func<T, bool>>(newBody, lambda.Parameters);

                return newExpression;
            }
        }
 
   
````
````VB.NET

Private autoCompleteList As RadDropDownList = New RadDropDownList()
Private acb As RadAutoCompleteBoxElement = New RadAutoCompleteBoxElement()

Public Sub New()
    InitializeComponent()
    autoCompleteList.Parent = Me
    autoCompleteList.Dock = DockStyle.Top
    autoCompleteList.DropDownListElement.EditableElement.TextBox.Visibility = Telerik.WinControls.ElementVisibility.Collapsed
    autoCompleteList.DropDownListElement.EditableElement.Children.Add(acb)
    autoCompleteList.DropDownListElement.ArrowButton.Visibility = Telerik.WinControls.ElementVisibility.Collapsed
    AddHandler acb.TextChanged, AddressOf acb_TextChanged
    Dim items As List(Of Item) = New List(Of Item)()

    For i As Integer = 0 To 100000 - 1
        items.Add(New Item(i, Guid.NewGuid().ToString()))
    Next

    autoCompleteList.AutoCompleteValueMember = "Title"
    autoCompleteList.DropDownListElement.AutoCompleteSuggest = New ServerAutoCompleteSuggestHelper(Of Item)(autoCompleteList.DropDownListElement, items)
    AddHandler autoCompleteList.DropDownListElement.AutoCompleteSuggest.DropDownList.SelectedIndexChanged, AddressOf DropDownList_SelectedIndexChanged
End Sub

Private Sub DropDownList_SelectedIndexChanged(ByVal sender As Object, ByVal e As Telerik.WinControls.UI.Data.PositionChangedEventArgs)
    If e.Position > -1 Then
        RemoveHandler autoCompleteList.DropDownListElement.AutoCompleteSuggest.DropDownList.SelectedIndexChanged, AddressOf DropDownList_SelectedIndexChanged
        Dim selectedText As String = autoCompleteList.DropDownListElement.AutoCompleteSuggest.DropDownList.Items(e.Position).Text
        acb.Text = acb.Text.Substring(0, Math.Max(0, acb.Text.LastIndexOf(";") + 1)) & selectedText & ";"
        AddHandler autoCompleteList.DropDownListElement.AutoCompleteSuggest.DropDownList.SelectedIndexChanged, AddressOf DropDownList_SelectedIndexChanged
    End If
End Sub

Private Sub acb_TextChanged(ByVal sender As Object, ByVal e As EventArgs)
    Dim filterCriteria As String = acb.Text.Substring(Math.Max(0, acb.Text.LastIndexOf(";") + 1))
    autoCompleteList.DropDownListElement.EditableElement.TextBox.Text = filterCriteria
    autoCompleteList.DropDownListElement.AutoCompleteSuggest.ApplyFilterToDropDown(filterCriteria)
    autoCompleteList.DropDownListElement.AutoCompleteSuggest.ShowDropDownList()
End Sub

Public Class Item
    Public Property Id As Integer
    Public Property Title As String

    Public Sub New(ByVal id As Integer, ByVal title As String)
        Me.Id = id
        Me.Title = title
    End Sub
End Class

Public Class ServerAutoCompleteSuggestHelper(Of T)
    Inherits AutoCompleteSuggestHelper

    Public Property Data As IQueryable(Of T)
    Public Property MaxItems As Integer

    Public Sub New(ByVal owner As RadDropDownListElement, ByVal data As IEnumerable(Of T), Optional ByVal maxItems As Integer = 1000)
        MyBase.New(owner)
        Me.Data = data.AsQueryable()
        Me.MaxItems = maxItems
        ExpressionBuilder.Instance.Optimize(Me.Data)
    End Sub

    Public Overrides Sub ApplyFilterToDropDown(ByVal filter As String)
        Me.DropDownList.BeginUpdate()
        Me.DropDownList.ListElement.Items.Clear()
        Dim dataItemsExp = ExpressionBuilder.Instance.BuildContainsExpression(Of T)(Me.Owner.AutoCompleteValueMember, filter)
        Dim dataItemsQuery = Me.Data.Where(dataItemsExp).Take(Me.MaxItems)
        Dim dataItems = dataItemsQuery.ToList()
        Dim selectExp = ExpressionBuilder.Instance.BuildSelectExpression(Of T)(Me.Owner.AutoCompleteValueMember)
        Dim displayItemsQuery = dataItemsQuery.[Select](selectExp)
        Dim displayItems = displayItemsQuery.ToList()

        For i As Integer = 0 To dataItems.Count - 1
            Dim dataItem = dataItems(i)
            Dim displayMember = displayItems(i)
            Me.DropDownList.ListElement.Items.Add(New RadListDataItem(displayMember, dataItem))
        Next

        Me.DropDownList.EndUpdate()
        Me.Owner.SelectionLength = Me.Owner.Text.Length
    End Sub
End Class

Public Class ExpressionBuilder
    Private Shared _instance As ExpressionBuilder
    Private Shared ReadOnly syncRoot As Object = New Object()
    Private optimizationCache As HashSet(Of Type) = New HashSet(Of Type)()

    Public Shared ReadOnly Property Instance As ExpressionBuilder
        Get

            SyncLock syncRoot

                If _instance Is Nothing Then

                    SyncLock syncRoot
                        _instance = New ExpressionBuilder()
                    End SyncLock
                End If
            End SyncLock

            Return _instance
        End Get
    End Property

    Public Function Optimize(Of T)(ByVal collection As IQueryable(Of T)) As Boolean
        If Me.optimizationCache.Contains(GetType(T)) Then
            Return False
        End If

        Me.optimizationCache.Add(GetType(T))
        collection.ToList()
        Return True
    End Function

    Public Function BuildMethodCallExpression(Of T, TResult)(ByVal parameter As String, ByVal [property] As String, _
                ByVal ownerType As Type, ByVal methodName As String, ByVal parametersCount As Integer) _
            As System.Linq.Expressions.Expression(Of Func(Of T, TResult))
        Dim param = Expression.Parameter(GetType(T))
        Dim constant = Expression.Constant(parameter)
        Dim prop = Expression.[Property](param, [property])
        Dim method = ownerType.GetMethods().First(Function(x) x.Name = methodName AndAlso x.GetParameters().Length = parametersCount)
        Dim body = Expression.[Call](prop, method, constant)
        Return Expression.Lambda(Of Func(Of T, TResult))(body, param)
    End Function

    Public Function BuildContainsExpression(Of T)(ByVal [property] As String, ByVal filter As String) As Expression(Of Func(Of T, Boolean))
        Dim dataItemsExp = Me.BuildMethodCallExpression(Of T, Boolean)(filter, [property], GetType(String), "Contains", 1)
        Return dataItemsExp
    End Function

    Public Function BuildSelectExpression(Of T)(ByVal [property] As String) As Expression(Of Func(Of T, String))
        Dim param = System.Linq.Expressions.Expression.Parameter(GetType(T))
        Dim prop = System.Linq.Expressions.Expression.[Property](param, [property])
        Dim expression = System.Linq.Expressions.Expression.Lambda(Of Func(Of T, String))(prop, param)
        Return expression
    End Function

    Public Function BuildStartsWithExpression(Of T)(ByVal [property] As String, ByVal filter As String) As Expression(Of Func(Of T, Boolean))
        Dim lambda = Me.BuildMethodCallExpression(Of T, Boolean)(filter, [property], GetType(String), "StartsWith", 1)
        Dim newBody = Expression.[And](lambda.Body, Expression.NotEqual(Expression.[Property](lambda.Parameters.First(), [property]), Expression.Constant(filter)))
        Dim newExpression = Expression.Lambda(Of Func(Of T, Boolean))(newBody, lambda.Parameters)
        Return newExpression
    End Function
End Class



````

>note Note that this is just a sample approach and it may not cover all possible cases. Feel free to modify and extend it in a way which suits your requirements best. 

# See Also

* [Server side auto complete for RadDropDownList](https://www.telerik.com/support/kb/winforms/details/server-side-auto-complete-for-raddropdownlist)


