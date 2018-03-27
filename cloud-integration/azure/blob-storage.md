---
title: Blob Storage
page_title: Blob Storage | Cloud Services
description: This section shows how one can use various cloud services like GoogleCloud, AWS, and Azure with the Telerik UI For Winforms suite.
slug: cloud-services/azure/blob-storage
tags: cloud,azure,storage
published: True
position: 3
---


# Blob Storage

The Azure Blob Storage allows you to store any type of unstructured data: images, videos, audio, documents, and more. This article will show you how you can create a small application that allows you to manage the the data uploaded to the storage. 


## Step 1: Create the WinForms Application

Create a standard [Telerik WinForms]({%slug winforms/visual-studio-templates%}) application and add 3 buttons and a [RadListView]({%slug winforms/listview%}) to it. The layout should look like this:

![azure-blob-storage-001](images/azure-blob-storage-001.png)

## Step 2: Install the NuGet package

Open the NuGet Package Manager and install the **Windows.Azure.Storage** package.

![azure-blob-storage-002](images/azure-blob-storage-002.png)

## Step 3: Create the Storage Account Objects 

We will use the following objects in order to manage the storage. Add tre the following code to your form class.  

````C#
CloudStorageAccount storageAccount = null;
CloudBlobContainer cloudBlobContainer = null;
````

>tip You can add the necessary namespaces by pressing __Ctrl + .__

## Step 4: Create a Storage Account

The following article explains how you can create a storage account: [Create a Storage Account](https://docs.microsoft.com/en-us/azure/storage/common/storage-create-storage-account#create-a-storage-account).

THe process is straightforward and easy it should take no more than 10 minutes. Once this is completed you need to get the connection string. You can find it under the __Access Keys__ page.

![azure-blob-storage-003](images/azure-blob-storage-003.png)

When you have a connection string copy it to your application:

````C#
string connectionString "your connection string form the account goes here";
````


You are ready to create a storage container and initialize the storage container. Add the following code.

````C#
public RadForm1()
{
    InitializeComponent();
    this.CreateAccountObjects();
}
public async void CreateAccountObjects()
{
    if (CloudStorageAccount.TryParse(connectionString, out storageAccount))
    {
        CloudBlobClient cloudBlobClient = storageAccount.CreateCloudBlobClient();

        cloudBlobContainer = cloudBlobClient.GetContainerReference("myFiles");
        if (cloudBlobContainer != null)
        {
            return;
        }
        //if the container do not exists create it. 
        cloudBlobContainer = cloudBlobClient.GetContainerReference("myFiles" + Guid.NewGuid().ToString());
        await cloudBlobContainer.CreateAsync();

        BlobContainerPermissions permissions = new BlobContainerPermissions
        {
            PublicAccess = BlobContainerPublicAccessType.Blob
        };
        await cloudBlobContainer.SetPermissionsAsync(permissions);
    }
}
````

## Step 5: Add the handlers to manage the data.

There is nothing complex in this example and the API is really intuitive. You just need to call the appropriate methods and you will easily get the results.

````C#
private void radButtonListItems_Click(object sender, EventArgs e)
{
    ListItems();
}
public void ListItems()
{
    radListView1.Items.Clear();

    BlobContinuationToken blobContinuationToken = null;
    do
    {
        var results = cloudBlobContainer.ListBlobsSegmented(null, blobContinuationToken);

        blobContinuationToken = results.ContinuationToken;
        foreach (IListBlobItem item in results.Results)
        {
            radListView1.Items.Add(item.Uri);
        }
    } while (blobContinuationToken != null);
}
private async void radButtonUpload_ClickAsync(object sender, EventArgs e)
{
    OpenFileDialog dlg = new OpenFileDialog();
    if (dlg.ShowDialog() == DialogResult.OK)
    {
        string file = dlg.FileName;
        CloudBlockBlob cloudBlockBlob = cloudBlobContainer.GetBlockBlobReference(Path.GetFileName(file));
        await cloudBlockBlob.UploadFromFileAsync(file);
        ListItems();
    }
}

private void radButtonDelete_Click(object sender, EventArgs e)
{
    if (radListView1.SelectedIndex != -1)
    {
        var fileName = radListView1.SelectedItem.Text;
        var blob = this.cloudBlobContainer.GetBlockBlobReference(Path.GetFileName(fileName));
        var result = blob.DeleteIfExists();
        if (result == false)
        {
            RadMessageBox.Show("Cannot Find File");
        }
        ListItems();
    }

}
````

You are now ready to manage the files in the cloud.

![azure-blob-storage-004](images/azure-blob-storage-004.png)


# See Also

* [Cosmos DB]({%slug cloud-services/azure/cosmosdb%})
* [Image Analysis]({%slug cloud-services/azure/image-analysis%})
* [Text Analysis]({%slug cloud-services/azure/text-analysis%})
* [SQL Database]({%slug cloud-services/azure/sql-database%})