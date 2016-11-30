---
title: RadProperty
page_title: RadProperty | Telerik Presentation Framework
description: RadProperty encapsulates properties used in RadObject and support dependency properties.
slug: winforms/telerik-presentation-framework/class-hierarchy/radproperty
tags: radproperty
published: True
position: 2
previous_url: tpf-class-hierarchy-radproperty
---

# RadProperty


RadProperty encapsulates properties used in RadObject and supports [dependency properties]({%slug winforms/telerik-presentation-framework/dependency-properties%}). Each RadProperty has a name, type, owner and [metadata]({%slug winforms/telerik-presentation-framework/class-hierarchy/radpropertymetadata%}), i.e. information about the property. Each RadProperty has mechanisms for synchronizing with other properties in the system and for validating itself.

The RadProperty __AddOwner__ method associates the owner's type and potentially merges the owners metadata. 

The static RadProperty __Register__ method creates an instance of a RadProperty and is used to make the property known to TPF. Typically the property is then wrapped in a standard CLR style property as a convenience. In the wrapper property, RadObject methods __GetValue__ and __SetValue__ communicate with TPF. The example below shows a "phone" property being registered, and then being wrapped as a standard CLR string property. Note: The standard naming convention for dependency properties is <Property name> + "Property".

{{source=..\SamplesCS\TPF\ClassHierarchy\RadPropertyForm.cs region=RadProperty}} 
{{source=..\SamplesVB\TPF\ClassHierarchy\RadPropertyForm.vb region=RadProperty}} 

````C#
public static RadProperty PhoneProperty = RadProperty.Register(
    "Phone",
    typeof(string),
    typeof(BusinessCardElement),
    new RadElementPropertyMetadata("", ElementPropertyOptions.None));
public string Phone
{
    get
    {
        return (string)this.GetValue(PhoneProperty);
    }
    set
    {
        this.SetValue(PhoneProperty, value);
    }
}

````
````VB.NET
Public Shared PhoneProperty As RadProperty = RadProperty.Register("Phone", GetType(String), GetType(BusinessCardElement), New RadElementPropertyMetadata("", ElementPropertyOptions.None))
Public Property Phone() As String
    Get
        Return DirectCast(Me.GetValue(PhoneProperty), String)
    End Get
    Set(value As String)
        Me.SetValue(PhoneProperty, value)
    End Set
End Property

````

{{endregion}}

# See Also
* [BasePrimitive]({%slug winforms/telerik-presentation-framework/class-hierarchy/baseprimitive%})

* [Choosing an Ancestor Class]({%slug winforms/telerik-presentation-framework/class-hierarchy/choosing-an-ancestor-class%})

* [Class Hierarchy Overview]({%slug winforms/telerik-presentation-framework/class-hierarchy/class-hierarchy-overview%})

* [LayoutPanel]({%slug winforms/telerik-presentation-framework/class-hierarchy/layoutpanel%})

* [RadComponent, RadComponentElement]({%slug winforms/telerik-presentation-framework/class-hierarchy/radcomponent,-radcomponentelement%})

* [RadControl]({%slug winforms/telerik-presentation-framework/class-hierarchy/radcontrol%})

* [RadElement]({%slug winforms/telerik-presentation-framework/class-hierarchy/radelement%})

* [RadItem]({%slug winforms/telerik-presentation-framework/class-hierarchy/raditem%})

