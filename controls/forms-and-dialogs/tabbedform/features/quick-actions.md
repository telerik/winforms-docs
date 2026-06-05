---
title: Quick Actions
page_title: Quick Actions - RadTabbedForm
description:  RadTabbedForm allows to display tab items directly in the title bar  
slug: radtabbedform-quick-actions
tags: radtabbedform
published: True
position: 0
---

# Quick Actions

By default you can add elements in front of or after the tabs. This can be done at design time or at run-time by accessing the **LeftItems** or **RightItems** collections. Any element inheriting the base **RadItem** class can be added to these collections. 

## Add Items at Design-Time

Buttons can be added directly after typing inside the element with text *Type here* in the Visual Studio designer. 

>caption Figure 1: Add buttons at design time.

![WinForms RadTabbedForm Design Time](images/radtabbedform-buttons001.gif)

Other predefined elements can be added using the Collection Editor of the Left/RightItems collections:

>caption Figure 2: Add Elements in Collection Editor

![WinForms RadTabbedForm Add Elements in Collection Editor](images/radtabbedform-buttons003.png)

## Add Items at Run-Time

You can add the buttons in the code behind as well. This is demonstrated in the following example.

#### Adding Buttons Programmatically

<snippet id='tabbedform-tabbedformcode-buttons-cs' />
<snippet id='tabbedform-tabbedformcode-buttons-vb' />



>caption Figure 1:Adding Buttons Programmatically.

![WinForms RadTabbedForm Adding Buttons Programmatically](images/radtabbedform-buttons002.png)
