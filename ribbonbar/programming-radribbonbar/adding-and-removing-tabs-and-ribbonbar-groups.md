---
title: Adding and Removing Tabs and RibbonBar Groups
page_title: Adding and Removing Tabs and RibbonBar Groups | UI for WinForms Documentation
description: Adding and Removing Tabs and RibbonBar Groups
slug: winforms/ribbonbar/programming-radribbonbar/adding-and-removing-tabs-and-ribbonbar-groups
tags: adding,and,removing,tabs,and,ribbonbar,groups
published: True
position: 0
---

# Adding and Removing Tabs and RibbonBar Groups

You can manipulate __RadRibbonBar__ tabs and groups at run time by using the appropriate collections.

## Adding a Tab

To add a tab to __RadRibbonBar__, follow the four steps below:

1. Create a new __Telerik.WinControls.UI.RibbonTab__ object and set its properties.

1. Call the __Add__ method of the __RadRibbonBar.CommandTabs__ collection, passing the __Telerik.WinControls.UI.RibbonTab__ object.

#### Adding a tab to RadRibbonBar

{{source=..\SamplesCS\RibbonBar\ProgrammingRadRibbonBar\AddingAndRemovingTabsAndRibbonBarGroups.cs region=addingATab}} 
{{source=..\SamplesVB\RibbonBar\ProgrammingRadRibbonBar\AddingAndRemovingTabsAndRibbonBarGroups.vb region=addingATab}} 

````C#
            RibbonTab tabItem1 = new RibbonTab();
            tabItem1.Text = "Manage";
            radRibbonBar1.CommandTabs.Add(tabItem1);
````
````VB.NET
        Dim TabItem1 As RibbonTab = New RibbonTab()
        TabItem1.Text = "Manage"
        RadRibbonBar1.CommandTabs.Add(TabItem1)
        '
````

{{endregion}}

To add multiple tabs in a single operation, call __AddRange__ method of __RadRibbonBar.CommandTabs__ collection.

#### Adding multiple tabs to RadRibbonBar

{{source=..\SamplesCS\RibbonBar\ProgrammingRadRibbonBar\AddingAndRemovingTabsAndRibbonBarGroups.cs region=addMultipleTabs}} 
{{source=..\SamplesVB\RibbonBar\ProgrammingRadRibbonBar\AddingAndRemovingTabsAndRibbonBarGroups.vb region=addMultipleTabs}} 

````C#
            RibbonTab tabItem2 = new RibbonTab();
            RibbonTab tabItem3 = new RibbonTab();
            RibbonTab tabItem4 = new RibbonTab();
            tabItem1.Text = "Write";
            tabItem2.Text = "Layout";
            tabItem3.Text = "Image";
            radRibbonBar1.CommandTabs.AddRange(new RibbonTab[] { tabItem2, tabItem3, tabItem4 });
````
````VB.NET
        Dim tabItem2 As New RibbonTab()
        Dim tabItem3 As New RibbonTab()
        Dim tabItem4 As New RibbonTab()
        tabItem1.Text = "Write"
        tabItem2.Text = "Layout"
        tabItem3.Text = "Image"
        RadRibbonBar1.CommandTabs.AddRange(New RibbonTab() {tabItem2, tabItem3, tabItem4})
        '
````

{{endregion}}

## Removing a Tab

To remove a tab, call the __Remove__ method of the __CommandTabs__ collection, specifying the __RibbonTab__ that you wish to remove:

#### Remove a Tab from RadRibbonBar

{{source=..\SamplesCS\RibbonBar\ProgrammingRadRibbonBar\AddingAndRemovingTabsAndRibbonBarGroups.cs region=removingATab}} 
{{source=..\SamplesVB\RibbonBar\ProgrammingRadRibbonBar\AddingAndRemovingTabsAndRibbonBarGroups.vb region=removingATab}} 

````C#
            RibbonTab ribbonTab2 = (RibbonTab)radRibbonBar1.CommandTabs[1];
            radRibbonBar1.CommandTabs.Remove(ribbonTab2);
````
````VB.NET
        Dim ribbonTab2 As RibbonTab = RadRibbonBar1.CommandTabs(1)
        RadRibbonBar1.CommandTabs.Remove(ribbonTab2)
        '
````

{{endregion}}

To remove a tab by index, you can use __RemoveAt__ method:

#### Remove a Tab by Index

{{source=..\SamplesCS\RibbonBar\ProgrammingRadRibbonBar\AddingAndRemovingTabsAndRibbonBarGroups.cs region=removeATabByTabIndex}} 
{{source=..\SamplesVB\RibbonBar\ProgrammingRadRibbonBar\AddingAndRemovingTabsAndRibbonBarGroups.vb region=removeATabByTabIndex}} 

````C#
            radRibbonBar1.CommandTabs.RemoveAt(1);
````
````VB.NET
        RadRibbonBar1.CommandTabs.RemoveAt(1)
        '
````

{{endregion}}

## Adding a RibbonBar Group

To add a RibbonBar group to a tab, you follow the steps below:

1. Create a new __RadRibbonBarGroup__ object and set its properties.
            

1. Call the __Add__ method of the __RadRibbonBar.CommandTab.Items__ collection, passing the __RadRibbonBarGroup__ object.

#### Create and Setup New RadRibbonBarGroup

{{source=..\SamplesCS\RibbonBar\ProgrammingRadRibbonBar\AddingAndRemovingTabsAndRibbonBarGroups.cs region=addingARibbonBarGroup}} 
{{source=..\SamplesVB\RibbonBar\ProgrammingRadRibbonBar\AddingAndRemovingTabsAndRibbonBarGroups.vb region=addingARibbonBarGroup}} 

````C#
            RadRibbonBarGroup radRibbonBarGroup1 = new RadRibbonBarGroup();
            radRibbonBarGroup1.Text = "Options";
            ((RibbonTab)radRibbonBar1.CommandTabs[0]).Items.Add(radRibbonBarGroup1);
````
````VB.NET
        Dim RadRibbonBarGroup1 As RadRibbonBarGroup = New RadRibbonBarGroup()
        RadRibbonBarGroup1.Text = "Options"
        DirectCast(Me.RadRibbonBar1.CommandTabs(0), RibbonTab).Items.Add(RadRibbonBarGroup1)
        '
````

{{endregion}}

To add multiple RibbonBar groups in a single operation, call the __AddRange__ method of __RadRibbonBar.CommandTab.Items__ collection:

#### Add Multiple RadRibbonBarGroups

{{source=..\SamplesCS\RibbonBar\ProgrammingRadRibbonBar\AddingAndRemovingTabsAndRibbonBarGroups.cs region=addingMultipleRibbonBarGroups}} 
{{source=..\SamplesVB\RibbonBar\ProgrammingRadRibbonBar\AddingAndRemovingTabsAndRibbonBarGroups.vb region=addingMultipleRibbonBarGroups}} 

````C#
            RadRibbonBarGroup radRibbonBarGroup2 = new RadRibbonBarGroup();
            RadRibbonBarGroup radRibbonBarGroup3 = new RadRibbonBarGroup();
            RadRibbonBarGroup radRibbonBarGroup4 = new RadRibbonBarGroup();
            radRibbonBarGroup2.Text = "Options";
            radRibbonBarGroup3.Text = "Text";
            radRibbonBarGroup4.Text = "Alignment";
            RibbonTab ribbonTab1 = (RibbonTab)radRibbonBar1.CommandTabs[0];
            ribbonTab1.Items.AddRange(new Telerik.WinControls.RadItem[] { radRibbonBarGroup2, radRibbonBarGroup3, radRibbonBarGroup4});
````
````VB.NET
        Dim RadRibbonBarGroup2 As RadRibbonBarGroup = New RadRibbonBarGroup()
        Dim RadRibbonBarGroup3 As RadRibbonBarGroup = New RadRibbonBarGroup()
        Dim RadRibbonBarGroup4 As RadRibbonBarGroup = New RadRibbonBarGroup()
        RadRibbonBarGroup2.Text = "Options"
        RadRibbonBarGroup3.Text = "Text"
        RadRibbonBarGroup4.Text = "Alignment"
        Dim RibbonTab1 As RibbonTab = RadRibbonBar1.CommandTabs(0)
        RibbonTab1.Items.AddRange(New Telerik.WinControls.RadItem() {RadRibbonBarGroup2, RadRibbonBarGroup3, RadRibbonBarGroup4})
        '
````

{{endregion}}

## Removing a RibbonBar Group

To remove a group, call the __Remove__ method of the __CommandTab.Items__ collection, specifying the __RadRibbonBarGroup__ that you wish to be removed:

#### Remove RadRibbonBarGroup

{{source=..\SamplesCS\RibbonBar\ProgrammingRadRibbonBar\AddingAndRemovingTabsAndRibbonBarGroups.cs region=removeARibbonBarGroup}} 
{{source=..\SamplesVB\RibbonBar\ProgrammingRadRibbonBar\AddingAndRemovingTabsAndRibbonBarGroups.vb region=removeARibbonBarGroup}} 

````C#
            RadRibbonBarGroup groupToRemove = ((RadRibbonBarGroup)(((RibbonTab) radRibbonBar1.CommandTabs[0]).Items[0]));
            ((RibbonTab)radRibbonBar1.CommandTabs[0]).Items.Remove(groupToRemove);
````
````VB.NET
        Dim groupToRemove As RadRibbonBarGroup = DirectCast(RadRibbonBar1.CommandTabs(0), RibbonTab).Items(0)
        DirectCast(RadRibbonBar1.CommandTabs(0), RibbonTab).Items.Remove(groupToRemove)
        '
````

{{endregion}}

To remove a group by index, you can use the __RemoveAt__ method:

#### Remove RadRibbonBarGroup by Index

{{source=..\SamplesCS\RibbonBar\ProgrammingRadRibbonBar\AddingAndRemovingTabsAndRibbonBarGroups.cs region=removeAChunkByIndex}} 
{{source=..\SamplesVB\RibbonBar\ProgrammingRadRibbonBar\AddingAndRemovingTabsAndRibbonBarGroups.vb region=removeAChunkByIndex}} 

````C#
            ((RibbonTab)radRibbonBar1.CommandTabs[0]).Items.RemoveAt(1);
````
````VB.NET
        DirectCast(RadRibbonBar1.CommandTabs(0), RibbonTab).Items.RemoveAt(1)
        '
````

{{endregion}}