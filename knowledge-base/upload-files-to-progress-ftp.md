---
title: How to Upload Files to Progress FTP
description: Learn how to upload files to Progress FTP. 
type: how-to
page_title: How to How to Upload Files to Progress FTP
slug: upload-files-to-progress-ftp
position: 5
tags: upload, files, ftp
ticketid: 1592544
res_type: kb
---


## Environment
|Product Version|Product|Author|
|----|----|----|
|2022.3.1109|UI for WinForms|[Desislava Yordanova](https://www.telerik.com/blogs/author/desislava-yordanova)|

## Description

When a client needs to provide a file that exceeds the limit in the support-ticketing system, the files exchange is performed by using the Progress SFTP. The agent handling the ticket, should create an account for the customer and provide *Username*, *Password*, *Server Name* and *Server Port* to the client to access the created account and upload the files.

>caution Keep in mind that all created accounts and all uploaded data is deleted from the server after 30 days to provide enough space for all following uploads. Make sure to upload/download all needed information in time as there will be no backups configured on the server.

## Solution

All details needed by the customer to establish a SFTP connection to the server are *Username*, *Password*, *Server Name* and *Server Port*:

![upload-files-to-progress-ftp 001](images/upload-files-to-progress-ftp001.png) 

To login, you should use an FTP client such as FileZilla or WinSCP etc. Below you will find instructions on how to establish the connection through FileZilla or WinSCP:

1\. Open Site Manager through the File menu (File>Site Manager) / or use the Site Manager button.

![upload-files-to-progress-ftp 002](images/upload-files-to-progress-ftp002.png) 

2\. Click on the New Site button below to create a new site connection.

![upload-files-to-progress-ftp 003](images/upload-files-to-progress-ftp003.png) 

Make sure you select SFTP – SSH File Tranfer Protocol from the Protocol drop-down menu. Fill in the host address, account name and Port number from the credentials you received earlier and click **Connect**.

![upload-files-to-progress-ftp 004](images/upload-files-to-progress-ftp004.png) 

Enter the password on the prompt and click OK.

![upload-files-to-progress-ftp 005](images/upload-files-to-progress-ftp005.png) 

On the left side of the menu, you should see your local computer tree structure and on the right is the SFTP server with the upload folder. Select, on the left, a local folder from where you want the file to be uploaded. Click Upload.

![upload-files-to-progress-ftp 006](images/upload-files-to-progress-ftp006.png) 

Once the Upload process is completed, an alert is shown.

 



 
