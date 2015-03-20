---
title: Getting Started
page_title: Getting Started
description: Getting Started
slug: ribbonbar-getting-started
tags: getting,started
published: True
position: 0
---

# Getting Started



This section will help you in creating your first Telerik RadRibbonBar with some basic functionality (test formatting).

## Adding a Telerik RadRibbonBar to your form

1. Add a new __RadRibbonForm__ to your project or create one by
            changing the base class of a standard __Form__ to __RadRibbonForm__.

1. The __RadRibbonForm__'s designer automatically adds a __RadRibbonBar__ control on the form as shown below:![ribbonbar-getting-started 001](images/ribbonbar-getting-started001.png)

## Adding Tabs to the Telerik RadRibbonBar

1. Click __Add New Tab...__

1. Type __Edit__ and press __Enter__.
          A new __Add New Tab...__ button will be created to the right of the __Edit__ tab:![ribbonbar-getting-started 002](images/ribbonbar-getting-started002.png)

1. Add two more __TabItems__ with captions __Format__ and __Insert:__![ribbonbar-getting-started 003](images/ribbonbar-getting-started003.png)

## Adding Groups to a RadRibbonBar Tab

1. Click the __Format__ tab.

1. Click the __Add New Group...__ button to create a new __RadRibbonBarGroup__.
          You will be prompted to enter the __Text__ of the new group. Type *Font* and press
          Enter to confirm the typed __Text__. Do the whole operation again for another group, but set its __Text__ to
          *Paragraph*. These groups will become containers that you will use to group controls by the type of functionality they have in common:![ribbonbar-getting-started 004](images/ribbonbar-getting-started004.png)![ribbonbar-getting-started 005](images/ribbonbar-getting-started005.png)![ribbonbar-getting-started 006](images/ribbonbar-getting-started006.png)

##  Adding Controls to a Group

1. Click the __Font__ group *smart tag*.

1. Click on __Add Vertical Button Group__ link. This selection will place a red
            highlighted area inside of the __Font__ group:![ribbonbar-getting-started 007](images/ribbonbar-getting-started007.png)



1. Click __RadRibbonBarButtonGroup1__ smart tag.

1. Click on __Edit items__ link![ribbonbar-getting-started 008](images/ribbonbar-getting-started008.png)

1. Select __RadButtonElement__ from the *drop down* list:![ribbonbar-getting-started 009](images/ribbonbar-getting-started009.png)

Having done that a __RadButtonElement__ is added to the *button group* that you have just created in the previous steps.![ribbonbar-getting-started 010](images/ribbonbar-getting-started010.png)

## Formatting a RadButtonElement

1. Click __RadButtonElement1__, open its Smart Tag menu.

1. Open the drop-down menu of the __DisplayStyle__ property and select __Image__.

1. Open the drop-down menu of the __ImageIndex__ property and select __Italic__.

1. Close the Smart Tag menu.

1. In the Properties window of RadButtonElement1, change the __Name__ property
            from __RadButtonElement1__ to __TextItalic__.

## Prepare an ImageList to be Used in the Telerik RadRibbonBar

1. Drag a __WinForms ImageList__ component from the Toolbox to the form.
            In the area below the design surface, you will see __ImageList1__.

1. Using the Images Collection Editor, add images to represent __Italic__ text and __Bold__
            text to the ImageList. For more help with this task, see [How to: Add or Remove ImageList Images with the
            Designer in the Visual Studio 2005](http://msdn2.microsoft.com/en-us/library/ms233674.aspx) documentation.

1. In the Properties window of __RadRibbonBar1__, locate the ImageList property.
            Click the drop-down arrow and choose __ImageList1__ from the drop-down list.

## Add a RichTextBox

1. Drag a standard __WinForms RichTextBox__ control onto the form.

1. Open the __Smart Tag__ of the control and execute its __'Dock in parent container__:![ribbonbar-getting-started 011](images/ribbonbar-getting-started011.png)





## Add the Code 

#### __[C#] Make text bold or italic__

{{region BoldAndItalicText}}
	        private void TextBold_Click(object sender, EventArgs e)
	        {
	            if (richTextBox1.SelectionFont.Bold)     
	            {
	                richTextBox1.SelectionFont = new Font(richTextBox1.SelectionFont, richTextBox1.SelectionFont.Style & ~FontStyle.Bold); 
	            }     
	            else   
	            {
	                richTextBox1.SelectionFont = new Font(richTextBox1.SelectionFont, richTextBox1.SelectionFont.Style | FontStyle.Bold);   
	            }
	        }
	         
	        private void TextItalic_Click(object sender, EventArgs e)
	        {
	            if (richTextBox1.SelectionFont.Italic)     
	            {
	                richTextBox1.SelectionFont = new Font(richTextBox1.SelectionFont, richTextBox1.SelectionFont.Style & ~FontStyle.Italic);     
	            }     
	            else       
	            {
	                richTextBox1.SelectionFont = new Font(richTextBox1.SelectionFont, richTextBox1.SelectionFont.Style | FontStyle.Italic);
	            }
	        }
	{{endregion}}



#### __[VB.NET] Make text bold or italic__

{{region BoldAndItalicText}}
	    Private Sub TextBold_Click(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles TextBold.Click
	        If RichTextBox1.SelectionFont.Bold Then
	            RichTextBox1.SelectionFont = New Font(RichTextBox1.SelectionFont, RichTextBox1.SelectionFont.Style And Not FontStyle.Bold)
	        Else
	            RichTextBox1.SelectionFont = New Font(RichTextBox1.SelectionFont, RichTextBox1.SelectionFont.Style Or FontStyle.Bold)
	        End If
	    End Sub
	
	    Private Sub TextItalic_Click(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles TextItalic.Click
	        If RichTextBox1.SelectionFont.Italic Then
	            RichTextBox1.SelectionFont = New Font(RichTextBox1.SelectionFont, RichTextBox1.SelectionFont.Style And Not FontStyle.Italic)
	        Else
	            RichTextBox1.SelectionFont = New Font(RichTextBox1.SelectionFont, RichTextBox1.SelectionFont.Style Or FontStyle.Italic)
	        End If
	    End Sub
	{{endregion}}



## Additional C#  Code Instructions

It is necessary to link the Bold and Italic buttons to their event handler code.

1. Click the __Bold__ button.

1. In the Properties window, click the __Event__ code icon
            ( ![ribbonbar-getting-started 012](images/ribbonbar-getting-started012.png)).

1. Locate the Click Action event and select __TextBold_Click__ from its drop-down list.

1. Set the Italic button's Click Action to __TextItalic_Click__ in the same manner.

## Run the QuickStart

1. Press __F5__ to run the QuickStart.

1. Add some text into the text area.

1. Highlight some words and click on the __B__ button to change their font to bold. Click the __B__
            button again to remove the bold formatting. 
