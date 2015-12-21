---
title: Programatically adding pages
page_title: Programatically adding pages | UI for WinForms Documentation
description: Programatically adding pages
slug: winforms/pageview/how-to/programatically-adding-pages
tags: programatically,adding,pages
published: True
position: 1
---

# Programatically adding pages



## Programmatically adding RadPageViewPages to RadPageView

This help article will demonstrate __RadPageViewPages__can be added to __RadPageView__ programmatically. Simply all that has to be done is to create an instance of __RadPageViewPage__, set the desired properties (i.e *Text*, *Font* etc), and add the instance to the *Pages* collection of the __RadPageView__. The following code snippet demonstrated this behavior:

#### Adding pages

{{source=..\SamplesCS\PageView\HowTo.cs region=addingPages}} 
{{source=..\SamplesVB\PageView\HowTo.vb region=addingPages}} 

````C#
            
RadPageViewPage pageOne = new RadPageViewPage();
pageOne.Text = "First Page";
radPageView1.Pages.Add(pageOne);
            
RadPageViewPage pageTwo = new RadPageViewPage();
pageTwo.Text = "Second Page";
radPageView1.Pages.Add(pageTwo);

````
````VB.NET
Dim pageOne As New RadPageViewPage()
pageOne.Text = "First Page"
radPageView1.Pages.Add(pageOne)
Dim pageTwo As New RadPageViewPage()
pageTwo.Text = "Second Page"
radPageView1.Pages.Add(pageTwo)

````

{{endregion}} 

## Adding Controls to RadPageViewPage

Additionally adding other controls to a specified __RadPageViewPage__ programmatically, can be achieve by simply adding the desired coontrol to the Controls collection of the desired page, as shown in the next example:

#### Adding controls

{{source=..\SamplesCS\PageView\HowTo.cs region=addingControls}} 
{{source=..\SamplesVB\PageView\HowTo.vb region=addingControls}} 

````C#
            
RadButton button = new RadButton();
button.Text = "My Button";
pageOne.Controls.Add(button);

````
````VB.NET
Dim button As New RadButton()
button.Text = "My Button"
pageOne.Controls.Add(button)

````

{{endregion}} 