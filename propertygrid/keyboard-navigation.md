---
title: Keyboard Navigation
page_title: Keyboard Navigation
description: Keyboard Navigation
slug: propertygrid-keyboard-navigation
tags: keyboard,navigation
published: True
position: 6
---

# Keyboard Navigation



## 

__RadPropertyGrid__ allows navigation through its item by using keyboard. Two scenarios are supported by default:
        

* Pressing a character will select consequently each item starting with this character

* Typing more than one character will navigate to the first item matching the typed string
            

To enable this functionality a single property setting is needed:
        

#### __[C#] __

{{source=..\SamplesCS\PropertyGrid\PropertyGridKeyboardNavigation.cs region=KeyboardSearchEnabled}}
	            radPropertyGrid1.KeyboardSearchEnabled = true;
	{{endregion}}



#### __[VB.NET] __

{{source=..\SamplesVB\PropertyGrid\PropertyGridKeyboardNavigation.vb region=KeyboardSearchEnabled}}
	        radPropertyGrid1.KeyboardSearchEnabled = True
	{{endregion}}



Another property of interest is the __KeyboardSearchResetInterval__. It is used to determine what time between keystrokes will be considered as typing.
          Consequent keystrokes with performed faster than the specified interval will be considered typing and once the time elapses, the matching item
          (if such) will be selected. Here is how to access this property to change the value of the timer:
        

#### __[C#] __

{{source=..\SamplesCS\PropertyGrid\PropertyGridKeyboardNavigation.cs region=KeyboardSearchResetInterval}}
	            radPropertyGrid1.KeyboardSearchResetInterval = 200;
	{{endregion}}



#### __[VB.NET] __

{{source=..\SamplesVB\PropertyGrid\PropertyGridKeyboardNavigation.vb region=KeyboardSearchResetInterval}}
	        radPropertyGrid1.KeyboardSearchResetInterval = 200
	{{endregion}}


