---
title: Visual Data Representation
page_title: Visual Data Representation
description: Visual Data Representation
slug: dropdown-and-listcontrol-listcontrol-visual-data-representation
tags: visual,data,representation
published: True
position: 4
---

# Visual Data Representation



## 

RadListControl displays data through visual items of type RadListVisualItem. These visual items are mapped to the logical items associated with the data source (or manually created in unbound mode) by the virtualization mechanism employed in RadListControl. Since very few visual items are created initially and later mapped to different logical items a need arises for state synchronization between the visual and logical properties. Consider for example what happens when the user scrolls in some direction. The logical items shift under the visual items and the visual items need to respond by updating their text, image, text orientation etc. dynamically.
        

With the reasons for the state synchronization explained above, the rest of this article describes how to extend the visual items so that they automatically update their state properties when custom data items are used. Readers should become familiar with the article describing the data items first before continuing with this one.
        

Assuming we have a data item that has an additional Available property of type bool, we want our visual item to display a check box element in order to reflect the state of the property.

Here is how our visual item class could look like:
        

#### __[C#]__

{{region customVisualItem}}
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
	{{endregion}}



#### __[VB.NET]__

{{region customVisualItem}}
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
	{{endregion}}



Two things are important in order for the synchronization to work. First the base RadListVisualItem has a static list of RadProperty objects that are iterated over and for each property in the list, the property value is synchronized between the logical and the visual item. In order for the custom Available property to take part in this synchronization it must be added to the static list which should be done in the static constructor of the CustomVisualItem. Second, after this property is added to the static property list, the base implementation will notify the inheritors who override the PropertySynchronized method. In this method we can get the updated value for the custom property and update the visual elements accordingly. Again, the two necessary steps to perform are to add the new property to the property list and to override PropertySynchronized so that we can update the UI. The property synchronization works only one way, from the data to the visuals. If the visuals are updated the programmer who created the new visual item is responsible for updating the data item. Every RadListVisualItem has a Data property that points to the data item. It is an interface reference and if a custom data item is provided, it must be explicitly cast to the correct type.
        

The CreateChildElements method is here in order for the code snippet to be runnable, this is by no means a full fledged example. The complete code of this exact scenario can be seen in the Examples application that is installed along with the Telerik UI for WinForms suite.
        

Once we have created a custom visual item, we need to subscribe to the CreatingVisualListItem event of RadListControl and create instances of CustomVisualItem. For example:

#### __[C#]__

{{region creatingVisualListItem}}
	        void radListControl1_CreatingVisualListItem(object sender, CreatingVisualListItemEventArgs args)
	        {
	            args.VisualItem = new CustomVisualItem();
	        }
	{{endregion}}



#### __[VB.NET]__

{{region creatingVisualListItem}}
	    Private Sub radListControl1_CreatingVisualListItem(ByVal sender As Object, ByVal args As CreatingVisualListItemEventArgs)
	        args.VisualItem = New CustomVisualItem()
	    End Sub
	{{endregion}}



This is all there is to it, with that infrastructure in place users can create just about any visual representation of the data that RadListControl is bound to or filled with in unbound mode. 
