---
title: ControlXmlSerializer
page_title: ControlXmlSerializer | Telerik Presentation Framework
description: Telerik Presentation Framework supports serializing/deserializing entire controls via the ControlXmlSerializer.
slug: winforms/telerik-presentation-framework/touch-support
tags: touch,support
published: True
position: 100
---

# ControlXmlSerializer


The ControlXmlSerializer class allows you to serialize all properties of a given object. This class was created for easily saving and loading the layout of our controls (for example RadGridView and gauge controls). This article demonstrates how you can use this class to serialize your controls. In this particular example you will save the position of all nodes in RadPanorama along with other properties.

#### Save the layout.

{{source=..\SamplesCS\TPF\TPF_XmlSerialization.cs region=SaveControl}} 
{{source=..\SamplesVB\TPF\TPF_XmlSerialization.vb region=SaveControl}} 

{{endregion}} 


#### Load the layout.

{{source=..\SamplesCS\TPF\TPF_XmlSerialization.cs region=LoadControl}} 
{{source=..\SamplesVB\TPF\TPF_XmlSerialization.vb region=LoadControl}} 

{{endregion}} 