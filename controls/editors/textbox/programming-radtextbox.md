---
title: Properties 
page_title: Properties - WinForms TextBox Control
description: Get familiar the most commonly used properties and events of WinForms RadTextBox.
slug: winforms/editors/textbox/programming-radtextbox
tags: programming,radtextbox
published: True
position: 3
previous_url: editors-textbox-programming-radtextbox
---

# Properties

__RadTextBox__ shares most of the properties of the standard Windows Forms text box, including:

|Property|Description|
|---|---|
|__BackColor__|Gets or sets the background color of the control.|
|__ForeColor__|Gets or sets the fore color of the text.|
|__Text__|Gets or sets the current text in the control.|
|__CharacterCasing__|specifies whether the user can type upper-case, lower-case, or both.|
|__MaxLength__|sets the maximum number of characters that can be typed into the control. |
|__MultiLine__|controls whether multiple lines of text can be displayed in the control. |
|__UseSystemPasswordChar__|Gets or sets a value indicating whether the text should appear as the default password character.|
|**ShowClearButton**|Gets or sets a value indicating whether the clear button is shown.|
|**NullText**|Gets or sets the text that is displayed when the textbox contains no text. |
|**ShowNullText**|Gets or sets a value indicating whether the null text will be shown when the control is focused and the text is empty.|
|**ShowEmbeddedLabel**|Gets or sets a value indicating whether the embedded label is shown.|
|**EmbeddedLabelText**|Gets or sets the text of the embedded label.|

## NullText

__RadTextBox__ has a **NullText** property that is not shared by the standard Windows Forms text box. This property specifies what text to be displayed when the control has no __Text__ value. 

>caption Figure 1: Using the null text.

![editors-textbox-programming-radtextbox 001](images/editors-textbox-programming-radtextbox001.png)

By default, when the control receives  focus, this text is automatically removed. This behavior can be controlled by the **ShowNullText** property. If it is set to *true* the **NullText** will be shown even when the text box is focused until you enter some text in the editor.

|ShowNullText=false|ShowNullText=true|
|----|----|
|![editors-textbox-programming-radtextbox 003](images/editors-textbox-programming-radtextbox003.gif)|![editors-textbox-programming-radtextbox 004](images/editors-textbox-programming-radtextbox004.gif)|

Since R1 2017 **RadTextBox** can show a clear button when there is some text in the editor. This is controlled by the **ShowClearButton** property.

![editors-textbox-programming-radtextbox 002](images/editors-textbox-programming-radtextbox002.gif)

## Embedded Labels

Since R2 2021 **RadTextBox** supports embedded labels. The embedded label shows a text in the text box field usually to indicate what text should the user enter in the text box. When **RadTextBox** gets focus the embedded label will go up, so the user can type in the text box field. The **ShowEmbeddedLabel** property controls whether the embedded label is shown. You can set the desired text by using the **EmbeddedLabelText** property.

#### Example 1: Setting the embedded label

{{source=..\SamplesCS\Editors\TextBox1.cs region=EmbeddedLabel}} 
{{source=..\SamplesVB\Editors\TextBox1.vb region=EmbeddedLabel}} 

````C#       
this.radTextBox1.ShowEmbeddedLabel = true;
this.radTextBox1.EmbeddedLabelText = "First Name";

````
````VB.NET
Me.RadTextBox1.ShowEmbeddedLabel = True
Me.RadTextBox1.EmbeddedLabelText = "First Name"

````

{{endregion}} 

![editors-textbox-programming-radtextbox 005](images/editors-textbox-programming-radtextbox005.gif)

**RadTextBoxElement** exposes the following useful properties related to embedded labels. You can access them through the **TextBoxElement** property:

* **EmbeddedLabel** - Gets an instance of the corresponding embedded label. 
* **RepositionEmbeddedLabel** - Gets or set a value to indicate whether to reposition the embedded label, when text box is empty.
* **EmbeddedLabelAnimationSpeed** - Gets or set the animation speed of the embedded label.
The speed is an integer between 1 and 10 (slowest) with default value 8.


# See Also

* [Design Time]({%slug winforms/editors/textbox/designtime%})
* [Structure]({%slug winforms/editors/textbox/control-element-structure%})
* [Adding Buttons to RadTextBox]({%slug winforms/editors/textbox/adding-buttons-to-radtextbox%})
* [Show Embedded Label for RadDropDownList]({%slug drop-down-list-embedded-label%})