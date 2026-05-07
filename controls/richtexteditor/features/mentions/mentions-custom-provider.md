---
title: Custom Mention Provider 
page_title: Custom Mention Provider - RadRichTextEditor
description: Check how to create a Custom Mention Provider in the RadRichTextEditor control.
slug: richtexteditor-features-mentions-custom-provider
tags: mentions, suggestions, autocomplete, automatic, docx, richtexteditor
published: True
position: 1 
---

# Using Custom Mention Provider

You can implement your own mention provider that enables you to visualize any object as a suggestion of the mentions drop-down list. You should perform the following steps to enable RadRichTextEditor to visualize suggestions for custom objects:

1\. Define the custom object (mention item)

This object should implement **INotifyPropertyChanged** so it can be later used in the data template for the mention item.

#### Example 1: Custom mention item

<snippet id='richtexteditor-mentions-mentionitem-cs' />
<snippet id='richtexteditor-mentions-mentionitem-vb' />



2\. Implement a custom mention provider

#### Example 2: Custom mention provider

This is done by inheriting the **MentionProviderBase&lt;T&gt;** class where **T** is the mention item. You should implement the **InsertItem** and **DetermineItemVisibility** methods. For more information about them, check the Customize the Insert Action and Customize the Filtering sections.

<snippet id='richtexteditor-mentions-organizationprovider-cs' />
<snippet id='richtexteditor-mentions-organizationprovider-vb' />



3\. Implement a data template for the custom mention provider

The usage of a custom object requires also a **DataTemplate** for it. This data template is used to instruct RadRichTextEditor how the item should be visualized in the mentions drop-down. You should set the **visualType** and **dataType** property of the DataTemplate to target the type of the mention item.

The mentions dialog internally uses a **RadListControl**. Hence, you can construct custom visual items if there is a specific design to be followed: [Custom Visual Items in ListControl]({%slug winforms/dropdown-listcontrol-and-checkeddropdownlist/listcontrol/customizing-items-(visual-appearance)%})

>note If more than one DataTemplate have the same DataType exception of type InvalidOperationException is thrown with a message “This collection expects unique data types for every DataTemplate!”.

#### Example 3: DataTemplate for the custom mention item

<snippet id='richtexteditor-mentions-visualmentionitem-cs' />
<snippet id='richtexteditor-mentions-visualmentionitem-vb' />



4\. Register the mention provider with its mention character and the new data template

After the prerequisites are completed, you should set the new members to the **MentionContext** property of RadRichTextEditor.

#### Add the provider and the data template to the MentionContext

<snippet id='richtexteditor-mentions-applyprovider-cs' />
<snippet id='richtexteditor-mentions-applyprovider-vb' />



#### Custom Mentions

![WinForms RadRichTextEditor Custom Mentions](images/richtexteditor-features-mentions-custom-provider001.gif)

## Customize the Insert Action

You can implement your own logic determining what and how it is being inserted into the document when the users select an item from the suggestions. You might need to customize the insert logic of **PersonMentionProvider** or provide the one for your custom provider. This is achieved by creating a custom implementation of a provider and overriding the **InsertItem** method. In the following you can see how the insert action of a **CustomPersonMentionProvider** is implemented - it inserts only the name of the person instead of adding the mention character and a hyperlink with the person's email.

#### Custom insert action

<snippet id='richtexteditor-mentions-custominsert-cs' />
<snippet id='richtexteditor-mentions-custominsert-vb' />



![WinForms RadRichTextEditor Customize Insert Action](images/richtexteditor-features-mentions-custom-provider002.gif)

## Customize the Filtering

After typing the mention character in the beginning of a span, the drop-down menu with suggestions shows. If the user continues to type, the list of suggestions is filtered. You can control how the items from the source collection are filtered by overriding the **DetermineItemVisibility** method in the concrete mention provider you are using.

The example shows how to implement filtering that matches only the items that start with the content inserted by the customer no matter of their casing.

#### Custom Filtering

<snippet id='richtexteditor-mentions-filtering-cs' />
<snippet id='richtexteditor-mentions-filtering-vb' />



![WinForms RadRichTextEditor Custom Filtering](images/richtexteditor-features-mentions-custom-provider003.gif)

## Using Multiple Mention Providers

Through the **MentionContext**, you can register as many providers as you need and invoke their lists of items through the associated mention character.

![WinForms RadRichTextEditor Multiple Mention Providers](images/richtexteditor-features-mentions-custom-provider004.gif)
