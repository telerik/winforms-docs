---
title: Mentions Overview 
page_title: Mentions (Suggestions) | RadRichTextEditor
description: Check our Mentions (Suggestions) documentation article for the RadRichTextEditor control.
slug: richtexteditor-features-mentions-overview
tags: mentions, suggestions, autocomplete, automatic, docx, richtexteditor
published: True
position: 0 
---

# Mentions (Suggestions)

This functionality enables you to show a predefined list of suggestions to be inserted into the document content when the users type a specific mention character. You can use a default provider for the mentions or define a custom one that suits your needs. Multiple providers are also supported while they have different mention characters. The flexibility of the feature also provides you with the ability to control how the selected item is inserted, how it is visualized, and how it is being matched inside the same collection.

## Basics of Working with Mentions

To enable the functionality in RadRichTextEditor, you should define:

* mention items (these are the objects that will be visualized in the drop-down with the suggestions) 
* mention provider (keeps the collection of mention items and the associated mention character)
* mention template (responsible for visualizing a mention item; optional when using PersonMentionProvider)

Once you have the required objects, you should add the provider and the template to the **MentionContext** of RadRichTextEditor.

## Default PersonMentionProvider

For your convenience, RadRichTextEditor comes with a default implementation of a mention provider that enables you to list and choose persons. This provider:

* Works with **PersonMentionItem** objects that let you specify *Name*, *Mail* and *Image* for a person.
* Shows a list of all persons when the users type the **@** symbol and allows them to select the desired person. You can also choose a custom mention character for this provider. The items inside the list are automatically filtered if the users write after the mention character. 
* Comes with a predefined mention template that shows the image and the name of a person (as shown in **Figure 1**), so you shouldn't take care about that.
* Inserts the mention character and the item that has been selected as a hyperlink with the `PersonMentionItem.Name` as text and `PersonMentionItem.Mail` as URL.

#### Figure 1: Default mention template

![Default mention template](images/richtexteditor-features-mentions-overview001.png)

**Example 1** demonstrates how to populate data and enable the mentions using **PersonMentionProvider**.

>note Do not forget to add the namespace of the mention-related classes: Telerik.WinForms.Documents.UI.Mentions.

#### Example 1: Using PersonMentionProvider

{{source=..\SamplesCS\RichTextEditor\Features\Mentions.cs region=SetupDefaultProvider}} 
{{source=..\SamplesVB\RichTextEditor\Features\Mentions.vb region=SetupDefaultProvider}}

````C#

this.radRichTextEditor1.RichTextBoxElement.MentionContext.Providers.Clear();
this.radRichTextEditor1.RichTextBoxElement.MentionContext.Templates.Clear();
 
List<Telerik.WinForms.Documents.UI.Mentions.PersonMentionItem> personMentionItems = new List<PersonMentionItem>()
{
    new PersonMentionItem() { Name = "Nancy Anders", Mail = "mailto:nanders@somecompany.com",
        Image = Properties.Resources.nancy},

    new PersonMentionItem() { Name = "Andrew Taquería", Mail = "mailto:ataqueria@somecompany.com",
        Image = Properties.Resources.Andrew},

    new PersonMentionItem() { Name = "Janet Hardy", Mail = "mailto:jhardy@somecompany.com",
        Image = Properties.Resources.Janet} 
};

PersonMentionProvider personMentionProvider = new PersonMentionProvider();
personMentionProvider.ItemsSource = personMentionItems;

this.radRichTextEditor1.MentionContext.Providers.Add(personMentionProvider);

````
````VB.NET

Me.radRichTextEditor1.RichTextBoxElement.MentionContext.Providers.Clear()
Me.radRichTextEditor1.RichTextBoxElement.MentionContext.Templates.Clear()
Dim personMentionItems As List(Of Telerik.WinForms.Documents.UI.Mentions.PersonMentionItem) = New List(Of PersonMentionItem)() From {
    New PersonMentionItem() With {
        .Name = "Nancy Anders",
        .Mail = "mailto:nanders@somecompany.com",
        .Image = My.Resources.nancy
    },
    New PersonMentionItem() With {
        .Name = "Andrew Taquería",
        .Mail = "mailto:ataqueria@somecompany.com",
        .Image = My.Resources.Andrew
    },
    New PersonMentionItem() With {
        .Name = "Janet Hardy",
        .Mail = "mailto:jhardy@somecompany.com",
        .Image = My.Resources.Janet
    }
}
Dim personMentionProvider As PersonMentionProvider = New PersonMentionProvider()
personMentionProvider.ItemsSource = personMentionItems
Me.radRichTextEditor1.MentionContext.Providers.Add(personMentionProvider)

````

{{endregion}}

Figure 2 shows how the result of Example 1 would look like in RadRichTextEditor.

#### Figure 2: Default mention template

![richtexteditor-features-mentions-overview002](images/richtexteditor-features-mentions-overview002.gif)

## Custom Mention Character

The mention character is the character that triggers the visibility of the drop-down with suggestions when found at the start of a span. Each mention provider must be associated with a unique mention character. The character for the default mention provider is **@**. If you need to change the default character for a provider, you can use its **MentionCharacter** property.

{{source=..\SamplesCS\RichTextEditor\Features\Mentions.cs region=ChangeCharacter}} 
{{source=..\SamplesVB\RichTextEditor\Features\Mentions.vb region=ChangeCharacter}}

````C#

personMentionProvider.MentionCharacter = '#';

````
````VB.NET

personMentionProvider.MentionCharacter = "#"c

````

{{endregion}}

>note If the mention character applied to a mention provider is already used by another provider, an InvalidOperationException is thrown.

>note `Space` can't be applied as a mention character.

# See Also

* [Custom Mention Provider]({%slug richtexteditor-features-mentions-custom-provider%})
