---
title: Keyboard Navigation
page_title: Keyboard Navigation - RadTreeView
description: This article shows how you can use the built-in keyboard navigation and search.
slug: winforms/treeview/usability/keyboard-navigation
tags: keyboard,navigation
published: True
position: 0
previous_url: treeview-usability-keyboard-navigation
---

# Keyboard Navigation and Search

## Keyboard Navigation

The user can navigate __RadTreeView__ and control TreeView modes using the following keyboard commands:  

|| __Key__ | __Description__ |
|-----|-----|-----|
|![WinForms RadTreeView treeview-usability-keyboard-navigation 001](images/treeview-usability-keyboard-navigation001.png)|Up Arrow|moves the selection up in the nodes hierarchy|
|![WinForms RadTreeView treeview-usability-keyboard-navigation 002](images/treeview-usability-keyboard-navigation002.png)|Down Arrow|moves the selection down in the nodes hierarchy|
|![WinForms RadTreeView treeview-usability-keyboard-navigation 003](images/treeview-usability-keyboard-navigation003.png)|Left Arrow|collapses a node|
|![WinForms RadTreeView treeview-usability-keyboard-navigation 004](images/treeview-usability-keyboard-navigation004.png)|Right Arrow|expands a node|
|![WinForms RadTreeView treeview-usability-keyboard-navigation 005](images/treeview-usability-keyboard-navigation005.png)|Enter|expands/collapses a node|
||Space|Toggles node's check box|
|![WinForms RadTreeView treeview-usability-keyboard-navigation 006](images/treeview-usability-keyboard-navigation006.png)|PageUp|scrolls the scrolling area up with one frame (page)|
|![WinForms RadTreeView treeview-usability-keyboard-navigation 007](images/treeview-usability-keyboard-navigation007.png)|PageDown|scrolls the scrolling area down with one frame (page)|
|![WinForms RadTreeView treeview-usability-keyboard-navigation 008](images/treeview-usability-keyboard-navigation008.png)|F2|activates tree's editor and places it on the selected node|
|![WinForms RadTreeView treeview-usability-keyboard-navigation 009](images/treeview-usability-keyboard-navigation009.png)|Esc|deactivates tree's editor|
|![WinForms RadTreeView treeview-usability-keyboard-navigation 010](images/treeview-usability-keyboard-navigation010.png)|Home|moves the selection to the first visible node|
|![WinForms RadTreeView treeview-usability-keyboard-navigation 011](images/treeview-usability-keyboard-navigation011.png)|End|moves the selection to the last visible node|

## Keyboard Search

RadTreeView allows navigation through the visible nodes by using keyboard. Two scenarios are supported by default:
        

* Pressing a character will select consequently each node starting with this character
            

* Typing more than one character will navigate to the first node matching the typed string 

![WinForms RadTreeView treeview-usability-keyboard-navigation 012](images/treeview-usability-keyboard-navigation012.gif)

To enable this functionality a single property setting is needed:

{{source=..\SamplesCS\TreeView\Usability1\TreeViewUsabilityKeyboardNavigation.cs region=KeyboardSearchEnabled}} 
{{source=..\SamplesVB\TreeView\Usability1\TreeViewUsabilityKeyboardNavigation.vb region=KeyboardSearchEnabled}} 

````C#
radTreeView1.KeyboardSearchEnabled = true;

````
````VB.NET
radTreeView1.KeyboardSearchEnabled = True

````

{{endregion}} 

Another property of interest is the __KeyboardSearchResetInterval__. It is used to determine what time between keystrokes will be considered as typing. Consequent keystrokes with performed faster than the specified interval will be considered typing and once the time elapses, the matching node (if such) will be selected. Here is how to access this property to change the value of the timer:

{{source=..\SamplesCS\TreeView\Usability1\TreeViewUsabilityKeyboardNavigation.cs region=KeyboardSearchResetInterval}} 
{{source=..\SamplesVB\TreeView\Usability1\TreeViewUsabilityKeyboardNavigation.vb region=KeyboardSearchResetInterval}} 

````C#
radTreeView1.TreeViewElement.KeyboardSearchResetInterval = 500;

````
````VB.NET
radTreeView1.KeyboardSearchResetInterval = 500

````

{{endregion}}

# See Also

* [Kinetic Scrolling]({%slug winforms/treeview/usability/kinetic-scrolling%})    
