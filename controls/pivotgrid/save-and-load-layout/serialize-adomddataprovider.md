---
title: Serialize AdomdDataProvider
page_title: Serialize AdomdDataProvider - RadPivotGrid
description: In this article we will show you how to serialize and deserialize AdomdDataProvider and all of its settings.
slug: winforms/pivotgrid/save-and-load-layout/serialize-adomddataprovider
tags: save,and,load,layout
published: True
position: 1
---

# Serialize AdomdDataProvider

In this article we will show you how to serialize and deserialize __AdomdDataProvider__ and all of its settings. You can use this feature to save the current state of the provider and load it next time when the application is started.

## Serialize AdomdDataProvider with DataContractSerializer

We've added the DataContract attribute to all classes used by __AdomdDataProvider__. So you can easily serialize it by using DataContractSerializer. Below you will find out how to create a serializer and use it with __RadPivotGrid__.

#### Define Members

{{source=..\SamplesCS\PivotGrid\PivotGridSerializeCubeDataProvider.cs region=DataProviderSettings}} 
{{source=..\SamplesVB\PivotGrid\PivotGridSerializeCubeDataProvider.vb region=DataProviderSettings}} 

````C#
    
[DataContract]
public class DataProviderSettings
{
    [DataMember]
    public object[] Aggregates { get; set; }
    
    [DataMember]
    public object[] Filters { get; set; }
    
    [DataMember]
    public object[] Rows { get; set; }
    
    [DataMember]
    public object[] Columns { get; set; }
    
    [DataMember]
    public int AggregatesLevel { get; set; }
    [DataMember]
    public PivotAxis AggregatesPosition { get; set; }
}

````
````VB.NET
<DataContract> _
Public Class DataProviderSettings
    <DataMember> _
    Public Property Aggregates() As Object()
        Get
            Return m_Aggregates
        End Get
        Set(value As Object())
            m_Aggregates = value
        End Set
    End Property
    Private m_Aggregates As Object()
    <DataMember> _
    Public Property Filters() As Object()
        Get
            Return m_Filters
        End Get
        Set(value As Object())
            m_Filters = value
        End Set
    End Property
    Private m_Filters As Object()
    <DataMember> _
    Public Property Rows() As Object()
        Get
            Return m_Rows
        End Get
        Set(value As Object())
            m_Rows = value
        End Set
    End Property
    Private m_Rows As Object()
    <DataMember> _
    Public Property Columns() As Object()
        Get
            Return m_Columns
        End Get
        Set(value As Object())
            m_Columns = value
        End Set
    End Property
    Private m_Columns As Object()
    <DataMember> _
    Public Property AggregatesLevel() As Integer
        Get
            Return m_AggregatesLevel
        End Get
        Set(value As Integer)
            m_AggregatesLevel = value
        End Set
    End Property
    Private m_AggregatesLevel As Integer
    <DataMember> _
    Public Property AggregatesPosition() As PivotAxis
        Get
            Return m_AggregatesPosition
        End Get
        Set(value As PivotAxis)
            m_AggregatesPosition = value
        End Set
    End Property
    Private m_AggregatesPosition As PivotAxis
End Class

````

{{endregion}}

The next step is to implement the serializer. When serializing the provider, you have to create an instance of the __DataProviderSettings__ class and set all of the properties. After that you can serialize the instance to a file or a stream. When using __DataContractSerializer__ you have to pass a collection of *KnownTypes* to the serializer. That's why we've created a new __AdomdPivotSerializationHelper__ class which has a static member - __KnownTypes__. It consits of all types you'll need in order to serialize __AdomdDataProvider__. 

#### Data Provider Implementation

{{source=..\SamplesCS\PivotGrid\PivotGridSerializeCubeDataProvider.cs region=DataProviderSerializer}} 
{{source=..\SamplesVB\PivotGrid\PivotGridSerializeCubeDataProvider.vb region=DataProviderSerializer}} 

````C#
    
public abstract class DataProviderSerializer
{
    public abstract IEnumerable<Type> KnownTypes { get; }
        
    public string Serialize(object context)
    {
        string serialized = string.Empty;
        IDataProvider dataProvider = context as IDataProvider;
        if (dataProvider != null)
        {
            MemoryStream stream = new MemoryStream();
                
            DataProviderSettings settings = new DataProviderSettings()
            {
                Aggregates = dataProvider.Settings.AggregateDescriptions.OfType<object>().ToArray(),
                Filters = dataProvider.Settings.FilterDescriptions.OfType<object>().ToArray(),
                Rows = dataProvider.Settings.RowGroupDescriptions.OfType<object>().ToArray(),
                Columns = dataProvider.Settings.ColumnGroupDescriptions.OfType<object>().ToArray(),
                AggregatesLevel = dataProvider.Settings.AggregatesLevel,
                AggregatesPosition = dataProvider.Settings.AggregatesPosition
            };
            
            DataContractSerializer serializer = new DataContractSerializer(typeof(DataProviderSettings), KnownTypes);
            serializer.WriteObject(stream, settings);
            stream.Position = 0;
            var streamReader = new StreamReader(stream);
            serialized += streamReader.ReadToEnd();
        }
    
        return serialized;
    }
        
    public void Deserialize(object context, string savedValue)
    {
        IDataProvider dataProvider = context as IDataProvider;
        if (dataProvider != null)
        {
            var stream = new MemoryStream();
            var tw = new StreamWriter(stream);
            tw.Write(savedValue);
            tw.Flush();
            stream.Position = 0;
            
            DataContractSerializer serializer = new DataContractSerializer(typeof(DataProviderSettings), KnownTypes);
            var result = serializer.ReadObject(stream);
            
            dataProvider.Settings.AggregateDescriptions.Clear();
            foreach (var aggregateDescription in (result as DataProviderSettings).Aggregates)
            {
                dataProvider.Settings.AggregateDescriptions.Add(aggregateDescription);
            }
            
            dataProvider.Settings.FilterDescriptions.Clear();
            foreach (var filterDescription in (result as DataProviderSettings).Filters)
            {
                dataProvider.Settings.FilterDescriptions.Add(filterDescription);
            }
            
            dataProvider.Settings.RowGroupDescriptions.Clear();
            foreach (var rowDescription in (result as DataProviderSettings).Rows)
            {
                dataProvider.Settings.RowGroupDescriptions.Add(rowDescription);
            }
            
            dataProvider.Settings.ColumnGroupDescriptions.Clear();
            foreach (var columnDescription in (result as DataProviderSettings).Columns)
            {
                dataProvider.Settings.ColumnGroupDescriptions.Add(columnDescription);
            }
    
            dataProvider.Settings.AggregatesPosition = (result as DataProviderSettings).AggregatesPosition;
            dataProvider.Settings.AggregatesLevel = (result as DataProviderSettings).AggregatesLevel;
        }
    }
}

````
````VB.NET
Public MustInherit Class DataProviderSerializer
    Public MustOverride ReadOnly Property KnownTypes() As IEnumerable(Of Type)
    Public Function Serialize(context As Object) As String
        Dim serialized As String = String.Empty
        Dim dataProvider As IDataProvider = TryCast(context, IDataProvider)
        If dataProvider IsNot Nothing Then
            Dim stream As New MemoryStream()
            Dim settings As New DataProviderSettings() With {
                 .Aggregates = dataProvider.Settings.AggregateDescriptions.OfType(Of Object)().ToArray(),
                 .Filters = dataProvider.Settings.FilterDescriptions.OfType(Of Object)().ToArray(),
                 .Rows = dataProvider.Settings.RowGroupDescriptions.OfType(Of Object)().ToArray(),
                 .Columns = dataProvider.Settings.ColumnGroupDescriptions.OfType(Of Object)().ToArray(),
                 .AggregatesLevel = dataProvider.Settings.AggregatesLevel,
                 .AggregatesPosition = dataProvider.Settings.AggregatesPosition
            }
            Dim serializer As New DataContractSerializer(GetType(DataProviderSettings), KnownTypes)
            serializer.WriteObject(stream, settings)
            stream.Position = 0
            Dim streamReader = New StreamReader(stream)
            serialized += streamReader.ReadToEnd()
        End If
        Return serialized
    End Function
    Public Sub Deserialize(context As Object, savedValue As String)
        Dim dataProvider As IDataProvider = TryCast(context, IDataProvider)
        If dataProvider IsNot Nothing Then
            Dim stream = New MemoryStream()
            Dim tw = New StreamWriter(stream)
            tw.Write(savedValue)
            tw.Flush()
            stream.Position = 0
            Dim serializer As New DataContractSerializer(GetType(DataProviderSettings), KnownTypes)
            Dim result = serializer.ReadObject(stream)
            dataProvider.Settings.AggregateDescriptions.Clear()
            For Each aggregateDescription As AggregateDescriptionBase In TryCast(result, DataProviderSettings).Aggregates
                dataProvider.Settings.AggregateDescriptions.Add(aggregateDescription)
            Next
            dataProvider.Settings.FilterDescriptions.Clear()
            For Each filterDescription As FilterDescription In TryCast(result, DataProviderSettings).Filters
                dataProvider.Settings.FilterDescriptions.Add(filterDescription)
            Next
            dataProvider.Settings.RowGroupDescriptions.Clear()
            Dim rows = TryCast(result, DataProviderSettings).Rows
            For index = 0 To rows.Count - 1
                dataProvider.Settings.RowGroupDescriptions.Add(rows(index))
            Next
            dataProvider.Settings.ColumnGroupDescriptions.Clear()
            Dim columns = TryCast(result, DataProviderSettings).Columns
            For index = 0 To columns.Count - 1
                dataProvider.Settings.ColumnGroupDescriptions.Add(columns(index))
            Next
            dataProvider.Settings.AggregatesPosition = TryCast(result, DataProviderSettings).AggregatesPosition
            dataProvider.Settings.AggregatesLevel = TryCast(result, DataProviderSettings).AggregatesLevel
        End If
    End Sub
End Class

````

{{endregion}}

{{source=..\SamplesCS\PivotGrid\PivotGridSerializeCubeDataProvider.cs region=AdomdProviderSerializer}} 
{{source=..\SamplesVB\PivotGrid\PivotGridSerializeCubeDataProvider.vb region=AdomdProviderSerializer}} 

````C#
        
public class AdomdProviderSerializer : DataProviderSerializer
{
    public override IEnumerable<Type> KnownTypes
    {
        get
        {
            return AdomdPivotSerializationHelper.KnownTypes;
        }
    }
}

````
````VB.NET
Public Class AdomdProviderSerializer
    Inherits DataProviderSerializer
    Public Overrides ReadOnly Property KnownTypes() As IEnumerable(Of Type)
        Get
            Return AdomdPivotSerializationHelper.KnownTypes
        End Get
    End Property
End Class

````

{{endregion}}

So the last step is to serialize the provider and deserialize it.

#### Using the AdomdProviderSerializer

{{source=..\SamplesCS\PivotGrid\PivotGridSerializeCubeDataProvider.cs region=SampleUsageAdomd}} 
{{source=..\SamplesVB\PivotGrid\PivotGridSerializeCubeDataProvider.vb region=SampleUsageAdomd}} 

````C#
        
string lastAdomdSerializadProvider = "";
        
private void serializeAdomdBtn_Click(object sender, EventArgs e)
{
    AdomdProviderSerializer serializeProvider = new AdomdProviderSerializer();
    this.lastAdomdSerializadProvider = serializeProvider.Serialize(this.radPivotGrid1.DataProvider);
}
        
private void deserializeAdomdBtn_Click(object sender, EventArgs e)
{
    AdomdProviderSerializer provider = new AdomdProviderSerializer();
    provider.Deserialize(this.radPivotGrid1.DataProvider, this.lastAdomdSerializadProvider);
}

````
````VB.NET
Private lastAdomdSerializadProvider As String = ""
Private Sub serializeAdomdBtn_Click(sender As Object, e As EventArgs) Handles serializeAdomdBtn.Click
    Dim serializeProvider As New AdomdProviderSerializer()
    Me.lastAdomdSerializadProvider = serializeProvider.Serialize(Me.RadPivotGrid1.DataProvider)
End Sub
Private Sub deserializeAdomdBtn_Click(sender As Object, e As EventArgs) Handles deserializeAdomdBtn.Click
    Dim provider As New AdomdProviderSerializer()
    provider.Deserialize(Me.RadPivotGrid1.DataProvider, Me.lastAdomdSerializadProvider)
End Sub

````

{{endregion}}

# See Also

* [Serialize LocalDataSourceProvider]({%slug winforms/pivotgrid/save-load-layout/overview%})
