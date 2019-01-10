---
title: Accessing and Customizing Elements
page_title: Accessing and Customizing Elements | RadButtonTextBox
description: RadButtonTextBox is a derivative of **RadTextBox** which allows you to embed easily button elements on the left or right side of the text box.
slug: winforms/editors/buttontextbox/customizing-appearance
tags: buttontextbox, customize
published: True
position: 0
---

# Accessing and Customizing Elements
 
Accessing and customizing elements can be performed either at design time, or at run time. Before proceeding with this topic, it is recommended to get familiar with the [visual structure]({%slug winforms/editors/buttontextbox/structure%}) of **RadButtonTextBox**.
      

## Design time

You can access and modify the style for the different elements in the editable area of **RadButtonTextBox** by using the *Element hierarchy editor*.

>note In order to access the *Element hierarchy editor* select **RadButtonTextBox** and click the small arrow on the top right position in order to open the Smart Tag. Then, click the *Edit UI Elements*.


>caption Figure 1: Element hierarchy editor

![editors-buttontextbox-customizing-elements 001](images/editors-buttontextbox-customizing-elements001.png)

## Programmatically

You can customize the nested elements at run time as well:

>caption Figure 2: Customize elements

![editors-buttontextbox-customizing-elements 002](images/editors-buttontextbox-customizing-elements002.png)

#### Customize elements 

{{source=..\SamplesCS\Editors\ButtonTextBox.cs region=CustomizeElements}} 
{{source=..\SamplesVB\Editors\ButtonTextBox.vb region=CustomizeElements}} 

````C#
this.radButtonTextBox1.TextBoxElement.ForeColor = Color.Red;
this.radButtonTextBox1.TextBoxElement.BackColor = Color.Yellow;
RadButtonElement button = this.radButtonTextBox1.LeftButtonItems[0] as RadButtonElement;
button.Text = "BUL";
button.TextImageRelation = TextImageRelation.ImageBeforeText;
button.ButtonFillElement.BackColor = Color.Fuchsia;
button.ShowBorder = false;

````
````VB.NET
Me.RadButtonTextBox1.TextBoxElement.ForeColor = Color.Red
Me.RadButtonTextBox1.TextBoxElement.BackColor = Color.Yellow
Dim button As RadButtonElement = TryCast(Me.RadButtonTextBox1.LeftButtonItems(0), RadButtonElement)
button.Text = "BUL"
button.TextImageRelation = TextImageRelation.ImageBeforeText
button.ButtonFillElement.BackColor = Color.Fuchsia
button.ShowBorder = False

````

{{endregion}} 

