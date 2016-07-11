---
title: Structure
page_title: Structure | UI for WinForms Documentation
description: RadBrowseEditor uses the Telerik Presentation Framework which enables rich experiences like advanced styling.
slug: winforms/editors/browseeditor/structure
tags: radbrowseeditor, structure
published: True
position: 1
---

# Structure

This article describes the inner structure and organization of the elements which build the __RadBrowseEditor__ control.

>caption Figure 1: RadBrowseEditor`s Element Hierarchy
![radbrowseeditor-structure 001](images/radbrowseeditor-structure001.png)

>caption Figure 2: RadBrowseEditor`s Structure
![radbrowseeditor structure 002](images/radbrowseeditor-structure002.png)

1. __RadBrowseEditorElement:__ Represents the main element of __RadBrowseEditor__.
1. __StackLayoutElement:__ Container element responsible for arranging the text box and the button.
1. __RadTextBoxItem:__ Text box handling user input.
1. __BrowseEditorButton:__ Button opening a dialog depending on the value of the __DialogType__ property.
1. __ImageAndTextLayoutPanel:__ Element containing the button`s image and/or text.

## See Also

* [Design Time]({%slug winforms/browseeditor/design-time/smart-tag%})
* [Getting Started]({%slug winforms/chartview/getting-started%})