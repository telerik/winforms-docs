---
title: How to Import/Export ICalendar Data With Resources
description: This article demonstrates how you can Import/Export ICalendar Data With Resources.
type: how-to
page_title: How you can Import/Export ICalendar Data With Resources.
slug: scheduler-importexport-icalendar-resources
position: 0
tags: scheduler, ICalendar, Resources
res_type: kb
---

## Environment
 
|Product Version|Product|Author|
|----|----|----|
|2024.2.514|RadScreenTip for WinForms|[Dinko Krastev](https://www.telerik.com/blogs/author/dinko-krastev)|
 
## Description

The attached 2 classes provide support for resources in ICalendar Import/Export in RadScheduler.

>note Migrated from Telerik Code Library

## Solution 

````C#
// Export
public class CustomSchedulerICalendarExporter : SchedulerICalendarExporter
{
   private SchedulerResourceCollection m_Resources;

   public CustomSchedulerICalendarExporter(SchedulerResourceCollection resources)
	  : base()
   {
	  m_Resources = resources;
   }

   protected override void WriteAdditionalDataForAppointment(IEvent appointment, CalObject calObject)
   {
	  base.WriteAdditionalDataForAppointment(appointment, calObject);

	  // new);
	  if (appointment.ResourceId != null)
	  {
		 string resources = BuildResources(appointment.ResourceIds);
		 calObject.AddProperty("RESOURCES", resources);
	  }
   }

   private string BuildResources(ObservableCollection<EventId> resourceIds)
   {
	  string res = string.Empty;

	  foreach (EventId resourceId in resourceIds)
	  {
		 string resource = m_Resources.GetById(resourceId.KeyValue).Name;
		 if (res == string.Empty)
			res += resource;
		 else
		 {
			res += "," + resource;
		 }
	  }

	  return res;
   }
}

// Import
public class CustomSchedulerICalendarImporter : SchedulerICalendarImporter
{
	private SchedulerResourceCollection m_Resources;

	public CustomSchedulerICalendarImporter(SchedulerResourceCollection resources)
		: base()
	{
		m_Resources = resources;
	}

	/// <summary>
	/// Remove duplicates based on UniqueId
	/// </summary>
	/// <exception cref="CalendarParseException"><c>CalendarParseException</c>.</exception>
	protected override void GetAppointments(CalObject calendar, ICollection<IEvent> collection)
	{
		base.GetAppointments(calendar, collection);

		Dictionary<EventId, IEvent> dictionary = new Dictionary<EventId, IEvent>();
		foreach (IEvent ievent in collection)
		{
		dictionary[ievent.UniqueId] = ievent;
		}

		collection.Clear();
		foreach (IEvent iEvent in dictionary.Values)
		collection.Add(iEvent);
	}

	/// <summary>
	/// Writes the additional data for appointment.
	/// </summary>
	/// <param name="appointment">The appointment.</param>
	/// <param name="calObject">The cal object.</param>
	protected override void ApplyAdditionalData(IEvent appointment, CalObject calObject)
	{
		base.ApplyAdditionalData(appointment, calObject);

		CalProperty prop = calObject["RESOURCES"];
		if (prop != null)
		{
		AddResourceIds(prop, appointment);
		}
	}

	private void AddResourceIds(CalProperty prop, IEvent appointment)
	{
		string[] resources = CalProperty.ToText(prop).Split(new[] { ';', ',' }, StringSplitOptions.RemoveEmptyEntries);

		foreach (string resource in resources)
		{
		if (m_Resources.GetById(resource) == null)
			m_Resources.Add(new Resource(resource, resource));
		appointment.ResourceIds.Add(new EventId(resource));
		}
	}
}

````
````VB.NET
' Export
Public Class CustomSchedulerICalendarExporter
    Inherits SchedulerICalendarExporter

    Private m_Resources As SchedulerResourceCollection

    Public Sub New(ByVal resources As SchedulerResourceCollection)
        MyBase.New()
        m_Resources = resources
    End Sub

    Protected Overrides Sub WriteAdditionalDataForAppointment(ByVal appointment As IEvent, ByVal calObject As CalObject)
        MyBase.WriteAdditionalDataForAppointment(appointment, calObject)

        If appointment.ResourceId IsNot Nothing Then
            Dim resources As String = BuildResources(appointment.ResourceIds)
            calObject.AddProperty("RESOURCES", resources)
        End If
    End Sub

    Private Function BuildResources(ByVal resourceIds As ObservableCollection(Of EventId)) As String
        Dim res As String = String.Empty

        For Each resourceId As EventId In resourceIds
            Dim resource As String = m_Resources.GetById(resourceId.KeyValue).Name

            If res = String.Empty Then
                res += resource
            Else
                res += "," & resource
            End If
        Next

        Return res
    End Function
End Class

' Import
Public Class CustomSchedulerICalendarImporter
    Inherits SchedulerICalendarImporter

    Private m_Resources As SchedulerResourceCollection

    Public Sub New(ByVal resources As SchedulerResourceCollection)
        MyBase.New()
        m_Resources = resources
    End Sub

    Protected Overrides Sub GetAppointments(ByVal calendar As CalObject, ByVal collection As ICollection(Of IEvent))
        MyBase.GetAppointments(calendar, collection)
        Dim dictionary As Dictionary(Of EventId, IEvent) = New Dictionary(Of EventId, IEvent)()

        For Each ievent As IEvent In collection
            dictionary(ievent.UniqueId) = ievent
        Next

        collection.Clear()

        For Each iEvent As IEvent In dictionary.Values
            collection.Add(iEvent)
        Next
    End Sub

    Protected Overrides Sub ApplyAdditionalData(ByVal appointment As IEvent, ByVal calObject As CalObject)
        MyBase.ApplyAdditionalData(appointment, calObject)
        Dim prop As CalProperty = calObject("RESOURCES")

        If prop IsNot Nothing Then
            AddResourceIds(prop, appointment)
        End If
    End Sub

    Private Sub AddResourceIds(ByVal prop As CalProperty, ByVal appointment As IEvent)
        Dim resources As String() = CalProperty.ToText(prop).Split({";"c, ","c}, StringSplitOptions.RemoveEmptyEntries)

        For Each resource As String In resources
            If m_Resources.GetById(resource) Is Nothing Then m_Resources.Add(New Resource(resource, resource))
            appointment.ResourceIds.Add(New EventId(resource))
        Next
    End Sub
End Class


````

