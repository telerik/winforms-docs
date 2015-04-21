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

{{source=..\SamplesCS\editors\AutoCompleteBox.cs region=SetText}}
	        private void SetText()
	        {
	            this.radAutoCompleteBox1.Text = "Germany;USA;Brazil;Bulgaria;Croatia;Serbia;";
	        }
	{{endregion}}



#### __[VB.NET] __

{{source=..\SamplesVB\editors\AutoCompleteBox.vb region=SetText}}
	    Private Sub SetText()
	        Me.RadAutoCompleteBox1.Text = "Germany;USA;Brazil;Bulgaria;Croatia;Serbia;"
	    End Sub
	{{endregion}}



Here is the output:![editors-autocompletebox-getting-started 001](images/editors-autocompletebox-getting-started001.png)

You can determine the visibility of the remove button by changing the __ShowRemoveButton__ property:

#### __[C#] __

{{source=..\SamplesCS\editors\AutoCompleteBox.cs region=ShowRemoveButton}}
	            this.radAutoCompleteBox1.ShowRemoveButton = false;
	{{endregion}}



#### __[VB.NET] __

{{source=..\SamplesVB\editors\AutoCompleteBox.vb region=ShowRemoveButton}}
	        Me.RadAutoCompleteBox1.ShowRemoveButton = False
	{{endregion}}

![editors-autocompletebox-getting-started 002](images/editors-autocompletebox-getting-started002.png)

To access the tokenized items use the __Items__ collection property of RadAutoCompleteBox:

#### __[C#] __

{{source=..\SamplesCS\editors\AutoCompleteBox.cs region=AccessToken}}
	            RadTokenizedTextItem thirdToken = radAutoCompleteBox1.Items[2];
	{{endregion}}



#### __[VB.NET] __

{{source=..\SamplesVB\editors\AutoCompleteBox.vb region=AccessToken}}
	        Dim thirdToken As RadTokenizedTextItem = RadAutoCompleteBox1.Items(2)
	{{endregion}}



Setting the __NullText__ property will display a custom string when the Text property is empty or null:![editors-autocompletebox-getting-started 003](images/editors-autocompletebox-getting-started003.png)
