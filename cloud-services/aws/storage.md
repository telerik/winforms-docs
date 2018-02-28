---
title: Storage (S3) 
page_title: Storage (S3)  | Cloud Services
description: This section shows how one can use various cloud services like GoogleCloud, AWS, and Azure with the Telerik UI For Winforms suite.
slug: cloud-services/aws/storage
tags: cloud,aws,storage
published: True
position: 3
---

# Storage (S3) 

Amazon Simple Storage Service (Amazon S3) is storage service that allows you to upload any kind of data at any time, from anywhere. This article will demonstrate how one cam use this service from a winforms application and manage the uploaded files.

## Step 1: Create the Winforms Application

Create a standard Telerik Winforms application and add 3 buttons and a list view to it. The layout should look like this:

![aws-s3-001](images/aws-s3-001.png)

## Step 2: Install the NuGet package

Open the NuGet Package Manager and install the **AWSSDK.S3** package.

![aws-s3-002](images/aws-s3-002.png)

In addition you need to add the following to your App.config file:

````XML

<?xml version="1.0" encoding="utf-8" ?>
<configuration>
  <appSettings>
    <add key="AWSProfileName" value="Telerik"/>
    <add key="AWSRegion" value="eu-west-3" />
  </appSettings>
</configuration>

````

>note If you do not have a account in Visual Studio please check [Getting Started]({%slug cloud-services/aws/getting-started%})

## Step 3: Create the IAmazonS3 client

Now you are ready to create the IAmazonS3 client object. This object will be used later as well.

````C#

string bucketName = "telerik1";
IAmazonS3 client;
public RadForm1()
{
    InitializeComponent();
    client = new AmazonS3Client();
}

````

The S3 API is intuitive and you just need to create a proper request. The following spinet shows the event handlers of all buttons.

````C#

private void listItems_Click(object sender, EventArgs e)
{
    var objects = client.ListObjects(bucketName);

    radListView1.Items.Clear();

    foreach (S3Object item in objects.S3Objects)
    {
        radListView1.Items.Add(item.Key);
    }
}

private void UploadFileButton_Click(object sender, EventArgs e)
{
    OpenFileDialog choofdlog = new OpenFileDialog();
    choofdlog.Filter = "All Files (*.*)|*.*";
    choofdlog.FilterIndex = 1;
    choofdlog.Multiselect = false;
   
    if (choofdlog.ShowDialog() == DialogResult.OK)
    {
        string sFileName = choofdlog.FileName;
        PutObjectRequest request = new PutObjectRequest()
        {                  
            BucketName = bucketName,
            Key = sFileName
        };

        PutObjectResponse response = client.PutObject(request);
    }
   
}

private void deleteFileButton_Click(object sender, EventArgs e)
{
    if (radListView1.SelectedIndex <0)
    {
        RadMessageBox.Show("Please select an Item");
        return;
    }

    string keyName = radListView1.SelectedItem.Text;
    DeleteObjectRequest request = new DeleteObjectRequest()
    {
        BucketName = bucketName,
        Key = keyName
    };

    client.DeleteObject(request);

}
````

That is all, you are ready to start using the application.

![aws-s3-003](images/aws-s3-003.png)



