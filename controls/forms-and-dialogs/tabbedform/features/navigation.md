---
title: Navigation
page_title: Navigation | RadTabbedForm
description:  RadTabbedForm allows to display tab items directly in the title bar  
slug: radtabbedform-navigation 
tags: radtabbedform
published: True
position: 3
---

## Navigation

When there is no enough space and not all tabs are visible, two buttons will appear. They will allow you to navigate trough the tabs and select the desired one. 

>caption Figure 1: Tabs Navigation.

![radtabbedform-navigation001](images/radtabbedform-navigation001.gif)

>tip The navigation appearance depends of the tabs count, their width and the available space.

If you set the __MinimumTabWidth__ it will affect when the navigation buttons appear as well.

#### Set MinTabWidth

{{source=..\SamplesCS\Forms And Dialogs\TabbedFormCode.cs region=SetMinWidth}} 
{{source=..\SamplesVB\Forms And Dialogs\TabbedFormCode.vb region=SetMinWidth}}
````C#
this.TabbedFormControl.MinimumTabWidth = 150;

````
````VB.NET
Me.TabbedFormControl.MinimumTabWidth = 150

```` 


{{endregion}} 

