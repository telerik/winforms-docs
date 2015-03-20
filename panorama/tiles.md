---
title: Tiles
page_title: Tiles
description: Tiles
slug: panorama-tiles
tags: tiles
published: True
position: 6
---

# Tiles



## Tiles

__RadTileElement__ represents a simple tile which can contain text and image and acts like a simple button. 
	    	You can also add other elements to its __Children__ collection programmatically.
	    

To set the location of a tile, set its __Column__ and __Row__ properties either at
	    	design time or via code. These values are zero based and describe the location cell in either the main panel or the group in which the tile is placed.
	    

#### __[C#] Set tile position__

{{region SetTilePosition}}
	            this.radTileElement1.Row = 1;
	            this.radTileElement1.Column = 0;
	{{endregion}}



#### __[VB.NET] Set tile position__

{{region SetTilePosition}}
	        Me.RadTileElement1.Row = 1
	        Me.RadTileElement1.Column = 0
	{{endregion}}

![panorama-tiles 001](images/panorama-tiles001.png)

>RadPanorama uses dynamic number of columns, so you can set the __Column__ property of a tile with a value,
		  	greater that the __ColumnsCount__ value. However, setting the __Row__ property with a value, 
		  	greater than the __RowsCount__ value, will result in an exception.
		  

To change the span of a tile, set its __RowSpan__ and __ColSpan__ properties.
			The __RowSpan__ property specifies how many cells of the row should be occupied by the tile.
			The __ColSpan__ property specifies the number of cells in each column which the tile should occupy.
		

The __CellPadding__ property specifies the offset of the tile according to the bounds of the cells. 
			The following code snippet demonstrates using the __RowSpan__, __ColSpan__ and __CellPadding__ properties.
		

#### __[C#] __

{{region Padding}}
	            this.radTileElement1.RowSpan = 2;
	            this.radTileElement1.CellPadding = new Padding(5);
	
	            this.radTileElement2.ColSpan = 2;
	            this.radTileElement2.Column = 2;
	            this.radTileElement2.CellPadding = new Padding(5);
	
	            this.radTileElement3.Row = 1;
	            this.radTileElement3.Column = 1;
	            this.radTileElement3.CellPadding = new Padding(5);
	{{endregion}}



#### __[VB.NET] __

{{region Padding}}
	        Me.RadTileElement1.RowSpan = 2
	        Me.RadTileElement1.CellPadding = New Padding(5)
	
	        Me.RadTileElement2.ColSpan = 2
	        Me.RadTileElement2.Column = 2
	        Me.RadTileElement2.CellPadding = New Padding(5)
	
	        Me.RadTileElement3.Row = 1
	        Me.RadTileElement3.Column = 1
	        Me.RadTileElement3.CellPadding = New Padding(5)
	        '#EndRegion
	
	        RadLiveTileElement1.Row = 2
	        RadLiveTileElement1.RowSpan = 3
	        RadLiveTileElement1.Text = ""
	
	        '#Region "LiveTiles"
	        RadLiveTileElement1.Items.Add(New LightVisualElement() With { _
	         .Text = "Movie Idea: Pirates of the Carribean" _
	        })
	        RadLiveTileElement1.Items.Add(New LightVisualElement() With { _
	         .Text = "Movie Idea: Inception" _
	        })
	        RadLiveTileElement1.Items.Add(New LightVisualElement() With { _
	         .Text = "Movie Idea: The Expendables" _
	        })
	        RadLiveTileElement1.Items.Add(New LightVisualElement() With { _
	         .Text = "Movie Idea: Harry Potter and the Deathly Hallows" _
	        })
	        '#EndRegion
	
	        '#Region "AnimationProperties"
	        Me.RadLiveTileElement1.AnimationFrames = 15 'sets the number of frames in a transition
	        Me.RadLiveTileElement1.AnimationInterval = 30 'sets the interval between each frame in the transition in miliseconds
	        Me.RadLiveTileElement1.ContentChangeInterval = 7000 'sets the interval between each content change
	        Me.RadLiveTileElement1.TransitionType = ContentTransitionType.SlideUp 'sets the type of the transition animation
	        '#EndRegion
	
	
	    End Sub
	
	    Sub MetodUsedToStoreRegions()
	        '#region SetTilePosition
	        Me.RadTileElement1.Row = 1
	        Me.RadTileElement1.Column = 0
	{{endregion}}

![panorama-tiles 002](images/panorama-tiles002.png)

## Live Tiles

__RadLiveTileElement__ extends the functionality of __RadTileElement__ by providing 
	    	means of displaying content that changes on a specified time interval.
	    

To change the content element, you can edit the contents of the tilesҠ__Items__ collection:

#### __[C#] Add live tiles__

{{region LiveTiles}}
	            radLiveTileElement1.Items.Add(new LightVisualElement()
	            {
	                Text = "Movie Idea: Pirates of the Carribean"
	            });
	            radLiveTileElement1.Items.Add(new LightVisualElement()
	            {
	                Text = "Movie Idea: Inception"
	            });
	            radLiveTileElement1.Items.Add(new LightVisualElement()
	            {
	                Text = "Movie Idea: The Expendables"
	            });
	            radLiveTileElement1.Items.Add(new LightVisualElement()
	            {
	                Text = "Movie Idea: Harry Potter and the Deathly Hallows"
	            });
	{{endregion}}



#### __[VB.NET] Add live tiles__

{{region LiveTiles}}
	        RadLiveTileElement1.Items.Add(New LightVisualElement() With { _
	         .Text = "Movie Idea: Pirates of the Carribean" _
	        })
	        RadLiveTileElement1.Items.Add(New LightVisualElement() With { _
	         .Text = "Movie Idea: Inception" _
	        })
	        RadLiveTileElement1.Items.Add(New LightVisualElement() With { _
	         .Text = "Movie Idea: The Expendables" _
	        })
	        RadLiveTileElement1.Items.Add(New LightVisualElement() With { _
	         .Text = "Movie Idea: Harry Potter and the Deathly Hallows" _
	        })
	        '#EndRegion
	
	        '#Region "AnimationProperties"
	        Me.RadLiveTileElement1.AnimationFrames = 15 'sets the number of frames in a transition
	        Me.RadLiveTileElement1.AnimationInterval = 30 'sets the interval between each frame in the transition in miliseconds
	        Me.RadLiveTileElement1.ContentChangeInterval = 7000 'sets the interval between each content change
	        Me.RadLiveTileElement1.TransitionType = ContentTransitionType.SlideUp 'sets the type of the transition animation
	        '#EndRegion
	
	
	    End Sub
	
	    Sub MetodUsedToStoreRegions()
	        '#region SetTilePosition
	        Me.RadTileElement1.Row = 1
	        Me.RadTileElement1.Column = 0
	{{endregion}}



The following properties are responsible for controlling the behavior of the transition between content elements:
		

#### __[C#] Customize animation__

{{region AnimationProperties}}
	            this.radLiveTileElement1.AnimationFrames = 15; //sets the number of frames in a transition
	            this.radLiveTileElement1.AnimationInterval = 30; //sets the interval between each frame in the transition in miliseconds
	            this.radLiveTileElement1.ContentChangeInterval = 7000; //sets the interval between each content change
	            this.radLiveTileElement1.TransitionType = ContentTransitionType.SlideUp; //sets the type of the transition animation
	{{endregion}}



#### __[VB.NET] Customize animation__

{{region AnimationProperties}}
	        Me.RadLiveTileElement1.AnimationFrames = 15 'sets the number of frames in a transition
	        Me.RadLiveTileElement1.AnimationInterval = 30 'sets the interval between each frame in the transition in miliseconds
	        Me.RadLiveTileElement1.ContentChangeInterval = 7000 'sets the interval between each content change
	        Me.RadLiveTileElement1.TransitionType = ContentTransitionType.SlideUp 'sets the type of the transition animation
	        '#EndRegion
	
	
	    End Sub
	
	    Sub MetodUsedToStoreRegions()
	        '#region SetTilePosition
	        Me.RadTileElement1.Row = 1
	        Me.RadTileElement1.Column = 0
	{{endregion}}


