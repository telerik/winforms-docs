---
title: RadGridView CRUD in Object Relational Hierarchy Mode
description: RadGridView CRUD in Object Relational Hierarchy Mode. Check it now!
type: how-to
page_title: RadGridView CRUD in Object Relational Hierarchy Mode
slug: radgridview-crud-in-object-relational-hierarchy-mode
res_type: kb
---

|Product Version|Product|Author|Last modified|
|----|----|----|----|
|2015.1.331|RadGridView for WinForms|[Hristo Merdjanov](https://www.telerik.com/blogs/author/hristo-merdjanov)|April 27, 2015|

# Problem
 
Due to performance considerations, the **RadGridView** bound to an object-relational hierarchy supports CRUD operations only for its first level. The following example demonstrates how this functionality can be extended and CRUD be implemented for the inner levels as well.
 
# Solution
 
Keep track of the changes and update the data source object accordingly. This can be accomplished by handling the following events:
 
- **CellValueChanged** - update the data source when a value is modified in the grid
- **UserAddingRow** - update the data source when a new row is being added
- **UserAddedRow** - refresh the **GridViewTemplate** associated with the added row
- **UserDeletedRow** - update the data source when a row is deleted

>note Telerik UI for WinForms suite offers a [RadVirtualGrid](https://docs.telerik.com/devtools/winforms/controls/virtualgrid/overview) control which provides a convenient way to implement your own data management operations and optimizes the performance when interacting with large amounts of data. It may also be a good approach to follow. 

Let`s first create our models according to which we will build the hierarchy:

````C#
[Serializable]
public class Artist
{
    private int id;
    private string name;
    private List<Album> albums = new List<Album>();
 
    public Artist()
    {
    }
 
    public Artist(int id, string name)
    {
        this.id = id;
        this.name = name;
    }
 
    public int Id
    {
        get { return id; }
        set { id = value; }
    }
     
    public string Name
    {
        get { return name; }
        set { name = value; }
    }
 
    public List<Album> Albums
    {
        get { return albums; }
    }
}
 
[Serializable]
public class Album
{
    private int id;
    private int artistId;
    private string title;
    private List<Track> tracks = new List<Track>();
 
    public Album()
    {
    }
 
    public Album(int id, int artistId, string title)
    {
        this.id = id;
        this.artistId = artistId;
        this.title = title;
    }
 
    public int Id
    {
        get { return id; }
        set { id = value; }
    }
 
    public int ArtistId
    {
        get { return artistId; }
        set { artistId = value; }
    }
 
    public string Title
    {
        get { return title; }
        set { title = value; }
    }
 
    public List<Track> Tracks
    {
        get { return this.tracks; }
    }
}
 
[Serializable]
public class Track
{
    private int id;
    private string name;
    private string mediaType;
    private string genre;
    private string size;
 
    public Track()
    {
    }
 
    public Track(int id, string name, string mediaType, string genre, string size)
    {
        this.id = id;
        this.name = name;
        this.mediaType = mediaType;
        this.genre = genre;
        this.size = size;
    }
 
    public int Id
    {
        get { return id; }
        set { id = value; }
    }
     
    public string Name
    {
        get { return name; }
        set { name = value; }
    }
     
    public string MediaType
    {
        get { return mediaType; }
        set { mediaType = value; }
    }
     
    public string Genre
    {
        get { return genre; }
        set { genre = value; }
    }
 
    public string Size
    {
        get { return size; }
        set { size = value; }
    }
}

````
````VB.NET
<Serializable> _
Public Class Artist
    Private m_id As Integer
    Private m_name As String
    Private m_albums As New List(Of Album)()
 
 
    Public Sub New()
    End Sub
 
    Public Sub New(id As Integer, name As String)
        Me.m_id = id
        Me.m_name = name
    End Sub
 
    Public Property Id() As Integer
        Get
            Return m_id
        End Get
        Set(value As Integer)
            m_id = value
        End Set
    End Property
 
    Public Property Name() As String
        Get
            Return m_name
        End Get
        Set(value As String)
            m_name = value
        End Set
    End Property
 
    Public ReadOnly Property Albums() As List(Of Album)
        Get
            Return m_albums
        End Get
    End Property
End Class
 
<Serializable> _
Public Class Album
    Private m_id As Integer
    Private m_artistId As Integer
    Private m_title As String
    Private m_tracks As New List(Of Track)()
 
 
    Public Sub New()
    End Sub
 
    Public Sub New(id As Integer, artistId As Integer, title As String)
        Me.m_id = id
        Me.m_artistId = artistId
        Me.m_title = title
    End Sub
 
    Public Property Id() As Integer
        Get
            Return m_id
        End Get
        Set(value As Integer)
            m_id = value
        End Set
    End Property
 
    Public Property ArtistId() As Integer
        Get
            Return m_artistId
        End Get
        Set(value As Integer)
            m_artistId = value
        End Set
    End Property
 
    Public Property Title() As String
        Get
            Return m_title
        End Get
        Set(value As String)
            m_title = value
        End Set
    End Property
 
    Public ReadOnly Property Tracks() As List(Of Track)
        Get
            Return Me.m_tracks
        End Get
    End Property
End Class
 
<Serializable> _
Public Class Track
    Private m_id As Integer
    Private m_name As String
    Private m_mediaType As String
    Private m_genre As String
    Private m_size As String
 
 
    Public Sub New()
    End Sub
 
    Public Sub New(id As Integer, name As String, mediaType As String, genre As String, size As String)
        Me.m_id = id
        Me.m_name = name
        Me.m_mediaType = mediaType
        Me.m_genre = genre
        Me.m_size = size
    End Sub
 
    Public Property Id() As Integer
        Get
            Return m_id
        End Get
        Set(value As Integer)
            m_id = value
        End Set
    End Property
 
    Public Property Name() As String
        Get
            Return m_name
        End Get
        Set(value As String)
            m_name = value
        End Set
    End Property
 
    Public Property MediaType() As String
        Get
            Return m_mediaType
        End Get
        Set(value As String)
            m_mediaType = value
        End Set
    End Property
 
    Public Property Genre() As String
        Get
            Return m_genre
        End Get
        Set(value As String)
            m_genre = value
        End Set
    End Property
 
    Public Property Size() As String
        Get
            Return m_size
        End Get
        Set(value As String)
            m_size = value
        End Set
    End Property
End Class

````

We also need a data context to which we are going to bind the **RadGridView:**

````C#
public class DataContext
{
    private static List<Artist> artistsField = null;
    private static List<Artist> topArtistsField = null;
 
    protected DataContext()
    {
    }
 
    public static List<Artist> Artists
    {
        get
        {
            if (artistsField == null)
            {
                XmlSerializer mySerializer = new XmlSerializer(typeof(List<Artist>));
                FileStream myFileStream = new FileStream(@"..\..\artists.xml", FileMode.Open);
                artistsField = (List<Artist>)mySerializer.Deserialize(myFileStream);
            }
 
            return artistsField;
        }
    }
 
    public static List<Artist> TopArtists
    {
        get
        {
            if (topArtistsField == null)
            {
                using (MemoryStream stream = new MemoryStream(Resources.ChinookModel))
                {
                    XmlSerializer mySerializer = new XmlSerializer(typeof(List<Artist>));
                    FileStream myFileStream = new FileStream(@"..\..\artists.xml", FileMode.Open);
                    topArtistsField = (List<Artist>)mySerializer.Deserialize(myFileStream);
 
                    while (topArtistsField.Count > 50)
                    {
                        topArtistsField.RemoveAt(topArtistsField.Count - 1);
                    }
                }
            }
 
            return topArtistsField;
        }
    }
}

````
````VB.NET
ublic Class DataContext
    Private Shared artistsField As List(Of Artist) = Nothing
    Private Shared topArtistsField As List(Of Artist) = Nothing
 
    Protected Sub New()
    End Sub
 
    Public Shared ReadOnly Property Artists() As List(Of Artist)
        Get
            If artistsField Is Nothing Then
                Dim mySerializer As New XmlSerializer(GetType(List(Of Artist)))
                Dim myFileStream As New FileStream("..\..\artists.xml", FileMode.Open)
                artistsField = DirectCast(mySerializer.Deserialize(myFileStream), List(Of Artist))
            End If
 
            Return artistsField
        End Get
    End Property
 
    Public Shared ReadOnly Property TopArtists() As List(Of Artist)
        Get
            If topArtistsField Is Nothing Then
                Dim mySerializer As New XmlSerializer(GetType(List(Of Artist)))
                Dim myFileStream As New FileStream("..\..\artists.xml", FileMode.Open)
                topArtistsField = DirectCast(mySerializer.Deserialize(myFileStream), List(Of Artist))
 
                While topArtistsField.Count > 50
                    topArtistsField.RemoveAt(topArtistsField.Count - 1)
                End While
            End If
 
            Return topArtistsField
        End Get
    End Property
End Class

````

Back in our form, now we need to set the data source and set up the templates:

````C#
protected override void OnLoad(EventArgs e)
{
    base.OnLoad(e);
 
    this.radGridView1.DataSource = DataContext.Artists;
    this.radGridView1.AutoGenerateHierarchy = true;
 
    this.SetupTemplates();
}
 
private void SetupTemplates()
{
    this.radGridView1.EnableFiltering = true;
    this.radGridView1.Columns["Id"].IsVisible = false;
    this.radGridView1.Columns["Albums"].IsVisible = false;
    this.radGridView1.AutoSizeColumnsMode = GridViewAutoSizeColumnsMode.Fill;
 
    GridViewTemplate albumsTemplate = this.radGridView1.Templates[0];
    albumsTemplate.AllowAddNewRow = true;
    albumsTemplate.Columns["Id"].IsVisible = false;
    albumsTemplate.Columns["ArtistId"].IsVisible = false;
    albumsTemplate.Columns["Tracks"].IsVisible = false;
    albumsTemplate.AutoSizeColumnsMode = GridViewAutoSizeColumnsMode.Fill;
 
    GridViewTemplate tracksTemplate = albumsTemplate.Templates[0];
    tracksTemplate.AllowAddNewRow = true;
    tracksTemplate.Columns["Id"].IsVisible = false;
    tracksTemplate.Columns["Size"].IsVisible = false;
    tracksTemplate.AutoSizeColumnsMode = GridViewAutoSizeColumnsMode.Fill;
}

````
````VB.NET
Protected Overrides Sub OnLoad(e As EventArgs)
    MyBase.OnLoad(e)
 
    Me.RadGridView1.DataSource = DataContext.Artists
    Me.RadGridView1.AutoGenerateHierarchy = True
 
    Me.SetupTemplates()
End Sub
 
Private Sub SetupTemplates()
    Me.RadGridView1.EnableFiltering = True
    Me.RadGridView1.Columns("Id").IsVisible = False
    Me.RadGridView1.Columns("Albums").IsVisible = False
    Me.RadGridView1.AutoSizeColumnsMode = GridViewAutoSizeColumnsMode.Fill
 
    Dim albumsTemplate As GridViewTemplate = Me.RadGridView1.Templates(0)
    albumsTemplate.AllowAddNewRow = True
    albumsTemplate.Columns("Id").IsVisible = False
    albumsTemplate.Columns("ArtistId").IsVisible = False
    albumsTemplate.Columns("Tracks").IsVisible = False
    albumsTemplate.AutoSizeColumnsMode = GridViewAutoSizeColumnsMode.Fill
 
    Dim tracksTemplate As GridViewTemplate = albumsTemplate.Templates(0)
    tracksTemplate.AllowAddNewRow = True
    tracksTemplate.Columns("Id").IsVisible = False
    tracksTemplate.Columns("Size").IsVisible = False
    tracksTemplate.AutoSizeColumnsMode = GridViewAutoSizeColumnsMode.Fill
End Sub

````

In the handler of the **CellValueChanged** event we should track the changes and update the data bound object:

````C#
private void radGridView1_CellValueChanged(object sender, GridViewCellEventArgs e)
{
    if (e.Row is GridViewNewRowInfo || e.Row is GridViewFilteringRowInfo)
    {
        return;
    }
      
    if (e.Row.HierarchyLevel > 0)
    {
        this.SetBoundValue(e.Row.DataBoundItem, e.Column.FieldName, e.Value);
        e.Row.InvalidateRow();
    }
}
 
private bool SetBoundValue(object dataBoundItem, string propertyName, object value)
{
    PropertyDescriptor descriptor = TypeDescriptor.GetProperties(dataBoundItem).Find(propertyName, true);
    if (value != null)
    {
        try
        {
            Type type = Nullable.GetUnderlyingType(descriptor.PropertyType);
            if (descriptor.Converter != null && type != null && type.IsGenericType)
            {
                value = descriptor.Converter.ConvertFromInvariantString(value.ToString());
            }
            descriptor.SetValue(dataBoundItem, value);
            return true;
        }
        catch
        {
            RadMessageBox.Show(string.Concat("Invalid property value for ", propertyName), "Error", MessageBoxButtons.OK, RadMessageIcon.Error);
            return false;
        }
    }
    else
    {
        try
        {
            descriptor.SetValue(dataBoundItem, value);
        }
        catch
        {
            descriptor.SetValue(dataBoundItem, DBNull.Value);
        }
    }
 
    return true;
}

````
````VB.NET
Private Sub radGridView1_CellValueChanged(sender As Object, e As GridViewCellEventArgs) Handles RadGridView1.CellValueChanged
    If TypeOf e.Row Is GridViewNewRowInfo OrElse TypeOf e.Row Is GridViewFilteringRowInfo Then
        Return
    End If
 
    If e.Row.HierarchyLevel > 0 Then
        Me.SetBoundValue(e.Row.DataBoundItem, e.Column.FieldName, e.Value)
        e.Row.InvalidateRow()
    End If
End Sub
 
Private Function SetBoundValue(dataBoundItem As Object, propertyName As String, value As Object) As Boolean
    Dim descriptor As PropertyDescriptor = TypeDescriptor.GetProperties(dataBoundItem).Find(propertyName, True)
    If value IsNot Nothing Then
        Try
            Dim type As Type = Nullable.GetUnderlyingType(descriptor.PropertyType)
            If descriptor.Converter IsNot Nothing AndAlso type IsNot Nothing AndAlso type.IsGenericType Then
                value = descriptor.Converter.ConvertFromInvariantString(value.ToString())
            End If
            descriptor.SetValue(dataBoundItem, value)
            Return True
        Catch
            RadMessageBox.Show(String.Concat("Invalid property value for ", propertyName), "Error", MessageBoxButtons.OK, RadMessageIcon.[Error])
            Return False
        End Try
    Else
        Try
            descriptor.SetValue(dataBoundItem, value)
        Catch
            descriptor.SetValue(dataBoundItem, DBNull.Value)
        End Try
    End If
 
    Return True
End Function

````

Now we need to handle the events concerning the addition and deletion of rows for the inner levels of our hierarchy:

````C#
private void radGridView1_UserAddingRow(object sender, GridViewRowCancelEventArgs e)
{
    GridViewRowInfo row = e.Rows[0];
    if (row.HierarchyLevel == 0)
    {
        return;
    }
 
    GridViewRelation relation = this.radGridView1.Relations.Find(row.ViewTemplate.Parent, row.ViewTemplate);
    GridViewRowInfo parentRow = row.Parent as GridViewRowInfo;
    PropertyDescriptorCollection parentProperties = ListBindingHelper.GetListItemProperties(parentRow.DataBoundItem);
    PropertyDescriptor childDescriptor = parentProperties.Find(relation.ChildColumnNames[0], true);
    if (childDescriptor != null)
    {
        IList children = childDescriptor.GetValue(parentRow.DataBoundItem) as IList;
        if (children != null)
        {
            object newItem = Activator.CreateInstance(ListBindingHelper.GetListItemType(children));
            bool success = true;
            foreach (GridViewColumn column in row.ViewTemplate.Columns)
            {
                if (column.IsVisible && !column.ReadOnly && row.Cells[column.FieldName].Value != null && success)
                {
                    success = success & this.SetBoundValue(newItem, column.FieldName, row.Cells[column.FieldName].Value);
                }
            }
 
            if (!success)
            {
                e.Cancel = true;
            }
            else
            {
                children.Add(newItem);
            }
        }
    }
}
 
private void radGridView1_UserAddedRow(object sender, GridViewRowEventArgs e)
{
    e.Row.ViewTemplate.Refresh();
}
 
private void radGridView1_UserDeletedRow(object sender, GridViewRowEventArgs e)
{
    GridViewRowInfo[] rows = e.Rows;
    for (int i = 0; i < (int)rows.Length; i++)
    {
        GridViewRowInfo row = rows[i];
        if (row.HierarchyLevel != 0)
        {
            GridViewRelation relation = this.radGridView1.Relations.Find(row.ViewTemplate.Parent, row.ViewTemplate);
            GridViewRowInfo parentRow = row.Parent as GridViewRowInfo;
            PropertyDescriptorCollection parentProperties = ListBindingHelper.GetListItemProperties(parentRow.DataBoundItem);
            PropertyDescriptor childDescriptor = parentProperties.Find(relation.ChildColumnNames[0], true);
            if (childDescriptor != null)
            {
                IList children = childDescriptor.GetValue(parentRow.DataBoundItem) as IList;
                if (children != null)
                {
                    children.Remove(row.DataBoundItem);
                    row.ViewInfo.Refresh();
                     
                    foreach (var childRow in row.ViewInfo.ChildRows)
                    {
                        childRow.InvalidateRow();
                    }
                }
            }
        }
    }
}

````
````VB.NET
Private Sub radGridView1_UserAddingRow(sender As Object, e As GridViewRowCancelEventArgs) Handles RadGridView1.UserAddingRow
    Dim row As GridViewRowInfo = e.Rows(0)
    If row.HierarchyLevel = 0 Then
        Return
    End If
 
    Dim relation As GridViewRelation = Me.RadGridView1.Relations.Find(row.ViewTemplate.Parent, row.ViewTemplate)
    Dim parentRow As GridViewRowInfo = TryCast(row.Parent, GridViewRowInfo)
    Dim parentProperties As PropertyDescriptorCollection = ListBindingHelper.GetListItemProperties(parentRow.DataBoundItem)
    Dim childDescriptor As PropertyDescriptor = parentProperties.Find(relation.ChildColumnNames(0), True)
    If childDescriptor IsNot Nothing Then
        Dim children As IList = TryCast(childDescriptor.GetValue(parentRow.DataBoundItem), IList)
        If children IsNot Nothing Then
            Dim newItem As Object = Activator.CreateInstance(ListBindingHelper.GetListItemType(children))
            Dim success As Boolean = True
            For Each column As GridViewColumn In row.ViewTemplate.Columns
                If column.IsVisible AndAlso Not column.[ReadOnly] AndAlso row.Cells(column.FieldName).Value IsNot Nothing AndAlso success Then
                    success = success And Me.SetBoundValue(newItem, column.FieldName, row.Cells(column.FieldName).Value)
                End If
            Next
 
            If Not success Then
                e.Cancel = True
            Else
                children.Add(newItem)
            End If
        End If
    End If
End Sub
 
Private Sub radGridView1_UserAddedRow(sender As Object, e As GridViewRowEventArgs) Handles RadGridView1.UserAddedRow
    e.Row.ViewTemplate.Refresh()
End Sub
 
Private Sub radGridView1_UserDeletedRow(sender As Object, e As GridViewRowEventArgs) Handles RadGridView1.UserDeletedRow
    Dim rows As GridViewRowInfo() = e.Rows
    For i As Integer = 0 To CInt(rows.Length) - 1
        Dim row As GridViewRowInfo = rows(i)
        If row.HierarchyLevel <> 0 Then
            Dim relation As GridViewRelation = Me.RadGridView1.Relations.Find(row.ViewTemplate.Parent, row.ViewTemplate)
            Dim parentRow As GridViewRowInfo = TryCast(row.Parent, GridViewRowInfo)
            Dim parentProperties As PropertyDescriptorCollection = ListBindingHelper.GetListItemProperties(parentRow.DataBoundItem)
            Dim childDescriptor As PropertyDescriptor = parentProperties.Find(relation.ChildColumnNames(0), True)
            If childDescriptor IsNot Nothing Then
                Dim children As IList = TryCast(childDescriptor.GetValue(parentRow.DataBoundItem), IList)
                If children IsNot Nothing Then
                    children.Remove(row.DataBoundItem)
                    row.ViewInfo.Refresh()
 
                    For Each childRow In row.ViewInfo.ChildRows
                        childRow.InvalidateRow()
                    Next
                End If
            End If
        End If
    Next
End Sub

````

>note You can download a VB and C# project from the following [link](https://github.com/telerik/winforms-sdk/tree/master/GridView/GridObjectRelationalCRUD).
