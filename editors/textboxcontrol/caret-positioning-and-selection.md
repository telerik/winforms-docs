---
title: Caret positioning and selection
page_title: Caret positioning and selection
description: Caret positioning and selection
slug: editors-textboxcontrol-caret-positioning-and-selection
tags: caret,positioning,and,selection
published: True
position: 3
---

# Caret positioning and selection



## 

The positioning and selection in RadTextBoxControl can be performed programmatically
        	as well as using keyboard and mouse input.
        

To select text you can press the shift key followed by left mouse button or one of the navigation keys of 
			the keyboard (up, down, left, right buttons).
        

Programmatically selection can be performed by using the 
        	__SelectionStart__ and __SelectionLength__ properties of RadTextBoxControl.
        

The __SelectionStart__ property is a number that indicates the 
        	insertion point within the string of text, with 0 being the left-most position. 
        	If the __SelectionStart__ property is set to a value equal to or greater than the number 
        	of characters in the text box, the insertion point is placed after the last character.
        

The __SelectionLength__ property is a numeric value that sets the
        	width of the insertion point. Setting the __SelectionLength__ to a number greater than 0 causes 
        	that number of characters to be selected, starting from the current insertion point.
        

#### __[C#]__

{{source=..\SamplesCS\Editors\TextBoxControl.cs region=SetSelection}}
	        private void SetSelection()
	        {
	            this.radTextBoxControl1.Text = "Hello, John Green";
	            this.radTextBoxControl1.SelectionStart = 7;
	            this.radTextBoxControl1.SelectionLength = 4;
	        }
	{{endregion}}



#### __[VB.NET]__

{{source=..\SamplesVB\Editors\TextBoxControl.vb region=SetSelection}}
	    Private Sub SetSelection()
	        Me.RadTextBoxControl1.Text = "Hello, John Green"
	        Me.RadTextBoxControl1.SelectionStart = 7
	        Me.RadTextBoxControl1.SelectionLength = 4
	    End Sub
	#End Region
	
	#Region "Select"
	    Private Sub SelectText()
	        Me.RadTextBoxControl1.Text = "Hello, John Green"
	        Me.RadTextBoxControl1.[Select](7, 4)
	    End Sub
	#End Region
	
	#Region "Insert"
	    Private Sub Insert()
	        Me.RadTextBoxControl1.Text = "Green"
	        Me.RadTextBoxControl1.CaretIndex = 0
	        Me.RadTextBoxControl1.Insert("John ")
	    End Sub
	#End Region
	
	#Region "AppendText"
	    Private Sub AppendText()
	        Me.RadTextBoxControl1.Text = "Samuel"
	        Me.RadTextBoxControl1.AppendText(" Jackson")
	    End Sub
	#End Region
	
	#Region "Delete"
	    Private Sub DeleteSelection()
	        Me.RadTextBoxControl1.Text = "John Green"
	        Me.RadTextBoxControl1.[Select](0, 4)
	        Me.RadTextBoxControl1.Delete()
	    End Sub
	#End Region
	
	#Region "TextChanging"
	    Private Sub radTextBoxControl1_TextChanging(sender As Object, e As Telerik.WinControls.TextChangingEventArgs)
	        e.Cancel = String.IsNullOrEmpty(e.NewValue)
	    End Sub
	#End Region
	
	#Region "AddAutoCompleteItems"
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



Alternatively, you can use the Select method to select the same part of the text:

#### __[C#]__

{{source=..\SamplesCS\Editors\TextBoxControl.cs region=Select}}
	        private void SelectText()
	        {
	            this.radTextBoxControl1.Text = "Hello, John Green";
	            this.radTextBoxControl1.Select(7, 4);
	        }
	{{endregion}}



#### __[VB.NET]__

{{source=..\SamplesVB\Editors\TextBoxControl.vb region=Select}}
	    Private Sub SelectText()
	        Me.RadTextBoxControl1.Text = "Hello, John Green"
	        Me.RadTextBoxControl1.[Select](7, 4)
	    End Sub
	#End Region
	
	#Region "Insert"
	    Private Sub Insert()
	        Me.RadTextBoxControl1.Text = "Green"
	        Me.RadTextBoxControl1.CaretIndex = 0
	        Me.RadTextBoxControl1.Insert("John ")
	    End Sub
	#End Region
	
	#Region "AppendText"
	    Private Sub AppendText()
	        Me.RadTextBoxControl1.Text = "Samuel"
	        Me.RadTextBoxControl1.AppendText(" Jackson")
	    End Sub
	#End Region
	
	#Region "Delete"
	    Private Sub DeleteSelection()
	        Me.RadTextBoxControl1.Text = "John Green"
	        Me.RadTextBoxControl1.[Select](0, 4)
	        Me.RadTextBoxControl1.Delete()
	    End Sub
	#End Region
	
	#Region "TextChanging"
	    Private Sub radTextBoxControl1_TextChanging(sender As Object, e As Telerik.WinControls.TextChangingEventArgs)
	        e.Cancel = String.IsNullOrEmpty(e.NewValue)
	    End Sub
	#End Region
	
	#Region "AddAutoCompleteItems"
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



The both approaches produce same result:![editors-textboxcontrol-caret-positioning-and-selection 001](images/editors-textboxcontrol-caret-positioning-and-selection001.png)

You can access the selected text through the __SelectedText__ property. 
			To select the whole text use the __SelectAll__ method.
		

Note that you can use the __CaretIndex__ property to move the caret at
			specified position and clear the selection.
		
