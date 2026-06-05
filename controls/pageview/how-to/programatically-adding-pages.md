---
title: Programatically adding pages
page_title: Programatically adding pages - RadPageView
description: RadPageView is yet another great addition to the Telerik UI for WinForms suite. As the name implies, this control layouts pages of subcontrols in different views.
slug: winforms/pageview/how-to/programatically-adding-pages
tags: programatically,adding,pages
published: True
position: 1
previous_url: pageview-how-to-programmatically-adding-pages
---

# Programmatically adding pages

This help article will demonstrate how __RadPageViewPages__ can be added to __RadPageView__ programmatically.
 
## Programmatically adding RadPageViewPages to RadPageView

Simply all that has to be done is to create an instance of __RadPageViewPage__, set the desired properties (i.e *Text*, *Font* etc), and add the instance to the **Pages** collection of __RadPageView__. The following code snippet demonstrated this behavior:

#### Adding pages

<snippet id='pageview-howto-addingpages-cs' />
<snippet id='pageview-howto-addingpages-vb' />



>note In case you need to add a page at a certain position, feel free to use the Pages.**Insert** method passing the desired position index and the **RadPageViewPage** instance you want to add. 

## Adding Controls to RadPageViewPage

Additionally, adding other controls to a specified __RadPageViewPage__ programmatically, can be achieved by simply adding the desired control to the **Controls** collection of the desired page, as shown in the next example:

#### Adding controls to a page

<snippet id='pageview-howto-addingcontrols-cs' />
<snippet id='pageview-howto-addingcontrols-vb' />



# See Also

* [Getting Started]({%slug winforms/pageview/getting-started%})	
* [Design Time]({%slug winforms/pageview/design-time%})	
