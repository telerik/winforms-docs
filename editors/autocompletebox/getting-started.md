---
title: Getting Started
page_title: Getting Started
description: Getting Started
slug: editors-autocompletebox-getting-started
tags: getting,started
published: True
position: 0
---

# Getting Started


<table><th><tr><td>

RELATED VIDEOS</td><td></td></tr></th><tr><td>

[Getting Started with RadAutoCompleteBox for WinForms](http://tv.telerik.com/watch/radcontrols-for-winforms/getting-started-with-radautocompletebox-for-winforms)

RadAutoCompleteBox allows the end-user to easily fill-in text thanks to auto-complete functionality and tokens of text. 
              This behavior is similar to the “To” field of Outlook and Facebook where you are filling-in the recipients to which you are going to send a new message.
            </td><td>![editors-autocompletebox-getting-started 004](images/editors-autocompletebox-getting-started004.png)</td></tr></table>

## 

The RadAutoCompleteBox allows your users to select multiple items from a predefined list, using auto 
        	completion as they type. You may have seen a similar type of text entry when filling in the recipient’s 
        	field, while sending messages on Facebook. RadAutoCompleteBox inherits all features of 
        	[RadTextBoxControl]({%slug editors-textboxcontrol-overview%}).
        

Each tokenized text block is separated by character, specified by the __Delimiter__ property.
        	You can change the __Delimiter__ at any time.
        

The code below sets text in the control at run time:

#### __[C#] __

{{region SetText}}
	        private void SetText()
	        {
	            this.radAutoCompleteBox1.Text = "Germany;USA;Brazil;Bulgaria;Croatia;Serbia;";
	        }
	{{endregion}}



#### __[VB.NET] __

{{region SetText}}
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



Here is the output:![editors-autocompletebox-getting-started 001](images/editors-autocompletebox-getting-started001.png)

You can determine the visibility of the remove button by changing the __ShowRemoveButton__ property:

#### __[C#] __

{{region ShowRemoveButton}}
	            this.radAutoCompleteBox1.ShowRemoveButton = false;
	{{endregion}}



#### __[VB.NET] __

{{region ShowRemoveButton}}
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

![editors-autocompletebox-getting-started 002](images/editors-autocompletebox-getting-started002.png)

To access the tokenized items use the __Items__ collection property of RadAutoCompleteBox:

#### __[C#] __

{{region AccessToken}}
	            RadTokenizedTextItem thirdToken = radAutoCompleteBox1.Items[2];
	{{endregion}}



#### __[VB.NET] __

{{region AccessToken}}
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



Setting the __NullText__ property will display a custom string when the Text property is empty or null:![editors-autocompletebox-getting-started 003](images/editors-autocompletebox-getting-started003.png)
