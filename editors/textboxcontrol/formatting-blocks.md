---
title: Formatting blocks
page_title: Formatting blocks
description: Formatting blocks
slug: editors-textboxcontrol-formatting-blocks
tags: formatting,blocks
published: True
position: 6
---

# Formatting blocks



## 

The RadTextBoxControl allow appearance customization of each instance of 
        	__ITextBlock__. This can be easily achieved by subscribing 
        	to the __FormattingTextBlock__ event:
        

#### __[C#]__

{{source=..\SamplesCS\Editors\TextBoxControl.cs region=Formatting1}}
	            this.radTextBoxControl1.TextBlockFormatting += this.OnTextBlockFormatting;
	            this.radTextBoxControl1.Text = "This is important text.";
	{{endregion}}



#### __[C#]__

{{source=..\SamplesCS\Editors\TextBoxControl.cs region=formatting2}}
	        private void OnTextBlockFormatting(object sender, Telerik.WinControls.UI.TextBlockFormattingEventArgs e)
	        {
	            TextBlockElement textBlock = e.TextBlock as TextBlockElement;
	
	            if (textBlock != null && e.TextBlock.Text == "important")
	            {
	                textBlock.ForeColor = Color.Red;
	            }
	        }
	{{endregion}}



#### __[VB.NET]__

{{source=..\SamplesVB\Editors\TextBoxControl.vb region=Formatting1}}
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



#### __[VB.NET]__

{{source=..\SamplesVB\Editors\TextBoxControl.vb region=formatting2}}
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

![editors-textboxcontrol-formatting-blocks 001](images/editors-textboxcontrol-formatting-blocks001.png)

Notice that the event occurs when the text blocks are repositioned. This happens in different cases:
        	editing, control resizing and etc. Hence, you should subscribe to the event before initializing
        	the __Text__ property.
        
