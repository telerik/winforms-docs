---
title: Right-To-Left Support
page_title: Right-To-Left Support - RadDropDownList
description: RadDropDownList fully supports right-to-left (RTL) language locales which is controlled by the RightToLeft property
slug: winforms/dropdown-listcontrol-and-checkeddropdownlist/dropdownlist/right-to-left-support
tags: right-to-left,support
published: True
position: 14
previous_url: dropdown-and-listcontrol-dropdownlist-right-to-left-support
---

# Right-To-Left Support
 
__RadDropDownList__ fully supports right-to-left (RTL) language locales. You can enable/disable the right-to-left support using __RightToLeft__ enumeration, which has the following members:

* __Yes__: Content is aligned from right to left.
            

* __No__: Content is aligned from left to right.
            

* __Inherit__: Direction will be determined by the parent control.
            
|RightToLeft.Yes|RightToLeft.No|
|----|----|
|![WinForms RadDropDownList RightToLeft Yes](images/dropdown-and-listcontrol-dropdownlist-right-to-left-support001.png)|![WinForms RadDropDownList RightToLeft No](images/dropdown-and-listcontrol-dropdownlist-right-to-left-support002.png)
 
#### Assigning RightToLeft 

{{source=..\SamplesCS\DropDownListControl\DropDownList\DropDownListRightToLeft.cs region=SetRightToLeft}} 
{{source=..\SamplesVB\DropDownListControl\DropDownList\DropDownListRightToLeft.vb region=SetRightToLeft}} 

````C#
this.radDropDownList1.RightToLeft = RightToLeft.Yes;

````
````VB.NET
Me.radDropDownList1.RightToLeft = RightToLeft.Yes

````

{{endregion}} 



