---
title: Getting Started
page_title: Getting Started
description: Getting Started
slug: dataentry-overview-getting-started
tags: getting,started
published: True
position: 0
---

# Getting Started



This tutorial demonstrates how bind __RadDataEntry__ to business object and to a collection of objects.
        

## Binding RadDataEntry to a single object

1. Place a __RadDataEntry__ control on a form.
            ![dataentry-overview-getting-started 001](images/dataentry-overview-getting-started001.png)

1. For the purpose of this tutorial, we will create a new class Employee with a couple of exposed properties
            

#### __[C#] __

{{region empl1}}
	        private class Employee
	        {
	            public string FirstName
	            {
	                get;
	                set;
	            }
	            public string LastName
	            {
	                get;
	                set;
	            }
	            public string Occupation
	            {
	                get;
	                set;
	            }
	            public DateTime StartingDate
	            {
	                get;
	                set;
	            }
	            public bool IsMarried
	            {
	                get;
	                set;
	            }
	
	            public int Salary
	            {
	                get;
	                set;
	            }
	            public Gender Gender
	            {
	                get;
	                set;
	            }
	        }
	        private enum Gender
	        {
	            Female,
	            Male
	        }
	{{endregion}}



#### __[VB.NET] __

{{region empl1}}
	        Private Class Employee
	            Public Property FirstName() As String
	                Get
	                    Return m_FirstName
	                End Get
	                Set(value As String)
	                    m_FirstName = Value
	                End Set
	            End Property
	            Private m_FirstName As String
	            Public Property LastName() As String
	                Get
	                    Return m_LastName
	                End Get
	                Set(value As String)
	                    m_LastName = Value
	                End Set
	            End Property
	            Private m_LastName As String
	            Public Property Occupation() As String
	                Get
	                    Return m_Occupation
	                End Get
	                Set(value As String)
	                    m_Occupation = Value
	                End Set
	            End Property
	            Private m_Occupation As String
	            Public Property StartingDate() As DateTime
	                Get
	                    Return m_StartingDate
	                End Get
	                Set(value As DateTime)
	                    m_StartingDate = Value
	                End Set
	            End Property
	            Private m_StartingDate As DateTime
	            Public Property IsMarried() As Boolean
	                Get
	                    Return m_IsMarried
	                End Get
	                Set(value As Boolean)
	                    m_IsMarried = Value
	                End Set
	            End Property
	            Private m_IsMarried As Boolean
	
	            Public Property Salary() As Integer
	                Get
	                    Return m_Salary
	                End Get
	                Set(value As Integer)
	                    m_Salary = Value
	                End Set
	            End Property
	            Private m_Salary As Integer
	            Public Property Gender() As Gender
	                Get
	                    Return m_Gender
	                End Get
	                Set(value As Gender)
	                    m_Gender = Value
	                End Set
	            End Property
	            Private m_Gender As Gender
	        End Class
	        Private Enum Gender
	            Female
	            Male
	        End Enum
	#End Region
	
	        Public Sub New()
	            InitializeComponent()
	
	            '#Region "bind1"
	            Me.radDataEntry1.DataSource = New Employee() With { _
	              .FirstName = "Sarah", _
	              .LastName = "Blake", _
	              .Occupation = "Supplied Manager", _
	              .StartingDate = New DateTime(2005, 4, 12), _
	              .IsMarried = True, _
	              .Salary = 3500, _
	              .Gender = Gender.Female _
	             }
	            '#End Region
	        End Sub
	    End Class
	End Namespace



1. Once the class Employee is defined, you may use it for creating an object of this type and bind it to the __RadDataEntry__ control:
            

#### __[C#] __

{{region bind1}}
	            this.radDataEntry1.DataSource = new Employee() 
	            { 
	                FirstName = "Sarah",
	                LastName = "Blake",
	                Occupation = "Supplied Manager", 
	                StartingDate = new DateTime(2005, 04, 12),
	                IsMarried = true, 
	                Salary = 3500, Gender = Gender.Female 
	            };
	{{endregion}}



#### __[VB.NET] __

{{region bind1}}
	            Me.radDataEntry1.DataSource = New Employee() With { _
	              .FirstName = "Sarah", _
	              .LastName = "Blake", _
	              .Occupation = "Supplied Manager", _
	              .StartingDate = New DateTime(2005, 4, 12), _
	              .IsMarried = True, _
	              .Salary = 3500, _
	              .Gender = Gender.Female _
	             }
	            '#End Region
	        End Sub
	    End Class
	End Namespace



1. Press __F5__ to run the project and you should see the following:
            ![dataentry-overview-getting-started 002](images/dataentry-overview-getting-started002.png)

## 
        Binding RadDataEntry to collection from objects
      

The following tutorial will demonstrate how to bind __RadDataEntry__ to a collection of objects and navigate through it.
          In order to navigate through the collection we will use 
          [RadBindingNavigator]({%slug bindingnavigator-overview%}).
          __RadBindingNavigator__ is designed to use as data source a
           [
                 BindingSource
              ](
              http://msdn.microsoft.com/en-us/library/system.windows.forms.bindingsource%28v=vs.110%29.aspx
            )
           component. 
        

1. Place __RadDataEntry__, __RadBindingNavigator__  and a BindingSource component on a form.
              Dock the navigator to *Top* and the data entry to *Fill*.
            ![dataentry-overview-getting-started 003](images/dataentry-overview-getting-started003.png)

1. Create List of business objects and set it as data source of BindingSource.
            

#### __[C#] __

{{region bind2}}
	
	            List<Employee> employees = new List<Employee>();
	            employees.Add(new Employee() { FirstName = "Sarah", LastName = "Blake", Occupation = "Supplied Manager", StartingDate = new DateTime(2005, 04, 12), IsMarried = true, Salary = 3500, Gender = Gender.Female });
	            employees.Add(new Employee() { FirstName = "Jane", LastName = "Simpson", Occupation = "Security", StartingDate = new DateTime(2008, 12, 03), IsMarried = true, Salary = 2000, Gender = Gender.Female });
	            employees.Add(new Employee() { FirstName = "John", LastName = "Peterson", Occupation = "Consultant", StartingDate = new DateTime(2005, 04, 12), IsMarried = false, Salary = 2600, Gender = Gender.Male });
	            employees.Add(new Employee() { FirstName = "Peter", LastName = "Bush", Occupation = "Cashier", StartingDate = new DateTime(2005, 04, 12), IsMarried = true, Salary = 2300, Gender = Gender.Male });
	
	            this.bindingSource1.DataSource = employees;
	
	{{endregion}}



#### __[VB.NET] __

{{region bind2}}
	
	            Dim employees As New List(Of Employee)()
	            employees.Add(New Employee() With { _
	             .FirstName = "Sarah", _
	             .LastName = "Blake", _
	             .Occupation = "Supplied Manager", _
	             .StartingDate = New DateTime(2005, 4, 12), _
	             .IsMarried = True, _
	             .Salary = 3500, _
	             .Gender = Gender.Female _
	            })
	            employees.Add(New Employee() With { _
	             .FirstName = "Jane", _
	             .LastName = "Simpson", _
	             .Occupation = "Security", _
	             .StartingDate = New DateTime(2008, 12, 3), _
	             .IsMarried = True, _
	             .Salary = 2000, _
	             .Gender = Gender.Female _
	            })
	            employees.Add(New Employee() With { _
	             .FirstName = "John", _
	             .LastName = "Peterson", _
	             .Occupation = "Consultant", _
	             .StartingDate = New DateTime(2005, 4, 12), _
	             .IsMarried = False, _
	             .Salary = 2600, _
	             .Gender = Gender.Male _
	            })
	            employees.Add(New Employee() With { _
	              .FirstName = "Peter", _
	              .LastName = "Bush", _
	              .Occupation = "Cashier", _
	              .StartingDate = New DateTime(2005, 4, 12), _
	              .IsMarried = True, _
	              .Salary = 2300, _
	              .Gender = Gender.Male _
	            })
	
	            Me.bindingSource1.DataSource = employees
	
	            '#End Region
	
	            '#Region "bind3"
	
	            Me.radDataEntry1.DataSource = Me.bindingSource1
	            Me.radBindingNavigator1.BindingSource = Me.bindingSource1
	
	            '#End Region
	
	        End Sub
	    End Class
	End Namespace



1. Set this __BindingSource__ to __RadBindingNavigator__ and __RadDataEntry__.
            

#### __[C#] __

{{region bind3}}
	
	            this.radDataEntry1.DataSource = this.bindingSource1;
	            this.radBindingNavigator1.BindingSource = this.bindingSource1;
	
	{{endregion}}



#### __[VB.NET] __

{{region bind3}}
	
	            Me.radDataEntry1.DataSource = Me.bindingSource1
	            Me.radBindingNavigator1.BindingSource = Me.bindingSource1
	
	            '#End Region
	
	        End Sub
	    End Class
	End Namespace



1. Press __F5__ to run the project and you should see the following:
            ![dataentry-overview-getting-started 004](images/dataentry-overview-getting-started004.png)
