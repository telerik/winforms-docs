---
title: Handle MySqlDateTime object while populating RadGridView from MySQL Database
description: This article shows how to convert MySqlDateTime object so that it is handled correctly by the RadGridView.
type: how-to
page_title: How to create convert MySqlDateTime object so that it is handled correctly by the RadGridView.
slug: gridview-msql-datetime
position: 0
tags: gridview, mysqldatetime, allowzerodatetime, convertzerodatetime
res_type: kb
---

## Environment
 
|Product Version|Product|Author|
|----|----|----|
|2022.1.222|RadGridView for WinForms|[Dinko Krastev](https://www.telerik.com/blogs/author/dinko-krastev)|
 

## Description

When your connection string contains ConvertZeroDateTime is set to true, invalid objects from the database are being converted to .NET System.DateTime.MinValue object, and as RadGridView knows how to work with System.DateTime is being handled correctly.

However, when AllowZeroDateTime is set to true in the connection string, invalid objects from the database are being sent as __MySqlDateTime__ object. In this case, RadGridView does not know about such type of object, hence it falls back to creating a text box column for it and the column data type is being set to string. To make it work we can change the column data type to DateTime and the dates will be shown correctly:

## Solution 

````C#
 
RadGridView1.Columns["Entered Date Time"].DataType = typeof(DateTime);
RadGridView1.Columns["Date of Birth"].DataType = typeof(DateTime);              
       
````
````VB.NET
    
RadGridView1.Columns("Entered Date Time").DataType = GetType(DateTime)
RadGridView1.Columns("Date of Birth").DataType = GetType(DateTime)    
    
````

