---
title: Carousel Path
page_title: Carousel Path | UI for WinForms Documentation
description: Carousel Path
slug: winforms/carousel/using-radcarousel/carousel-path
tags: carousel,path
published: True
position: 1
previous_url: carousel-using-radcarousel-carousel-path
---

# Carousel Path



The __CarouselPath__ property defines the route that the carousel items will be animated along. Assign a CarouselParameterPath descendant instance to the RadCarousel CarouselPath.

>note When the Z (depth) component of the points in the path are all zero, i.e. the points are in a plane, the carousel automatically sets higher Z indexes for items next to the selected item. This puts the selected item in the foreground, with the other items in the list layered in the background.
>


## CarouselEllipsePath

CarouselEllipsePath is a CarouselParameterPath descendant that defines a three dimensional elliptical path for carousel items to travel along during animation. The significant properties are:

* __Center__: A three dimensional point (a Point3D type, having X, Y and Z components) that defines the center position of the ellipse.

* __U, V:__ Two points in three dimensional space that describe the distance from the center of the ellipse.

* __InitialAngle__ , __FinalAngle__: The starting and ending number of degrees of the arc that defines the ellipse.  For example an __InitialAngle__ of zero and a __FinalAngle__ of 360 describes a complete ellipse.

__Defining ellipse path__


{{source=..\SamplesCS\Carousel\CarouselPath.cs region=definingEllipsePath}} 
{{source=..\SamplesVB\Carousel\CarouselPath.vb region=definingEllipsePath}} 

````C#
CarouselEllipsePath ellipsePath = new CarouselEllipsePath();
ellipsePath.Center = new Telerik.WinControls.UI.Point3D(50, 50, 0);
ellipsePath.FinalAngle = -100;
ellipsePath.InitialAngle = -90;
ellipsePath.U = new Telerik.WinControls.UI.Point3D(-20, -17, -50);
ellipsePath.V = new Telerik.WinControls.UI.Point3D(30, -25, -60);
ellipsePath.ZScale = 500;
this.radCarousel1.CarouselPath = ellipsePath;

````
````VB.NET
Dim ellipsePath As CarouselEllipsePath = New CarouselEllipsePath
ellipsePath.Center = New Telerik.WinControls.UI.Point3D(50, 50, 0)
ellipsePath.FinalAngle = 360
ellipsePath.InitialAngle = 0
ellipsePath.U = New Telerik.WinControls.UI.Point3D(-20, -17, -50)
ellipsePath.V = New Telerik.WinControls.UI.Point3D(30, -25, -60)
ellipsePath.ZScale = 500
Me.RadCarousel1.CarouselPath = ellipsePath

````

{{endregion}} 




## CarouselEllipsePath in design-time

You can set the bezier path for the carousel using the Visual Studio designer.

*  Drag the RadCarousel control in your form.
  

*  In Properties, set __CarouselPath__ to *newCarouselEllipsePath*

![carousel-using-radcorousel-carousel-carousel-path 001](images/carousel-using-radcorousel-carousel-carousel-path001.png)

* Drag the two control points (U and V) and the center poing to set the ellipse as desired:

![carousel-using-radcorousel-carousel-carousel-path 002](images/carousel-using-radcorousel-carousel-carousel-path002.png)

>note You can arrange the points only in 2D. The Z coordinate (if needed) should be set programmatically.
>


>note You can revert the rotating direction (when AutoLoop is set to true) by swapping the V and U points positions. The rotation is alway from V to U point.
>You can drag the ellipse points over the whole designer area, i.e. you are not limited to the form only.
>


## CarouselBezierPath

__CarouselBezierPath__ describes two end points and two "control" points in three dimensional space. The control points dictate the amount of curve between the end points.  The significant properties are:

* __FirstPoint, LastPoint:__ These are the two end points for the Bezier curve. Both are __Point3D__ types having __X__, __Y__ and __Z__ properties.

* __CtrlPoint1, CtrlPoint2:__ These are the two points that "pull" against the line described by FirstPoint and LastPoint to create the curve. Both are __Point3D__ types having __X__, __Y__ and __Z__ properties.

__Defining bezier path__


{{source=..\SamplesCS\Carousel\CarouselPath.cs region=definingBezierPath}} 
{{source=..\SamplesVB\Carousel\CarouselPath.vb region=definingBezierPath}} 

````C#
CarouselBezierPath bezierPath = new CarouselBezierPath();
bezierPath.FirstPoint = new Point3D(10, 20, 0);
bezierPath.CtrlPoint1 = new Point3D(14, 76, 70);
bezierPath.CtrlPoint2 = new Point3D(86, 76, 70);
bezierPath.LastPoint = new Point3D(90, 20, 0);
this.radCarousel1.CarouselPath = bezierPath;

````
````VB.NET
Dim bezierPath As New CarouselBezierPath()
bezierPath.FirstPoint = New Point3D(10, 20, 0)
bezierPath.CtrlPoint1 = New Point3D(14, 76, 70)
bezierPath.CtrlPoint2 = New Point3D(86, 76, 70)
bezierPath.LastPoint = New Point3D(90, 20, 0)
Me.RadCarousel1.CarouselPath = bezierPath

````

{{endregion}} 






## CarouselBezierPath in design-time

You can set the bezier path for the carousel using the Visual Studio designer.

1. Drag the RadCarousel control in your form.

1.  In Properties, set __CarouselPath__ to *newCarouselBezierPath*:
  ![carousel-using-radcorousel-carousel-carousel-path 003](images/carousel-using-radcorousel-carousel-carousel-path003.png)

1. Drag the four control points and set the bezier as desired:
  ![carousel-using-radcorousel-carousel-carousel-path 004](images/carousel-using-radcorousel-carousel-carousel-path004.png)

>note You can arrange the points only in 2D. The Z coordinate (if needed) should be set programmatically.
>You can drag the bezier points over the whole designer area, i.e. you are not limited to the form only.
>


# See Also

 * [RadCarousel Properties]({%slug winforms/carousel/using-radcarousel/radcarousel-properties%})
