---
title: RadPropertyMetadata
page_title: RadPropertyMetadata
description: RadPropertyMetadata
slug: tpf-class-hierarchy-radproperty-metadata
tags: radpropertymetadata
published: True
position: 3
---

# RadPropertyMetadata



## 

RadPropertyMetadata describes a property and de-couples the information about a property from the property itself. In this way meta data can be overridden without overriding the implementation of existing properties or creating new properties. 

Optionally RadPropertyMetadata can have handlers for property changes and property value validation. RadPropertyMetadata has mechanisms to automatically notify a property owner when specific properties change. Metadata associated with a property is passed in the RadProperty Register() method and is extensible. For example the RadElement AngleTransformProperty has metadata that mark this property as affecting layout.

#### __[C#]__

{{region Metadata}}
	        public static RadProperty AngleTransformProperty =
	            RadProperty.Register("AngleTransform", typeof(float), typeof(RadElement),
	            new RadElementPropertyMetadata(0f, 
	                ElementPropertyOptions.AffectsLayout 
	                | ElementPropertyOptions.InvalidatesLayout
	                | ElementPropertyOptions.AffectsMeasure));
	{{endregion}}



#### __[VB]__

{{region Metadata}}
	    Public Shared AngleTransformProperty As RadProperty = RadProperty.Register("AngleTransform", GetType(Single), GetType(RadElement), New RadElementPropertyMetadata(0.0F, ElementPropertyOptions.AffectsLayout Or ElementPropertyOptions.InvalidatesLayout Or ElementPropertyOptions.AffectsMeasure))
	#End Region
	End Class


