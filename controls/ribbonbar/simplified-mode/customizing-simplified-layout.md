---
title: Customizing Simplified Layout
page_title: Customizing Simplified Layout | RadRibbonBar
description:  
slug: winforms/ribbonbar/customizing-simplified-layout
tags: radribbonbar. simplified, mode
published: True
position: 1
---

# Customizing Simplified Layout

By default all items are automatically changed so they can fit in one row, this article shows how you can customize this process and change specific item property when the layout mode is switched to simplified.   


## Using the ItemStyleChanging event to change the DisplayStyle of RadGallery items

In this example you will use the __ItemStyleChanging__ event to change the display style of the gallery items, this way the gallery items will display only image when the simplified mode is enabled. The event arguments are giving the information about the mode that we are switching to. There is no need to reset the value when going back to the default mode, this is done automatically. For this example I am using the word inspired template where this simplified mode is enabled. The following snipped shows how you can change the style of the gallery item.

#### Using the ItemStyleChanging event


{{source=..\SamplesCS\RibbonBar\SimplifiedLayout\SimplifiedRibbonLayout.cs region=EventExample}} 
{{source=..\SamplesVB\RibbonBar\SimplifiedLayout\SimplifiedRibbonLayout.vb region=EventExample}}
 
 
````C#
private void RibbonBarElement_ItemStyleChanging(object sender, Telerik.WinControls.UI.ItemStyleChangingEventArgs args)
{
    if (args.Context == ItemStyleContext.DefaultToSimplified)
    {
        if (args.Element is RadGalleryItem && args.Property == RadButtonItem.DisplayStyleProperty)
        {
            args.NewValue = DisplayStyle.Image;
        }
    }
}

````
````VB.NET
Private Sub RibbonBarElement_ItemStyleChanging(ByVal sender As Object, ByVal args As Telerik.WinControls.UI.ItemStyleChangingEventArgs)
    If args.Context = ItemStyleContext.DefaultToSimplified Then
        If TypeOf args.Element Is RadGalleryItem AndAlso args.Property.Equals(RadButtonItem.DisplayStyleProperty) Then
            args.NewValue = DisplayStyle.Image
        End If
    End If
End Sub

````
{{endregion}}


The bellow image shows the difference.

![](images/customizing-simplified-layout001)

# See Also

*[Simplified Mode]({%slug %})
