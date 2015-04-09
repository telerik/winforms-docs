---
title: RadObject
page_title: RadObject
description: RadObject
slug: tpf-class-hierarchy-radobject
tags: radobject
published: True
position: 4
---

# RadObject



RadObject represents a base class for all elements that need to interact with the dependency property system of Telerik Presentation Framework. For instance, RadElement class derives from RadObject so it participates in that system. 

The main RadObject functionality is:


<table><tr><td>GetValue</td><td>Retrieves the stored value for a given dependency property.</td></tr><tr><td>SetValue</td><td>Sets a value for a given dependency property.</td></tr><tr><td>ResetValue</td><td>
						Resets the value of a given dependency property. There are several reset options specified in <i>ValueResetFlags</i> enumeration.
					</td></tr><tr><td>UpdateValue</td><td>Forces a re-evaluation for a given property.</td></tr><tr><td>GetValueSource</td><td>Indicates the source of change.</td></tr><tr><td>BindProperty</td><td>Creates a binding between two properties.</td></tr><tr><td>UnbindProperty</td><td>Destroys an existing binding between two properties.</td></tr></table>



## Getting and Setting Values

__GetValue__and __SetValue__methods are used for getting and setting *local *values. Usually you have to define a CLR property for each declared __RadProperty__whose setter calls __GetValue__ and whose getter calls __SetValue__:
				

#### __[C#]__

{{source=..\SamplesCS\TPF\ClassHierarchy\RadObjectForm.cs region=MyRadObject}}
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
	{{endregion}}



#### __[VB]__

{{source=..\SamplesVB\TPF\ClassHierarchy\RadObjectForm.vb region=MyRadObject}}
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
	#End Region
	
	    Friend Class MyRadObject2
	        Inherits RadObject
	#Region "LocalValue"
	        Public Shared ReadOnly HeightProperty As RadProperty = RadProperty.Register("Height", GetType(Integer), GetType(MyRadObject), New RadElementPropertyMetadata(1, ElementPropertyOptions.AffectsArrange Or ElementPropertyOptions.AffectsMeasure))
	
	        Public Property Height() As Integer
	            Get
	                Return CInt(Me.GetValue(HeightProperty))
	            End Get
	            Set(value As Integer)
	                Me.SetValue(HeightProperty, value)
	            End Set
	        End Property
	#End Region
	
	        Private useCoercion As Boolean
	
	#Region "Coercion"
	        Protected Overrides Function CoerceValue(propVal As RadPropertyValue, baseValue As Object) As Object
	            If useCoercion AndAlso propVal.Property.Equals(MyRadObject.HeightProperty) Then
	                'coerce value which for the example sake is integer
	                Return 105
	            End If
	
	            Return MyBase.CoerceValue(propVal, baseValue)
	        End Function
	#End Region
	    End Class
	
	    Friend Class MyRadObject3
	        Inherits RadObject
	#Region "DefaultValueProp"
	        Public Shared ReadOnly HeightProperty As RadProperty = RadProperty.Register("Height", GetType(Integer), GetType(MyRadObject), New RadElementPropertyMetadata(1, ElementPropertyOptions.AffectsArrange Or ElementPropertyOptions.AffectsMeasure))
	#End Region
	
	#Region "DefaultValueMethod"
	        Protected Overrides Function GetDefaultValue(propVal As RadPropertyValue, baseDefaultValue As Object) As Object
	            If propVal.Property.Equals(MyRadObject.HeightProperty) Then
	                Return 2
	            End If
	
	            Return MyBase.GetDefaultValue(propVal, baseDefaultValue)
	        End Function
	#End Region
	
	    End Class
	
	#Region "ValueResetFlags"
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
	#End Region
	
	#Region "ValueSource"
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
	#End Region
	End Namespace



## Resetting Values

If the value is inherited, the inherited value becomes the new value. Otherwise, the value is reset to the default value.

The code snippet below reset the value of the *HeightProperty *declared in *MyRadObject *class:
				

#### __[C#]__

{{source=..\SamplesCS\TPF\ClassHierarchy\RadObjectForm.cs region=ResetValue}}
	            radObject.ResetValue(MyRadObject.HeightProperty);
	{{endregion}}



#### __[VB]__

{{source=..\SamplesVB\TPF\ClassHierarchy\RadObjectForm.vb region=ResetValue}}
	            radObject.ResetValue(MyRadObject.HeightProperty)
	            '#End Region
	
	            '#Region "UpdateValue"
	            radObject.UpdateValue(MyRadObject.HeightProperty)
	            '#End Region
	
	            '#Region "BindingProperties"
	            Dim radObject1 As New MyRadObject()
	            Dim radObject2 As New MyRadObject()
	            radObject2.BindProperty(MyRadObject.HeightProperty, radObject1, MyRadObject.HeightProperty, PropertyBindingOptions.OneWay)
	            '#End Region
	
	        End Sub
	    End Class
	
	#Region "MyRadObject"
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
	#End Region
	
	    Friend Class MyRadObject2
	        Inherits RadObject
	#Region "LocalValue"
	        Public Shared ReadOnly HeightProperty As RadProperty = RadProperty.Register("Height", GetType(Integer), GetType(MyRadObject), New RadElementPropertyMetadata(1, ElementPropertyOptions.AffectsArrange Or ElementPropertyOptions.AffectsMeasure))
	
	        Public Property Height() As Integer
	            Get
	                Return CInt(Me.GetValue(HeightProperty))
	            End Get
	            Set(value As Integer)
	                Me.SetValue(HeightProperty, value)
	            End Set
	        End Property
	#End Region
	
	        Private useCoercion As Boolean
	
	#Region "Coercion"
	        Protected Overrides Function CoerceValue(propVal As RadPropertyValue, baseValue As Object) As Object
	            If useCoercion AndAlso propVal.Property.Equals(MyRadObject.HeightProperty) Then
	                'coerce value which for the example sake is integer
	                Return 105
	            End If
	
	            Return MyBase.CoerceValue(propVal, baseValue)
	        End Function
	#End Region
	    End Class
	
	    Friend Class MyRadObject3
	        Inherits RadObject
	#Region "DefaultValueProp"
	        Public Shared ReadOnly HeightProperty As RadProperty = RadProperty.Register("Height", GetType(Integer), GetType(MyRadObject), New RadElementPropertyMetadata(1, ElementPropertyOptions.AffectsArrange Or ElementPropertyOptions.AffectsMeasure))
	#End Region
	
	#Region "DefaultValueMethod"
	        Protected Overrides Function GetDefaultValue(propVal As RadPropertyValue, baseDefaultValue As Object) As Object
	            If propVal.Property.Equals(MyRadObject.HeightProperty) Then
	                Return 2
	            End If
	
	            Return MyBase.GetDefaultValue(propVal, baseDefaultValue)
	        End Function
	#End Region
	
	    End Class
	
	#Region "ValueResetFlags"
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
	#End Region
	
	#Region "ValueSource"
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
	#End Region
	End Namespace



You can pass a second parameter to the __ResetValue__method to specify a reset flag:
				

#### __[C#]__

{{source=..\SamplesCS\TPF\ClassHierarchy\RadObjectForm.cs region=ValueResetFlags}}
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
	{{endregion}}



#### __[VB]__

{{source=..\SamplesVB\TPF\ClassHierarchy\RadObjectForm.vb region=ValueResetFlags}}
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
	#End Region
	
	#Region "ValueSource"
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
	#End Region
	End Namespace



## Updating Values

Re-evaluates the property specified as a parameter. In the example below, the HeightProperty is re-evaluated:

#### __[C#]__

{{source=..\SamplesCS\TPF\ClassHierarchy\RadObjectForm.cs region=UpdateValue}}
	            radObject.UpdateValue(MyRadObject.HeightProperty);
	{{endregion}}



#### __[VB]__

{{source=..\SamplesVB\TPF\ClassHierarchy\RadObjectForm.vb region=UpdateValue}}
	            radObject.UpdateValue(MyRadObject.HeightProperty)
	            '#End Region
	
	            '#Region "BindingProperties"
	            Dim radObject1 As New MyRadObject()
	            Dim radObject2 As New MyRadObject()
	            radObject2.BindProperty(MyRadObject.HeightProperty, radObject1, MyRadObject.HeightProperty, PropertyBindingOptions.OneWay)
	            '#End Region
	
	        End Sub
	    End Class
	
	#Region "MyRadObject"
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
	#End Region
	
	    Friend Class MyRadObject2
	        Inherits RadObject
	#Region "LocalValue"
	        Public Shared ReadOnly HeightProperty As RadProperty = RadProperty.Register("Height", GetType(Integer), GetType(MyRadObject), New RadElementPropertyMetadata(1, ElementPropertyOptions.AffectsArrange Or ElementPropertyOptions.AffectsMeasure))
	
	        Public Property Height() As Integer
	            Get
	                Return CInt(Me.GetValue(HeightProperty))
	            End Get
	            Set(value As Integer)
	                Me.SetValue(HeightProperty, value)
	            End Set
	        End Property
	#End Region
	
	        Private useCoercion As Boolean
	
	#Region "Coercion"
	        Protected Overrides Function CoerceValue(propVal As RadPropertyValue, baseValue As Object) As Object
	            If useCoercion AndAlso propVal.Property.Equals(MyRadObject.HeightProperty) Then
	                'coerce value which for the example sake is integer
	                Return 105
	            End If
	
	            Return MyBase.CoerceValue(propVal, baseValue)
	        End Function
	#End Region
	    End Class
	
	    Friend Class MyRadObject3
	        Inherits RadObject
	#Region "DefaultValueProp"
	        Public Shared ReadOnly HeightProperty As RadProperty = RadProperty.Register("Height", GetType(Integer), GetType(MyRadObject), New RadElementPropertyMetadata(1, ElementPropertyOptions.AffectsArrange Or ElementPropertyOptions.AffectsMeasure))
	#End Region
	
	#Region "DefaultValueMethod"
	        Protected Overrides Function GetDefaultValue(propVal As RadPropertyValue, baseDefaultValue As Object) As Object
	            If propVal.Property.Equals(MyRadObject.HeightProperty) Then
	                Return 2
	            End If
	
	            Return MyBase.GetDefaultValue(propVal, baseDefaultValue)
	        End Function
	#End Region
	
	    End Class
	
	#Region "ValueResetFlags"
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
	#End Region
	
	#Region "ValueSource"
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
	#End Region
	End Namespace



## Getting Value Source

The value source is the reason for the current value. __GetValueSource__method returns the __ValueSource__enumeration which describes the value sources:
				

#### __[C#]__

{{source=..\SamplesCS\TPF\ClassHierarchy\RadObjectForm.cs region=ValueSource}}
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
	{{endregion}}



#### __[VB]__

{{source=..\SamplesVB\TPF\ClassHierarchy\RadObjectForm.vb region=ValueSource}}
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
	#End Region
	End Namespace



## Binding and Unbinding Properties

Properties can be bound to other properties either one-way or two-way. The code snippet below binds two properties one-way: 

#### __[C#]__

{{source=..\SamplesCS\TPF\ClassHierarchy\RadObjectForm.cs region=BindingProperties}}
	            MyRadObject radObject1 = new MyRadObject();
	            MyRadObject radObject2 = new MyRadObject();
	            radObject2.BindProperty(MyRadObject.HeightProperty, radObject1,
	            MyRadObject.HeightProperty, PropertyBindingOptions.OneWay);
	{{endregion}}



#### __[VB]__

{{source=..\SamplesVB\TPF\ClassHierarchy\RadObjectForm.vb region=BindingProperties}}
	            Dim radObject1 As New MyRadObject()
	            Dim radObject2 As New MyRadObject()
	            radObject2.BindProperty(MyRadObject.HeightProperty, radObject1, MyRadObject.HeightProperty, PropertyBindingOptions.OneWay)
	            '#End Region
	
	        End Sub
	    End Class
	
	#Region "MyRadObject"
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
	#End Region
	
	    Friend Class MyRadObject2
	        Inherits RadObject
	#Region "LocalValue"
	        Public Shared ReadOnly HeightProperty As RadProperty = RadProperty.Register("Height", GetType(Integer), GetType(MyRadObject), New RadElementPropertyMetadata(1, ElementPropertyOptions.AffectsArrange Or ElementPropertyOptions.AffectsMeasure))
	
	        Public Property Height() As Integer
	            Get
	                Return CInt(Me.GetValue(HeightProperty))
	            End Get
	            Set(value As Integer)
	                Me.SetValue(HeightProperty, value)
	            End Set
	        End Property
	#End Region
	
	        Private useCoercion As Boolean
	
	#Region "Coercion"
	        Protected Overrides Function CoerceValue(propVal As RadPropertyValue, baseValue As Object) As Object
	            If useCoercion AndAlso propVal.Property.Equals(MyRadObject.HeightProperty) Then
	                'coerce value which for the example sake is integer
	                Return 105
	            End If
	
	            Return MyBase.CoerceValue(propVal, baseValue)
	        End Function
	#End Region
	    End Class
	
	    Friend Class MyRadObject3
	        Inherits RadObject
	#Region "DefaultValueProp"
	        Public Shared ReadOnly HeightProperty As RadProperty = RadProperty.Register("Height", GetType(Integer), GetType(MyRadObject), New RadElementPropertyMetadata(1, ElementPropertyOptions.AffectsArrange Or ElementPropertyOptions.AffectsMeasure))
	#End Region
	
	#Region "DefaultValueMethod"
	        Protected Overrides Function GetDefaultValue(propVal As RadPropertyValue, baseDefaultValue As Object) As Object
	            If propVal.Property.Equals(MyRadObject.HeightProperty) Then
	                Return 2
	            End If
	
	            Return MyBase.GetDefaultValue(propVal, baseDefaultValue)
	        End Function
	#End Region
	
	    End Class
	
	#Region "ValueResetFlags"
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
	#End Region
	
	#Region "ValueSource"
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
	#End Region
	End Namespace



If the binding is one way the source property is the one passed as a parameter to __BindProperty__method.
				

## Values Precedence

Dependency properties are more advanced than the ordinary properties; they support advance features such as inheritance, and animation. For this reason, precedence rules have to be established. The table below summarizes the precedence rules from highest precedence to lowest:


<table><tr><td>Coercion</td><td>This is the final step when you can change the value of a given property. Please refer to the subsection below about implementing value coercion.</td></tr><tr><td>Animation</td><td>

When the animation is finished, you can either store the last value or remove it and therefore allow previous modifiers to participate in value composition. This behavior is controlled by <b>AnimatedPropertySetting.RemoveAfterApply</b> property.
							

Note: Animation in TPF is controlled by <b>AnimatedPropertySetting </b>object which value has different meanings depending on whether it is specified through StyleSheet or not. If the latter is true, the animation is treated as <i>Style Setting </i>rather than animation.
							</td></tr><tr><td>Binding</td><td>Properties can be bound either one-way or two way. Refer to the subsection about binding below.</td></tr><tr><td>Local Value</td><td>The value that is set through a CLR Property Setter or the publicly exposed SetValue method.</td></tr><tr><td>Style Setting</td><td>

A <b>PropertySetting </b>which comes from a StyleSheet.
							

Note: it can be <b>AnimatedPropertySetting</b> which will be treated as a Style rather than Animation.
							</td></tr><tr><td>Inherited Value</td><td>

Value that comes from the current <b>InheritanceParent </b>for the object. An inherited value is cached once retrieved and stored until caching is marked as Invalid.
							

Note: Only properties, whose <i>metadata</i> object has the <b>IsInherited </b>flag set, are target of inheritance.
							</td></tr><tr><td>Default Value</td><td>
							A default value can be set either using the dependency property <i>metadata </i>or by overriding the method <b>GetDefaultValue</b>. Refer to the subsection below about default values.
						</td></tr></table>

## Coercion

You need to override *CoerceValue *method:
				

#### __[C#]__

{{source=..\SamplesCS\TPF\ClassHierarchy\RadObjectForm.cs region=Coercion}}
	        protected override object CoerceValue(RadPropertyValue propVal, object baseValue)
	        {
	            if (useCoercion && propVal.Property == MyRadObject.HeightProperty)
	            {
	                return 105; //coerce value which for the example sake is integer
	            }
	
	            return base.CoerceValue(propVal, baseValue);
	        }
	{{endregion}}



#### __[VB]__

{{source=..\SamplesVB\TPF\ClassHierarchy\RadObjectForm.vb region=Coercion}}
	        Protected Overrides Function CoerceValue(propVal As RadPropertyValue, baseValue As Object) As Object
	            If useCoercion AndAlso propVal.Property.Equals(MyRadObject.HeightProperty) Then
	                'coerce value which for the example sake is integer
	                Return 105
	            End If
	
	            Return MyBase.CoerceValue(propVal, baseValue)
	        End Function
	#End Region
	    End Class
	
	    Friend Class MyRadObject3
	        Inherits RadObject
	#Region "DefaultValueProp"
	        Public Shared ReadOnly HeightProperty As RadProperty = RadProperty.Register("Height", GetType(Integer), GetType(MyRadObject), New RadElementPropertyMetadata(1, ElementPropertyOptions.AffectsArrange Or ElementPropertyOptions.AffectsMeasure))
	#End Region
	
	#Region "DefaultValueMethod"
	        Protected Overrides Function GetDefaultValue(propVal As RadPropertyValue, baseDefaultValue As Object) As Object
	            If propVal.Property.Equals(MyRadObject.HeightProperty) Then
	                Return 2
	            End If
	
	            Return MyBase.GetDefaultValue(propVal, baseDefaultValue)
	        End Function
	#End Region
	
	    End Class
	
	#Region "ValueResetFlags"
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
	#End Region
	
	#Region "ValueSource"
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
	#End Region
	End Namespace



In the example above, the value of the Height property is coerced to 105 (Height is an integer property). 

Note: Coercion is seldom used.

## Animation



## Binding

A property of one RadObject instance can be bound to a property of another RadObject instance. There are two binding models:


<table><tr><td>One way </td><td>
							Change in the source triggers change in the bound target property. The only exception to this case is that animation in progress can change the value of the bound property.
						</td></tr><tr><td>Two ways </td><td>
							Value change in one of the properties triggers change in the other.
						</td></tr></table>

## Local Value

Local values are set and get using __SetValue__and __GetValue__methods:
				

#### __[C#]__

{{source=..\SamplesCS\TPF\ClassHierarchy\RadObjectForm.cs region=MyRadObject}}
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
	{{endregion}}



#### __[VB]__

{{source=..\SamplesVB\TPF\ClassHierarchy\RadObjectForm.vb region=MyRadObject}}
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
	#End Region
	
	    Friend Class MyRadObject2
	        Inherits RadObject
	#Region "LocalValue"
	        Public Shared ReadOnly HeightProperty As RadProperty = RadProperty.Register("Height", GetType(Integer), GetType(MyRadObject), New RadElementPropertyMetadata(1, ElementPropertyOptions.AffectsArrange Or ElementPropertyOptions.AffectsMeasure))
	
	        Public Property Height() As Integer
	            Get
	                Return CInt(Me.GetValue(HeightProperty))
	            End Get
	            Set(value As Integer)
	                Me.SetValue(HeightProperty, value)
	            End Set
	        End Property
	#End Region
	
	        Private useCoercion As Boolean
	
	#Region "Coercion"
	        Protected Overrides Function CoerceValue(propVal As RadPropertyValue, baseValue As Object) As Object
	            If useCoercion AndAlso propVal.Property.Equals(MyRadObject.HeightProperty) Then
	                'coerce value which for the example sake is integer
	                Return 105
	            End If
	
	            Return MyBase.CoerceValue(propVal, baseValue)
	        End Function
	#End Region
	    End Class
	
	    Friend Class MyRadObject3
	        Inherits RadObject
	#Region "DefaultValueProp"
	        Public Shared ReadOnly HeightProperty As RadProperty = RadProperty.Register("Height", GetType(Integer), GetType(MyRadObject), New RadElementPropertyMetadata(1, ElementPropertyOptions.AffectsArrange Or ElementPropertyOptions.AffectsMeasure))
	#End Region
	
	#Region "DefaultValueMethod"
	        Protected Overrides Function GetDefaultValue(propVal As RadPropertyValue, baseDefaultValue As Object) As Object
	            If propVal.Property.Equals(MyRadObject.HeightProperty) Then
	                Return 2
	            End If
	
	            Return MyBase.GetDefaultValue(propVal, baseDefaultValue)
	        End Function
	#End Region
	
	    End Class
	
	#Region "ValueResetFlags"
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
	#End Region
	
	#Region "ValueSource"
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
	#End Region
	End Namespace



## Default Value 

When you define a dependency property, you create a RadElementPropertyMetadata whose first constructor argument is default value:

#### __[C#]__

{{source=..\SamplesCS\TPF\ClassHierarchy\RadObjectForm.cs region=DefaultValueProp}}
	        public static readonly RadProperty HeightProperty =
	            RadProperty.Register("Height",
	            typeof(int),
	            typeof(MyRadObject),
	            new RadElementPropertyMetadata(1, ElementPropertyOptions.AffectsArrange | ElementPropertyOptions.AffectsMeasure));
	{{endregion}}



#### __[VB]__

{{source=..\SamplesVB\TPF\ClassHierarchy\RadObjectForm.vb region=DefaultValueProp}}
	        Public Shared ReadOnly HeightProperty As RadProperty = RadProperty.Register("Height", GetType(Integer), GetType(MyRadObject), New RadElementPropertyMetadata(1, ElementPropertyOptions.AffectsArrange Or ElementPropertyOptions.AffectsMeasure))
	#End Region
	
	#Region "DefaultValueMethod"
	        Protected Overrides Function GetDefaultValue(propVal As RadPropertyValue, baseDefaultValue As Object) As Object
	            If propVal.Property.Equals(MyRadObject.HeightProperty) Then
	                Return 2
	            End If
	
	            Return MyBase.GetDefaultValue(propVal, baseDefaultValue)
	        End Function
	#End Region
	
	    End Class
	
	#Region "ValueResetFlags"
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
	#End Region
	
	#Region "ValueSource"
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
	#End Region
	End Namespace



In some rare cases, you might want to override the __GetDefaultValue__and specify the default value there:
				

#### __[C#]__

{{source=..\SamplesCS\TPF\ClassHierarchy\RadObjectForm.cs region=DefaultValueMethod}}
	        protected override object GetDefaultValue(RadPropertyValue propVal, object baseDefaultValue)
	        {
	            if (propVal.Property == MyRadObject.HeightProperty)
	            {
	                return 2;
	            }
	
	            return base.GetDefaultValue(propVal, baseDefaultValue);
	        }
	{{endregion}}



#### __[VB]__

{{source=..\SamplesVB\TPF\ClassHierarchy\RadObjectForm.vb region=DefaultValueMethod}}
	        Protected Overrides Function GetDefaultValue(propVal As RadPropertyValue, baseDefaultValue As Object) As Object
	            If propVal.Property.Equals(MyRadObject.HeightProperty) Then
	                Return 2
	            End If
	
	            Return MyBase.GetDefaultValue(propVal, baseDefaultValue)
	        End Function
	#End Region
	
	    End Class
	
	#Region "ValueResetFlags"
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
	#End Region
	
	#Region "ValueSource"
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
	#End Region
	End Namespace


