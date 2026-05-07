---
title: Carousel Path
page_title: Carousel Path - WinForms Carousel Control
description: WinForms Carousel allows you to define a route that the carousel items will be animated along. 
slug: winforms/carousel/using-radcarousel/carousel-path
tags: carousel,path
published: True
position: 0
previous_url: carousel-using-radcarousel-carousel-path
---

# Carousel Path

The __CarouselPath__ property defines the route that the carousel items will be animated along. Assign a CarouselParameterPath descendant instance to the  __CarouselPath__ property.

>note When the Z (depth) component of the points in the path are all zero, i.e. the points are in a plane, the carousel automatically sets higher Z indexes for items next to the selected item. This puts the selected item in the foreground, with the other items in the list layered in the background.
>


## CarouselEllipsePath

`CarouselEllipsePath` is a `CarouselParameterPath` descendant that defines a three dimensional elliptical path for carousel items to travel along during animation. The significant properties are:

* __Center__: A three dimensional point (a Point3D type, having X, Y and Z components) that defines the center position of the ellipse.

* __U, V:__ Two points in three dimensional space that describe the distance from the center of the ellipse.

* __InitialAngle__ , __FinalAngle__: The starting and ending number of degrees of the arc that defines the ellipse.  For example an __InitialAngle__ of zero and a __FinalAngle__ of 360 describes a complete ellipse.

#### Defining ellipse path

<snippet id='carousel-using-radcarousel-carousel-path-definingellipsepath-cs'/>
<snippet id='carousel-using-radcarousel-carousel-path-definingellipsepath-vb'/>

 


## CarouselBezierPath

__CarouselBezierPath__ describes two end points and two "control" points in three dimensional space. The control points dictate the amount of curve between the end points. The significant properties are:

* __FirstPoint, LastPoint:__ These are the two end points for the Bezier curve. Both are __Point3D__ types having __X__, __Y__ and __Z__ properties.

* __CtrlPoint1, CtrlPoint2:__ These are the two points that "pull" against the line described by FirstPoint and LastPoint to create the curve. Both are __Point3D__ types having __X__, __Y__ and __Z__ properties.

__Defining bezier path__


<snippet id='carousel-using-radcarousel-carousel-path-definingbezierpath-cs'/>
<snippet id='carousel-using-radcarousel-carousel-path-definingbezierpath-vb'/>

 


# See Also

 * [RadCarousel Properties]({%slug winforms/carousel/properties%})
 * [Working with items]({%slug  winforms/carousel/using-radcarousel/carousel-items%})
 * [Data Binding]({%slug winforms/carousel/using-radcarousel/data-binding%})
