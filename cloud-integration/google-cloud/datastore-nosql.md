---
title: Google Cloud Datastore(NoSQL database)
page_title: Google Cloud Datastore(NoSQL database)
slug: common-google-cloud-datastore-nosql
position: 4
---

# Google Cloud Datastore (NoSQL database)

Cloud Datastore is a highly-scalable NoSQL database which Google promotes for scenarios that require high-availability and durability, and is capable of multiple features such as ACID transactions, SQL-like queries, indexes and many more. This in combination with the characteristic for the NoSQL database solutions of being able to handle different data types, great scalability and the great performance makes it a choice you should have in mind when considering the architecture of your application. 


# Step 1: Create the Application

First create the WinForms project, to do that create a blank [Telerik UI for WinForms]({%slug winforms/visual-studio-templates%}) project and add a [RadGridView]({%slug winforms/gridview%}) and a button to it. The application design should look like this:

![](images/google_cloud_nosql001.png)

# Step 2: Create the Database

The following tutorial show how you can create the **Datastore** instance - [Datastore Quickstart](https://cloud.google.com/datastore/docs/quickstart). 

The process is strait forward and easy. You need to add some data as well. When ready your database should look like this.

![](images/google_cloud_nosql002.png)

## Step 3: Install the NuGet package.

In order to use the classes needed for manipulating the database, you need to install the __Google.Cloud.DataStore.V1__ NuGet package. It can be found on Nuget's official package source server.  

![](images/google_cloud_nosql003.png)

## Step 4: Connect from the Application

Once you have the library installed, modifying the database is very straightforward. Here is how you set up a connection to your NoSql database:

````C#
DatastoreDb db;
public RadForm1()
{
    InitializeComponent();

    string projectId = "natural-oxygen-200712";
    db = DatastoreDb.Create(projectId);
}
````

>important This would not work if you have not added the __GOOGLE_APPLICATION_CREDENTIALS__ environment variable. This variable should point to your JSON credential file.   

As a first step, you need to create the business object. Here is an example: 

````C#
public class Book
{
    public Key Key { get; set; }
    public string Name { get; set; }
    public string Author { get; set; }
    public DateTime Published { get; set; }

}

````

Now you you can use the above object to store the data from the database. The following code shows how you can retrieve the data:

````C#
private void radButtonLoad_Click(object sender, EventArgs e)
{
    radGridView1.DataSource = GetBooks();             
}
public List<Book> GetBooks()
{
    List<Book> books = new List<Book>();
    Query query = new Query("Books");
  
    DatastoreQueryResults tasks = db.RunQuery(query);

    foreach (var entity in tasks.Entities)
    {
        Book book = new Book();
        book.Author = (string)entity["Author"];
        book.Name = (string)entity["Name"];
        book.Published = (DateTime)entity["Published"];
        book.Key = entity.Key;
        books.Add(book);
    }
    return books;
}

````

Now you can view the data in your application:

![](images/google_cloud_nosql004.png)

## Step 5: Update the database.

A proper place to handle and save any changes is the RpwsChanged event. This way you will be able to handle the add, remove and edit operations. The main part is that you need to keep the key of the entity object in order to get the existing items from the database.  

````C#
private void RadGridView1_RowsChanged(object sender, Telerik.WinControls.UI.GridViewCollectionChangedEventArgs e)
{
    if (e.Action == Telerik.WinControls.Data.NotifyCollectionChangedAction.Add)
    {
        Book newBook = ((GridViewDataRowInfo)e.NewItems[0]).DataBoundItem as Book;

        string kind = "Books";
        string name = "samplebook1";
        KeyFactory keyFactory = db.CreateKeyFactory(kind);
        Key key = keyFactory.CreateKey(name);

        var item = new Entity
        {
            Key = key,
            ["Author"] = newBook.Author,
            ["Published"] = newBook.Published.ToUniversalTime(),
            ["Name"] = newBook.Name

        };
        using (DatastoreTransaction transaction = db.BeginTransaction())
        {
            transaction.Upsert(item);
            transaction.Commit();
        }
    }
    else if (e.Action == Telerik.WinControls.Data.NotifyCollectionChangedAction.Remove)
    {
        Query query = new Query("Books");

        DatastoreQueryResults tasks = db.RunQuery(query);
        var book = ((GridViewDataRowInfo)e.NewItems[0]).DataBoundItem as Book;

        Entity itemToDelete = db.Lookup(book.Key);

        if (itemToDelete != null)
        {
            db.Delete(itemToDelete);
        }
    }
    else if (e.Action == Telerik.WinControls.Data.NotifyCollectionChangedAction.ItemChanged)
    {
        var book = ((GridViewDataRowInfo)e.NewItems[0]).DataBoundItem as Book;
        Entity editedItem = db.Lookup(book.Key);

        editedItem["Author"] = book.Author;
        editedItem["Published"] = book.Published.ToUniversalTime();
        editedItem["Name"] = book.Name;
        db.Update(editedItem);
    }
}

````

 

## See Also

- [Google Cloud Overview]({%slug common-google-cloud-overview%})
- [Google Cloud Translation API]({%slug common-google-cloud-translation%})