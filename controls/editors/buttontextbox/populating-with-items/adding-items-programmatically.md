---
title: Adding Items Programmatically
page_title: Adding Items Programmatically | RadButtonTextBox
description: RadButtonTextBox is a derivative of **RadTextBox** which allows you to embed easily button elements on the left or right side of the text box.
slug: winforms/editors/buttontextbox/populating-with-data/adding-items-programmatically
tags: adding,items,programmatically
published: True
position: 1 
---

# Adding items programmatically

**RadButtonTextBox** supports adding items at run time, which means that you can manually populate it with data. The following examples demonstrate how to add different button elements to the RadButtonTextBox's **RightButtonItems** and **LeftButtonItems** collections. 


>caption Figure 1: Adding button elements

![buttontextbox-populating-with-data-adding-items-programmatically 001](images/buttontextbox-populating-with-data-adding-items-programmatically001.png)

#### Add button elements programmatically 

{{source=..\SamplesCS\Editors\ButtonTextBox.cs region=AddItemsProgrammatically}} 
{{source=..\SamplesVB\Editors\ButtonTextBox.vb region=AddItemsProgrammatically}} 

````C#
            
            Dictionary<int, string> glyphs = new Dictionary<int, string>();
            List<RadButtonElement> buttons = new List<RadButtonElement>(); 
            
            glyphs.Add(0, ""); //yammer 
            glyphs.Add(1, ""); //twitter 
            glyphs.Add(2, ""); //pinterest 
            glyphs.Add(3, ""); //google 
            glyphs.Add(4, ""); //facebook 
            glyphs.Add(5, ""); //linkedin 
            glyphs.Add(6, "\ue817"); //Reddit 
            glyphs.Add(7, "\ue81d"); //Tumbler 
            glyphs.Add(8, "\ue813"); // MySpace 
            
            for (int i = 0; i < 9; i++)
            {
                RadButtonElement radButtonElement = new RadButtonElement(); 
                radButtonElement.DisplayStyle = Telerik.WinControls.DisplayStyle.Text; 
                radButtonElement.TextElement.CustomFont = "TelerikWebUI"; 
                radButtonElement.TextElement.CustomFontSize = 10; 
                radButtonElement.TextElement.TextRenderingHint = System.Drawing.Text.TextRenderingHint.AntiAlias; 
                radButtonElement.Text = glyphs[i]; 
                buttons.Add(radButtonElement); 
            }
            
            radButtonTextBox1.RightButtonItems.AddRange(buttons[0], buttons[1], buttons[3], buttons[4]);
            radButtonTextBox1.LeftButtonItems.AddRange(buttons[5], buttons[6], buttons[7], buttons[8]); 
            radButtonTextBox1.AutoSize = false; 
            radButtonTextBox1.Text = "";

````
````VB.NET

        Dim glyphs As Dictionary(Of Integer, String) = New Dictionary(Of Integer, String)()
        Dim buttons As List(Of RadButtonElement) = New List(Of RadButtonElement)()
        glyphs.Add(0, "")
        glyphs.Add(1, "")
        glyphs.Add(2, "")
        glyphs.Add(3, "")
        glyphs.Add(4, "")
        glyphs.Add(5, "")
        glyphs.Add(6, "")
        glyphs.Add(7, "")
        glyphs.Add(8, "")

        For i As Integer = 0 To 9 - 1
            Dim radButtonElement As RadButtonElement = New RadButtonElement()
            radButtonElement.DisplayStyle = Telerik.WinControls.DisplayStyle.Text
            radButtonElement.TextElement.CustomFont = "TelerikWebUI"
            radButtonElement.TextElement.CustomFontSize = 10
            radButtonElement.TextElement.TextRenderingHint = System.Drawing.Text.TextRenderingHint.AntiAlias
            radButtonElement.Text = glyphs(i)
            buttons.Add(radButtonElement)
        Next

        RadButtonTextBox1.RightButtonItems.AddRange(buttons(0), buttons(1), buttons(3), buttons(4))
        RadButtonTextBox1.LeftButtonItems.AddRange(buttons(5), buttons(6), buttons(7), buttons(8))
        RadButtonTextBox1.AutoSize = False
        RadButtonTextBox1.Text = ""

````

{{endregion}} 

The following code snippet demonstrates how to add programmatically different types of elements in **RadButtonTextBox**:

>caption Figure 2: Adding different elements

![buttontextbox-populating-with-data-adding-items-programmatically 002](images/buttontextbox-populating-with-data-adding-items-programmatically002.png)

#### Add different elements programmatically 

{{source=..\SamplesCS\Editors\ButtonTextBox.cs region=AllItems}} 
{{source=..\SamplesVB\Editors\ButtonTextBox.vb region=AllItems}} 

````C#

         private void AddDifferentItems()
        {
            this.radButtonTextBox1.Multiline = true;
            
            RadButtonElement buttonElement = new RadButtonElement();
            buttonElement.Text = "Button";
            buttonElement.Click += buttonElement_Click;
            this.radButtonTextBox1.LeftButtonItems.Add(buttonElement);
            
            RadToggleButtonElement toggleButtonElement = new RadToggleButtonElement();
            toggleButtonElement.Text = "ToggleButton";
            toggleButtonElement.ToggleStateChanged += toggleButtonElement_ToggleStateChanged;
            this.radButtonTextBox1.LeftButtonItems.Add(toggleButtonElement);
            
            CommandBarSeparator separator = new CommandBarSeparator();
            this.radButtonTextBox1.LeftButtonItems.Add(separator);
            
            RadRepeatButtonElement repeatButtonElement = new RadRepeatButtonElement();
            repeatButtonElement.Text = "RepeatButton";
            repeatButtonElement.Click += repeatButtonElement_Click;
            this.radButtonTextBox1.LeftButtonItems.Add(repeatButtonElement);
            
            RadCheckBoxElement checkBoxElement = new RadCheckBoxElement();
            checkBoxElement.Text = "CheckBox";
            checkBoxElement.CheckStateChanged += checkBoxElement_CheckStateChanged;
            this.radButtonTextBox1.RightButtonItems.Add(checkBoxElement);
        }
        
        private void checkBoxElement_CheckStateChanged(object sender, EventArgs e)
        {
            RadMessageBox.Show("RRadCheckBoxElement is toggled");
        }
        
        private void repeatButtonElement_Click(object sender, EventArgs e)
        {
            Console.WriteLine("RadRepeatButtonElement");
        }
        
        private void toggleButtonElement_ToggleStateChanged(object sender, StateChangedEventArgs args)
        {
            RadMessageBox.Show("RadToggleButtonElement.ToggleState is changed to " + args.ToggleState.ToString());
        }
        
        private void buttonElement_Click(object sender, EventArgs e)
        {
            RadMessageBox.Show("RadButtonElement is clicked");
        }
        
        private void RadForm1_Load(object sender, EventArgs e)
        {
            AddDifferentItems();
        }           


````
````VB.NET

    Private Sub AddDifferentItems()
        Me.RadButtonTextBox1.Multiline = True
        Dim buttonElement As RadButtonElement = New RadButtonElement()
        buttonElement.Text = "Button"
        AddHandler buttonElement.Click, AddressOf buttonElement_Click
        Me.RadButtonTextBox1.LeftButtonItems.Add(buttonElement)
        Dim toggleButtonElement As RadToggleButtonElement = New RadToggleButtonElement()
        toggleButtonElement.Text = "ToggleButton"
        AddHandler toggleButtonElement.ToggleStateChanged, AddressOf toggleButtonElement_ToggleStateChanged
        Me.RadButtonTextBox1.LeftButtonItems.Add(toggleButtonElement)
        Dim separator As CommandBarSeparator = New CommandBarSeparator()
        Me.RadButtonTextBox1.LeftButtonItems.Add(separator)
        Dim repeatButtonElement As RadRepeatButtonElement = New RadRepeatButtonElement()
        repeatButtonElement.Text = "RepeatButton"
        AddHandler repeatButtonElement.Click, AddressOf repeatButtonElement_Click
        Me.RadButtonTextBox1.LeftButtonItems.Add(repeatButtonElement)
        Dim checkBoxElement As RadCheckBoxElement = New RadCheckBoxElement()
        checkBoxElement.Text = "CheckBox"
        AddHandler checkBoxElement.CheckStateChanged, AddressOf checkBoxElement_CheckStateChanged
        Me.RadButtonTextBox1.RightButtonItems.Add(checkBoxElement)
    End Sub

    Private Sub checkBoxElement_CheckStateChanged(ByVal sender As Object, ByVal e As EventArgs)
        RadMessageBox.Show("RRadCheckBoxElement is toggled")
    End Sub

    Private Sub repeatButtonElement_Click(ByVal sender As Object, ByVal e As EventArgs)
        Console.WriteLine("RadRepeatButtonElement")
    End Sub

    Private Sub toggleButtonElement_ToggleStateChanged(ByVal sender As Object, ByVal args As StateChangedEventArgs)
        RadMessageBox.Show("RadToggleButtonElement.ToggleState is changed to " & args.ToggleState.ToString())
    End Sub

    Private Sub buttonElement_Click(ByVal sender As Object, ByVal e As EventArgs)
        RadMessageBox.Show("RadButtonElement is clicked")
    End Sub

    Private Sub RadForm1_Load(ByVal sender As Object, ByVal e As EventArgs)
        AddDifferentItems()
    End Sub

````

{{endregion}} 

# See Also

* [Design Time]({%slug winforms/editors/buttontextbox/populating-with-data/design-time%})

