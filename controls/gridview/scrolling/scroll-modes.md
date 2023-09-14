---
title: Scroll Modes
page_title: Scroll Modes - WinForms RadGridView Control
description: Learn about the different scroll modes in WinForms RadGridView.
slug: winforms-gridview-scrolling-scroll-modes
tags: scrolling
published: True
position: 1
previous_url: gridview-scrolling-scrolling-programmatically
---

# Scroll Modes

RadGridView provides three built-in scrolling modes, which allow you to manipulate the type of scrolling. This is controlled by the ScrollMode enumeration property which has the following entries:

## Smooth

This is the default value of the __ScrollMode__ property. Items in this mode are scrolled smoothly. 

![WinForms RadGridView ScrollMode](images/gridview-scrolling-scroll-modes001.GIF)

{{source=..\SamplesCS\GridView\Scrolling\Scrolling.cs region=ScrollMode_Smooth}} 
{{source=..\SamplesVB\GridView\Scrolling\Scrolling.vb region=ScrollMode_Smooth}} 

````C#

this.radGridView1.TableElement.RowScroller.ScrollMode = ItemScrollerScrollModes.Smooth;

````
````VB.NET

Me.RadGridView1.TableElement.RowScroller.ScrollMode = ItemScrollerScrollModes.Smooth

````

{{endregion}} 


## Discrete 

When the __Discrete__ mode is set, the items are scrolled one at a time. The scrollbar maximum is equal to the number of the items in the view. The scrollbar SmallChange is equal to 1 and each small increment or decrement will move the items in the view with one whole item.

![WinForms RadGridView ScrollMode](images/gridview-scrolling-scroll-modes002.GIF)

{{source=..\SamplesCS\GridView\Scrolling\Scrolling.cs region=ScrollMode_Discrete}} 
{{source=..\SamplesVB\GridView\Scrolling\Scrolling.vb region=ScrollMode_Discrete}} 

````C#

this.radGridView1.TableElement.RowScroller.ScrollMode = ItemScrollerScrollModes.Discrete;

````
````VB.NET

Me.RadGridView1.TableElement.RowScroller.ScrollMode = ItemScrollerScrollModes.Discrete

````

{{endregion}} 


## Deferred

In this mode, the content in the view is static until scrolling is completed.

![WinForms RadGridView ScrollMode](images/gridview-scrolling-scroll-modes003.GIF)

{{source=..\SamplesCS\GridView\Scrolling\Scrolling.cs region=ScrollMode_Deferred}} 
{{source=..\SamplesVB\GridView\Scrolling\Scrolling.vb region=ScrollMode_Deferred}} 

````C#

this.radGridView1.TableElement.RowScroller.ScrollMode = ItemScrollerScrollModes.Deferred;

````
````VB.NET

Me.RadGridView1.TableElement.RowScroller.ScrollMode = ItemScrollerScrollModes.Deferred

````

{{endregion}} 

When RadGridView's ScrollMode is set to Deferred, a small ToolTip appears when scrolling which previews the current scroll position. You could modify the text inside the ToolTip by subscribing to the __ToolTipTextNeeded__ event of the RowScroller. 
            
{{source=..\SamplesCS\GridView\Scrolling\Scrolling.cs region=Scroll_ToolTip}} 
{{source=..\SamplesVB\GridView\Scrolling\Scrolling.vb region=Scroll_ToolTip}} 


````C#

this.radGridView1.TableElement.RowScroller.ToolTipTextNeeded += RowScroller_ToolTipTextNeeded;


````
````VB.NET

AddHandler this.radGridView1.TableElement.RowScroller.ToolTipTextNeeded, AddressOff RowScroller_ToolTipTextNeeded;

````

{{endregion}}

In the event handler, you can get the text from the event arguments ToolTipText property and modify it per your needs.

{{source=..\SamplesCS\GridView\Scrolling\Scrolling.cs region=Scroll_ToolTip_CustomText}} 
{{source=..\SamplesVB\GridView\Scrolling\Scrolling.vb region=Scroll_ToolTip_CustomText}} 

````C#

private void RowScroller_ToolTipTextNeeded(object sender, Telerik.WinControls.ToolTipTextNeededEventArgs e)
{
    string[] toolTipTextArray = e.ToolTipText.Split();
    e.ToolTipText = "Current Scroll Position: " + toolTipTextArray[1];
}


````
````VB.NET

Private Sub RowScroller_ToolTipTextNeeded(ByVal sender As Object, ByVal e As Telerik.WinControls.ToolTipTextNeededEventArgs)
    Dim toolTipTextArray As String() = e.ToolTipText.Split()
    e.ToolTipText = "Current Scroll Position: " & toolTipTextArray(1)
End Sub


````

{{endregion}}
			
![WinForms RadGridView ScrollMode](images/gridview-scrolling-scroll-modes004.GIF)			
			
	

## See Also

 * [Scrolling Support]({%slug winforms/gridview/end-user-capabilities/scrolling-support%})
