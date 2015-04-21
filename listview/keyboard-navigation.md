---
title: Keyboard Navigation 
page_title: Keyboard Navigation 
description: Keyboard Navigation 
slug: listview-keyboard-navigation
tags: keyboard,navigation,
published: True
position: 10
---

# Keyboard Navigation 



## 

__RadListView__ allows navigation through its item by using keyboard. Two scenarios are supported by default:
        

* Pressing a character will select consequently each item starting with this character

* Typing more than one character will navigate to the first item matching the typed string
            

To enable this functionality a single property setting is needed:
        

#### __[C#] __

{{source=..\SamplesCS\ListView\ListViewKeyboardNavigation.cs region=KeyboardSearchEnabled}}
	            radListView1.KeyboardSearchEnabled = true;
	{{endregion}}



#### __[VB.NET] __

{{source=..\SamplesVB\ListView\ListViewKeyboardNavigation.vb region=KeyboardSearchEnabled}}
	        RadListView1.KeyboardSearchEnabled = True
	{{endregion}}



Another property of interest is the __KeyboardSearchResetInterval__. It is used to determine what time between keystrokes will be considered as typing. 
          Consequent keystrokes with performed faster than the specified interval will be considered typing and once the time elapses, the matching item 
          (if such) will be selected. Here is how to access this property to change the value of the timer:
        

#### __[C#] __

{{source=..\SamplesCS\ListView\ListViewKeyboardNavigation.cs region=KeyboardSearchResetInterval}}
	            radListView1.KeyboardSearchResetInterval = 200;
	{{endregion}}



#### __[VB.NET] __

{{source=..\SamplesVB\ListView\ListViewKeyboardNavigation.vb region=KeyboardSearchResetInterval}}
	        RadListView1.KeyboardSearchResetInterval = 200
	{{endregion}}


