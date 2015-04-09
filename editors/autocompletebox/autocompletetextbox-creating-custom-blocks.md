---
title: Creating Custom Blocks
page_title: Creating Custom Blocks
description: Creating Custom Blocks
slug: editors-autocompletetextbox-creating-custom-blocks
tags: creating,custom,blocks
published: True
position: 6
---

# Creating Custom Blocks



## 

The RadAutoCompleteBox allows not only appearance customization via the formatting event,
          but also replacement of the default UI block representation. The __CreateTextBlock__ event
          exposes this possibility.
        

You should create a custom text block that inherits from __ITextBlock__
          and any inheritor of RadElement. Let’s extend the default
          __TokenizedTextBlockElement__ by adding
          a check box. We don’t need to implement the __ITextBlock__ interface,
          because it is already defined in the base class:
        

#### __[C#]__

{{source=..\SamplesCS\Editors\AutoCompleteBox.cs region=customTokens}}
	    public class MyTokenizedTextBlockElement : TokenizedTextBlockElement
	    {
	        private RadCheckBoxElement checkBox;
	
	        protected override Type ThemeEffectiveType
	        {
	            get
	            {
	                return typeof(TokenizedTextBlockElement);
	            }
	        }
	
	        protected override void CreateChildElements()
	        {
	            base.CreateChildElements();
	
	            int index = this.Children.IndexOf(this.RemoveButton);
	            this.checkBox = new RadCheckBoxElement();
	            this.checkBox.StretchVertically = true;
	            this.checkBox.StretchHorizontally = false;
	            this.Children.Insert(index, this.checkBox);
	        }
	    }
	{{endregion}}



#### __[VB.NET]__

{{source=..\SamplesVB\Editors\AutoCompleteBox.vb region=customTokens}}
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



Then you should replace the default text block in the __CreateTextBlock__
          event handler, in the following manner:
        

#### __[C#]__

{{source=..\SamplesCS\Editors\AutoCompleteBox.cs region=replaceTokens}}
	        private void radAutoCompleteBox1_CreateTextBlock(object sender, CreateTextBlockEventArgs e)
	        {
	            if (e.TextBlock is TokenizedTextBlockElement)
	            {
	                e.TextBlock = new MyTokenizedTextBlockElement();
	            }
	        }
	{{endregion}}



#### __[VB.NET]__

{{source=..\SamplesVB\Editors\AutoCompleteBox.vb region=replaceTokens}}
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



Finally, the text property should be set:

>The subscription to the event, should be introduced before setting the text of the control.
          

#### __[C#]__

{{source=..\SamplesCS\Editors\AutoCompleteBox.cs region=subscribeToFormatting}}
	            radAutoCompleteBox1.TextBlockFormatting += new TextBlockFormattingEventHandler(radAutoCompleteBox1_TextBlockFormatting);
	            this.radAutoCompleteBox1.Text = "Euro;USD;GBP;";
	{{endregion}}



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

{{source=..\SamplesVB\Editors\AutoCompleteBox.vb region=subscribeToFormatting}}
	        AddHandler RadAutoCompleteBox1.TextBlockFormatting, AddressOf radAutoCompleteBox1_TextBlockFormatting
	        Me.RadAutoCompleteBox1.Text = "Euro;USD;GBP;"
	        '#End Region
	    End Sub
	
	    Private Sub radButton1_Click(sender As Object, e As EventArgs)
	        RadAutoCompleteBox1.SelectedText = "asdasd"
	    End Sub
	
	#Region "formatting"
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



The following screen demonstrates the final result:![editors-autocompletebox-creating-custom-blocks 001](images/editors-autocompletebox-creating-custom-blocks001.png)
