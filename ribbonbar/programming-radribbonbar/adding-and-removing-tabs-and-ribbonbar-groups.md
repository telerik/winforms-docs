---
title: Adding and Removing Tabs and RibbonBar Groups
page_title: Adding and Removing Tabs and RibbonBar Groups
description: Adding and Removing Tabs and RibbonBar Groups
slug: ribbonbar-programming-radribbonbar-adding-and-removing-tabs-and-ribbonbar-groups
tags: adding,and,removing,tabs,and,ribbonbar,groups
published: True
position: 0
---

# Adding and Removing Tabs and RibbonBar Groups



You can manipulate __RadRibbonBar__tabs and groups at run time by using the appropriate collections.
      

## Adding a Tab

To add a tab to __RadRibbonBar__, follow the four steps below:
        

1. Create a new __Telerik.WinControls.UI.RibbonTab__object and set its properties.
            

1. Call the __Add__ method of the __RadRibbonBar.CommandTabs__ collection, passing the __Telerik.WinControls.UI.RibbonTab__object.
            

#### __[C#] Adding a tab to RadRibbonBar__

{{region addingATab}}
	            RibbonTab tabItem1 = new RibbonTab();
	            tabItem1.Text = "Manage";
	            radRibbonBar1.CommandTabs.Add(tabItem1);
	{{endregion}}



#### __[VB.NET] Adding a tab to RadRibbonBar__

{{region addingATab}}
	        Dim TabItem1 As RibbonTab = New RibbonTab()
	        TabItem1.Text = "Manage"
	        RadRibbonBar1.CommandTabs.Add(TabItem1)
	{{endregion}}



To add multiple tabs in a single operation, call __AddRange__ method of __RadRibbonBar.CommandTabs__ collection.
        

#### __[C#] Adding multiple tabs to RadRibbonBar__

{{region addMultipleTabs}}
	            RibbonTab tabItem2 = new RibbonTab();
	            RibbonTab tabItem3 = new RibbonTab();
	            RibbonTab tabItem4 = new RibbonTab();
	            tabItem1.Text = "Write";
	            tabItem2.Text = "Layout";
	            tabItem3.Text = "Image";
	            radRibbonBar1.CommandTabs.AddRange(new RibbonTab[] { tabItem2, tabItem3, tabItem4 });
	{{endregion}}



#### __[VB.NET] Adding multiple tabs to RadRibbonBar__

{{region addMultipleTabs}}
	        Dim tabItem2 As New RibbonTab()
	        Dim tabItem3 As New RibbonTab()
	        Dim tabItem4 As New RibbonTab()
	        tabItem1.Text = "Write"
	        tabItem2.Text = "Layout"
	        tabItem3.Text = "Image"
	        RadRibbonBar1.CommandTabs.AddRange(New RibbonTab() {tabItem2, tabItem3, tabItem4})
	{{endregion}}



## Removing a Tab

To remove a tab, call the __Remove__ method of the __CommandTabs__ collection, specifying the __RibbonTab__that you wish to remove:
        

#### __[C#] Remove a tab from RadRibbonBar__

{{region removingATab}}
	            RibbonTab ribbonTab2 = (RibbonTab)radRibbonBar1.CommandTabs[1];
	            radRibbonBar1.CommandTabs.Remove(ribbonTab2);
	{{endregion}}



#### __[VB.NET] Remove a tab from RadRibbonBar__

{{region removingATab}}
	        Dim ribbonTab2 As RibbonTab = RadRibbonBar1.CommandTabs(1)
	        RadRibbonBar1.CommandTabs.Remove(ribbonTab2)
	{{endregion}}



To remove a tab by index, you can use __RemoveAt__ method:
        

#### __[C#] Remove a tab by index__

{{region removeATabByTabIndex}}
	            radRibbonBar1.CommandTabs.RemoveAt(1);
	{{endregion}}



#### __[VB.NET] Remove a tab by index__

{{region removeATabByTabIndex}}
	        RadRibbonBar1.CommandTabs.RemoveAt(1)
	{{endregion}}



## Adding a RibbonBar Group

To add a RibbonBar group to a tab, you follow the steps below:

1. Create a new __RadRibbonBarGroup__object and set its properties.
            

1. Call the __Add__ method of the __RadRibbonBar.CommandTab.Items__ collection, passing the __RadRibbonBarGroup__object.
            

#### __[C#] Create and setup new RadRibbonBarGroup__

{{region addingARibbonBarGroup}}
	            RadRibbonBarGroup radRibbonBarGroup1 = new RadRibbonBarGroup();
	            radRibbonBarGroup1.Text = "Options";
	            ((RibbonTab)radRibbonBar1.CommandTabs[0]).Items.Add(radRibbonBarGroup1);
	{{endregion}}



#### __[VB.NET] Create and setup new RadRibbonBarGroup__

{{region addingARibbonBarGroup}}
	        Dim RadRibbonBarGroup1 As RadRibbonBarGroup = New RadRibbonBarGroup()
	        RadRibbonBarGroup1.Text = "Options"
	        DirectCast(Me.RadRibbonBar1.CommandTabs(0), RibbonTab).Items.Add(RadRibbonBarGroup1)
	{{endregion}}



To add multiple RibbonBar groups in a single operation, call the __AddRange__ method of __RadRibbonBar.CommandTab.Items__ collection:
        

#### __[C#] Add multiple RadRibbonBarGroups__

{{region addingMultipleRibbonBarGroups}}
	            RadRibbonBarGroup radRibbonBarGroup2 = new RadRibbonBarGroup();
	            RadRibbonBarGroup radRibbonBarGroup3 = new RadRibbonBarGroup();
	            RadRibbonBarGroup radRibbonBarGroup4 = new RadRibbonBarGroup();
	            radRibbonBarGroup2.Text = "Options";
	            radRibbonBarGroup3.Text = "Text";
	            radRibbonBarGroup4.Text = "Alignment";
	            RibbonTab ribbonTab1 = (RibbonTab)radRibbonBar1.CommandTabs[0];
	            ribbonTab1.Items.AddRange(new Telerik.WinControls.RadItem[] { radRibbonBarGroup2, radRibbonBarGroup3, radRibbonBarGroup4});
	{{endregion}}



#### __[VB.NET] Add multiple RadRibbonBarGroups__

{{region addingMultipleRibbonBarGroups}}
	        Dim RadRibbonBarGroup2 As RadRibbonBarGroup = New RadRibbonBarGroup()
	        Dim RadRibbonBarGroup3 As RadRibbonBarGroup = New RadRibbonBarGroup()
	        Dim RadRibbonBarGroup4 As RadRibbonBarGroup = New RadRibbonBarGroup()
	        RadRibbonBarGroup2.Text = "Options"
	        RadRibbonBarGroup3.Text = "Text"
	        RadRibbonBarGroup4.Text = "Alignment"
	        Dim RibbonTab1 As RibbonTab = RadRibbonBar1.CommandTabs(0)
	        RibbonTab1.Items.AddRange(New Telerik.WinControls.RadItem() {RadRibbonBarGroup2, RadRibbonBarGroup3, RadRibbonBarGroup4})
	{{endregion}}



## Removing a RibbonBar Group

To remove a group, call the __Remove__ method of the __CommandTab.Items__ collection, specifying the __RadRibbonBarGroup__ that you wish to be removed:
        

#### __[C#] Remove RadRibbonBarGroup__

{{region removeARibbonBarGroup}}
	            RadRibbonBarGroup groupToRemove = ((RadRibbonBarGroup)(((RibbonTab) radRibbonBar1.CommandTabs[0]).Items[0]));
	            ((RibbonTab)radRibbonBar1.CommandTabs[0]).Items.Remove(groupToRemove);
	{{endregion}}



#### __[VB.NET] Remove RadRibbonBarGroup__

{{region removeARibbonBarGroup}}
	        Dim groupToRemove As RadRibbonBarGroup = DirectCast(RadRibbonBar1.CommandTabs(0), RibbonTab).Items(0)
	        DirectCast(RadRibbonBar1.CommandTabs(0), RibbonTab).Items.Remove(groupToRemove)
	{{endregion}}



To remove a group by index, you can use the __RemoveAt__ method:
        

#### __[C#] Remove RadRibbonBarGroup by index__

{{region removeAChunkByIndex}}
	            ((RibbonTab)radRibbonBar1.CommandTabs[0]).Items.RemoveAt(1);
	{{endregion}}



#### __[VB.NET] Remove RadRibbonBarGroup by index__

{{region removeAChunkByIndex}}
	        DirectCast(RadRibbonBar1.CommandTabs(0), RibbonTab).Items.RemoveAt(1)
	{{endregion}}


