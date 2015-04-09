---
title: Text editing
page_title: Text editing
description: Text editing
slug: editors-textboxcontrol-text-editing
tags: text,editing
published: True
position: 4
---

# Text editing



## 

The editing point is determined by the caret position and selection in RadTextBoxControl.
        	The editing position is visible only if the control is focused.
        

You can insert text programmatically at concrete position by using the __Insert__ method.
        	At that case, the text is inserted at the position determined by the 
        	__SelectionStart__ property. If the __SelectionLength__
        	property is greater than zero, the inserted text replaces the selected text.
        

#### __[C#]__

{{source=..\SamplesCS\Editors\TextBoxControl.cs region=Insert}}
	        private void Insert()
	        {
	            this.radTextBoxControl1.Text = "Green";
	            this.radTextBoxControl1.CaretIndex = 0;
	            this.radTextBoxControl1.Insert("John ");
	        }
	{{endregion}}



#### __[VB.NET]__

{{source=..\SamplesVB\Editors\TextBoxControl.vb region=Insert}}
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



The code above produces the following result:![editors-textboxcontrol-text-editing 001](images/editors-textboxcontrol-text-editing001.png)

Alternatively, you can insert text at the end of the RadTextBoxControl 
			content by using the __AppendText__ method:
		

#### __[C#]__

{{source=..\SamplesCS\Editors\TextBoxControl.cs region=AppendText}}
	        private void AppendText()
	        {
	            this.radTextBoxControl1.Text = "Samuel";
	            this.radTextBoxControl1.AppendText(" Jackson");
	        }
	{{endregion}}



#### __[VB.NET]__

{{source=..\SamplesVB\Editors\TextBoxControl.vb region=AppendText}}
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



The appended text is inserted at the end:![editors-textboxcontrol-text-editing 002](images/editors-textboxcontrol-text-editing002.png)

You can delete the selected text or character at the caret position by using the __Delete__ method:
		

#### __[C#]__

{{source=..\SamplesCS\Editors\TextBoxControl.cs region=Delete}}
	        private void DeleteSelection()
	        {
	            this.radTextBoxControl1.Text = "John Green";
	            this.radTextBoxControl1.Select(0, 4);
	            this.radTextBoxControl1.Delete();
	        }
	{{endregion}}



#### __[VB.NET]__

{{source=..\SamplesVB\Editors\TextBoxControl.vb region=Delete}}
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



After the deletion of the first word the text control looks like:![editors-textboxcontrol-text-editing 003](images/editors-textboxcontrol-text-editing003.png)

Each editing operation raises the __TextChanging__ and 
 	        __TextChanged__ events. Notice that you can prevent successful finishing
 	        of operation by subscribing to the __TextChanging__ event:
 	      

#### __[C#]__

{{source=..\SamplesCS\Editors\TextBoxControl.cs region=TextChanging}}
	        private void radTextBoxControl1_TextChanging(object sender, Telerik.WinControls.TextChangingEventArgs e)
	        {
	            e.Cancel = string.IsNullOrEmpty(e.NewValue);
	        }
	{{endregion}}



#### __[VB.NET]__

{{source=..\SamplesVB\Editors\TextBoxControl.vb region=TextChanging}}
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



The code above prevent deleting in RadTextBoxControl.
