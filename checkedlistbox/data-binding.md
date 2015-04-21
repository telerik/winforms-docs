---
title: Data Biniding
page_title: Data Biniding
description: Data Biniding
slug: checkedlistbox-data-binding
tags: data,biniding
published: True
position: 1
---

# Data Biniding



## Supported Bindable Types

As an inheritor of __RadListView__, __RadCheckedListBox__ extends its functionality and provides a way to bind your
        __RadCheckedListBox__ check boxes to a data source. There are several types of data that __CheckedMember__ can be bound to:

* __Boolean__ – True represents ToggleState.On and False – ToggleState.Off.
            

* __Numeric__ – 0 represents ToggleState.Off, any other value is calculated as ToggleState.On.
            

* __ToggleState__ enumeration.
            

* __CheckState__ enumeration.
            

* __String__ – representing CheckBox ToggleState.On state with values
              like: "True", "On" and "T", ToggleState.Indeterminate state with value "indeterminate", ToggleState.Off state with any other value.
            

>Information about __RadListView__ data binding is available here: [RadListView Data Binding]({%slug listview-databinding%}).
        

## Design Time

To data bind the checkboxes of __RadCheckedListBox__ you need to set __CheckedMember__ using
          the smart tag or the properties window.
        ![checkedlistbox-data-binding 001](images/checkedlistbox-data-binding001.png)

The result is data bound __CheckedListBox__![checkedlistbox-data-binding 002](images/checkedlistbox-data-binding002.png)

## Binding Programmatically

The following example demonstrates how you can bind the control by using the __CheckedMember__ property. 
            This example uses the __CheckState__ property of the business object.
          

1. Initially let’s create collection of objects.
            

#### __[C#] SimpleObject class.__

{{source=..\SamplesCS\ListView\CheckedListBox\CheckedListBoxDataBinding.cs region=SimpleObject}}
	    public class SimpleObject
	    {
	        public int Id { get; set; }
	
	        public string Name { get; set; }
	
	        public CheckState CheckState { get; set; }
	    }
	{{endregion}}



#### __[VB.NET] SimpleObject class.__

{{source=..\SamplesVB\ListView\CheckedListBox\CheckedListBoxDataBinding.vb region=SimpleObject}}
	Public Class SimpleObject
	    Public Property Id() As Integer
	        Get
	            Return m_Id
	        End Get
	        Set(value As Integer)
	            m_Id = value
	        End Set
	    End Property
	    Private m_Id As Integer
	
	    Public Property Name() As String
	        Get
	            Return m_Name
	        End Get
	        Set(value As String)
	            m_Name = value
	        End Set
	    End Property
	    Private m_Name As String
	
	    Public Property CheckState() As CheckState
	        Get
	            Return m_CheckState
	        End Get
	        Set(value As CheckState)
	            m_CheckState = value
	        End Set
	    End Property
	    Private m_CheckState As CheckState
	End Class
	{{endregion}}



#### __[C#] Create Simple Objects collection.__

{{source=..\SamplesCS\ListView\CheckedListBox\CheckedListBoxDataBinding.cs region=CreateSimpleObjects}}
	        private IEnumerable<SimpleObject> CreateSimpleObjects()
	        {
	            List<SimpleObject> data = new List<SimpleObject>()
	                {
	                    new SimpleObject() { Id = 1, Name = "Item1", CheckState = CheckState.Unchecked },
	                    new SimpleObject() { Id = 2, Name = "Item2", CheckState = CheckState.Checked },
	                    new SimpleObject() { Id = 3, Name = "Item3", CheckState = CheckState.Indeterminate },
	                    new SimpleObject() { Id = 4, Name = "Item4", CheckState = CheckState.Unchecked },
	                    new SimpleObject() { Id = 5, Name = "Item5", CheckState = CheckState.Unchecked },
	                    new SimpleObject() { Id = 6, Name = "Item6", CheckState = CheckState.Checked }
	                };
	
	            return data;
	        }
	{{endregion}}



#### __[VB.NET] Create Simple Objects collection.__

{{source=..\SamplesVB\ListView\CheckedListBox\CheckedListBoxDataBinding.vb region=CreateSimpleObjects}}
	    Private Function CreateSimpleObjects() As IEnumerable(Of SimpleObject)
	        Dim data As New List(Of SimpleObject)() From { _
	            New SimpleObject() With { _
	                .Id = 1, _
	                .Name = "Item1", _
	                .CheckState = CheckState.Unchecked _
	            }, _
	            New SimpleObject() With { _
	                .Id = 2, _
	                .Name = "Item2", _
	                .CheckState = CheckState.Checked _
	            }, _
	            New SimpleObject() With { _
	                .Id = 3, _
	                .Name = "Item3", _
	                .CheckState = CheckState.Indeterminate _
	            }, _
	            New SimpleObject() With { _
	                .Id = 4, _
	                .Name = "Item4", _
	                .CheckState = CheckState.Unchecked _
	            }, _
	            New SimpleObject() With { _
	                .Id = 5, _
	                .Name = "Item5", _
	                .CheckState = CheckState.Unchecked _
	            }, _
	            New SimpleObject() With { _
	                .Id = 6, _
	                .Name = "Item6", _
	                .CheckState = CheckState.Checked _
	            } _
	        }
	
	        Return data
	    End Function
	{{endregion}}



1. To support three state check boxes we need to set the __ThreeStateMode__ property:
            

#### __[C#] ThreeStateMode.__

{{source=..\SamplesCS\ListView\CheckedListBox\CheckedListBoxDataBinding.cs region=ThreeStateMode}}
	            this.radCheckedListBox1.ThreeStateMode = true;
	{{endregion}}



#### __[VB.NET] ThreeStateMode.__

{{source=..\SamplesVB\ListView\CheckedListBox\CheckedListBoxDataBinding.vb region=ThreeStateMode}}
	        Me.RadCheckedListBox1.ThreeStateMode = True
	{{endregion}}



1. And finally set programmatically the __DataSource__, __DisplayMember__,
              __ValueMember__ and __CheckedMember__ properties.
            

#### __[C#] Programmatically data bind.__

{{source=..\SamplesCS\ListView\CheckedListBox\CheckedListBoxDataBinding.cs region=ProgramaticallyDatabind}}
	            this.radCheckedListBox1.DataSource = this.CreateSimpleObjects();
	            this.radCheckedListBox1.DisplayMember = "Name";
	            this.radCheckedListBox1.ValueMember = "Id";
	            this.radCheckedListBox1.CheckedMember = "CheckState";
	{{endregion}}



#### __[VB.NET] Programmatically data bind.__

{{source=..\SamplesVB\ListView\CheckedListBox\CheckedListBoxDataBinding.vb region=ProgramaticallyDatabind}}
	        Me.RadCheckedListBox1.DataSource = Me.CreateSimpleObjects()
	        Me.RadCheckedListBox1.DisplayMember = "Name"
	        Me.RadCheckedListBox1.ValueMember = "Id"
	        Me.RadCheckedListBox1.CheckedMember = "CheckState"
	{{endregion}}

![checkedlistbox-data-binding 003](images/checkedlistbox-data-binding003.png)
