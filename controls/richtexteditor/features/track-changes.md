---
title: Track Changes
page_title: Track Changes - WinForms RichTextEditor Control
description: Track Changes is a way for WinForms RichTextEditor to keep track of the changes you make to a document.
slug: winforms/richtexteditor-/features/track-changes
tags: track,changes
published: True
position: 9
previous_url: richtexteditor-features-track-changes
---

# Track Changes

__Track Changes__ is a way for __RadRichTextEditor__ to keep track of the changes you make to a document. You can then choose to accept or reject those changes.
      
* [Activating Track Changes](#activating-track-changes)

* [Customizing Changes Visualization](#customizing-change-visualization)

* [Changing Current User](#changing-current-user)

* [Navigating Through Changes](#navigating-through-changes)

## Activating Track Changes

You can activate change tracking through the __IsTrackChangesEnabled__ property of __RadRichTextEditor__:

{{source=..\SamplesCS\RichTextEditor\Features\TrackChanges.cs region=enable}} 
{{source=..\SamplesVB\RichTextEditor\Features\TrackChanges.vb region=enable}} 

````C#
this.radRichTextEditor1.IsTrackChangesEnabled = true;

````
````VB.NET
Me.radRichTextEditor1.IsTrackChangesEnabled = True

````

{{endregion}} 

When change tracking is enabled all changes made in the document will be tracked. This includes: 

* adding and removing text;

* formatting changes of the document elements;

* adding and removing images, hyperlinks, tables, etc.

![WinForms RadRichTextEditor Track Changes](images/richtexteditor-features-track-changes001.png)

## Customizing Change Visualization

As you can see tracked changes are visualized inside the rich text box with different colors. You can modify these colors by using the __TrackChangesOptions__ property of __RadRichTextEditor__. Here is for example how to customize the look of the tracked changes so that insertions are shown in green, deletions are shown in underlined orange and the vertical line indicating changes is red:
 
{{source=..\SamplesCS\RichTextEditor\Features\TrackChanges.cs region=options}} 
{{source=..\SamplesVB\RichTextEditor\Features\TrackChanges.vb region=options}} 

````C#
this.radRichTextEditor1.RichTextBoxElement.TrackChangesOptions.Insert.Decoration = RevisionDecoration.ColorOnly;
this.radRichTextEditor1.RichTextBoxElement.TrackChangesOptions.Insert.ColorOptions = new RevisionColor(Color.Green);
this.radRichTextEditor1.RichTextBoxElement.TrackChangesOptions.Delete.Decoration = RevisionDecoration.Underline;
this.radRichTextEditor1.RichTextBoxElement.TrackChangesOptions.Delete.ColorOptions = new RevisionColor(Color.Orange);
this.radRichTextEditor1.RichTextBoxElement.TrackChangesOptions.ChangedLinesDecorationColorOptions.ColorOptions = new RevisionColor(Color.Red);

````
````VB.NET
Me.radRichTextEditor1.RichTextBoxElement.TrackChangesOptions.Insert.Decoration = RevisionDecoration.ColorOnly
Me.radRichTextEditor1.RichTextBoxElement.TrackChangesOptions.Insert.ColorOptions = New RevisionColor(Color.Green)
Me.radRichTextEditor1.RichTextBoxElement.TrackChangesOptions.Delete.Decoration = RevisionDecoration.Underline
Me.radRichTextEditor1.RichTextBoxElement.TrackChangesOptions.Delete.ColorOptions = New RevisionColor(Color.Orange)
Me.radRichTextEditor1.RichTextBoxElement.TrackChangesOptions.ChangedLinesDecorationColorOptions.ColorOptions = New RevisionColor(Color.Red)

````

{{endregion}}  

The result is:

![WinForms RadRichTextEditor Change Visualization](images/richtexteditor-features-track-changes002.png)

## Changing Current User

All changes made while track changes are enabled are made on behalf of the current user. The current user can be changed by setting the __CurrentUser__ property of the __RadRichTextEditor__:
  
{{source=..\SamplesCS\RichTextEditor\Features\TrackChanges.cs region=user}} 
{{source=..\SamplesVB\RichTextEditor\Features\TrackChanges.vb region=user}} 

````C#
this.radRichTextEditor1.CurrentUser = new UserInfo("Group", "Boby", "Boby", "bobby@telerik.com");

````
````VB.NET
Me.radRichTextEditor1.CurrentUser = New UserInfo("Group", "Boby", "Boby", "bobby@telerik.com")

````

{{endregion}}  

Here is the result:

![WinForms RadRichTextEditor Current User](images/richtexteditor-features-track-changes003.gif)

By default, insert and delete changes by different authors will be displayed in different colors. This can be changed through the __TrackChangesOptions__ as described in the previous section.        

## Navigating through changes

**RadDocument** provides a set of methods for navigating and getting revisions – a special class containing information for a single change in the document. Revisions can be one of these 3 types: 

* Structure – Inserted or deleted text.

* Formatting – A change in the properties of a document element.

* Table – added or removed table rows.

All revision have a **RevisionInfo** object associated to them, which contains information about the user who made the change and the date and time it was made. Revisions in the document can be accessed and selected with the following methods of **RadDocument**:
 
{{source=..\SamplesCS\RichTextEditor\Features\TrackChanges.cs region=revision}} 
{{source=..\SamplesVB\RichTextEditor\Features\TrackChanges.vb region=revision}} 

````C#
Revision prev = document.GoToPreviousRevision();
Revision next = document.GoToNextRevision();
Revision getCurrent = document.GetCurrentRevision();
Revision getPrev = document.GetPreviousRevision();
Revision getNext = document.GetNextRevision();
IEnumerable<Revision> all = document.GetAllRevisions();

````
````VB.NET
Dim prev As Revision = document.GoToPreviousRevision()
Dim [next] As Revision = document.GoToNextRevision()
Dim getCurrent As Revision = document.GetCurrentRevision()
Dim getPrev As Revision = document.GetPreviousRevision()
Dim getNext As Revision = document.GetNextRevision()
Dim all As IEnumerable(Of Revision) = document.GetAllRevisions()

````

{{endregion}} 
