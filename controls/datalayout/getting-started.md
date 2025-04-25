---
title: Getting Started
page_title: Getting Started - WinForms DataLayout Control
description: WinForms DataLayout control provides means for displaying data in a highly customizable layout by automatically creating the items and editors.
slug: winforms/datalayout/getting-started
tags: getting,started
published: True
position: 3
previous_url: datalayout-getting-started
---

# Getting Started with WinForms DataLayout

This example demonstrates binding __RadDataLayout__ to a single object or a collection of objects. For the purpose of the tutorial we will also use a __RadBindingNavigator__.

## Adding Telerik Assemblies Using NuGet

To use `RadDataLayout` when working with NuGet packages, install the `Telerik.UI.for.WinForms.AllControls` package. The [package target framework version may vary]({%slug winforms-available-nugets%}).

Read more about NuGet installation in the [Install using NuGet Packages]({%slug winforms/nuget%}) article.

>tip With the 2025 Q1 release, the Telerik UI for WinForms has a new licensing mechanism. You can learn more about it [here]({%slug license-key%}).

## Adding Assembly References Manually

When dragging and dropping a control from the Visual Studio (VS) Toolbox onto the Form Designer, VS automatically adds the necessary assemblies. However, if you're adding the control programmatically, you'll need to manually reference the following assemblies:

* __Telerik.Licensing.Runtime__
* __Telerik.WinControls__
* __Telerik.WinControls.UI__
* __TelerikCommon__

The Telerik UI for WinForms assemblies can be install by using one of the available [installation approaches]({%slug winforms/installation-deployment-and-distribution/installing-on-your-computer%}). 

## Defining the RadDataLayout

### Binding RadDataLayout to a single object

1\. Place a __RadDataLayout__ control on a form.
            
>caption Figure 1: RadDataLayout Control

![WinForms RadDataLayout Getting Started](images/datalayout-getting-started001.png)

2\. Let`s define the layout of our data control.

{{source=..\SamplesCS\DataLayout\GettingStartedForm.cs region=DefineLayout}} 
{{source=..\SamplesVB\DataLayout\GettingStartedForm.vb region=DefineLayout}} 

````C#
this.radDataLayout1.ItemDefaultHeight = 26;
this.radDataLayout1.ColumnCount = 2;
this.radDataLayout1.FlowDirection = FlowDirection.TopDown;
this.radDataLayout1.AutoSizeLabels = true;

````
````VB.NET
Me.RadDataLayout1.ItemDefaultHeight = 26
Me.RadDataLayout1.ColumnCount = 2
Me.RadDataLayout1.FlowDirection = FlowDirection.TopDown
Me.RadDataLayout1.AutoSizeLabels = True

````

{{endregion}}

3\. A sample *Employee* class exposing several properties is going to be our model.

{{source=..\SamplesCS\DataLayout\GettingStartedForm.cs region=EmployeeModel}} 
{{source=..\SamplesVB\DataLayout\GettingStartedForm.vb region=EmployeeModel}} 

````C#
public class Employee
{
    public string FirstName { get; set; }
    public string LastName { get; set; }
    public string Occupation { get; set; }
    public DateTime StartingDate { get; set; }
    public bool IsMarried { get; set; }
}

````
````VB.NET
Public Class EmployeeModel
    Public Property FirstName() As String
        Get
            Return m_FirstName
        End Get
        Set(value As String)
            m_FirstName = value
        End Set
    End Property
    Private m_FirstName As String
    Public Property LastName() As String
        Get
            Return m_LastName
        End Get
        Set(value As String)
            m_LastName = value
        End Set
    End Property
    Private m_LastName As String
    Public Property Occupation() As String
        Get
            Return m_Occupation
        End Get
        Set(value As String)
            m_Occupation = value
        End Set
    End Property
    Private m_Occupation As String
    Public Property StartingDate() As DateTime
        Get
            Return m_StartingDate
        End Get
        Set(value As DateTime)
            m_StartingDate = value
        End Set
    End Property
    Private m_StartingDate As DateTime
    Public Property IsMarried() As Boolean
        Get
            Return m_IsMarried
        End Get
        Set(value As Boolean)
            m_IsMarried = value
        End Set
    End Property
    Private m_IsMarried As Boolean
End Class

````

{{endregion}}

4\. Once the **Employee** class is defined, you may use it to create an object of this type and bind it to the __RadDataLayout__ control:

{{source=..\SamplesCS\DataLayout\GettingStartedForm.cs region=BindSingleObject}} 
{{source=..\SamplesVB\DataLayout\GettingStartedForm.vb region=BindSingleObject}} 

````C#
this.radDataLayout1.DataSource = new Employee()
{
    FirstName = "Sarah",
    LastName = "Blake",
    Occupation = "Supplied Manager",
    StartingDate = new DateTime(2005, 04, 12),
    IsMarried = true
};

````
````VB.NET
Me.RadDataLayout1.DataSource = New EmployeeModel() With {
    .FirstName = "Sarah",
    .LastName = "Blake",
    .Occupation = "Supplied Manager",
    .StartingDate = New DateTime(2005, 4, 12),
    .IsMarried = True
}

````

{{endregion}}

5\. Press __F5__ to run the project and you should see the following:
            
>caption Figure 2: Bound to Single Object

![WinForms RadDataLayout Bound to Single Object](images/datalayout-getting-started002.png)

### Binding RadDataLayout to multiple objects

Besides a __RadDataLayout__ we are also going to need a __RadBindingNavigator__ on our form. In order to connect the two controls we are going to use a **BindingSource** component.
        
>caption Figure 3: Added RadBindingNavigator

![WinForms RadDataLayout Added RadBindingNavigator](images/datalayout-getting-started003.png)

Compared to the previously shown example only the data binding is different. This time we are going to bind the __RadDataLayout__ control to a list of our model objects. The same list will also provide data to the **BindingSource** component.

{{source=..\SamplesCS\DataLayout\GettingStartedForm.cs region=BindMultipleObjects}} 
{{source=..\SamplesVB\DataLayout\GettingStartedForm.vb region=BindMultipleObjects}} 

````C#
List<Employee> employees = new List<Employee>();
employees.Add(new Employee()
{
    FirstName = "Sarah",
    LastName = "Blake",
    Occupation = "Supplied Manager",
    StartingDate = new DateTime(2005, 04, 12),
    IsMarried = true
});
employees.Add(new Employee()
{
    FirstName = "Jane",
    LastName = "Simpson",
    Occupation = "Security",
    StartingDate = new DateTime(2008, 12, 03),
    IsMarried = true
});
employees.Add(new Employee()
{
    FirstName = "John",
    LastName = "Peterson",
    Occupation = "Consultant",
    StartingDate = new DateTime(2005, 04, 12),
    IsMarried = false
});
employees.Add(new Employee()
{
    FirstName = "Peter",
    LastName = "Bush",
    Occupation = "Cashier",
    StartingDate = new DateTime(2005, 04, 12),
    IsMarried = true
});
this.bindingSource1.DataSource = employees;
this.radDataLayout1.DataSource = this.bindingSource1;
this.radBindingNavigator1.BindingSource = this.bindingSource1;

````
````VB.NET
Dim employees As New List(Of EmployeeModel)()
employees.Add(New EmployeeModel() With {
    .FirstName = "Sarah",
    .LastName = "Blake",
    .Occupation = "Supplied Manager",
    .StartingDate = New DateTime(2005, 4, 12),
    .IsMarried = True
})
employees.Add(New EmployeeModel() With {
    .FirstName = "Jane",
    .LastName = "Simpson",
    .Occupation = "Security",
    .StartingDate = New DateTime(2008, 12, 3),
    .IsMarried = True
})
employees.Add(New EmployeeModel() With {
    .FirstName = "John",
    .LastName = "Peterson",
    .Occupation = "Consultant",
    .StartingDate = New DateTime(2005, 4, 12),
    .IsMarried = False
})
employees.Add(New EmployeeModel() With {
    .FirstName = "Peter",
    .LastName = "Bush",
    .Occupation = "Cashier",
    .StartingDate = New DateTime(2005, 4, 12),
    .IsMarried = True
})
Me.BindingSource1.DataSource = employees
Me.RadDataLayout1.DataSource = Me.BindingSource1
Me.RadBindingNavigator1.BindingSource = Me.BindingSource1

````

{{endregion}}

Press __F5__ to run the project and you should see the following:
        
>caption Figure 4: Bound to Multiple Objects

![WinForms RadDataLayout Bound to Multiple Objects](images/datalayout-getting-started004.gif)


## See Also

 * [Structure]({%slug winforms/datalayout/control-element-structure%})
 * [Validation]({%slug winforms/datalayout/validation%})
 * [Properties, events and attributes]({%slug winforms/datalayout/properties,-events-and-attributes%})
 * [Change the editor to RadDropDownList]({%slug  winforms/dataentry/how-to/change-the-editor-to-a-bound-raddropdownlist%})
 * [Customizing Appearance ]({%slug winforms/raddatalayout/customizing-appearance%})
 * [Eliminate the Last Item's stretching in DataLayout]({%slug stretched-last-item-in-datalayout%})

## Telerik UI for WinForms Learning Resources
* [Telerik UI for WinForms DataLayout Component](https://www.telerik.com/products/winforms/datalayout.aspx)
* [Getting Started with Telerik UI for WinForms Components](https://docs.telerik.com/devtools/winforms/getting-started/first-steps)
* [Telerik UI for WinForms Setup](https://docs.telerik.com/devtools/winforms/installation-and-upgrades/installing-on-your-computer)
* [Telerik UI for WinForms Application Modernization](https://docs.telerik.com/devtools/winforms/winforms-converter/overview)
* [Telerik UI for WinForms Visual Studio Templates](https://docs.telerik.com/devtools/winforms/visual-studio-integration/visual-studio-templates)
* [Deploy Telerik UI for WinForms Applications](https://docs.telerik.com/devtools/winforms/deployment-and-distribution/application-deployment)
* [Telerik UI for WinForms Virtual Classroom(Training Courses for Registered Users)](https://learn.telerik.com/learn/course/external/view/elearning/17/telerik-ui-for-winforms)
* [Telerik UI for WinForms License Agreement)](https://www.telerik.com/purchase/license-agreement/winforms-dlw-s)

