---
title: Visual Data Representation
page_title: Visual Data Representation | RadListControl
description: RadListControl is the an alternative to the Microsoft ListBox control.
slug: winforms/dropdown-listcontrol-and-checkeddropdownlist/listcontrol/visual-data-representation
tags: visual,data,representation
published: True
position: 6
previous_url: dropdown-and-listcontrol-listcontrol-visual-data-representation
---

# Visual Data Representation

__RadListControl__ displays data through visual items of type __RadListVisualItem__. These visual items are mapped to the logical items associated with the data source (or manually created in unbound mode) by the virtualization mechanism employed in __RadListControl__. Since very few visual items are created initially and later mapped to different logical items a need arises for state synchronization between the visual and logical properties. Consider for example what happens when the user scrolls in some direction. The logical items shift under the visual items and the visual items need to respond by updating their text, image, text orientation etc. dynamically.
        
With the reasons for the state synchronization explained above, the rest of this article describes how to extend the visual items so that they automatically update their state properties when custom data items are used. Readers should become familiar with the article describing the [data items]({%slug winforms/dropdown-listcontrol-and-checkeddropdownlist/listcontrol/data-representation%}) first before continuing with this one.        

Assuming we have a data item that has an additional __Available__ property of type *bool*, we want our visual item to display a check box element in order to reflect the state of the property.

Here is how our visual item class could look like: 

#### Custom RadListVisualItem

{{source=..\SamplesCS\DropDownListControl\ListControl\ListControl1.cs region=customVisualItem}} 
{{source=..\SamplesVB\DropDownListControl\ListControl\ListControl1.vb region=customVisualItem}} 

````C#
public class CustomVisualItem : RadListVisualItem
{
    private RadCheckBoxElement checkBox = null;
    static CustomVisualItem()
    {
        RadListVisualItem.SynchronizationProperties.Add(CustomDataItem.AvailableProperty);
    }
    protected override void PropertySynchronized(RadProperty property)
    {
        base.PropertySynchronized(property);
        if (property == CustomDataItem.AvailableProperty)
        {
            this.checkBox.Checked = (bool)this.GetValue(property);
        }
    }
    protected override void CreateChildElements()
    {
        base.CreateChildElements();
        this.checkBox = new RadCheckBoxElement();
        this.Children.Add(checkBox);
    }
}

````
````VB.NET
Public Class CustomVisualItem
Inherits RadListVisualItem
    Private checkBox As RadCheckBoxElement = Nothing
    Shared Sub New()
        RadListVisualItem.SynchronizationProperties.Add(CustomDataItem.AvailableProperty)
    End Sub
    Protected Overrides Sub PropertySynchronized(ByVal [property] As RadProperty)
        MyBase.PropertySynchronized([property])
        If [property] Is CustomDataItem.AvailableProperty Then
            Me.checkBox.Checked = CBool(Me.GetValue([property]))
        End If
    End Sub
    Protected Overrides Sub CreateChildElements()
        MyBase.CreateChildElements()
        Me.checkBox = New RadCheckBoxElement()
        Me.Children.Add(checkBox)
    End Sub
End Class

````

{{endregion}} 
 
Two things are important in order for the synchronization to work. First, the base __RadListVisualItem__ has a static list of __RadProperty__ objects that are iterated over and for each property in the list, the property value is synchronized between the logical and the visual item. In order for the custom __Available__ property to take part in this synchronization it must be added to the static list which should be done in the static constructor of the __CustomVisualItem__. Second, after this property is added to the static property list, the base implementation will notify the inheritors who override the __PropertySynchronized__ method. In this method we can get the updated value for the custom property and update the visual elements accordingly. Again, the two necessary steps to perform are to add the new property to the property list and to override __PropertySynchronized__ so that we can update the UI. The property synchronization works only one way, from the data to the visuals. If the visuals are updated the programmer who created the new visual item is responsible for updating the data item. Every __RadListVisualItem__ has a __Data__ property that points to the data item. It is an interface reference and if a custom data item is provided, it must be explicitly cast to the correct type.        

The __CreateChildElements__ method is here in order for the code snippet to be runnable, this is by no means a full fledged example. The complete code of this exact scenario can be seen in the Examples application that is installed along with the Telerik UI for WinForms suite.
         
Once we have created a custom visual item, we need to subscribe to the __CreatingVisualListItem__ event of __RadListControl__ and create instances of __CustomVisualItem__. For example: 

#### Replace the default visual items 

{{source=..\SamplesCS\DropDownListControl\ListControl\ListControl1.cs region=creatingVisualListItem}} 
{{source=..\SamplesVB\DropDownListControl\ListControl\ListControl1.vb region=creatingVisualListItem}} 

````C#
void radListControl1_CreatingVisualListItem(object sender, CreatingVisualListItemEventArgs args)
{
    args.VisualItem = new CustomVisualItem();
}

````
````VB.NET
Private Sub radListControl1_CreatingVisualListItem(ByVal sender As Object, ByVal args As CreatingVisualListItemEventArgs)
    args.VisualItem = New CustomVisualItem()
End Sub

````

{{endregion}}  

This is all there is to it, with that infrastructure in place users can create just about any visual representation of the data that __RadListControl__ is bound to or filled with in unbound mode. 

# See Also

* [Overview]({%slug winforms/dropdown-listcontrol-and-checkeddropdownlist/listcontrol%})
* [Data Representation]({%slug winforms/dropdown-listcontrol-and-checkeddropdownlist/listcontrol/data-representation%})
