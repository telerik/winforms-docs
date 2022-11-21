---
title: Touch Support
page_title: Touch Support - RadPanorama
description: RadPanorama is a control that displays elements of type RadTileElement in a mosaic manner.
slug: winforms/panorama/structure
slug: winforms/panorama/touch-support
tags: touch,support
published: True
position: 4
previous_url: panorama-touch-support
---

# Touch Support

**RadPanorama** supports scrolling and dragging via touch.

## Scrolling

Touch scrolling support allows your end-users to smoothly scroll the displayed tiles left or right. You do not need to look for a scroll bar as the pan operation can occur directly on the tiles: 

![panorama-touch-support 001](images/panorama-touch-support001.png)

## Touch Zoom in/Zoom out

This multi-touch feature allows you to see all tiles at once by pinching (zooming out) the initial view. 

![panorama-touch-support 002](images/panorama-touch-support002.png)

After you find the desired tile in the zoomed-out list of tiles, you should just tap it and **RadPanorama** will zoom in the corresponding part of the list.

![panorama-touch-support 003](images/panorama-touch-support003.png)

## Reordering Tiles

The end-user is allowed to reorder the tiles according to his/her preferences with a single gesture. An outline of the dragged tile is displayed to the user to indicate that a drag’n’drop operation is currently occurring. In addition, the remaining tiles are moved out of the way according to the finger position to indicate the possible drop target.

![panorama-touch-support 004](images/panorama-touch-support004.png)

# See Also

* [Windows Touch Gestures](http://msdn.microsoft.com/en-us/library/windows/desktop/dd940543(v=vs.85).aspx)
