---
title: Showing Thousand Separator in RadBindingNavigator for WinForms
description: Learn how to display a thousand separator in the RadBindingNavigator control for WinForms.
type: how-to
page_title: How to Show Thousand Separator in RadBindingNavigator for WinForms
slug: show-thousand-separator-radbindingnavigator-winforms
tags: bindingnavigator, winforms, radbindingnavigator, thousand separator
res_type: kb
---

## Environment

|Product Version|Product|Author|
|----|----|----|
|2023.3.1114|RadBindingNavigator for WinForms|[Dinko Krastev](https://www.telerik.com/blogs/author/dinko-krastev)|

# Description
In this tutorial, we will demonstrate how we can add a thousand separators in the current page input text box.

# Solution
To achieve this, you can subscribe to the `TextChanged` event of the `CurrentNumberTextBox` and modify the text by adding a thousand separator. Here's an example of how you can do this:

1. Subscribe to the `TextChanged` event of the `CurrentNumberTextBox`:
````C#

radBindingNavigator1.BindingNavigatorElement.CurrentNumberTextBox.TextChanged += BindingNavigatorElement_TextChanged;

````
````VB.NET

AddHandler radBindingNavigator1.BindingNavigatorElement.CurrentNumberTextBox.TextChanged, AddressOf BindingNavigatorElement_TextChanged;

````

2. In the event handler, add the logic to add a thousand separator to the text:
   
````C#
private void BindingNavigatorElement_TextChanged(object sender, EventArgs e)
{
    if (radBindingNavigator1.BindingNavigatorElement.CurrentNumberTextBox.Text == "" ||
        radBindingNavigator1.BindingNavigatorElement.CurrentNumberTextBox.Text == "0")
    {
        return;
    }

    decimal number;
    number = decimal.Parse(radBindingNavigator1.BindingNavigatorElement.CurrentNumberTextBox.Text, 
        System.Globalization.NumberStyles.Currency);
    radBindingNavigator1.BindingNavigatorElement.CurrentNumberTextBox.Text = number.ToString("#,#");
    radBindingNavigator1.BindingNavigatorElement.CurrentNumberTextBox.SelectionStart = 
        radBindingNavigator1.BindingNavigatorElement.CurrentNumberTextBox.Text.Length;
}

````
````VB.NET

Private Sub BindingNavigatorElement_TextChanged(ByVal sender As Object, ByVal e As EventArgs)
    If radBindingNavigator1.BindingNavigatorElement.CurrentNumberTextBox.Text = "" OrElse radBindingNavigator1.BindingNavigatorElement.CurrentNumberTextBox.Text = "0" Then
        Return
    End If

    Dim number As Decimal
    number = Decimal.Parse(radBindingNavigator1.BindingNavigatorElement.CurrentNumberTextBox.Text, System.Globalization.NumberStyles.Currency)
    radBindingNavigator1.BindingNavigatorElement.CurrentNumberTextBox.Text = number.ToString("#,#")
    radBindingNavigator1.BindingNavigatorElement.CurrentNumberTextBox.SelectionStart = radBindingNavigator1.BindingNavigatorElement.CurrentNumberTextBox.Text.Length
End Sub

````

3. Now the internal logic will not be able to parse the number with the thousand separator. To do that we will need to create a custom class that derives from RadBindingNavigator. Then we will need to override the `currentNumberTextBox_KeyDown` method to exclude the comma sign when the user presses the Enter key to navigate to the specified page.


````C#

public class MyBindingNavigatorControl : RadBindingNavigator
{
    protected override RadBindingNavigatorElement CreateNavigatorElement()
    {
        return new MyNavigatorElement();
    }
}

public class MyNavigatorElement : RadBindingNavigatorElement
{
    protected override void currentNumberTextBox_KeyDown(object sender, KeyEventArgs e)
    {
        if (e.KeyCode != Keys.Enter)
        {
            return;
        }

        int pageNumber = -1;
        var newText = this.CurrentNumberTextBox.Text.Replace(",", "");
        if (int.TryParse(newText, out pageNumber) && this.BindingSource != null)
        {
            if (pageNumber > 0 && pageNumber <= this.BindingSource.Count)
            {
                this.BindingSource.Position = pageNumber - 1;
                this.CurrentNumberTextBox.SelectAll();
            }
        }

        this.CurrentNumberTextBox.Text = (this.BindingSource.Position + 1).ToString();
        this.CurrentNumberTextBox.SelectAll();
    }
}

````
````VB.NET

Public Class MyBindingNavigatorControl
    Inherits RadBindingNavigator

    Protected Overrides Function CreateNavigatorElement() As RadBindingNavigatorElement
        Return New MyNavigatorElement()
    End Function
End Class

Public Class MyNavigatorElement
    Inherits RadBindingNavigatorElement

    Protected Overrides Sub currentNumberTextBox_KeyDown(ByVal sender As Object, ByVal e As KeyEventArgs)
        If e.KeyCode <> Keys.Enter Then
            Return
        End If

        Dim pageNumber As Integer = -1
        Dim newText = Me.CurrentNumberTextBox.Text.Replace(",", "")

        If Integer.TryParse(newText, pageNumber) AndAlso Me.BindingSource IsNot Nothing Then

            If pageNumber > 0 AndAlso pageNumber <= Me.BindingSource.Count Then
                Me.BindingSource.Position = pageNumber - 1
                Me.CurrentNumberTextBox.SelectAll()
            End If
        End If

        Me.CurrentNumberTextBox.Text = (Me.BindingSource.Position + 1).ToString()
        Me.CurrentNumberTextBox.SelectAll()
    End Sub
End Class

````

Note: The provided solution overrides the `currentNumberTextBox_KeyDown` method to handle the Enter key press and remove the comma sign before parsing the entered number.
