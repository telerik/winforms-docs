---
title: Connection Types
page_title: Connection Types - RadDiagram
description: RadDiagram offers flexible and interactive diagramming layouts for your rich data-visualization applications.
slug: winforms/diagram/diagram-items/connections/connection-types
tags: connections, types
published: True
position: 1
---

# Connection Types

* __ConnectionPoints__ - if you want to change the route of the connection, you can add connection points in code-behind through the RadDiagramConnection.__ConnectionPoints__ property. You can populate the __ConnectionPoints__ collection with objects of type *Point*: 

<snippet id='diagram-connection-types-addconnection-cs' />
<snippet id='diagram-connection-types-addconnection-vb' />




![WinForms RadDiagram Connection Types](images/diagram-diagram-items-connections002.png)

>note You can refer to the [Shapes]({%slug winforms/diagram/diagram-items/shapes%}) article where the shapes are defined.
>


* __ConnectionType__ - controls the connection type. As an enumeration of type Telerik.Windows.Diagrams.Core.ConnectionType, it exposes the following members:
            

\* __Polyline__ - this type allows you to define multiple points a connection has to pass through. By default, such a connection have two points it has to pass through - its source connector (or StartPoint) and its target connector (or EndPoint). This is why by default the Polyline __ConnectionType__ visualizes a straight connection. Sample of a straight Polyline connection between two shapes:

![WinForms RadDiagram Polyline](images/diagram-diagram-items-connections003.png) 


<snippet id='diagram-connection-types-polylineconnection-cs' />
<snippet id='diagram-connection-types-polylineconnection-vb' />




If you want to change the route of the connection, you can add connection points in code-behind through the RadDiagramConnection.__ConnectionPoints__ property. You can populate the __ConnectionPoints__ collection with objects of type Point: 


<snippet id='diagram-connection-types-connectionpolylinewithpoints-cs' />
<snippet id='diagram-connection-types-connectionpolylinewithpoints-vb' />




Sample of a curved Polyline connection:

![WinForms RadDiagram Curved Polyline](images/diagram-diagram-items-connections004.png)

\* __Bezier__ - this connection type allows you to create a Bézier curve. The Bezier connection is a curve specified by four points: two end points (p1 and p2) - the source/start and target/end of the connection and two handle points (h1 and h2) and a tension parameter. The curve begins at p1 and ends at p2 and it doesn't   pass through the handle points, but the handle points act as magnets, pulling the curve in certain directions and influencing the way the curve bends. The following illustration shows a Bézier RadDiagramConnection along with its endpoints and handle points.

![WinForms RadDiagram Bézier Connection](images/diagram-diagram-items-connections005.png) The RadDiagramConnection. __BezierTension__ parameter defines the curve that will be produced for a given set of end and handle points. The following illustration shows a Bezier connection:

![WinForms RadDiagram BezierTension Option](images/diagram-diagram-items-connections006.png) 

<snippet id='diagram-connection-types-bezierconnection-cs' />
<snippet id='diagram-connection-types-bezierconnection-vb' />




By default, when you create a Bezier connection and attach its endpoints to __RadDiagramShapes__, the position of the handle points of the connection will be calculated based on the connector positions. Both handle points will be added to the RadDiagramConnection.__ConnectionPoints__ collection. The following snapshot illustrates the default direction of the Bezier connection handles based on the position of the connector to which the connection is attached.

![WinForms RadDiagram Bezier Connection Handles Default Direction](images/diagram-diagram-items-connections007.png) 

The offset between a Bezier connection handle point and its corresponding endpoint is controlled thorough the __BezierAutoOffset__ DiagramConstants. Its default value is *30px*, but you can change it to better fit your needs.When attaching a Bezier connection to a RadDiagramShape you need to consider if it is attached to a built-in connector or to a custom connector. If the connection is attached to a custom connector, then you will have to manually set the position of the Bezier handle points. You can change the position of the points after you access them from the RadDiagramConnection. __ConnectionPoints__ collection, but you will also have to set the RadDiagramConnection. __IsModified__ property to True to apply the changes. If you don't want to manually traverse the __ConnectionPoints__ collection and then set the __IsModified__ property, you can use the RadDiagramConnection. __SetBezierHandles(Point,Point)__ method. It facilitates the definition of custom coordinates for the two handle points of a Bezier connection.

>note Please note that if you create custom connectors which names include any of the following strings:
>
* "right"
* "left"
* "bottom"
* "up" the Bezier Connection handle points will point at the direction indicated by the respective string.>On the other hand, if you attach a Bezier Connection to a custom connector which name doesn't indicate a direction, the handle points of the connection will match the start and end point of the connection.
>


\* __Spline__ - this connection type represents a cardinal spline. The connection is specified by an array of points - the connection passes smoothly through each point in the array; there are no sharp corners and no abrupt changes in the tightness of the curve. The following illustration shows a set of points and a spline connection that passes through each point in the set. Sample of a Spline connection:

![WinForms RadDiagram Spline Connection Type](images/diagram-diagram-items-connections008.png) 

<snippet id='diagram-connection-types-splineconnection-cs' />
<snippet id='diagram-connection-types-splineconnection-vb' />


