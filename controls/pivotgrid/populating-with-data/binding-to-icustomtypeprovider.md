---
title: Bind to ICustomTypeProvider in .NET Framework 4.8 and .NET
page_title: Bind to ICustomTypeProvider in .NET Framework 4.8 and .NET - RadPivotGrid
description: Bind to ICustomTypeProvider in .NET Framework 4.8 and .NET
slug: binding-to-icustomtypeprovider
tags: icustomtypeprovider
published: True
position: 5 
---

# Bind to ICustomTypeProvider in .NET Framework 4.8 and .NET

The [ICustomTypeProvider](https://learn.microsoft.com/en-us/dotnet/api/system.reflection.icustomtypeprovider?view=net-7.0&redirectedfrom=MSDN) interface comes with .NET Framework 4.5 and is also available in .NET. As of **R3 2023** RadPivotGrid can use it in the NET48 distribution.

Implementing the ICustomTypeProvider interface allows dynamic generation of properties. This solution is applicable for cases when the schema of the data that the pivot will be working with is not known in advance. For example, it may be necessary to generate properties at runtime and show them inside the pivot control.

This tutorial demonstrates how to accomplish such a requirement:

1\. Define the Customer class

{{source=..\SamplesCS\PivotGrid\PopulatingWithData\PivotCustomTypeProvider.cs region=DefineCustomer}} 
{{source=..\SamplesVB\PivotGrid\PopulatingWithData\PivotCustomTypeProvider.vb region=DefineCustomer}} 

````C#

public class Customer : ICustomTypeProvider
{
    private CustomTypeHelper<Customer> helper = new CustomTypeHelper<Customer>();

    public string FirstName { get; set; }

    public string LastName { get; set; }

    Type ICustomTypeProvider.GetCustomType()
    {
        return this.helper.GetCustomType();
    }

    public static void AddProperty(string name)
    {
        CustomTypeHelper<Customer>.AddProperty(name);
    }

    public static void AddProperty(string name, Type propertyType)
    {
        CustomTypeHelper<Customer>.AddProperty(name, propertyType);
    }

    public static void AddProperty(string name, Type propertyType, List<Attribute> attributes)
    {
        CustomTypeHelper<Customer>.AddProperty(name, propertyType, attributes);
    }

    public void SetPropertyValue(string propertyName, object value)
    {
        this.helper.SetPropertyValue(propertyName, value);
    }

    public object GetPropertyValue(string propertyName)
    {
        return this.helper.GetPropertyValue(propertyName);
    }

    public PropertyInfo[] GetProperties()
    {
        return this.helper.GetProperties();
    }
}


````
````VB.NET

Public Class Customer
    Implements ICustomTypeProvider

    Private helper As CustomTypeHelper(Of Customer) = New CustomTypeHelper(Of Customer)()
    Public Property FirstName As String
    Public Property LastName As String

    Private Function GetCustomType() As Type Implements ICustomTypeProvider.GetCustomType
        Return Me.helper.GetCustomType()
    End Function

    Public Shared Sub AddProperty(ByVal name As String)
        CustomTypeHelper(Of Customer).AddProperty(name)
    End Sub

    Public Shared Sub AddProperty(ByVal name As String, ByVal propertyType As Type)
        CustomTypeHelper(Of Customer).AddProperty(name, propertyType)
    End Sub

    Public Shared Sub AddProperty(ByVal name As String, ByVal propertyType As Type, ByVal attributes As List(Of Attribute))
        CustomTypeHelper(Of Customer).AddProperty(name, propertyType, attributes)
    End Sub

    Public Sub SetPropertyValue(ByVal propertyName As String, ByVal value As Object)
        Me.helper.SetPropertyValue(propertyName, value)
    End Sub

    Public Function GetPropertyValue(ByVal propertyName As String) As Object
        Return Me.helper.GetPropertyValue(propertyName)
    End Function

    Public Function GetProperties() As PropertyInfo()
        Return Me.helper.GetProperties()
    End Function

````

{{endregion}}

2\. Define the CustomTypeHelper class

{{source=..\SamplesCS\PivotGrid\PopulatingWithData\PivotCustomTypeProvider.cs region=DefineHelper}} 
{{source=..\SamplesVB\PivotGrid\PopulatingWithData\PivotCustomTypeProvider.vb region=DefineHelper}} 

````C#
internal class CustomTypeHelper<T> : ICustomTypeProvider, INotifyPropertyChanged
{
    private static List<CustomPropertyInfoHelper> customProperties = new List<CustomPropertyInfoHelper>();
    private Dictionary<string, object> customPropertyValues;
    private CustomType ctype;

    public event PropertyChangedEventHandler PropertyChanged;

    private void NotifyPropertyChanged(string info)
    {
        if (PropertyChanged != null)
        {
            PropertyChanged(this, new PropertyChangedEventArgs(info));
        }
    }

    public CustomTypeHelper()
    {
        customPropertyValues = new Dictionary<string, object>();
        foreach (var property in this.GetCustomType().GetProperties())
        {
            customPropertyValues.Add(property.Name, null);
        }
    }

    public static void AddProperty(string name)
    {
        if (!CheckIfNameExists(name))
            customProperties.Add(new CustomPropertyInfoHelper(name, typeof(string)));
    }

    public static void AddProperty(string name, Type propertyType)
    {
        if (!CheckIfNameExists(name))
            customProperties.Add(new CustomPropertyInfoHelper(name, propertyType));
    }

    public static void AddProperty(string name, Type propertyType, List<Attribute> attributes)
    {
        if (!CheckIfNameExists(name))
            customProperties.Add(new CustomPropertyInfoHelper(name, propertyType, attributes));
    }

    private static bool CheckIfNameExists(string name)
    {
        if ((from p in customProperties select p.Name).Contains(name) || (from p in typeof(T).GetProperties() select p.Name).Contains(name))
            throw new Exception("The property with this name already exists: " + name);
        else return false;
    }

    public void SetPropertyValue(string propertyName, object value)
    {
        CustomPropertyInfoHelper propertyInfo = (from prop in customProperties where prop.Name == propertyName select prop).FirstOrDefault();
        if (!customPropertyValues.ContainsKey(propertyName))
            customPropertyValues.Add(propertyName, null);
        if (ValidateValueType(value, propertyInfo._type))
        {
            if (customPropertyValues[propertyName] != value)
            {
                customPropertyValues[propertyName] = value;
                NotifyPropertyChanged(propertyName);
            }
        }
        else throw new Exception("Value is of the wrong type or null for a non-nullable type.");
    }

    private bool ValidateValueType(object value, Type type)
    {
        if (value == null || value is System.DBNull)
            // Non-value types can be assigned null.
            if (!type.IsValueType)
                return true;
            else
                // Check if the type if a Nullable type.
                return (type.IsGenericType && type.GetGenericTypeDefinition() == typeof(Nullable<>));
        else
            return type.IsAssignableFrom(value.GetType());
    }

    public object GetPropertyValue(string propertyName)
    {
        if (customPropertyValues.ContainsKey(propertyName))
            return customPropertyValues[propertyName];
        else
            throw new Exception("There is no property " + propertyName);
    }

    public PropertyInfo[] GetProperties()
    {
        return this.GetCustomType().GetProperties();
    }

    public Type GetCustomType()
    {
        if (ctype == null)
        {
            ctype = new CustomType(typeof(T));
        }

        return ctype;
    }

    private class CustomType : Type
    {
        Type _baseType;

        public CustomType(Type delegatingType)
        {
            _baseType = delegatingType;
        }

        public override Assembly Assembly
        {
            get { return _baseType.Assembly; }
        }

        public override string AssemblyQualifiedName
        {
            get { return _baseType.AssemblyQualifiedName; }
        }

        public override Type BaseType
        {
            get { return _baseType.BaseType; }
        }

        public override string FullName
        {
            get { return _baseType.FullName; }
        }

        public override Guid GUID
        {
            get { return _baseType.GUID; }
        }

        protected override TypeAttributes GetAttributeFlagsImpl()
        {
            throw new NotImplementedException();
        }

        protected override ConstructorInfo GetConstructorImpl(BindingFlags bindingAttr, Binder binder, CallingConventions callConvention, Type[] types, ParameterModifier[] modifiers)
        {

            throw new NotImplementedException();
        }

        public override ConstructorInfo[] GetConstructors(BindingFlags bindingAttr)
        {
            return _baseType.GetConstructors(bindingAttr);
        }

        public override Type GetElementType()
        {
            return _baseType.GetElementType();
        }

        public override EventInfo GetEvent(string name, BindingFlags bindingAttr)
        {
            return _baseType.GetEvent(name, bindingAttr);
        }

        public override EventInfo[] GetEvents(BindingFlags bindingAttr)
        {
            return _baseType.GetEvents(bindingAttr);
        }

        public override FieldInfo GetField(string name, BindingFlags bindingAttr)
        {
            return _baseType.GetField(name, bindingAttr);
        }

        public override FieldInfo[] GetFields(BindingFlags bindingAttr)
        {
            return _baseType.GetFields(bindingAttr);
        }

        public override Type GetInterface(string name, bool ignoreCase)
        {
            return _baseType.GetInterface(name, ignoreCase);
        }

        public override Type[] GetInterfaces()
        {
            return _baseType.GetInterfaces();
        }

        public override MemberInfo[] GetMembers(BindingFlags bindingAttr)
        {
            return _baseType.GetMembers(bindingAttr);
        }

        protected override MethodInfo GetMethodImpl(string name, BindingFlags bindingAttr, Binder binder, CallingConventions callConvention, Type[] types, ParameterModifier[] modifiers)
        {
            throw new NotImplementedException();
        }

        public override MethodInfo[] GetMethods(BindingFlags bindingAttr)
        {
            return _baseType.GetMethods(bindingAttr);
        }

        public override Type GetNestedType(string name, BindingFlags bindingAttr)
        {
            return _baseType.GetNestedType(name, bindingAttr);
        }

        public override Type[] GetNestedTypes(BindingFlags bindingAttr)
        {
            return _baseType.GetNestedTypes(bindingAttr);
        }

        public override PropertyInfo[] GetProperties(BindingFlags bindingAttr)
        {
            PropertyInfo[] clrProperties = _baseType.GetProperties(bindingAttr);
            if (clrProperties != null)
            {
                return clrProperties.Concat(customProperties).ToArray();
            }
            else
                return customProperties.ToArray();
        }

        protected override PropertyInfo GetPropertyImpl(string name, BindingFlags bindingAttr, Binder binder, Type returnType, Type[] types, ParameterModifier[] modifiers)
        {
            // Look for the CLR property with this name first.
            PropertyInfo propertyInfo = (from prop in GetProperties(bindingAttr) where prop.Name == name select prop).FirstOrDefault();
            if (propertyInfo == null)
            {
                // If the CLR property was not found, return a custom property
                propertyInfo = (from prop in customProperties where prop.Name == name select prop).FirstOrDefault();
            }
            return propertyInfo;
        }

        protected override bool HasElementTypeImpl()
        {
            throw new NotImplementedException();
        }

        public override object InvokeMember(string name, BindingFlags invokeAttr, Binder binder, object target, object[] args, ParameterModifier[] modifiers, System.Globalization.CultureInfo culture, string[] namedParameters)
        {
            return _baseType.InvokeMember(name, invokeAttr, binder, target, args, modifiers, culture, namedParameters);
        }

        protected override bool IsArrayImpl()
        {
            throw new NotImplementedException();
        }

        protected override bool IsByRefImpl()
        {
            throw new NotImplementedException();
        }

        protected override bool IsCOMObjectImpl()
        {
            throw new NotImplementedException();
        }

        protected override bool IsPointerImpl()
        {
            throw new NotImplementedException();
        }

        protected override bool IsPrimitiveImpl()
        {
            return _baseType.IsPrimitive;
        }

        public override Module Module
        {
            get { return _baseType.Module; }
        }

        public override string Namespace
        {
            get { return _baseType.Namespace; }
        }

        public override Type UnderlyingSystemType
        {
            get { return _baseType.UnderlyingSystemType; }
        }

        public override object[] GetCustomAttributes(Type attributeType, bool inherit)
        {
            return _baseType.GetCustomAttributes(attributeType, inherit);
        }

        public override object[] GetCustomAttributes(bool inherit)
        {
            return _baseType.GetCustomAttributes(inherit);
        }

        public override bool IsDefined(Type attributeType, bool inherit)
        {
            return _baseType.IsDefined(attributeType, inherit);
        }

        public override string Name
        {
            get { return _baseType.Name; }
        }
    }

    // Custom implementation of the PropertyInfo
    private class CustomPropertyInfoHelper : PropertyInfo
    {
        public string _name;
        public Type _type;
        public List<Attribute> _attributes = new List<Attribute>();


        public CustomPropertyInfoHelper(string name, Type type)
        {
            _name = name;
            _type = type;
        }

        public CustomPropertyInfoHelper(string name, Type type, List<Attribute> attributes)
        {
            _name = name;
            _type = type;
            _attributes = attributes;
        }

        public override PropertyAttributes Attributes
        {
            get { throw new NotImplementedException(); }
        }

        public override bool CanRead
        {
            get { return true; }
        }

        public override bool CanWrite
        {
            get { return true; }
        }

        public override MethodInfo[] GetAccessors(bool nonPublic)
        {
            throw new NotImplementedException();
        }

        public override MethodInfo GetGetMethod(bool nonPublic)
        {
            throw new NotImplementedException();
        }

        public override ParameterInfo[] GetIndexParameters()
        {
            throw new NotImplementedException();
        }

        public override MethodInfo GetSetMethod(bool nonPublic)
        {
            throw new NotImplementedException();
        }

        // Returns the value from the dictionary stored in the Customer's instance.
        public override object GetValue(object obj, BindingFlags invokeAttr, Binder binder, object[] index, System.Globalization.CultureInfo culture)
        {

            return obj.GetType().GetMethod("GetPropertyValue").Invoke(obj, new[] { _name });
        }

        public override Type PropertyType
        {
            get { return _type; }
        }

        // Sets the value in the dictionary stored in the Customer's instance.
        public override void SetValue(object obj, object value, BindingFlags invokeAttr, Binder binder, object[] index, System.Globalization.CultureInfo culture)
        {
            obj.GetType().GetMethod("SetPropertyValue").Invoke(obj, new[] { _name, value });
        }

        public override Type DeclaringType
        {
            get { throw new NotImplementedException(); }
        }

        public override object[] GetCustomAttributes(Type attributeType, bool inherit)
        {
            var attrs = from a in _attributes where a.GetType() == attributeType select a;
            return attrs.ToArray();
        }

        public override object[] GetCustomAttributes(bool inherit)
        {
            return _attributes.ToArray();
        }

        public override bool IsDefined(Type attributeType, bool inherit)
        {
            throw new NotImplementedException();
        }

        public override string Name
        {
            get { return _name; }
        }

        public override Type ReflectedType
        {
            get { throw new NotImplementedException(); }
        }

        internal List<Attribute> CustomAttributesInternal
        {
            get { return _attributes; }
        }
    }
}
#endregion


````
````VB.NET

Friend Class CustomTypeHelper(Of T)
    Implements ICustomTypeProvider
    Implements INotifyPropertyChanged

    Private Shared customProperties As List(Of CustomPropertyInfoHelper) = New List(Of CustomPropertyInfoHelper)()
    Private customPropertyValues As Dictionary(Of String, Object)
    Private [ctype] As CustomType
    Public Event PropertyChanged As PropertyChangedEventHandler Implements INotifyPropertyChanged.PropertyChanged

    Private Sub NotifyPropertyChanged(ByVal info As String)
        RaiseEvent PropertyChanged(Me, New PropertyChangedEventArgs(info))
    End Sub

    Public Sub New()
        customPropertyValues = New Dictionary(Of String, Object)()

        For Each [property] In Me.GetCustomType().GetProperties()
            customPropertyValues.Add([property].Name, Nothing)
        Next
    End Sub

    Public Shared Sub AddProperty(ByVal name As String)
        If Not CheckIfNameExists(name) Then customProperties.Add(New CustomPropertyInfoHelper(name, GetType(String)))
    End Sub

    Public Shared Sub AddProperty(ByVal name As String, ByVal propertyType As Type)
        If Not CheckIfNameExists(name) Then customProperties.Add(New CustomPropertyInfoHelper(name, propertyType))
    End Sub

    Public Shared Sub AddProperty(ByVal name As String, ByVal propertyType As Type, ByVal attributes As List(Of Attribute))
        If Not CheckIfNameExists(name) Then customProperties.Add(New CustomPropertyInfoHelper(name, propertyType, attributes))
    End Sub

    Private Shared Function CheckIfNameExists(ByVal _name As String) As Boolean
        If (From p In customProperties Select p.Name).Contains(_name) OrElse (From p In GetType(T).GetProperties() Select p.Name).Contains(_name) Then
            Throw New Exception("The property with this name already exists: " & _name)
        Else
            Return False
        End If
    End Function

    Public Sub SetPropertyValue(ByVal propertyName As String, ByVal value As Object)
        Dim propertyInfo As CustomPropertyInfoHelper = (From prop In customProperties Where prop.Name = propertyName Select prop).FirstOrDefault()
        If Not customPropertyValues.ContainsKey(propertyName) Then customPropertyValues.Add(propertyName, Nothing)

        If ValidateValueType(value, propertyInfo._type) Then

            If customPropertyValues(propertyName) <> value Then
                customPropertyValues(propertyName) = value
                NotifyPropertyChanged(propertyName)
            End If
        Else
            Throw New Exception("Value is of the wrong type or null for a non-nullable type.")
        End If
    End Sub

    Private Function ValidateValueType(ByVal value As Object, ByVal type As Type) As Boolean
        If value Is Nothing OrElse TypeOf value Is System.DBNull Then

            If Not type.IsValueType Then
                Return True
            Else
                Return (type.IsGenericType AndAlso type.GetGenericTypeDefinition() = GetType(Nullable(Of)))
            End If
        Else
            Return type.IsAssignableFrom(value.[GetType]())
        End If
    End Function

    Public Function GetPropertyValue(ByVal propertyName As String) As Object
        If customPropertyValues.ContainsKey(propertyName) Then
            Return customPropertyValues(propertyName)
        Else
            Throw New Exception("There is no property " & propertyName)
        End If
    End Function

    Public Function GetProperties() As PropertyInfo()
        Return Me.GetCustomType().GetProperties()
    End Function

    Public Function GetCustomType() As Type Implements ICustomTypeProvider.GetCustomType
        If [ctype] Is Nothing Then
            [ctype] = New CustomType(GetType(T))
        End If

        Return [ctype]
    End Function

    Private Class CustomType
        Inherits Type

        Private _baseType As Type

        Public Sub New(ByVal delegatingType As Type)
            _baseType = delegatingType
        End Sub

        Public Overrides ReadOnly Property Assembly As Assembly
            Get
                Return _baseType.Assembly
            End Get
        End Property

        Public Overrides ReadOnly Property AssemblyQualifiedName As String
            Get
                Return _baseType.AssemblyQualifiedName
            End Get
        End Property

        Public Overrides ReadOnly Property BaseType As Type
            Get
                Return _baseType.BaseType
            End Get
        End Property

        Public Overrides ReadOnly Property FullName As String
            Get
                Return _baseType.FullName
            End Get
        End Property

        Public Overrides ReadOnly Property GUID As Guid
            Get
                Return _baseType.GUID
            End Get
        End Property

        Protected Overrides Function GetAttributeFlagsImpl() As TypeAttributes
            Throw New NotImplementedException()
        End Function

        Protected Overrides Function GetConstructorImpl(ByVal bindingAttr As BindingFlags, ByVal binder As Binder,
                                                        ByVal callConvention As CallingConventions, ByVal types As Type(),
                                                        ByVal modifiers As ParameterModifier()) As ConstructorInfo
            Throw New NotImplementedException()
        End Function

        Public Overrides Function GetConstructors(ByVal bindingAttr As BindingFlags) As ConstructorInfo()
            Return _baseType.GetConstructors(bindingAttr)
        End Function

        Public Overrides Function GetElementType() As Type
            Return _baseType.GetElementType()
        End Function

        Public Overrides Function GetEvent(ByVal name As String, ByVal bindingAttr As BindingFlags) As EventInfo
            Return _baseType.GetEvent(name, bindingAttr)
        End Function

        Public Overrides Function GetEvents(ByVal bindingAttr As BindingFlags) As EventInfo()
            Return _baseType.GetEvents(bindingAttr)
        End Function

        Public Overrides Function GetField(ByVal name As String, ByVal bindingAttr As BindingFlags) As FieldInfo
            Return _baseType.GetField(name, bindingAttr)
        End Function

        Public Overrides Function GetFields(ByVal bindingAttr As BindingFlags) As FieldInfo()
            Return _baseType.GetFields(bindingAttr)
        End Function

        Public Overrides Function GetInterface(ByVal name As String, ByVal ignoreCase As Boolean) As Type
            Return _baseType.GetInterface(name, ignoreCase)
        End Function

        Public Overrides Function GetInterfaces() As Type()
            Return _baseType.GetInterfaces()
        End Function

        Public Overrides Function GetMembers(ByVal bindingAttr As BindingFlags) As MemberInfo()
            Return _baseType.GetMembers(bindingAttr)
        End Function

        Protected Overrides Function GetMethodImpl(ByVal name As String, ByVal bindingAttr As BindingFlags, ByVal binder As Binder,
                                                   ByVal callConvention As CallingConventions, ByVal types As Type(),
                                                   ByVal modifiers As ParameterModifier()) As MethodInfo
            Throw New NotImplementedException()
        End Function

        Public Overrides Function GetMethods(ByVal bindingAttr As BindingFlags) As MethodInfo()
            Return _baseType.GetMethods(bindingAttr)
        End Function

        Public Overrides Function GetNestedType(ByVal name As String, ByVal bindingAttr As BindingFlags) As Type
            Return _baseType.GetNestedType(name, bindingAttr)
        End Function

        Public Overrides Function GetNestedTypes(ByVal bindingAttr As BindingFlags) As Type()
            Return _baseType.GetNestedTypes(bindingAttr)
        End Function

        Public Overrides Function GetProperties(ByVal bindingAttr As BindingFlags) As PropertyInfo()
            Dim clrProperties As PropertyInfo() = _baseType.GetProperties(bindingAttr)

            If clrProperties IsNot Nothing Then
                Return clrProperties.Concat(customProperties).ToArray()
            Else
                Return customProperties.ToArray()
            End If
        End Function

        Protected Overrides Function GetPropertyImpl(ByVal name As String, ByVal bindingAttr As BindingFlags, ByVal binder As Binder,
                                                     ByVal returnType As Type, ByVal types As Type(), ByVal modifiers As ParameterModifier()) As PropertyInfo
            Dim propertyInfo As PropertyInfo = (From prop In GetProperties(bindingAttr) Where prop.Name = name Select prop).FirstOrDefault()

            If propertyInfo Is Nothing Then
                propertyInfo = (From prop In customProperties Where prop.Name = name Select prop).FirstOrDefault()
            End If

            Return propertyInfo
        End Function

        Protected Overrides Function HasElementTypeImpl() As Boolean
            Throw New NotImplementedException()
        End Function

        Public Overrides Function InvokeMember(ByVal name As String, ByVal invokeAttr As BindingFlags, ByVal binder As Binder,
                                               ByVal target As Object, ByVal args As Object(), ByVal modifiers As ParameterModifier(),
                                               ByVal culture As System.Globalization.CultureInfo, ByVal namedParameters As String()) As Object
            Return _baseType.InvokeMember(name, invokeAttr, binder, target, args, modifiers, culture, namedParameters)
        End Function

        Protected Overrides Function IsArrayImpl() As Boolean
            Throw New NotImplementedException()
        End Function

        Protected Overrides Function IsByRefImpl() As Boolean
            Throw New NotImplementedException()
        End Function

        Protected Overrides Function IsCOMObjectImpl() As Boolean
            Throw New NotImplementedException()
        End Function

        Protected Overrides Function IsPointerImpl() As Boolean
            Throw New NotImplementedException()
        End Function

        Protected Overrides Function IsPrimitiveImpl() As Boolean
            Return _baseType.IsPrimitive
        End Function

        Public Overrides ReadOnly Property [Module] As [Module]
            Get
                Return _baseType.[Module]
            End Get
        End Property

        Public Overrides ReadOnly Property [Namespace] As String
            Get
                Return _baseType.[Namespace]
            End Get
        End Property

        Public Overrides ReadOnly Property UnderlyingSystemType As Type
            Get
                Return _baseType.UnderlyingSystemType
            End Get
        End Property

        Public Overrides Function GetCustomAttributes(ByVal attributeType As Type, ByVal inherit As Boolean) As Object()
            Return _baseType.GetCustomAttributes(attributeType, inherit)
        End Function

        Public Overrides Function GetCustomAttributes(ByVal inherit As Boolean) As Object()
            Return _baseType.GetCustomAttributes(inherit)
        End Function

        Public Overrides Function IsDefined(ByVal attributeType As Type, ByVal inherit As Boolean) As Boolean
            Return _baseType.IsDefined(attributeType, inherit)
        End Function

        Public Overrides ReadOnly Property Name As String
            Get
                Return _baseType.Name
            End Get
        End Property
    End Class

    Private Class CustomPropertyInfoHelper
        Inherits PropertyInfo

        Public _name As String
        Public _type As Type
        Public _attributes As List(Of Attribute) = New List(Of Attribute)()

        Public Sub New(ByVal name As String, ByVal type As Type)
            _name = name
            _type = type
        End Sub

        Public Sub New(ByVal name As String, ByVal type As Type, ByVal attributes As List(Of Attribute))
            _name = name
            _type = type
            _attributes = attributes
        End Sub

        Public Overrides ReadOnly Property Attributes As PropertyAttributes
            Get
                Throw New NotImplementedException()
            End Get
        End Property

        Public Overrides ReadOnly Property CanRead As Boolean
            Get
                Return True
            End Get
        End Property

        Public Overrides ReadOnly Property CanWrite As Boolean
            Get
                Return True
            End Get
        End Property

        Public Overrides Function GetAccessors(ByVal nonPublic As Boolean) As MethodInfo()
            Throw New NotImplementedException()
        End Function

        Public Overrides Function GetGetMethod(ByVal nonPublic As Boolean) As MethodInfo
            Throw New NotImplementedException()
        End Function

        Public Overrides Function GetIndexParameters() As ParameterInfo()
            Throw New NotImplementedException()
        End Function

        Public Overrides Function GetSetMethod(ByVal nonPublic As Boolean) As MethodInfo
            Throw New NotImplementedException()
        End Function

        Public Overrides Function GetValue(ByVal obj As Object, ByVal invokeAttr As BindingFlags, ByVal binder As Binder,
                                           ByVal index As Object(), ByVal culture As System.Globalization.CultureInfo) As Object
            Return obj.[GetType]().GetMethod("GetPropertyValue").Invoke(obj, {_name})
        End Function

        Public Overrides ReadOnly Property PropertyType As Type
            Get
                Return _type
            End Get
        End Property

        Public Overrides Sub SetValue(ByVal obj As Object, ByVal value As Object, ByVal invokeAttr As BindingFlags,
                                      ByVal binder As Binder, ByVal index As Object(), ByVal culture As System.Globalization.CultureInfo)
            obj.[GetType]().GetMethod("SetPropertyValue").Invoke(obj, {_name, value})
        End Sub

        Public Overrides ReadOnly Property DeclaringType As Type
            Get
                Throw New NotImplementedException()
            End Get
        End Property

        Public Overrides Function GetCustomAttributes(ByVal attributeType As Type, ByVal inherit As Boolean) As Object()
            Dim attrs = From a In _attributes Where a.[GetType]() = attributeType Select a
            Return attrs.ToArray()
        End Function

        Public Overrides Function GetCustomAttributes(ByVal inherit As Boolean) As Object()
            Return _attributes.ToArray()
        End Function

        Public Overrides Function IsDefined(ByVal attributeType As Type, ByVal inherit As Boolean) As Boolean
            Throw New NotImplementedException()
        End Function

        Public Overrides ReadOnly Property Name As String
            Get
                Return _name
            End Get
        End Property

        Public Overrides ReadOnly Property ReflectedType As Type
            Get
                Throw New NotImplementedException()
            End Get
        End Property

        Friend ReadOnly Property CustomAttributesInternal As List(Of Attribute)
            Get
                Return _attributes
            End Get
        End Property
    End Class
End Class


````

{{endregion}}

3\.Last, we will setup the RadPivotGrid control:

{{source=..\SamplesCS\PivotGrid\PopulatingWithData\PivotCustomTypeProvider.cs region=Usage}} 
{{source=..\SamplesVB\PivotGrid\PopulatingWithData\PivotCustomTypeProvider.vb region=Usage}} 

````C#

private List<Customer> customers = new List<Customer>();
private LocalDataSourceProvider localDataProvider;

public PivotCustomTypeProvider()
{
    InitializeComponent();

    this.localDataProvider = new LocalDataSourceProvider();
    this.radPivotGrid1.DataProvider = this.localDataProvider;

    this.localDataProvider.RowGroupDescriptions.Add(new PropertyGroupDescription()
    {
        PropertyName = "FirstName"
    });

    this.localDataProvider.ColumnGroupDescriptions.Add(new PropertyGroupDescription()
    {
        PropertyName = "Married"
    });

    this.localDataProvider.ColumnGroupDescriptions.Add(new PropertyGroupDescription()
    {
        PropertyName = "LastName"
    });

    this.localDataProvider.AggregateDescriptions.Add(new PropertyAggregateDescription()
    {
        PropertyName = "Age",
        AggregateFunction = AggregateFunctions.Average
    });

    Customer.AddProperty("Address", typeof(string));
    Customer.AddProperty("Age", typeof(int?));
    Customer.AddProperty("Married", typeof(bool?));
    Customer.AddProperty("Income", typeof(double?));

    Customer customer1 = new Customer { FirstName = "Mary", LastName = "Smith" };
    customer1.SetPropertyValue("Address", "C1 address");
    customer1.SetPropertyValue("Age", 40);
    customer1.SetPropertyValue("Married", true);
    customer1.SetPropertyValue("Income", 100000.0);

    Customer customer2 = new Customer { FirstName = "John", LastName = "Smith" };
    customer2.SetPropertyValue("Address", "C2 address");
    customer2.SetPropertyValue("Age", 45);
    customer2.SetPropertyValue("Married", false);
    customer2.SetPropertyValue("Income", 75000.0);

    this.customers.Add(customer1);
    this.customers.Add(customer2);
    this.localDataProvider.ItemsSource = this.customers;
}

````
````VB.NET

Private customers As List(Of Customer)
Private localDataProvider As LocalDataSourceProvider

Public Sub New()
    InitializeComponent()
    customers = New List(Of Customer)()
    Me.localDataProvider = New LocalDataSourceProvider()
    Me.RadPivotGrid1.DataProvider = Me.localDataProvider
    Me.localDataProvider.RowGroupDescriptions.Add(New PropertyGroupDescription() With {
        .PropertyName = "FirstName"
    })
    Me.localDataProvider.ColumnGroupDescriptions.Add(New PropertyGroupDescription() With {
        .PropertyName = "Married"
    })
    Me.localDataProvider.ColumnGroupDescriptions.Add(New PropertyGroupDescription() With {
        .PropertyName = "LastName"
    })
    Me.localDataProvider.AggregateDescriptions.Add(New PropertyAggregateDescription() With {
        .PropertyName = "Age",
        .AggregateFunction = AggregateFunctions.Average
    })
    Customer.AddProperty("Address", GetType(String))
    Customer.AddProperty("Age", GetType(Integer?))
    Customer.AddProperty("Married", GetType(Boolean?))
    Customer.AddProperty("Income", GetType(Double?))
    Dim customer1 As Customer = New Customer With {
        .FirstName = "Mary",
        .LastName = "Smith"
    }
    customer1.SetPropertyValue("Address", "C1 address")
    customer1.SetPropertyValue("Age", 40)
    customer1.SetPropertyValue("Married", True)
    customer1.SetPropertyValue("Income", 100000.0)
    Dim customer2 As Customer = New Customer With {
        .FirstName = "John",
        .LastName = "Smith"
    }
    customer2.SetPropertyValue("Address", "C2 address")
    customer2.SetPropertyValue("Age", 45)
    customer2.SetPropertyValue("Married", False)
    customer2.SetPropertyValue("Income", 75000.0)
    Me.customers.Add(customer1)
    Me.customers.Add(customer2)
    Me.localDataProvider.ItemsSource = Me.customers
End Sub

````

{{endregion}}

The achieved result is illustrated below:

![WinForms RadPivotGrid RadPivot Data Binding](images/pivotgrid-populating-with-data-icustomtypeprovider.png)

# See Also

* [Using the AdomdDataProvider]({%slug winforms/pivotgrid/populating-with-data/using-the-adomddataprovider%})
* [Using the QueryableDataProvider]({%slug winforms/pivotgrid/populating-with-data/using-the-queryabledataprovider%})
 
