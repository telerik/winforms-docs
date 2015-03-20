---
title: Text Editing
page_title: Text Editing
description: Text Editing
slug: editors-autocompletebox-text-editing
tags: text,editing
published: True
position: 3
---

# Text Editing



## 

The editing point is determined by the caret position and selection in RadAutoCompleteBox.
        	The editing position is visible only if the control is focused.
        

You can insert text programmatically at concrete position by using the 
        	__Insert__ method. In this case, the text is inserted at the position 
        	determined by the __SelectionStart__ property. If the
        	__SelectionLength__ property is greater than zero, the inserted text replaces the selected text.
        

#### __[C#] __

{{region insert}}
	        private void Insert()
	        {
	            this.radAutoCompleteBox1.Text = "USA;";
	            this.radAutoCompleteBox1.CaretIndex = 0;
	            this.radAutoCompleteBox1.Insert("Canada;");
	        }
	{{endregion}}



#### __[VB.NET] __

{{region insert}}
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



The code above produces the following result:![editors-autocompletebox-text-editing 001](images/editors-autocompletebox-text-editing001.png)

Alternatively, you can insert text at the end of the RadAutoCompleteBox content 
			by using the __AppendText__ method:
		

#### __[C#] __

{{region Append}}
	        private void Append()
	        {
	            this.radAutoCompleteBox1.Text = "IT Department;";
	            this.radAutoCompleteBox1.AppendText("Marketing Team;");
	        }
	{{endregion}}



#### __[VB.NET] __

{{region Append}}
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



The appended text is inserted at the end:![editors-autocompletebox-text-editing 002](images/editors-autocompletebox-text-editing002.png)

You can delete the selected text or character at the caret position by using the 
			__Delete__ method:
		

#### __[C#] __

{{region Delete}}
	        private void DeleteText()
	        {
	            this.radAutoCompleteBox1.Text = "Germany;USA;Brazil;Bulgaria;Croatia;Serbia;";
	            this.radAutoCompleteBox1.Select(0, 8);
	            this.radAutoCompleteBox1.Delete();
	        }
	{{endregion}}



#### __[VB.NET] __

{{region Delete}}
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



After the deletion of the first word the text control looks like:![editors-autocompletebox-text-editing 003](images/editors-autocompletebox-text-editing003.png)

Each editing operation raises the __TextChanging__ and 
			__TextChanged__ events. Notice that you can prevent successful
			finishing of operation by subscribing to the __TextChanging__ event:
		

#### __[C#] __

{{region PreventDeleteOfTokens}}
	        void radAutoCompleteBox1_TextChanging(object sender, Telerik.WinControls.TextChangingEventArgs e)
	        {
	            e.Cancel = string.IsNullOrEmpty(e.NewValue) && e.OldValue.Contains(this.radAutoCompleteBox1.Delimiter.ToString());
	        }
	{{endregion}}



#### __[VB.NET] __

{{region PreventDeleteOfTokens}}
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



The code above prevents deleting a tokenized text blocks in RadAutoCompleteBox.
