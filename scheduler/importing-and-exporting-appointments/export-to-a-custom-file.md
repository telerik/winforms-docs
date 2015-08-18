---
title: Import/Export to a Custom File
page_title: Import/Export to a Custom File | UI for WinForms Documentation
description: Import/Export to a Custom File
slug: winforms/scheduler/importing-and-exporting-appointments/import/export-to-a-custom-file
tags: import/export,to,a,custom,file
published: True
position: 2
---

# Import/Export to a Custom File

## 

In order to import/export the scheduler appointments to a custom file you should:

1\. Create custom classes for import and export:

{{source=..\SamplesCS\Scheduler\ImportExport\CustomImporterExporter.cs region=importExport}} 
{{source=..\SamplesVB\Scheduler\ImportExport\CustomImporterExporter.vb region=importExport}} 

````C#
    public class CustomImporter : ISchedulerImporter
    {
        public void Import(ISchedulerData data, string stringData)
        {
            //TODO Parse the string data and fill
            //data.GetEventStorage().Add( created event );
        }
        public void Import(ISchedulerData data, System.IO.Stream stream)
        {
            //TODO Read stream
            //data.GetEventStorage().Add( created event );
        }
    }

    public class CustomExporter : ISchedulerExporter
    {
        public string Export(ISchedulerData data)
        {
            string result = string.Empty;
            //Save events to string value
            //data.GetEventStorage(); - return all events
            return result;
        }

        public void Export(ISchedulerData data, System.IO.Stream stream)
        {
            //Save events to the stream
            //data.GetEventStorage(); - return all events
        }
    }
````
````VB.NET
Public Class CustomImporter
    Implements ISchedulerImporter

    Public Sub Import(ByVal data As ISchedulerData, ByVal stringData As String) Implements ISchedulerImporter.Import
        'TODO Parse the string data and fill
        'data.GetEventStorage().Add( created event );
    End Sub
    Public Sub Import(ByVal data As ISchedulerData, ByVal stream As System.IO.Stream) Implements ISchedulerImporter.Import
        'TODO Read stream
        'data.GetEventStorage().Add( created event );
    End Sub
End Class

Public Class CustomExporter
    Implements ISchedulerExporter

    Public Function Export(ByVal data As ISchedulerData) As String Implements ISchedulerExporter.Export
        Dim result As String = String.Empty
        'Save events to string value
        'data.GetEventStorage(); - return all events
        Return result
    End Function
    Public Sub Export(ByVal data As ISchedulerData, ByVal stream As System.IO.Stream) Implements ISchedulerExporter.Export
        'Save events to the stream
        'data.GetEventStorage(); - return all events
    End Sub
End Class
'
````

{{endregion}} 

2\. Then you need to pass the instances of these classes to the Import and Export methods of the scheduler:

{{source=..\SamplesCS\Scheduler\ImportExport\ImEx.cs region=imEx}} 
{{source=..\SamplesVB\Scheduler\ImportExport\ImEx.vb region=imEx}} 

````C#
            //Import
            using (FileStream fileStream = File.Create("file name"))
            {
                this.radScheduler1.Import(fileStream, new CustomImporter());
            }
            //Export
            using (FileStream fileStream = File.Create("file name"))
            {
                this.radScheduler1.Export(fileStream, new CustomExporter());
            }
````
````VB.NET
        'Import
        Using fileStream As FileStream = File.Create("file name")
            Me.RadScheduler1.Import(fileStream, New CustomImporter())
        End Using
        'Export
        Using fileStream As FileStream = File.Create("file name")
            Me.RadScheduler1.Export(fileStream, New CustomExporter())
        End Using
        '
````

{{endregion}} 

