---
title: Getting Started
page_title: Getting Started | UI for WinForms Documentation
description: RadCommandBar is a fully theme-able tool strip that provides unprecedented flexibility
slug: winforms/commandbar/getting-started
tags: commandbar
published: True
position: 3 
---

# Getting Started

* To add a __RadCommandBar__ to your form, drag a __RadCommandBar__ from the toolbox onto the surface of the form designer. In order to set up the __RadCommandBar__ at design time you can refer to the [Design time]({%slug  winforms/commandbar/design-time%}) help article.

* To programmatically add a __RadCommandBar__ to a form, create a new instance of a __RadCommandBar__, and add it to the form __Controls__ collection.


#### Adding a RadCommandBar at runtime 

{{source=..\SamplesCS\CommandBar\FloatingStrips.cs region=CreatingControl}} 
{{source=..\SamplesVB\CommandBar\FloatingStrips.vb region=CreatingControl}} 

````C#
RadCommandBar radCommandBar = new RadCommandBar();
this.Controls.Add(radCommandBar);
radCommandBar.Dock = DockStyle.Top;
CommandBarRowElement row1 = new CommandBarRowElement();
radCommandBar.Rows.Add(row1);
CommandBarStripElement strip1 = new CommandBarStripElement();
row1.Strips.Add(strip1);
CommandBarButton button1 = new CommandBarButton();
strip1.Items.Add(button1);

````
````VB.NET
Dim radCommandBar As New RadCommandBar()
Me.Controls.Add(radCommandBar)
radCommandBar.Dock = DockStyle.Top
Dim row1 As New CommandBarRowElement()
radCommandBar.Rows.Add(row1)
Dim strip1 As New CommandBarStripElement()
row1.Strips.Add(strip1)
Dim button1 As New CommandBarButton()
strip1.Items.Add(button1)

````

{{endregion}} 