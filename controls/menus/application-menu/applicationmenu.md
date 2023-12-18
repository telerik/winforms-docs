---
title: Overview
page_title: Overview - WinForms ApplicationMenu
description: WinForms ApplicationMenu is the Telerik counterpart of the application menu that displays controls used to perform actions on entire documents and forms, such as Save and Print. 
slug: winforms/menus/applicationmenu
tags: applicationmenu
published: True
position: 0
CTAControlName: ApplicationMenu
previous_url: menus-application-menu-overview
---

# WinForms ApplicationMenu Overview

**RadRibbonBar** combines the functions of menus, tab strips and tool bars to make an interface similar to those introduced in Microsoft Office 2007. With **RadRibbonBar** you can organize all of the functionality of your application into a single compact ribbon. When it is resized, the ribbon bar efficiently shows more or less details as space becomes available. If you use a Multiple Document Interface (MDI) layout, the ribbon bar will automatically manage the child forms.

{% if site.has_cta_panels == true %}
{% include cta-panel-overview.html %}
{% endif %}

**RadApplicationMenu** is the Telerik counterpart of the *application menu* that displays controls used to perform actions on entire documents and forms, such as `Save` and `Print`. It also provides a list of recent documents, access to form options, and the ability to exit the form or application.

![WinForms RadApplicationMenu Overview](images/menus-application-menu-overview001.png)

**RadApplicationMenu** is essentially a **RadDropDownButton** and has many of the same properties and design time interface as a **RadMenu**, i.e. same Smart Tag items, RadItem Collection Editor and the same RadItem types that may be added to the collection. In the case of **RadApplicationMenu**, there are three RadItem collections: **Items**, **RightColumnItems**, and **ButtonItems**. The RightColumnWidth property allows you to reserve extra screen real estate. **RadApplicationMenu** also has a **DisplayStyle** property that may be *Image* (default), *None*, *Text* and *ImageAndText*. Set the **Image** property to include your logo or whatever icon you want to use. The screenshot below shows all three collections populated and the **Image** set to a "world globe" icon.

![WinForms RadApplicationMenu Sample Overview](images/menus-application-menu-overview002.png)


## Telerik UI for WinForms Learning Resources
* [Telerik UI for WinForms ApplicationMenu Homepage](https://www.telerik.com/products/winforms/application-menu.aspx)
* [Get Started with the Telerik UI for WinForms ApplicationMenu]({%slug winforms/menus/applicationmenu/getting-started%})
* [Telerik UI for WinForms API Reference](https://docs.telerik.com/devtools/winforms/api/)
* [Getting Started with Telerik UI for WinForms Components]({%slug winforms/getting-started/first-steps%})
* [Telerik UI for WinForms Virtual Classroom (Training Courses for Registered Users)](https://learn.telerik.com/learn/course/external/view/elearning/17/TelerikUIforWinForms) 
* [Telerik UI for WinForms Forum](https://www.telerik.com/forums/winforms)
* [Telerik UI for WinForms Knowledge Base](https://docs.telerik.com/devtools/winforms/knowledge-base)


