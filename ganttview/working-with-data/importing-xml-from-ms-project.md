---
title: Importing XML from MS Project
page_title: Importing XML from MS Project | RadGanttView
description: We have prepared a class that would help you import an MS Project saved as xml.
slug: winforms/ganttview-/working-with-data/importing-xml-from-ms-project
tags: importing,xml,from,ms,project
published: True
position: 5
previous_url: ganttview-working-with-data-importing-xml-from-msproject
---

# Importing XML from MS Project

Although __RadGanttView__ does not support direct binding or importing of MS Project files we have prepared a class that would help you import an MS Project saved as xml.
        
{{source=..\SamplesCS\GanttView\WorkingWithData\ImportXmlFromMsProject.cs region=MsProjectImport}} 
{{source=..\SamplesVB\GanttView\WorkingWithData\ImportXmlFromMsProject.vb region=MsProjectImport}} 

````C#
public class MsProjectImporter
{
    private Dictionary<int, List<DataRow>> tasksByLevel;
    private DataSet dataSet;
    public DataSet GetData(TextReader reader)
    {
        XmlDocument doc = new XmlDocument();
        doc.Load(reader);
        this.InitializeDataStructures();
        this.ExtractTasks(doc);
        ImporterNode root = this.BuildTasksHierarchy();
        this.SaveTasksDataTable(root);
        this.SaveLinksDataTable(doc);
        return this.dataSet;
    }
    private void InitializeDataStructures()
    {
        this.tasksByLevel = new Dictionary<int, List<DataRow>>();
        DataTable tasks = new DataTable("Tasks");
        tasks.Columns.Add("Id", typeof(int));
        tasks.Columns.Add("ParentId", typeof(int));
        tasks.Columns.Add("Title", typeof(string));
        tasks.Columns.Add("Start", typeof(DateTime));
        tasks.Columns.Add("End", typeof(DateTime));
        tasks.Columns.Add("Progress", typeof(decimal));
        tasks.Columns.Add("Outline", typeof(string));
        DataTable links = new DataTable("Links");
        links.Columns.Add("StartId", typeof(int));
        links.Columns.Add("EndId", typeof(int));
        links.Columns.Add("LinkType", typeof(int));
        this.dataSet = new DataSet();
        this.dataSet.Tables.Add(tasks);
        this.dataSet.Tables.Add(links);
    }
    private ImporterNode BuildTasksHierarchy()
    {
        ImporterNode root = null;
        foreach (int key in this.tasksByLevel.Keys)
        {
            if (key == 0)
            {
                root = new ImporterNode();
                root.Row = this.tasksByLevel[key][0];
                continue;
            }
            foreach (DataRow row in this.tasksByLevel[key])
            {
                List<string> outlineIndexes = new List<string>(row["Outline"].ToString().Split('.'));
                ImporterNode parent = root;
                while (outlineIndexes.Count > 1)
                {
                    parent = parent.Children[int.Parse(outlineIndexes[0]) - 1];
                    outlineIndexes.RemoveAt(0);
                }
                ImporterNode newNode = new ImporterNode();
                newNode.Row = row;
                newNode.Row["ParentId"] = parent.Row["Id"];
                parent.Children.Add(newNode);
            }
        }
        return root;
    }
    private void ExtractTasks(XmlDocument doc)
    {
        foreach (XmlNode node in doc.DocumentElement["Tasks"].ChildNodes)
        {
            if (node["OutlineNumber"] == null)
            {
                continue;
            }
            DataRow row = this.dataSet.Tables["Tasks"].NewRow();
            int outlineLevel = int.Parse(node["OutlineLevel"].InnerText);
            int id = int.Parse(node["UID"].InnerText);
            row["Id"] = id;
            row["ParentId"] = 0;
            row["Title"] = node["Name"].InnerText;
            row["Start"] = DateTime.Parse(node["Start"].InnerText);
            row["End"] = DateTime.Parse(node["Finish"].InnerText);
            row["Progress"] = decimal.Parse(node["PercentComplete"].InnerText);
            row["Outline"] = node["OutlineNumber"].InnerText;
            if (this.tasksByLevel.ContainsKey(outlineLevel))
            {
                this.tasksByLevel[outlineLevel].Add(row);
            }
            else
            {
                this.tasksByLevel.Add(outlineLevel, new List<DataRow>() { row });
            }
        }
    }
    private void SaveTasksDataTable(ImporterNode root)
    {
        Queue<ImporterNode> queue = new Queue<ImporterNode>();
        foreach (ImporterNode node in root.Children)
        {
            queue.Enqueue(node);
        }
        while (queue.Count > 0)
        {
            ImporterNode node = queue.Dequeue();
            foreach (ImporterNode item in node.Children)
            {
                queue.Enqueue(item);
            }
            this.dataSet.Tables["Tasks"].Rows.Add(node.Row);
        }
        dataSet.Tables["Tasks"].Columns.Remove("Outline");
    }
    private void SaveLinksDataTable(XmlDocument doc)
    {
        foreach (XmlNode node in doc.DocumentElement["Tasks"].ChildNodes)
        {
            XmlNode predecessor = node["PredecessorLink"];
            if (predecessor != null)
            {
                int id = int.Parse(node["UID"].InnerText);
                int startId = int.Parse(predecessor["PredecessorUID"].InnerText);
                int linkType = int.Parse(predecessor["Type"].InnerText);
                this.dataSet.Tables["Links"].Rows.Add(startId, id, linkType);
            }
        }
    }
}
public class ImporterNode
{
    private DataRow row;
    private List<ImporterNode> children;
    public ImporterNode()
    {
        this.children = new List<ImporterNode>();
    }
    public DataRow Row
    {
        get { return row; }
        set { row = value; }
    }
    public List<ImporterNode> Children
    {
        get { return children; }
    }
}

````
````VB.NET
Public Class MsProjectImporter
    Private tasksByLevel As Dictionary(Of Integer, List(Of DataRow))
    Private dataSet As DataSet
    Public Function GetData(reader As TextReader) As DataSet
        Dim doc As New XmlDocument()
        doc.Load(reader)
        Me.InitializeDataStructures()
        Me.ExtractTasks(doc)
        Dim root As ImporterNode = Me.BuildTasksHierarchy()
        Me.SaveTasksDataTable(root)
        Me.SaveLinksDataTable(doc)
        Return Me.dataSet
    End Function
    Private Sub InitializeDataStructures()
        Me.tasksByLevel = New Dictionary(Of Integer, List(Of DataRow))()
        Dim tasks As New DataTable("Tasks")
        tasks.Columns.Add("Id", GetType(Integer))
        tasks.Columns.Add("ParentId", GetType(Integer))
        tasks.Columns.Add("Title", GetType(String))
        tasks.Columns.Add("Start", GetType(DateTime))
        tasks.Columns.Add("End", GetType(DateTime))
        tasks.Columns.Add("Progress", GetType(Decimal))
        tasks.Columns.Add("Outline", GetType(String))
        Dim links As New DataTable("Links")
        links.Columns.Add("StartId", GetType(Integer))
        links.Columns.Add("EndId", GetType(Integer))
        links.Columns.Add("LinkType", GetType(Integer))
        Me.dataSet = New DataSet()
        Me.dataSet.Tables.Add(tasks)
        Me.dataSet.Tables.Add(links)
    End Sub
    Private Function BuildTasksHierarchy() As ImporterNode
        Dim root As ImporterNode = Nothing
        For Each key As Integer In Me.tasksByLevel.Keys
            If key = 0 Then
                root = New ImporterNode()
                root.Row = Me.tasksByLevel(key)(0)
                Continue For
            End If
            For Each row As DataRow In Me.tasksByLevel(key)
                Dim outlineIndexes As New List(Of String)(row("Outline").ToString().Split("."c))
                Dim parent As ImporterNode = root
                While outlineIndexes.Count > 1
                    parent = parent.Children(Integer.Parse(outlineIndexes(0)) - 1)
                    outlineIndexes.RemoveAt(0)
                End While
                Dim newNode As New ImporterNode()
                newNode.Row = row
                newNode.Row("ParentId") = parent.Row("Id")
                parent.Children.Add(newNode)
            Next
        Next
        Return root
    End Function
    Private Sub ExtractTasks(doc As XmlDocument)
        For Each node As XmlNode In doc.DocumentElement("Tasks").ChildNodes
            If node("OutlineNumber") Is Nothing Then
                Continue For
            End If
            Dim row As DataRow = Me.dataSet.Tables("Tasks").NewRow()
            Dim outlineLevel As Integer = Integer.Parse(node("OutlineLevel").InnerText)
            Dim id As Integer = Integer.Parse(node("UID").InnerText)
            row("Id") = id
            row("ParentId") = 0
            row("Title") = node("Name").InnerText
            row("Start") = DateTime.Parse(node("Start").InnerText)
            row("End") = DateTime.Parse(node("Finish").InnerText)
            row("Progress") = Decimal.Parse(node("PercentComplete").InnerText)
            row("Outline") = node("OutlineNumber").InnerText
            If Me.tasksByLevel.ContainsKey(outlineLevel) Then
                Me.tasksByLevel(outlineLevel).Add(row)
            Else
                Me.tasksByLevel.Add(outlineLevel, New List(Of DataRow)() From { _
                 row _
                })
            End If
        Next
    End Sub
    Private Sub SaveTasksDataTable(root As ImporterNode)
        Dim queue As New Queue(Of ImporterNode)()
        For Each node As ImporterNode In root.Children
            queue.Enqueue(node)
        Next
        While queue.Count > 0
            Dim node As ImporterNode = queue.Dequeue()
            For Each item As ImporterNode In node.Children
                queue.Enqueue(item)
            Next
            Me.dataSet.Tables("Tasks").Rows.Add(node.Row)
        End While
        dataSet.Tables("Tasks").Columns.Remove("Outline")
    End Sub
    Private Sub SaveLinksDataTable(doc As XmlDocument)
        For Each node As XmlNode In doc.DocumentElement("Tasks").ChildNodes
            Dim predecessor As XmlNode = node("PredecessorLink")
            If predecessor IsNot Nothing Then
                Dim id As Integer = Integer.Parse(node("UID").InnerText)
                Dim startId As Integer = Integer.Parse(predecessor("PredecessorUID").InnerText)
                Dim linkType As Integer = Integer.Parse(predecessor("Type").InnerText)
                Me.dataSet.Tables("Links").Rows.Add(startId, id, linkType)
            End If
        Next
    End Sub
End Class
Public Class ImporterNode
    Private m_row As DataRow
    Private m_children As List(Of ImporterNode)
    Public Sub New()
        Me.m_children = New List(Of ImporterNode)()
    End Sub
    Public Property Row() As DataRow
        Get
            Return m_row
        End Get
        Set(value As DataRow)
            m_row = value
        End Set
    End Property
    Public ReadOnly Property Children() As List(Of ImporterNode)
        Get
            Return m_children
        End Get
    End Property
End Class

````

{{endregion}} 
 

After you have this code in your project you can load the data from the xml into __RadGanttView__ like this: 

{{source=..\SamplesCS\GanttView\WorkingWithData\ImportXmlFromMsProject.cs region=ImportXmlIntoGanttView}} 
{{source=..\SamplesVB\GanttView\WorkingWithData\ImportXmlFromMsProject.vb region=ImportXmlIntoGanttView}} 

````C#
string fileLocation = @"C:\file.xml";
MsProjectImporter importer = new MsProjectImporter(); 
StringReader reader = new StringReader(fileLocation); 
DataSet dataSet = importer.GetData(reader);
this.radGanttView1.DataSource = dataSet;

````
````VB.NET
Dim fileLocation As String = "C:\file.xml"
Dim importer As New MsProjectImporter()
Dim reader As New StringReader(fileLocation)
Dim dataSet As DataSet = importer.GetData(reader)

````

{{endregion}} 

# See Also  

* [Binding to Database]({%slug winforms/ganttview-/working-with-data/binding-to-database%})
* [Data Binding Basics]({%slug winforms/ganttview-/working-with-data/data-binding-basics%})
* [Adding new items]({%slug winforms/ganttview-/working-with-data/adding-new-items%})
* [Link Type Converter]({%slug winforms/ganttview-/working-with-data/link-type-converter%})
* [Populating with Data Programmatically]({%slug winforms/ganttview-/working-with-data/populating-with-data-programmatically%})

