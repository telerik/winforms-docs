---
title: Keyboard Navigation 
page_title: Keyboard Navigation  | RadListView
description: Telerik RadListView control is created as a result of the concord of the powerful data layer used by RadGridView and RadListControl, together with the outstanding Telerik Presentation Framework.
slug: winforms/listview/keyboard-navigation-
tags: keyboard,navigation,
published: True
position: 12
previous_url: listview-keyboard-navigation
---

# Keyboard Navigation 

__RadListView__ allows navigation through its item by using keyboard. Two scenarios are supported by default:

* Pressing a character will select consequently each item starting with this character.

* Typing more than one character will navigate to the first item matching the typed string.
            

To enable this functionality a single property setting is needed:

#### Enable Keyboard Navigation

{{source=..\SamplesCS\ListView\ListViewKeyboardNavigation.cs region=KeyboardSearchEnabled}} 
{{source=..\SamplesVB\ListView\ListViewKeyboardNavigation.vb region=KeyboardSearchEnabled}} 

````C#
radListView1.KeyboardSearchEnabled = true;

````
````VB.NET
RadListView1.KeyboardSearchEnabled = True

````

{{endregion}}

Another property of interest is the __KeyboardSearchResetInterval__ property. It is used to determine what time between keystrokes will be considered as typing. Consequent keystrokes with performed faster than the specified interval will be considered typing and once the time elapses, the matching item (if such) will be selected. Here is how to access this property to change the value of the timer:

#### Specify the KeyboardSearchResetInterval

{{source=..\SamplesCS\ListView\ListViewKeyboardNavigation.cs region=KeyboardSearchResetInterval}} 
{{source=..\SamplesVB\ListView\ListViewKeyboardNavigation.vb region=KeyboardSearchResetInterval}} 

````C#
radListView1.KeyboardSearchResetInterval = 200;

````
````VB.NET
RadListView1.KeyboardSearchResetInterval = 200

````

{{endregion}} 



