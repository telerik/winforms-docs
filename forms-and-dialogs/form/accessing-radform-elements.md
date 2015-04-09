---
title: Accessing RadForm Elements
page_title: Accessing RadForm Elements
description: Accessing RadForm Elements
slug: forms-and-dialogs-form-accessing-radform-elements
tags: accessing,radform,elements
published: True
position: 1
---

# Accessing RadForm Elements



The __RadForm__is build of a __RadFormTitleBarElement__, __FormBorderPrimitive__ and a __FormImageBorderPrimitive.__The following topic demonstrates how to access and modify these elements.

## Accessing the RadTitleBarElement

The __RadFormTitleBarElement__ is positioned on the top of the form and its default behavior is to display an icon, text, and the minimize, maximize/restore and close buttons. You can access the __RadFormTitleBarElement__the following way:

#### __[C#] Accessing RadForm elements__

{{source=..\SamplesCS\Forms and Dialogs\Form1.cs region=accessingRadFormElements}}
	        void Form1_Shown(object sender, EventArgs e)
	        {
	            this.FormElement.TitleBar.MaximizeButton.Enabled = false;
	            this.FormElement.TitleBar.MinimizeButton.Enabled = false;
	        }
	{{endregion}}



#### __[VB.NET] Accessing RadForm elements__

{{source=..\SamplesVB\Forms and Dialogs\Form1.vb region=accessingRadFormElements}}
	    Private Sub Form1_Shown(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Shown
	        Me.FormElement.TitleBar.MaximizeButton.Enabled = False
	        Me.FormElement.TitleBar.MinimizeButton.Enabled = False
	    End Sub
	{{endregion}}



## Adding a new button to the title bar

You can easily extend the __RadFormTitleBarElement__'s functionality by adding new elements to its hierarchy. The following code snippet demonstrated how to add a __RadButtonElement__before the minimize button in the __RadFormTitleBarElement__:

#### __[C#] Adding new button to the title bar__

{{source=..\SamplesCS\Forms and Dialogs\Form1.cs region=addingNewButtonToTheTitleBar}}
	        void Form1_Load(object sender, EventArgs e)
	        {
	            RadButtonElement buttonElement = new RadButtonElement();
	            buttonElement.Text = "TitleBar Button";
	            this.FormElement.TitleBar.Children[2].Children[0].Children.Insert(0, buttonElement);
	        }
	{{endregion}}



#### __[VB.NET] Adding new button to the title bar__

{{source=..\SamplesVB\Forms and Dialogs\Form1.vb region=addingNewButtonToTheTitleBar}}
	    Private Sub Form1_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
	        Dim buttonElement As New RadButtonElement()
	        buttonElement.Text = "TitleBar Button"
	        Me.FormElement.TitleBar.Children(2).Children(0).Children.Insert(0, buttonElement)
	    End Sub
	{{endregion}}



## Accessing the Form Borders

The border of a __RadForm__control is composed of two border primitives which, together, define the visual appearance of the whole border: __FormBorderPrimitive__and __FormImageBorderPrimitive__.

## Accessing the FormBorderPrimitive

The __FormBorderPrimitive__represents the outer thin border that surrounds a __RadForm__control. The following code snippet demonstrates how to modify the color of this primitive:

#### __[C#] Accessing the FormBorderPrimitive__

{{source=..\SamplesCS\Forms and Dialogs\Form1.cs region=accessingTheFormBorderPrimitive}}
	            this.FormElement.Border.ForeColor = System.Drawing.Color.Green;
	{{endregion}}



#### __[VB.NET] Accessing the FormBorderPrimitive__

{{source=..\SamplesVB\Forms and Dialogs\Form1.vb region=accessingTheFormBorderPrimitive}}
	        Me.FormElement.Border.ForeColor = System.Drawing.Color.Green
	{{endregion}}



>The visual appearance of the border and also for the whole RadForm control can be designed in the Visual Style Builder.

## Accessing the FormImageBorderPrimitive

The __FormImageBorderPrimitive__represents the inner thick border that starts from the bottom-left corner of the title bar, surrounds the __RadForm__control and ends at the bottom-right corner of the title bar. The __FormImageBorderPrimitive__provides you with the possibility to define borders for your form which are built of images and thus achieve better look-and-feel for your form. Without images set, the __FormImageBorderPrimitive__paints as a one-color-border with the color set to the __BackColor__property of the primitive. 

The following code snippet demonstrates how to set the __BackColor__of the __FormImageBorderPrimitive__which is painted when no images are defined:

#### __[C#] Accessing the FormImageBorderPrimitive__

{{source=..\SamplesCS\Forms and Dialogs\Form1.cs region=accessingTheFormImageBorderPrimitive}}
	            this.FormElement.ImageBorder.BackColor = Color.Lime;
	{{endregion}}



#### __[VB.NET] Accessing the FormImageBorderPrimitive__

{{source=..\SamplesVB\Forms and Dialogs\Form1.vb region=accessingTheFormImageBorderPrimitive}}
	        Me.FormElement.ImageBorder.BackColor = Color.Lime
	{{endregion}}



>More information on how to use the __FormImageBorderPrimitive__can be found in the separate topic: [Using the FormImageBorderPrimitive]({%slug forms-and-dialogs-form-using-the-formimageborderprimitive%}).


