---
title: Showing Thousand Separator in RadBindingNavigator for WinForms
description: Learn how to display a thousand separator in the RadBindingNavigator control for WinForms.
type: how-to
page_title: How to Show Thousand Separator in RadBindingNavigator for WinForms
slug: show-thousand-separator-radbindingnavigator-winforms
tags: winforms, radbindingnavigator, thousand separator
res_type: kb
---

## Environment

|Product Version|Product|Author|
|----|----|----|
|2023.3.1114|UI for WinForms|[Dinko Krastev](https://www.telerik.com/blogs/author/dinko-krastev)|

# Description
I would like to display a thousand separator in the RadBindingNavigator control for WinForms. Currently, I have successfully added a thousand separator to the CountItem part, but I also want to include it in the PositionItem part where the user can enter a number to scroll to another row.

# Solution
To achieve this, you can subscribe to the `TextChanged` event of the `CurrentNumberTextBox` and modify the text by adding a thousand separator. Here's an example of how you can do this:

1. Subscribe to the `TextChanged` event of the `CurrentNumberTextBox`:
```csharp
radBindingNavigator1.BindingNavigatorElement.CurrentNumberTextBox.TextChanged += BindingNavigatorElement_TextChanged;
```

2. In the event handler, add the logic to add a thousand separator to the text:
```csharp
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
```

3. Override the `currentNumberTextBox_KeyDown` method to exclude the comma sign when the user presses the Enter key to navigate to the specified page:
```csharp
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
```

Note: The provided solution overrides the `currentNumberTextBox_KeyDown` method to handle the Enter key press and remove the comma sign before parsing the entered number.
