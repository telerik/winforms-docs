---
title: Server side auto complete for RadDropDownList
description: Server side auto complete for RadDropDownList. Check it now!
type: how-to
page_title: Server side auto complete for RadDropDownList
slug: server-side-auto-complete-for-raddropdownlist
tags: dropdownlist, server, side, auto, complete
res_type: kb
---

## Environment
|Date Posted|Product|Author|
|----|----|----|
|September 19, 2014|RadDropDownList for WinForms|Georgi Georgiev|

## Problem:

How to dynamically fetch data from the database while typing?  
   
 
## Solution:

To achieve this, we can create AutoComplete providers which will send queries to the server (using EntityFramework) or filter the items in memory depending on the collection. This will work with any **IEnumerable** collection.  
   
First of all lets take all the common functionality in a single class. It will be a [singleton](http://en.wikipedia.org/wiki/Singleton_pattern), just in case you need to use it in a multithreaded environment.  
   
````C#
public static ExpressionBuilder Instance
{
    get
    {
        if (instance == null)
        {
            lock (syncRoot)
            {
                if (instance == null)
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

````
````VB.NET
Public Shared ReadOnly Property Instance() As ExpressionBuilder
    Get
        If instance Is Nothing Then
            SyncLock syncRoot
                If instance Is Nothing Then
                    instance = New ExpressionBuilder()
                End If
            End SyncLock
        End If
 
        Return instance
    End Get
End Property
 
Public Function Optimize(Of T)(collection As IQueryable(Of T)) As Boolean
    If Me.optimizationCache.Contains(GetType(T)) Then
        Return False
    End If
 
    Me.optimizationCache.Add(GetType(T))
    collection.ToList()
    Return True
End Function

````  
 
   
The **Optimize** method will be used to send the first query to the database and establish a connection so further fetching of the data does not take time.  
Next, we need to build expressions dynamically, so we can use any data type and any property to perform the operations. You can read more about Expressions [here](http://msdn.microsoft.com/en-us/library/bb397951.aspx).  
   
````C#
public Expression<Func<T, TResult>> BuildMethodCallExpression<T, TResult>(string parameter, string property, Type ownerType,
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

````
````VB.NET
Public Function BuildMethodCallExpression(Of T, TResult)(parameter As String, [property] As String, ownerType As Type, methodName As String, parametersCount As Integer) As Expression(Of Func(Of T, TResult))
    Dim param = Expression.Parameter(GetType(T))
    Dim constant = Expression.Constant(parameter)
    Dim prop = Expression.[Property](param, [property])
    Dim method = ownerType.GetMethods().First(Function(x) x.Name = methodName AndAlso x.GetParameters().Length = parametersCount)
    Dim body = Expression.[Call](prop, method, constant)
 
    Return Expression.Lambda(Of Func(Of T, TResult))(body, param)
End Function
 
Public Function BuildContainsExpression(Of T)([property] As String, filter As String) As Expression(Of Func(Of T, Boolean))
    Dim dataItemsExp = Me.BuildMethodCallExpression(Of T, Boolean)(filter, [property], GetType([String]), "Contains", 1)
    Return dataItemsExp
End Function
 
Public Function BuildSelectExpression(Of T)([property] As String) As Expression(Of Func(Of T, String))
    Dim param = Expression.Parameter(GetType(T))
    Dim prop = Expression.[Property](param, [property])
    Dim expression__1 = Expression.Lambda(Of Func(Of T, String))(prop, param)
    Return expression__1
End Function
 
Public Function BuildStartsWithExpression(Of T)([property] As String, filter As String) As Expression(Of Func(Of T, Boolean))
    Dim lambda = Me.BuildMethodCallExpression(Of T, Boolean)(filter, [property], GetType([String]), "StartsWith", 1)
    Dim newBody = Expression.[And](lambda.Body, Expression.NotEqual(Expression.[Property](lambda.Parameters.First(), [property]), Expression.Constant(filter)))
    Dim newExpression = Expression.Lambda(Of Func(Of T, Boolean))(newBody, lambda.Parameters)
 
    Return newExpression
End Function

````

Now we need to create our auto complete helpers. They will take IEnumerable in their constructor. Then this IEnumerable will be converted to **IQueriable** to allow queries to be build using our **ExpressionBuilder**. 
Now we need to create our auto complete helpers. They will take IEnumerable in their constructor. 
Below you can see the implementation of the append helper:

````C#
public class ServerAutoCompleteAppendHelper<T> : AutoCompleteAppendHelper
{
    public IQueryable<T> Data { get; private set; }
 
    public ServerAutoCompleteAppendHelper(RadDropDownListElement owner, IEnumerable<T> data)
        : base(owner)
    {
        this.Data = data.AsQueryable();
        ExpressionBuilder.Instance.Optimize(this.Data);
    }
 
    public override void AutoComplete(KeyPressEventArgs e)
    {
        string findString = this.CreateFindString(e);
 
        var whereExp = ExpressionBuilder.Instance.BuildStartsWithExpression<T>(this.Owner.AutoCompleteValueMember, findString);
        var selectExp = ExpressionBuilder.Instance.BuildSelectExpression<T>(this.Owner.AutoCompleteValueMember);
 
        string result = this.Data.Where(whereExp).Select(selectExp).OrderBy(x => x.Length).FirstOrDefault();
        if (result != null)
        {
            Owner.EditableElementText = result;
            Owner.SelectionStart = findString.Length;
            Owner.SelectionLength = Owner.EditableElementText.Length;
            e.Handled = true;
        }
    }
 
    private string CreateFindString(KeyPressEventArgs e)
    {
        string findString = "";
        if (Owner.SelectionLength == 0)
        {
            findString = Owner.EditableElementText + e.KeyChar;
        }
        else
        {
            findString = Owner.EditableElementText.Substring(0, Owner.SelectionStart) + e.KeyChar;
        }
 
        return findString;
    }
}

````
````VB.NET
Public Class ServerAutoCompleteAppendHelper(Of T)
    Inherits AutoCompleteAppendHelper
    Public Property Data() As IQueryable(Of T)
        Get
            Return m_Data
        End Get
        Private Set
            m_Data = Value
        End Set
    End Property
    Private m_Data As IQueryable(Of T)
 
    Public Sub New(owner As RadDropDownListElement, data As IEnumerable(Of T))
        MyBase.New(owner)
        Me.Data = data.AsQueryable()
        ExpressionBuilder.Instance.Optimize(Me.Data)
    End Sub
 
    Public Overrides Sub AutoComplete(e As KeyPressEventArgs)
        Dim findString As String = Me.CreateFindString(e)
 
        Dim whereExp = ExpressionBuilder.Instance.BuildStartsWithExpression(Of T)(Me.Owner.AutoCompleteValueMember, findString)
        Dim selectExp = ExpressionBuilder.Instance.BuildSelectExpression(Of T)(Me.Owner.AutoCompleteValueMember)
 
        Dim result As String = Me.Data.Where(whereExp).[Select](selectExp).OrderBy(Function(x) x.Length).FirstOrDefault()
        If result IsNot Nothing Then
            Owner.EditableElementText = result
            Owner.SelectionStart = findString.Length
            Owner.SelectionLength = Owner.EditableElementText.Length
            e.Handled = True
        End If
    End Sub
 
    Private Function CreateFindString(e As KeyPressEventArgs) As String
        Dim findString As String = ""
        If Owner.SelectionLength = 0 Then
            findString = Owner.EditableElementText + e.KeyChar
        Else
            findString = Owner.EditableElementText.Substring(0, Owner.SelectionStart) + e.KeyChar
        End If
 
        Return findString
    End Function
End Class

````

The suggest helper is quite similar, the difference is that it needs to fill the dropdown with items. The MaxItems property will limit how many items are shown at a time in the dropdown list, improving the performance:

````C#
public class ServerAutoCompleteSuggestHelper<T> : AutoCompleteSuggestHelper
{
    public IQueryable<T> Data { get; private set; }
    public int MaxItems { get; set; }
 
    public ServerAutoCompleteSuggestHelper(RadDropDownListElement owner, IEnumerable<T> data,
        int maxItems = 1000)
        : base(owner)
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

````
````VB.NET
Public Class ServerAutoCompleteSuggestHelper(Of T)
    Inherits AutoCompleteSuggestHelper
    Public Property Data() As IQueryable(Of T)
        Get
            Return m_Data
        End Get
        Private Set
            m_Data = Value
        End Set
    End Property
    Private m_Data As IQueryable(Of T)
    Public Property MaxItems() As Integer
        Get
            Return m_MaxItems
        End Get
        Set
            m_MaxItems = Value
        End Set
    End Property
    Private m_MaxItems As Integer
 
    Public Sub New(owner As RadDropDownListElement, data As IEnumerable(Of T), Optional maxItems As Integer = 1000)
        MyBase.New(owner)
        Me.Data = data.AsQueryable()
        Me.MaxItems = maxItems
        ExpressionBuilder.Instance.Optimize(Me.Data)
    End Sub
 
    Public Overrides Sub ApplyFilterToDropDown(filter As String)
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

````

Now, you only need to create the helpers and assign them some data:


````C#
RadDropDownList list = new RadDropDownList
{
    Parent = this,
    Dock = DockStyle.Top
};
 
LargeDataEntities dbContext = new LargeDataEntities();
list.AutoCompleteValueMember = "Name";
 
list.DropDownListElement.AutoCompleteSuggest =
    new ServerAutoCompleteSuggestHelper<Datum>(list.DropDownListElement, dbContext.Data);
 
list.DropDownListElement.AutoCompleteAppend = new ServerAutoCompleteAppendHelper<Datum>(list.DropDownListElement, dbContext.Data);

````
````VB.NET
Dim list As New RadDropDownList() With { _
        .Parent = Me, _
        .Dock = DockStyle.Top _
}
 
Dim dbContext As New LargeDataEntities()
list.DropDownListElement.AutoCompleteValueMember = "Name"
 
list.DropDownListElement.AutoCompleteSuggest = New ServerAutoCompleteSuggestHelper(Of Datum)(list.DropDownListElement, dbContext.Data)
 
list.DropDownListElement.AutoCompleteAppend = New ServerAutoCompleteAppendHelper(Of Datum)(list.DropDownListElement, dbContext.Data)

````
  
>note A complete solution in C# and VB.NET can be found [here](https://github.com/telerik/winforms-sdk/tree/master/DropDownList/ServerSideDropDownList).