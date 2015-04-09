---
title: Formatting Blocks
page_title: Formatting Blocks
description: Formatting Blocks
slug: editors-autocompletetextbox-formatting-blocks
tags: formatting,blocks
published: True
position: 5
---

# Formatting Blocks



## 

The RadAutoCompleteBox allows appearance customization of each instance of
			 __ITextBlock__. This can be easily achieved by subscribing 
			 to the __FormattingTextBlock__ event:
        

#### __[C#]__

{{source=..\SamplesCS\Editors\AutoCompleteBox.cs region=formatting}}
	        void radAutoCompleteBox1_TextBlockFormatting(object sender, TextBlockFormattingEventArgs e)
	        {
	            TokenizedTextBlockElement token = e.TextBlock as TokenizedTextBlockElement;
	            if (token != null)
	            {
	                token.GradientStyle = Telerik.WinControls.GradientStyles.Solid;
	                token.BackColor = Color.Yellow;
	            }
	        }
	{{endregion}}



#### __[VB.NET]__

{{source=..\SamplesVB\Editors\AutoCompleteBox.vb region=formatting}}
	    Private Sub radAutoCompleteBox1_TextBlockFormatting(sender As Object, e As TextBlockFormattingEventArgs)
	        Dim token As TokenizedTextBlockElement = TryCast(e.TextBlock, TokenizedTextBlockElement)
	        If token IsNot Nothing Then
	            token.GradientStyle = Telerik.WinControls.GradientStyles.Solid
	            token.BackColor = Color.Yellow
	        End If
	    End Sub
	#End Region
	
	#Region "PreventDeleteOfTokens"
	    Private Sub radAutoCompleteBox1_TextChanging(sender As Object, e As Telerik.WinControls.TextChangingEventArgs)
	        e.Cancel = String.IsNullOrEmpty(e.NewValue) AndAlso e.OldValue.Contains(Me.RadAutoCompleteBox1.Delimiter.ToString())
	    End Sub
	#End Region
	
	#Region "SetText"
	    Private Sub SetText()
	        Me.RadAutoCompleteBox1.Text = "Germany;USA;Brazil;Bulgaria;Croatia;Serbia;"
	    End Sub
	#End Region
	
	    Private Sub ShowRemoveButton()
	        '#Region "ShowRemoveButton"
	        Me.RadAutoCompleteBox1.ShowRemoveButton = False
	        '#End Region
	    End Sub
	
	    Private Sub AccessToken()
	        '#Region "AccessToken"
	        Dim thirdToken As RadTokenizedTextItem = RadAutoCompleteBox1.Items(2)
	        '#End Region
	    End Sub
	
	#Region "SetSelection"
	    Private Sub SetSelection()
	        Me.RadAutoCompleteBox1.Text = "Pepsi; Sprite; Coca-Cola;"
	        Me.RadAutoCompleteBox1.SelectionStart = 6
	        Me.RadAutoCompleteBox1.SelectionLength = 7
	    End Sub
	#End Region
	
	#Region "SetSelectionRange"
	    Private Sub SetSelectionRange()
	        Me.RadAutoCompleteBox1.Text = "Pepsi;Sprite;Coca-Cola"
	        Me.RadAutoCompleteBox1.[Select](6, 7)
	    End Sub
	#End Region
	
	#Region "insert"
	    Private Sub Insert()
	        Me.RadAutoCompleteBox1.Text = "USA;"
	        Me.RadAutoCompleteBox1.CaretIndex = 0
	        Me.RadAutoCompleteBox1.Insert("Canada;")
	    End Sub
	#End Region
	
	#Region "Append"
	    Private Sub Append()
	        Me.RadAutoCompleteBox1.Text = "IT Department;"
	        Me.RadAutoCompleteBox1.AppendText("Marketing Team;")
	    End Sub
	#End Region
	
	#Region "Delete"
	    Private Sub DeleteText()
	        Me.RadAutoCompleteBox1.Text = "Germany;USA;Brazil;Bulgaria;Croatia;Serbia;"
	        Me.RadAutoCompleteBox1.[Select](0, 8)
	        Me.RadAutoCompleteBox1.Delete()
	    End Sub
	#End Region
	
	#Region "addItems"
	    Private Sub AddAutoCompleteItems()
	        Dim items As RadListDataItemCollection = Me.RadAutoCompleteBox1.AutoCompleteItems
	
	        items.Add(New RadListDataItem("Joe Smith", "joe@fakecompany.com"))
	        items.Add(New RadListDataItem("Adam Petersen", "adam@qwerty.com"))
	        items.Add(New RadListDataItem("Jack Russel", "jack@russel.nocom"))
	        items.Add(New RadListDataItem("Daniel Finger", "daniel.pinger@gmail.com"))
	        items.Add(New RadListDataItem("Richard Vail", "rvail@richardvail.com"))
	        items.Add(New RadListDataItem("Sebastian Jonnson", "s.jonnson@sjonnson.com"))
	        items.Add(New RadListDataItem("Lee Cooper", "lee.cooper@coopercoorp.com"))
	        items.Add(New RadListDataItem("Kelvin Clain", "kclain@clainkevin.com"))
	        items.Add(New RadListDataItem("Maria Jenson", "mjenson@mariajenson.com"))
	        items.Add(New RadListDataItem("Chelsea Maarten", "chelsea@maarten.com"))
	        items.Add(New RadListDataItem("Jenson Chew", "jenson.chew@nospam.com"))
	        items.Add(New RadListDataItem("Martin Williams", "m.williams@martinandwilliams.com"))
	        items.Add(New RadListDataItem("Telerik", "clientservice@telerik.com"))
	        items.Add(New RadListDataItem("James Stone", "james.stone@manystones.com"))
	        items.Add(New RadListDataItem("Samuel Jackson", "samuel.jackson@nojackson.com"))
	    End Sub
	#End Region
	
	
	
	#Region "replaceTokens"
	    Private Sub radAutoCompleteBox1_CreateTextBlock(sender As Object, e As CreateTextBlockEventArgs)
	        If TypeOf e.TextBlock Is TokenizedTextBlockElement Then
	            e.TextBlock = New MyTokenizedTextBlockElement()
	        End If
	    End Sub
	#End Region
	
	
	#Region "customTokens"
	    Public Class MyTokenizedTextBlockElement
	        Inherits TokenizedTextBlockElement
	        Private checkBox As RadCheckBoxElement
	
	        Protected Overrides ReadOnly Property ThemeEffectiveType() As Type
	            Get
	                Return GetType(TokenizedTextBlockElement)
	            End Get
	        End Property
	
	        Protected Overrides Sub CreateChildElements()
	            MyBase.CreateChildElements()
	
	            Dim index As Integer = Me.Children.IndexOf(Me.RemoveButton)
	            Me.checkBox = New RadCheckBoxElement()
	            Me.checkBox.StretchVertically = True
	            Me.checkBox.StretchHorizontally = False
	            Me.Children.Insert(index, Me.checkBox)
	        End Sub
	    End Class
	#End Region
	End Class

![editors-autocompletebox-formatting-blocks 001](images/editors-autocompletebox-formatting-blocks001.png)

Note that the event occurs when the text blocks are repositioned. This happens in
			different cases - editing, control resizing and etc. Hence, you should subscribe to 
			the event before initializing the Text property.
		
