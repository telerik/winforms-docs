---
title: Images
page_title: Images | RadGridView
description: Images
slug: winforms/gridview/styling-and-appearance/images
tags: images
published: True
position: 3
previous_url: gridview-styling-and-appearance-changing-the-currentrow-indicator
---

# Images



RadGridView displays several images to indicate the status of a row:

* __CurrentRowHeaderImage__ - image to indicate the current row

* __EditRowHeaderImage__ - image to indicate when RadGridView is in edit mode

* __ErrorRowHeaderImage__ - image to indicate an error caused on validation

* __NewRowHeaderImage__  - image to indicate the new row

## Changing the images programmatically

You can change the images using the properties shown below:

#### Changing the current row image

{{source=..\SamplesCS\GridView\StylingAndAppearance\ChangingTheCurrentRowIndicator.cs region=changeTheCurrentRowImage}} 
{{source=..\SamplesVB\GridView\StylingAndAppearance\ChangingTheCurrentRowIndicator.vb region=changeTheCurrentRowImage}} 

````C#
((GridTableElement)this.radGridView1.TableElement).CurrentRowHeaderImage = Image.FromFile("..\\..\\DataSources\\separator.gif");
((GridTableElement)this.radGridView1.TableElement).EditRowHeaderImage = Image.FromFile("..\\..\\DataSources\\edit.png");
((GridTableElement)this.radGridView1.TableElement).ErrorRowHeaderImage = Image.FromFile("..\\..\\DataSources\\error.png");
((GridTableElement)this.radGridView1.TableElement).NewRowHeaderImage = Image.FromFile("..\\..\\DataSources\\star.png");

````
````VB.NET
DirectCast(Me.RadGridView1.TableElement, GridTableElement).CurrentRowHeaderImage = Image.FromFile("..\\..\\DataSources\\separator.gif")
DirectCast(Me.RadGridView1.TableElement, GridTableElement).EditRowHeaderImage = Image.FromFile("..\\..\\DataSources\\edit.png")
DirectCast(Me.RadGridView1.TableElement, GridTableElement).ErrorRowHeaderImage = Image.FromFile("..\\..\\DataSources\\error.png")
DirectCast(Me.RadGridView1.TableElement, GridTableElement).NewRowHeaderImage = Image.FromFile("..\\..\\DataSources\\star.png")

````

{{endregion}} 

## Setting an image in a column header

The following code snippet demonstrates how to set an image for a certain column:

#### Set an image in a column header

{{source=..\SamplesCS\GridView\StylingAndAppearance\ChangingTheCurrentRowIndicator.cs region=setColumnHeaderImage}} 
{{source=..\SamplesVB\GridView\StylingAndAppearance\ChangingTheCurrentRowIndicator.vb region=setColumnHeaderImage}} 

````C#
radGridView1.Columns["Date"].HeaderImage = Image.FromFile("..\\..\\DataSources\\star.png");
radGridView1.Columns["Date"].TextImageRelation = TextImageRelation.ImageAboveText;

````
````VB.NET
RadGridView1.Columns("Picture Name").HeaderImage = Image.FromFile("..\\..\\DataSources\\star.png")
RadGridView1.Columns("Picture Name").TextImageRelation = TextImageRelation.ImageAboveText

````

{{endregion}} 



