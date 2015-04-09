---
title: AutoComplete
page_title: AutoComplete
description: AutoComplete
slug: editors-textboxcontrol-autocomplete
tags: autocomplete
published: True
position: 5
---

# AutoComplete



## 

The RadTextBoxControl can automatically complete the input string by 
        	comparing the prefix being entered to the prefix of all strings in the
        	maintained source. This is useful for RadTextBoxControl in which URLs, addresses, 
        	file names or commands will be frequently entered.
        

There are four different completion modes:

* __Append__ - Appends the remainder of the most likely 
		  		candidate string to the existing characters, highlighting the appended characters.
		  	

* __None__ - Disables the automatic completion feature. 
		  	

* __Suggest__ - Displays the auxiliary drop-down list associated with
		  		the control. This drop-down is populated with the matching completion strings.
		  	

* __SuggestAppend__ - Applies both Suggest and Append options.
		  	

You can change the completion behavior by setting the AutoCompleteMode property. 
			You can determine the items used for auto-completion by specifying a data source or adding the items manually.
		

## Auto-completion data binding

RadTextBoxControl binds to collections of bindable types from many sources including:

* Array and ArrayList of simple types or custom objects.
				

* Generic Lists of simple types or custom objects.
				

* BindingList or other IBindingList implementations.
				

* Database data using DataTable and DataSet from a wide range of providers (MS SQL, Oracle, Access, anything accessible through OleDb).
				

Two properties control data binding:

* The __AutoCompleteDataSource__ property specifies the source of the data to be bound.
				

* The __AutoCompleteDisplayMember__ property specifies the 
					particular data to be displayed in a RadTextBoxControl auto-completion drop down.
				

To set the __AutoCompleteDataSource__ property, select the 
			__AutoCompleteDataSource__ property in the Properties window, 
			click the drop-down arrow to display all existing data sources on the form. Click the
			Add Project Data Source link and follow the instructions in the Data Source Configuration Wizard 
			to add a data source to your project. You can use databases, web services, or objects as data sources.
		![editors-textboxcontrol-autocomplete 001](images/editors-textboxcontrol-autocomplete001.png)

To set the __AutoCompleteDisplayMember__ property, first set the data source property.
			Then, select a value for the __AutoCompleteDisplayMember__ property from the drop-down 
			list in the Properties window.
		

## Auto-completion in unbound mode

To use auto-completion without specifying a data source, you need to populate the items which will be used
	    	for completing the input string in RadTextBoxControl, in the __Items__ collection of the control:
	    

#### __[C#]__

{{source=..\SamplesCS\Editors\TextBoxControl.cs region=AddAutoCompleteItems}}
	        private void AddAutoCompleteItems()
	        {
	            this.radTextBoxControl1.AutoCompleteMode = AutoCompleteMode.Suggest;
	            RadListDataItemCollection autoCompleteItems = this.radTextBoxControl1.AutoCompleteItems;
	
	            autoCompleteItems.Add(new RadListDataItem("Luke"));
	            autoCompleteItems.Add(new RadListDataItem("Max"));
	            autoCompleteItems.Add(new RadListDataItem("Adam"));
	            autoCompleteItems.Add(new RadListDataItem("Henry"));
	            autoCompleteItems.Add(new RadListDataItem("Jack"));
	            autoCompleteItems.Add(new RadListDataItem("Ben"));
	            autoCompleteItems.Add(new RadListDataItem("Tyler"));
	            autoCompleteItems.Add(new RadListDataItem("Ethan"));
	            autoCompleteItems.Add(new RadListDataItem("David"));
	            autoCompleteItems.Add(new RadListDataItem("Mike"));
	        }
	{{endregion}}



#### __[VB.NET]__

{{source=..\SamplesVB\Editors\TextBoxControl.vb region=AddAutoCompleteItems}}
	    Private Sub AddAutoCompleteItems()
	        Me.RadTextBoxControl1.AutoCompleteMode = AutoCompleteMode.Suggest
	        Dim autoCompleteItems As RadListDataItemCollection = Me.RadTextBoxControl1.AutoCompleteItems
	
	        autoCompleteItems.Add(New RadListDataItem("Luke"))
	        autoCompleteItems.Add(New RadListDataItem("Max"))
	        autoCompleteItems.Add(New RadListDataItem("Adam"))
	        autoCompleteItems.Add(New RadListDataItem("Henry"))
	        autoCompleteItems.Add(New RadListDataItem("Jack"))
	        autoCompleteItems.Add(New RadListDataItem("Ben"))
	        autoCompleteItems.Add(New RadListDataItem("Tyler"))
	        autoCompleteItems.Add(New RadListDataItem("Ethan"))
	        autoCompleteItems.Add(New RadListDataItem("David"))
	        autoCompleteItems.Add(New RadListDataItem("Mike"))
	    End Sub
	#End Region
	
	    Private Sub formatting1()
	        '#Region "Formatting1"
	        AddHandler Me.RadTextBoxControl1.TextBlockFormatting, AddressOf Me.OnTextBlockFormatting
	        Me.RadTextBoxControl1.Text = "This is important text."
	        '#End Region
	    End Sub
	
	#Region "formatting2"
	    Private Sub OnTextBlockFormatting(sender As Object, e As Telerik.WinControls.UI.TextBlockFormattingEventArgs)
	        Dim textBlock As TextBlockElement = TryCast(e.TextBlock, TextBlockElement)
	
	        If textBlock IsNot Nothing AndAlso e.TextBlock.Text = "important" Then
	            textBlock.ForeColor = Color.Red
	        End If
	    End Sub
	#End Region
	
	    Private Sub applyCustomTextBlock1()
	        '#Region "applyCustomTextBlock1"
	        AddHandler RadTextBoxControl1.CreateTextBlock, AddressOf radTextBoxControl1_CreateTextBlock
	        '#End Region
	    End Sub
	
	#Region "applyCustomTextBlock2"
	    Private Sub radTextBoxControl1_CreateTextBlock(sender As Object, e As CreateTextBlockEventArgs)
	        If e.Text = "here" Then
	            e.TextBlock = New ButtonTextBlock()
	        End If
	    End Sub
	#End Region
	    Private Sub setTheText()
	        '#Region "applyCustomTextBlock3"
	        Me.RadTextBoxControl1.Text = "Please, click here"
	        '#End Region
	    End Sub
	
	
	#Region "customTextBlock"
	    Public Class ButtonTextBlock
	        Inherits RadButtonElement
	        Implements ITextBlock
	        Private m_index As Integer
	        Private m_offset As Integer
	
	        Public Sub New()
	            Me.m_index = 0
	            Me.m_offset = 0
	            Me.MaxSize = New Size(0, 12)
	        End Sub
	
	        Protected Overrides ReadOnly Property ThemeEffectiveType() As Type
	            Get
	                Return GetType(RadButtonElement)
	            End Get
	        End Property
	
	        Public Property Index() As Integer Implements ITextBlock.Index
	            Get
	                Return Me.m_index
	            End Get
	            Set(value As Integer)
	                Me.m_index = value
	            End Set
	        End Property
	
	        Public ReadOnly Property Length() As Integer Implements ITextBlock.Length
	            Get
	                Return 1
	            End Get
	        End Property
	
	        Public Property Offset() As Integer Implements ITextBlock.Offset
	            Get
	                Return Me.m_offset
	            End Get
	            Set(value As Integer)
	                Me.m_offset = value
	            End Set
	        End Property
	
	        Public Function GetCharacterIndexFromX(x As Single) As Integer Implements ITextBlock.GetCharacterIndexFromX
	            Dim bounds As RectangleF = Me.ControlBoundingRectangle
	            Dim median As Single = bounds.X + bounds.Width / 2
	            Return If(x <= median, 0, 1)
	        End Function
	
	        Public Function GetRectangleFromCharacterIndex(index As Integer, trailEdge As Boolean) As RectangleF Implements ITextBlock.GetRectangleFromCharacterIndex
	            Dim bounds As Rectangle = Me.ControlBoundingRectangle
	
	            If index = 1 Then
	                bounds.X = bounds.Right
	                bounds.Width = 0
	            End If
	
	            Return bounds
	        End Function
	
	        Protected Overrides Sub OnClick(e As EventArgs)
	            MyBase.OnClick(e)
	            RadMessageBox.Show("The button is clicked.", "Message")
	        End Sub
	
	        Overloads Sub Measure(availableSize As SizeF) Implements ITextBlock.Measure
	            MyBase.Measure(availableSize)
	        End Sub
	
	        Overloads Sub Arrange(finalRectangle As RectangleF) Implements ITextBlock.Arrange
	            MyBase.Arrange(finalRectangle)
	        End Sub
	
	        Overloads ReadOnly Property DesiredSize As SizeF Implements ITextBlock.DesiredSize
	            Get
	                Return MyBase.DesiredSize
	            End Get
	        End Property
	
	        Overloads ReadOnly Property ControlBoundingRectangle As Rectangle Implements ITextBlock.ControlBoundingRectangle
	            Get
	                Return MyBase.ControlBoundingRectangle
	            End Get
	        End Property
	
	        Overloads Property Text As String Implements ITextBlock.Text
	            Get
	                Return MyBase.Text
	            End Get
	            Set(value As String)
	                MyBase.Text = value
	            End Set
	        End Property
	    End Class
	#End Region
	End Class



Here is the result of the above code:![editors-textboxcontrol-autocomplete 002](images/editors-textboxcontrol-autocomplete002.png)
