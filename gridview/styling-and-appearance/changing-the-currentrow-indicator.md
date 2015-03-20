---
title: Images
page_title: Images
description: Images
slug: gridview-styling-and-appearance-changing-the-currentrow-indicator
tags: images
published: True
position: 3
---

# Images



RadGridView displays several images to indicate the status of a row:

* __CurrentRowHeaderImage__ - image to indicate the current row

* __EditRowHeaderImage__ - image to indicate when RadGridView is in edit mode

* __ErrorRowHeaderImage__ - image to indicate an error caused on validation

* __NewRowHeaderImage__  - image to indicate the new row

## Changing the images programmatically

You can change the images using the properties shown below:

#### __[C#] Changing the current row image__

{{region changeTheCurrentRowImage}}
	            ((GridTableElement)this.radGridView1.TableElement).CurrentRowHeaderImage = Image.FromFile("..\\..\\DataSources\\separator.gif");
	            ((GridTableElement)this.radGridView1.TableElement).EditRowHeaderImage = Image.FromFile("..\\..\\DataSources\\edit.png");
	            ((GridTableElement)this.radGridView1.TableElement).ErrorRowHeaderImage = Image.FromFile("..\\..\\DataSources\\error.png");
	            ((GridTableElement)this.radGridView1.TableElement).NewRowHeaderImage = Image.FromFile("..\\..\\DataSources\\star.png"); 
	{{endregion}}



#### __[VB.NET] Changing the current row image__

{{region changeTheCurrentRowImage}}
	        DirectCast(Me.RadGridView1.TableElement, GridTableElement).CurrentRowHeaderImage = Image.FromFile("..\\..\\DataSources\\separator.gif")
	        DirectCast(Me.RadGridView1.TableElement, GridTableElement).EditRowHeaderImage = Image.FromFile("..\\..\\DataSources\\edit.png")
	        DirectCast(Me.RadGridView1.TableElement, GridTableElement).ErrorRowHeaderImage = Image.FromFile("..\\..\\DataSources\\error.png")
	        DirectCast(Me.RadGridView1.TableElement, GridTableElement).NewRowHeaderImage = Image.FromFile("..\\..\\DataSources\\star.png")
	{{endregion}}





## Setting an image in a column header

The following code snippet demonstrates how to set an image for a certain column:

#### __[C#] Set an image in a column header__

{{region setColumnHeaderImage}}
	            radGridView1.Columns["Date"].HeaderImage = Image.FromFile("..\\..\\DataSources\\star.png");
	            radGridView1.Columns["Date"].TextImageRelation = TextImageRelation.ImageAboveText;
	{{endregion}}



#### __[VB.NET] Set an image in a column header__

{{region setColumnHeaderImage}}
	        RadGridView1.Columns("Picture Name").HeaderImage = Image.FromFile("..\\..\\DataSources\\star.png")
	        RadGridView1.Columns("Picture Name").TextImageRelation = TextImageRelation.ImageAboveText
	{{endregion}}


