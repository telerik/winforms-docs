---
title: Adding and Removing Groups and Buttons
page_title: Adding and Removing Groups and Buttons | RadRibbonBar
description: You can manipulate groups and buttons of RadRibbonBar at run time by using the appropriate objects and collections.
slug: winforms/ribbonbar/programming-radribbonbar/adding-and-removing-groups-and-buttons
tags: adding,and,removing,groups,and,buttons
published: True
position: 1
previous_url: ribbonbar-programming-radribbonbar-adding-and-removing-groups-and-buttons
---

# Adding and Removing Groups and Buttons

You can manipulate groups and buttons of __RadRibbonBar__ at run time by using the appropriate objects and collections.

## Adding a Button

To add a button to a RibbonBar group of __RadRibbonBar__, create a new __RadButtonElement__ and add it to __RadRibbonBarGroup.Items__ collection:

#### Add a button to RadRibbonBarGroup

{{source=..\SamplesCS\RibbonBar\ProgrammingRadRibbonBar\AddingAndRemovingGroupsAndButtons.cs region=addingAButton}} 
{{source=..\SamplesVB\RibbonBar\ProgrammingRadRibbonBar\AddingAndRemovingGroupsAndButtons.vb region=addingAButton}} 

````C#
RadButtonElement radButtonElement1 = new RadButtonElement();
radButtonElement1.Text = "Button";
radRibbonBarGroup1.Items.Add(radButtonElement1);

````
````VB.NET
Dim RadButtonElement1 As RadButtonElement = New RadButtonElement()
RadButtonElement1.Text = "Button"
RadRibbonBarGroup1.Items.Add(RadButtonElement1)

````

{{endregion}}

Like the other collections, you can add multiple buttons in a single operation by using the appropriate __AddRange__ method:

#### Add multiple buttons to RadRibbonBarGroup

{{source=..\SamplesCS\RibbonBar\ProgrammingRadRibbonBar\AddingAndRemovingGroupsAndButtons.cs region=addMultipleButtons}} 
{{source=..\SamplesVB\RibbonBar\ProgrammingRadRibbonBar\AddingAndRemovingGroupsAndButtons.vb region=addMultipleButtons}} 

````C#
RadButtonElement radButtonElement2 = new RadButtonElement();
RadButtonElement radButtonElement3 = new RadButtonElement();
radButtonElement2.Text = "Second Button";
radButtonElement3.Text = "Third Button";
radRibbonBarGroup1.Items.AddRange(new RadItem[] { radButtonElement1, radButtonElement2 });

````
````VB.NET
Dim RadButtonElement2 As RadButtonElement = New RadButtonElement()
Dim RadButtonElement3 As RadButtonElement = New RadButtonElement()
RadButtonElement2.Text = "Second Button"
RadButtonElement3.Text = "Third Button"
RadRibbonBarGroup1.Items.AddRange(New RadItem() {RadButtonElement1, RadButtonElement2})

````

{{endregion}}

## Removing a Button

To remove a button, call the __Remove__ method of RadRibbonBarGroup.__Items__ collection, specifying the __RadButtonElement__ that you wish to be removed:

#### Remove a button from RadRibbonBarGroup

{{source=..\SamplesCS\RibbonBar\ProgrammingRadRibbonBar\AddingAndRemovingGroupsAndButtons.cs region=removeAButton}} 
{{source=..\SamplesVB\RibbonBar\ProgrammingRadRibbonBar\AddingAndRemovingGroupsAndButtons.vb region=removeAButton}} 

````C#
RadButtonElement elementToRemove = (RadItem)radRibbonBarGroup1.Items[1] as RadButtonElement;
radRibbonBarGroup1.Items.Remove(elementToRemove);

````
````VB.NET
Dim elementToRemove As RadButtonElement = RadRibbonBarGroup1.Items(1)
RadRibbonBarGroup1.Items.Remove(elementToRemove)

````

{{endregion}}

To remove a button by index, you can use the __RemoveAt__ method:

#### Remove a button from RadRibbonBarGroup by index

{{source=..\SamplesCS\RibbonBar\ProgrammingRadRibbonBar\AddingAndRemovingGroupsAndButtons.cs region=removeAButtonByIndex}} 
{{source=..\SamplesVB\RibbonBar\ProgrammingRadRibbonBar\AddingAndRemovingGroupsAndButtons.vb region=removeAButtonByIndex}} 

````C#
radRibbonBarGroup1.Items.RemoveAt(1);

````
````VB.NET
RadRibbonBarGroup1.Items.RemoveAt(1)

````

{{endregion}}

## Adding a Button Group with Buttons

To add a new button group with buttons to a RibbonBar group of __RadRibbonBar__, follow these steps:

1. Create a new __RadRibbonBarButtonGroup__ object and set its properties. 

1. Create a __RadButtonElement__ objects and set their properties. 

1. Add the __RadButtonElement__ objects to the RadButtonBarGroup.__Items__ collection. 

1. Add the __RadButtonBarGroup__ object to the RadRibbonBarGroup.__Items__ collection. 

#### Add button group with buttons

{{source=..\SamplesCS\RibbonBar\ProgrammingRadRibbonBar\AddingAndRemovingGroupsAndButtons.cs region=addingButtonGroupWithButtons}} 
{{source=..\SamplesVB\RibbonBar\ProgrammingRadRibbonBar\AddingAndRemovingGroupsAndButtons.vb region=addingButtonGroupWithButtons}} 

````C#
RadRibbonBarButtonGroup radRibbonBarButtonGroup1 = new RadRibbonBarButtonGroup();
radRibbonBarButtonGroup1.Orientation = System.Windows.Forms.Orientation.Horizontal;
radRibbonBarButtonGroup1.MinSize = new System.Drawing.Size(22, 22);
radRibbonBarButtonGroup1.ShowBorder = true;
RadButtonElement radButtonElement4 = new RadButtonElement();
RadButtonElement radButtonElement5 = new RadButtonElement();
radButtonElement4.Text = "Button One";
radButtonElement5.Text = "Button Two";
radRibbonBarButtonGroup1.Items.AddRange(new RadItem[] { radButtonElement1, radButtonElement2 });
radRibbonBarGroup1.Items.Add(radRibbonBarButtonGroup1);

````
````VB.NET
Dim RadRibbonBarButtonGroup1 As RadRibbonBarButtonGroup = New RadRibbonBarButtonGroup()
RadRibbonBarButtonGroup1.Orientation = System.Windows.Forms.Orientation.Horizontal
RadRibbonBarButtonGroup1.MinSize = New System.Drawing.Size(22, 22)
RadRibbonBarButtonGroup1.ShowBorder = True
Dim RadButtonElement4 As RadButtonElement = New RadButtonElement()
Dim RadButtonElement5 As RadButtonElement = New RadButtonElement()
RadButtonElement4.Text = "Button One"
RadButtonElement5.Text = "Button Two"
RadRibbonBarButtonGroup1.Items.AddRange(New RadItem() {RadButtonElement4, RadButtonElement5})
RadRibbonBarGroup1.Items.Add(RadRibbonBarButtonGroup1)

````

{{endregion}}

## See Also

* [Design Time]({%slug winforms/ribbonbar/design-time%})
* [Structure]({%slug winforms/ribbonbar/structure%})
* [Getting Started]({%slug winforms/ribbonbar/getting-started%})
* [Backstage View]({%slug winforms/ribbonbar/backstage-view/overview%})
* [Themes]({%slug winforms/ribbonbar/customizing-appearance/themes%}) 