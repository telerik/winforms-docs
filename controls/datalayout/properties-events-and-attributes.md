---
title: Properties, Events and Attributes
page_title: Properties, Events and Attributes - WinForms DataLayout Control
description: Learn the most used properties, events and attributes of RadDataLayout.
slug: winforms/datalayout/properties,-events-and-attributes
tags: properties,events,and,attributes
published: True
position: 4
previous_url: datalayout-properties-event-and-attributes
---

# Properties, Events and Attributes

__RadDataLayout__ exposes properties and events which are similar to the ones provided by the __RadDataEntry__ control.
      

## Properties

|Property|Description|
|---|---|
|__DataSource__|Through this property user can set the business object or a collection of objects that should be edited. When this property is set __RadDataLayout__ generates editors for each public property which does not have its __Browsable__ attribute set to *false.*|
|__ColumnCount__|Controls the amount of columns that __RadDataLayout__ will use to arrange the generated controls. Default value is one.|
|__FlowDirection__|Defines the direction the editors will be generated.|
|__ItemDefaultHeight__|Sets the height that generated items should have, the default value is *26*.|
|__AutoSizeLabels__|By default, the property value is *false* and the labels width will equals the longest label width. If you set this property to *true*, the labels will be sized according to their content.|
|__ShowValidationPanel__|Gets or sets a value indicating whether the validation panel should appear.|
|__ItemDefaultHeight__|Sets the height that generated items should have.|

## Events

There are several events that you will find useful in the context of __RadDataLayout__:

|Event|Description|
|---|---|
|__EditorInitializing__| Occurs when editor is being initialized. In this event you can change the default editors with custom ones.|
|__EditorInitialized__|Raised when the editor is initialized.|
|__BindingCreating__|Occurs when a binding object for an editor is about to be created. This event is cancelable.|
|__BindingCreated__|Occurs when binding object is created.|
|__ItemInitializing__|This event is fired when the panel that contains the label, editor and validation label is about to be initialized. This event is cancelable.|
| __ItemInitialized__ |Fires when the item is already initialized.|
|__ItemValidating__|This event is raised when any of the generated editors fires its **Validating** event.|
|__ItemValidated__|Occurs when any of the generated editors fires its **Validated** event.|

## Attributes

__RadDataLayout__ has support for several attributes that can be used to change the behavior of the control.

|Attribute|Description|
|---|---|
|__Browsable__|Defines which properties should be displayed.|
|__DisplayName__|Determines what text should be displayed in the label that is associated with the editor.|
|__RadRangeAttribute__|Defines a range that can be used into validation process. This attribute is provided in validation events.|
|__ReadOnlyAttribute __|Determines whether a property can be edited in RadDataLayout or not.|

>note The **Browsable** attribute set to *false* will make the property on which it is used not bindable. This will prevent other controls which use the [CurrencyManager](https://msdn.microsoft.com/en-us/library/system.windows.forms.currencymanager(v=vs.110).aspx) object for extracting properties to bind to such a class. A suitable solution for this scenario is to leave the property **Browsable** set to *true* and handle the **RadDataLayout**.*ItemInitializing* setting the e.Cancel property to *true* for items which need to hidden in **RadDataLayout**.  

>caption Figure 1: Model With Attributes

![WinForms RadDataLayout Model With Attributes](images/datalayout-properties-event-and-attributes001.png)

#### Using attributes.

{{source=..\SamplesCS\DataLayout\PropertiesEventsAttributesForm.cs region=ModelWithAttributes}} 
{{source=..\SamplesVB\DataLayout\PropertiesEventsAttributesForm.vb region=ModelWithAttributes}} 

````C#
public class Employee
{
    public string FirstName { get; set; }
    [DisplayName("Family Name")]
    public string LastName { get; set; }
    [Browsable(false)]
    public string Occupation { get; set; }
    [RadRange(2000, 3000)]
    public int Salary { get; set; }
    public DateTime StartingDate { get; set; }
}

````
````VB.NET
Public Class Employee
    Public Property FirstName() As String
        Get
            Return m_FirstName
        End Get
        Set(value As String)
            m_FirstName = value
        End Set
    End Property
    Private m_FirstName As String
    <DisplayName("Family Name")> _
    Public Property LastName() As String
        Get
            Return m_LastName
        End Get
        Set(value As String)
            m_LastName = value
        End Set
    End Property
    Private m_LastName As String
    <Browsable(False)> _
    Public Property Occupation() As String
        Get
            Return m_Occupation
        End Get
        Set(value As String)
            m_Occupation = value
        End Set
    End Property
    Private m_Occupation As String
    <RadRange(2000, 3000)> _
    Public Property Salary() As Integer
        Get
            Return m_Salary
        End Get
        Set(value As Integer)
            m_Salary = value
        End Set
    End Property
    Private m_Salary As Integer
    Public Property StartingDate() As DateTime
        Get
            Return m_StartingDate
        End Get
        Set(value As DateTime)
            m_StartingDate = value
        End Set
    End Property
    Private m_StartingDate As DateTime
End Class

````

{{endregion}}


# See Also

 * [Structure]({%slug winforms/datalayout/control-element-structure%})
 * [Getting Started]({%slug winforms/datalayout/getting-started%})
 * [Validation]({%slug winforms/datalayout/validation%})
 * [Localization]({%slug winforms/datalayout/localization%})
 * [Change the editor to RadDropDownList]({%slug  winforms/dataentry/how-to/change-the-editor-to-a-bound-raddropdownlist%})
 * [Customizing Appearance ]({%slug winforms/raddatalayout/customizing-appearance%})
