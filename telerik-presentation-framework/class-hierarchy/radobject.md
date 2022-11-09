---
title: RadObject
page_title: RadObject - Telerik Presentation Framework
description: RadObject represents a base class for all elements that need to interact with the dependency property system.
slug: winforms/telerik-presentation-framework/class-hierarchy/radobject
tags: radobject
published: True
position: 4
previous_url: tpf-class-hierarchy-radobject
---

# RadObject

__RadObject__ represents a base class for all elements that need to interact with the dependency property system of Telerik Presentation Framework. For instance, __RadElement__ class derives from RadObject so it participates in that system. 

The main RadObject functionality is:

|Method|Description|
|-----|-----|
|__GetValue__|Retrieves the stored value for a given dependency property.|
|__SetValue__|Sets a value for a given dependency property.|
|__ResetValue__|Resets the value of a given dependency property. There are several reset options specified in *ValueResetFlags* enumeration.|
|__UpdateValue__|Forces a re-evaluation for a given property.|
|__GetValueSource__|Indicates the source of change.|
|__BindProperty__|Creates a binding between two properties.|
|__UnbindProperty__|Destroys an existing binding between two properties.|

>caution Dependency properties are registered using [RadProperty]({%slug winforms/telerik-presentation-framework/dependency-properties%}) class. Refer to this article if you need to create a dependency property but you need not create a custom object that will participate in the hierarchy of visual elements, i.e. custom fill primitive that does not derive from the existing one.
>

## Getting and Setting Values

__GetValue__ and __SetValue__ methods are used for getting and setting *local* values. Usually you have to define a CLR property for each declared __RadProperty__ whose setter calls __GetValue__ and whose getter calls __SetValue__:

{{source=..\SamplesCS\TPF\ClassHierarchy\RadObjectForm.cs region=MyRadObject}} 
{{source=..\SamplesVB\TPF\ClassHierarchy\RadObjectForm.vb region=MyRadObject}} 

````C#
internal class MyRadObject : RadObject
{
    public static readonly RadProperty HeightProperty =
    RadProperty.Register("Height",
    typeof(int),
    typeof(MyRadObject),
    new RadElementPropertyMetadata(1, ElementPropertyOptions.AffectsArrange | ElementPropertyOptions.AffectsMeasure));
    public int Height
    {
        get
        {
            return (int)this.GetValue(HeightProperty);
        }
        set
        {
            this.SetValue(HeightProperty, value);
        }
    }
}

````
````VB.NET
Friend Class MyRadObject
    Inherits RadObject
    Public Shared ReadOnly HeightProperty As RadProperty = RadProperty.Register("Height", GetType(Integer), GetType(MyRadObject), New RadElementPropertyMetadata(1, ElementPropertyOptions.AffectsArrange Or ElementPropertyOptions.AffectsMeasure))
    Public Property Height() As Integer
        Get
            Return CInt(Me.GetValue(HeightProperty))
        End Get
        Set(value As Integer)
            Me.SetValue(HeightProperty, value)
        End Set
    End Property
End Class

````

{{endregion}} 

## Resetting Values

If the value is inherited, the inherited value becomes the new value. Otherwise, the value is reset to the default value.

The code snippet below reset the value of the *HeightProperty* declared in *MyRadObject* class:

{{source=..\SamplesCS\TPF\ClassHierarchy\RadObjectForm.cs region=ResetValue}} 
{{source=..\SamplesVB\TPF\ClassHierarchy\RadObjectForm.vb region=ResetValue}} 

````C#
radObject.ResetValue(MyRadObject.HeightProperty);

````
````VB.NET
radObject.ResetValue(MyRadObject.HeightProperty)

````

{{endregion}} 

You can pass a second parameter to the __ResetValue__ method to specify a reset flag:

{{source=..\SamplesCS\TPF\ClassHierarchy\RadObjectForm.cs region=ValueResetFlags}} 
{{source=..\SamplesVB\TPF\ClassHierarchy\RadObjectForm.vb region=ValueResetFlags}} 

````C#
[Flags]
public enum ValueResetFlags
{
    None = 0,
    Inherited = 1,
    Binding = Inherited << 1,
    TwoWayBindingLocal = Binding << 1,
    Style = TwoWayBindingLocal << 1,
    Animation = Style << 1,
    Local = Animation << 1,
    DefaultValueOverride = Local << 1,
    All = Inherited | Binding | TwoWayBindingLocal | Style | Animation | Local | DefaultValueOverride
}

````
````VB.NET
<Flags> _
Public Enum ValueResetFlags
    None = 0
    Inherited = 1
    Binding = Inherited << 1
    TwoWayBindingLocal = Binding << 1
    Style = TwoWayBindingLocal << 1
    Animation = Style << 1
    Local = Animation << 1
    DefaultValueOverride = Local << 1
    All = Inherited Or Binding Or TwoWayBindingLocal Or Style Or Animation Or Local Or DefaultValueOverride
End Enum

````

{{endregion}} 

## Updating Values

Re-evaluates the property specified as a parameter. In the example below, the __HeightProperty__ is re-evaluated:

{{source=..\SamplesCS\TPF\ClassHierarchy\RadObjectForm.cs region=UpdateValue}} 
{{source=..\SamplesVB\TPF\ClassHierarchy\RadObjectForm.vb region=UpdateValue}} 

````C#
radObject.UpdateValue(MyRadObject.HeightProperty);

````
````VB.NET
radObject.UpdateValue(MyRadObject.HeightProperty)

````

{{endregion}} 

## Getting Value Source

The value source is the reason for the current value. __GetValueSource__ method returns the __ValueSource__ enumeration which describes the value sources:

{{source=..\SamplesCS\TPF\ClassHierarchy\RadObjectForm.cs region=ValueSource}} 
{{source=..\SamplesVB\TPF\ClassHierarchy\RadObjectForm.vb region=ValueSource}} 

````C#
public enum ValueSource : short
{
    /// <summary>
    /// Indicates that the reason is unknown.
    /// </summary>
    Unknown = 0,
    /// <summary>
    /// Indicates that the default value is set.
    /// </summary>
    DefaultValue,
    /// <summary>
    /// Indicates that the property changed is inherited.
    /// </summary>
    Inherited,
    /// <summary>
    /// An overriden default value, has higher priority than Default and Inherited source.
    /// </summary>
    DefaultValueOverride,
    /// <summary>
    /// Indicates that the reason for the property change is an applied theme.
    /// </summary>
    Style,
    /// <summary>
    /// Value is set locally through a CLR property setter.
    /// </summary>
    Local,
    /// <summary>
    /// Indicates that the reason for the property change is data binding.
    /// </summary>
    PropertyBinding,
    /// <summary>
    /// A value is applied through two-way binding.
    /// </summary>
    LocalFromBinding,
    /// <summary>
    /// Indicates that the reason for the property change is an animation effect.
    /// </summary>
    Animation,
}

````
````VB.NET
Public Enum ValueSource As Short
    ''' <summary>
    ''' Indicates that the reason is unknown.
    ''' </summary>
    Unknown = 0
    ''' <summary>
    ''' Indicates that the default value is set.
    ''' </summary>
    DefaultValue
    ''' <summary>
    ''' Indicates that the property changed is inherited.
    ''' </summary>
    Inherited
    ''' <summary>
    ''' An overriden default value, has higher priority than Default and Inherited source.
    ''' </summary>
    DefaultValueOverride
    ''' <summary>
    ''' Indicates that the reason for the property change is an applied theme.
    ''' </summary>
    Style
    ''' <summary>
    ''' Value is set locally through a CLR property setter.
    ''' </summary>
    Local
    ''' <summary>
    ''' Indicates that the reason for the property change is data binding.
    ''' </summary>
    PropertyBinding
    ''' <summary>
    ''' A value is applied through two-way binding.
    ''' </summary>
    LocalFromBinding
    ''' <summary>
    ''' Indicates that the reason for the property change is an animation effect.
    ''' </summary>
    Animation
End Enum

````

{{endregion}} 

## Binding and Unbinding Properties

Properties can be bound to other properties either one-way or two-way. The code snippet below binds two properties one-way: 

{{source=..\SamplesCS\TPF\ClassHierarchy\RadObjectForm.cs region=BindingProperties}} 
{{source=..\SamplesVB\TPF\ClassHierarchy\RadObjectForm.vb region=BindingProperties}} 

````C#
MyRadObject radObject1 = new MyRadObject();
MyRadObject radObject2 = new MyRadObject();
radObject2.BindProperty(MyRadObject.HeightProperty, radObject1,
MyRadObject.HeightProperty, PropertyBindingOptions.OneWay);

````
````VB.NET
Dim radObject1 As New MyRadObject()
Dim radObject2 As New MyRadObject()
radObject2.BindProperty(MyRadObject.HeightProperty, radObject1, MyRadObject.HeightProperty, PropertyBindingOptions.OneWay)

````

{{endregion}} 

If the binding is one way the source property is the one passed as a parameter to __BindProperty__ method.

## Values Precedence

Dependency properties are more advanced than the ordinary properties; they support advance features such as inheritance, and animation. For this reason, precedence rules have to be established. The table below summarizes the precedence rules from highest precedence to lowest:

|Value|Description|
|------|--------|
|__Coercion__|This is the final step when you can change the value of a given property. Please refer to the subsection below about implementing value coercion.|
|__Animation__|When the animation is finished, you can either store the last value or remove it and therefore allow previous modifiers to participate in value composition. This behavior is controlled by __AnimatedPropertySetting.RemoveAfterApply__ property. Note: Animation in TPF is controlled by __AnimatedPropertySetting__ object which value has different meanings depending on whether it is specified through __StyleSheet__ or not. If the latter is true, the animation is treated as *Style Setting* rather than animation.|
|__Binding__|Properties can be bound either one-way or two way. Refer to the subsection about binding below.|
|__Local Value__|The value that is set through a CLR Property Setter or the publicly exposed __SetValue__ method.|
|Style Setting|A __PropertySetting__ which comes from a StyleSheet.Note: it can be __AnimatedPropertySetting__ which will be treated as a Style rather than Animation.|
|__Inherited Value__|Value that comes from the current __InheritanceParent__ for the object. An inherited value is cached once retrieved and stored until caching is marked as Invalid. Note: Only properties, whose *metadata* object has the __IsInherited__ flag set, are target of inheritance.|
|__Default Value__|A default value can be set either using the dependency property *metadata* or by overriding the method __GetDefaultValue__ . Refer to the subsection below about default values.|

## Coercion

You need to override *CoerceValue* method:

{{source=..\SamplesCS\TPF\ClassHierarchy\RadObjectForm.cs region=Coercion}} 
{{source=..\SamplesVB\TPF\ClassHierarchy\RadObjectForm.vb region=Coercion}} 

````C#
protected override object CoerceValue(RadPropertyValue propVal, object baseValue)
{
    if (useCoercion && propVal.Property == MyRadObject.HeightProperty)
    {
        return 105; //coerce value which for the example sake is integer
    }
    return base.CoerceValue(propVal, baseValue);
}

````
````VB.NET
Protected Overrides Function CoerceValue(propVal As RadPropertyValue, baseValue As Object) As Object
    If useCoercion AndAlso propVal.Property.Equals(MyRadObject.HeightProperty) Then
        'coerce value which for the example sake is integer
        Return 105
    End If
    Return MyBase.CoerceValue(propVal, baseValue)
End Function

````

{{endregion}} 

In the example above, the value of the Height property is coerced to 105 (Height is an integer property). 

>note Coercion is seldom used.

## Binding

A property of one RadObject instance can be bound to a property of another RadObject instance. There are two binding models:

|||
| ---- | ---- |
|__One way__| Change in the source triggers change in the bound target property. The only exception to this case is that animation in progress can change the value of the bound property. |
|__Two ways__| Value change in one of the properties triggers change in the other. |

## Local Value

Local values are set and get using __SetValue__ and __GetValue__ methods:

{{source=..\SamplesCS\TPF\ClassHierarchy\RadObjectForm.cs region=MyRadObject}} 
{{source=..\SamplesVB\TPF\ClassHierarchy\RadObjectForm.vb region=MyRadObject}} 

````C#
internal class MyRadObject : RadObject
{
    public static readonly RadProperty HeightProperty =
    RadProperty.Register("Height",
    typeof(int),
    typeof(MyRadObject),
    new RadElementPropertyMetadata(1, ElementPropertyOptions.AffectsArrange | ElementPropertyOptions.AffectsMeasure));
    public int Height
    {
        get
        {
            return (int)this.GetValue(HeightProperty);
        }
        set
        {
            this.SetValue(HeightProperty, value);
        }
    }
}

````
````VB.NET
Friend Class MyRadObject
    Inherits RadObject
    Public Shared ReadOnly HeightProperty As RadProperty = RadProperty.Register("Height", GetType(Integer), GetType(MyRadObject), New RadElementPropertyMetadata(1, ElementPropertyOptions.AffectsArrange Or ElementPropertyOptions.AffectsMeasure))
    Public Property Height() As Integer
        Get
            Return CInt(Me.GetValue(HeightProperty))
        End Get
        Set(value As Integer)
            Me.SetValue(HeightProperty, value)
        End Set
    End Property
End Class

````

{{endregion}} 

## Default Value 

When you define a dependency property, you create a RadElementPropertyMetadata whose first constructor argument is default value:

{{source=..\SamplesCS\TPF\ClassHierarchy\RadObjectForm.cs region=DefaultValueProp}} 
{{source=..\SamplesVB\TPF\ClassHierarchy\RadObjectForm.vb region=DefaultValueProp}} 

````C#
public static readonly RadProperty HeightProperty =
    RadProperty.Register("Height",
    typeof(int),
    typeof(MyRadObject),
    new RadElementPropertyMetadata(1, ElementPropertyOptions.AffectsArrange | ElementPropertyOptions.AffectsMeasure));

````
````VB.NET
Public Shared ReadOnly HeightProperty As RadProperty = RadProperty.Register("Height", GetType(Integer), GetType(MyRadObject), New RadElementPropertyMetadata(1, ElementPropertyOptions.AffectsArrange Or ElementPropertyOptions.AffectsMeasure))

````

{{endregion}} 

In some rare cases, you might want to override the __GetDefaultValue__ and specify the default value there:

{{source=..\SamplesCS\TPF\ClassHierarchy\RadObjectForm.cs region=DefaultValueMethod}} 
{{source=..\SamplesVB\TPF\ClassHierarchy\RadObjectForm.vb region=DefaultValueMethod}} 

````C#
protected override object GetDefaultValue(RadPropertyValue propVal, object baseDefaultValue)
{
    if (propVal.Property == MyRadObject.HeightProperty)
    {
        return 2;
    }
    return base.GetDefaultValue(propVal, baseDefaultValue);
}

````
````VB.NET
Protected Overrides Function GetDefaultValue(propVal As RadPropertyValue, baseDefaultValue As Object) As Object
    If propVal.Property.Equals(MyRadObject.HeightProperty) Then
        Return 2
    End If
    Return MyBase.GetDefaultValue(propVal, baseDefaultValue)
End Function

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

