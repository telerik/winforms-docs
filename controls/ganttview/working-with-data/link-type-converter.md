---
title: Link Type Converter
page_title: Link Type Converter | RadGanttView
description: Convert the data stored in your database to TasksLinkType and vice versa.
slug: winforms/ganttview-/working-with-data/link-type-converter
tags: link,type,converter
published: True
position: 4
previous_url: ganttview-working-with-data-link-type-converter
---

# Link type converter

When binding __RadGanttView__ there are a number of possible formats for storing data. For most of the standard .NET types used in gantt view (int, string, DateTime, decimal) there are built-in converters to help you when binding. For the types of the link, you have to convert your data to the __TasksLinkType__ enumeration. To help you achieve this we have provided a basic implementation to convert integer data to the enumeration. Here is the mapping:
        

* 0 translates to TasksLinkType.FinishToFinish
            

* 1 translates to TasksLinkType.FinishToStart
            

* 2 translates to TasksLinkType.StartToFinish
            

* 3 translates to TasksLinkType. StartToStart
            

This will work fine if your mapping is the same but if you store your link types in a different format or the integer values are in different order you can create your own __LinkTypeConverter__ deriving from the default one. In the following examples we will create one that will convert from/to string for the following mapping:
        

* “FF” translates to TasksLinkType.FinishToFinish
            

* “FS” translates to TasksLinkType.FinishToStart
            

* “SF” translates to TasksLinkType.StartToFinish
            

* “SS” translates to TasksLinkType. StartToStart
            

{{source=..\SamplesCS\GanttView\WorkingWithData\LinkTypeConverterExample.cs region=CustomLinkTypeConverter}} 
{{source=..\SamplesVB\GanttView\WorkingWithData\LinkTypeConverterExample.vb region=CustomLinkTypeConverter}} 

````C#
public class MyLinkTypeConverter : LinkTypeConverter
{
    public override TasksLinkType ConvertToLinkType(object value)
    {
        string stringVlaue = Convert.ToString(value);
        switch (stringVlaue)
        {
            case "FF":
                return TasksLinkType.FinishToFinish;
            case "FS":
                return TasksLinkType.FinishToStart;
            case "SF":
                return TasksLinkType.StartToFinish;
            case "SS":
                return TasksLinkType.StartToStart;
        }
        return base.ConvertToLinkType(value);
    }
    public override object ConvertFromLinkType(TasksLinkType linkType)
    {
        switch (linkType)
        {
            case TasksLinkType.FinishToFinish:
                return "FF";
            case TasksLinkType.FinishToStart:
                return "FS";
            case TasksLinkType.StartToFinish:
                return "SF";
            case TasksLinkType.StartToStart:
                return "SS";
        }
        return base.ConvertFromLinkType(linkType);
    }
}

````
````VB.NET
Public Class MyLinkTypeConverter
    Inherits LinkTypeConverter
    Public Overrides Function ConvertToLinkType(value As Object) As TasksLinkType
        Dim stringVlaue As String = Convert.ToString(value)
        Select Case stringVlaue
            Case "FF"
                Return TasksLinkType.FinishToFinish
            Case "FS"
                Return TasksLinkType.FinishToStart
            Case "SF"
                Return TasksLinkType.StartToFinish
            Case "SS"
                Return TasksLinkType.StartToStart
        End Select
        Return MyBase.ConvertToLinkType(value)
    End Function
    Public Overrides Function ConvertFromLinkType(linkType As TasksLinkType) As Object
        Select Case linkType
            Case TasksLinkType.FinishToFinish
                Return "FF"
            Case TasksLinkType.FinishToStart
                Return "FS"
            Case TasksLinkType.StartToFinish
                Return "SF"
            Case TasksLinkType.StartToStart
                Return "SS"
        End Select
        Return MyBase.ConvertFromLinkType(linkType)
    End Function
End Class

````

{{endregion}} 

 
Now to use the converter you should assign it to the __LinkTypeConverter__ property of __RadGanttView__.

{{source=..\SamplesCS\GanttView\WorkingWithData\LinkTypeConverterExample.cs region=AssignLinkTypeConverter}} 
{{source=..\SamplesVB\GanttView\WorkingWithData\LinkTypeConverterExample.vb region=AssignLinkTypeConverter}} 

````C#
this.radGanttView1.LinkTypeConverter = new MyLinkTypeConverter();

````
````VB.NET
Me.RadGanttView1.LinkTypeConverter = New MyLinkTypeConverter()

````

{{endregion}} 

# See Also  

* [Binding to Database]({%slug winforms/ganttview-/working-with-data/binding-to-database%})
* [Data Binding Basics]({%slug winforms/ganttview-/working-with-data/data-binding-basics%})
* [Importing XML from MS Project]({%slug winforms/ganttview-/working-with-data/importing-xml-from-ms-project%})
* [Adding new items]({%slug winforms/ganttview-/working-with-data/adding-new-items%})
* [Populating with Data Programmatically]({%slug winforms/ganttview-/working-with-data/populating-with-data-programmatically%})
