---
title: Caret positioning and selection
page_title: Caret positioning and selection
description: Caret positioning and selection
slug: editors-autocompletebox-caret-positioning-and-selection
tags: caret,positioning,and,selection
published: True
position: 2
---

# Caret positioning and selection



## 

The positioning and selection in RadAutoCompleteBox can be performed programmatically
          as well as by using the keyboard and mouse input.
        

the keyboard (up, down, left, right buttons).
          To select text you can press the shift key followed by left mouse button or one of the navigation keys of
        

Programmatic selection can be performed by using the __SelectionStart__
          and __SelectionLength__ properties of RadAutoCompleteBox.
        

The __SelectionStart__ property is an integer that indicates the insertion
          point within the string of text, with 0 being the left-most position. If the
          __SelectionStart__ property is set to a value equal to or greater
          than the number of characters in the text box, the insertion point is placed after the last character.
        

Setting the __SelectionLength__ to a number greater than 0 causes that number
          of characters to be selected, starting from the current insertion point.
        

#### __[C#] __

{{region SetSelection}}
	        private void SetSelection()
	        {
	            this.radAutoCompleteBox1.Text = "Pepsi; Sprite; Coca-Cola;";
	            this.radAutoCompleteBox1.SelectionStart = 6;
	            this.radAutoCompleteBox1.SelectionLength = 7;
	        }
	{{endregion}}



#### __[VB.NET] __

{{region SetSelection}}
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



Alternatively, you can use the __Select__ method to select the same part of the text:
        

#### __[C#] __

{{region SetSelectionRange}}
	        private void SetSelectionRange()
	        {
	            this.radAutoCompleteBox1.Text = "Pepsi;Sprite;Coca-Cola";
	            this.radAutoCompleteBox1.Select(6, 7);
	        }
	{{endregion}}



#### __[VB.NET] __

{{region SetSelectionRange}}
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



The both approaches produce same result:![editors-autocompletebox-caret-positioning-and-selection 001](images/editors-autocompletebox-caret-positioning-and-selection001.png)
