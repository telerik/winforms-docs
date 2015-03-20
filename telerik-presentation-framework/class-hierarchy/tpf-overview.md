---
title: Class Hierarchy Overview
page_title: Class Hierarchy Overview
description: Class Hierarchy Overview
slug: tpf-class-hierarchy-overview
tags: class,hierarchy,overview
published: True
position: 0
---

# Class Hierarchy Overview



## 

The diagram below contains an abbreviated class diagram of the class inheritance starting with RadObject and building to RadControl. 
        RadProperty and RadPropertyMetaData are not shown. See also the Choosing an Ancestor Class topic for information about selecting an ancestor for your
        TPF based control.


<table><tr><td>![tpf-class-hierarchy-overview 001](images/tpf-class-hierarchy-overview001.png)</td><td>



* [RadProperty]({%slug tpf-class-hierarchy-radproperty%}) encapsulates 
                  properties used in RadObject and support [dependency 
                  properties]({%slug tpf-dependency-properties%}). Each RadProperty has a name, type, owner and 
                    [metadata]({%slug tpf-class-hierarchy-radproperty-metadata%}), i.e.
                    information about the property..
                  

* [RadPropertyMetadata]({%slug tpf-class-hierarchy-radproperty-metadata%}) describes
                    a property and de-couples the information about a property from the property itself. 
                  

* [RadObject]({%slug tpf-class-hierarchy-radobject%}) represents the base
                    class for all RadElement objects and has the ability to store all property values in a single structure.
                  

* [RadElement]({%slug tpf-class-hierarchy-radelement%}) is a key class that
                    represents the smallest unit in a RadControl that can be painted or laid out on the screen. RadElement is the base class of all elements that
                    take advantage of TPF features, e.g. property inheritance, layouts and styling. RadElement implements a tree-like structure of RadObjects, property
                    value inheritance and automatic layout and display invalidation based on the options of the PropertyMetadata for each RadProperty. RadElement has a
                    size and location specified in coordinates in relation to its parent.
                  

* [VisualElement]({%slug tpf-class-hierarchy-visualelement%}) adds visual properties
                    common to all elements that will be painted, e.g. back color, fore color, font, default size, smoothing mode, opacity.
                  

* [LayoutPanel]({%slug tpf-class-hierarchy-layoutpanel%}) an abstract class
                    descending from RadElement. LayoutPanel descendants coordinate sizing and position for a number of elements.
                  

* [RadComponentElement]({%slug tpf-class-hierarchy-radcomponentelement%}) implements IComponent 
                    and introduces the ability to be contained.
                  [BasePrimitive]({%slug tpf-class-hierarchy-baseprimitive%}) is a VisualElement descendant 
                  that adds a virtual PaintPrimitive() method that draws a primitive to the screen.

* [RadItem]({%slug tpf-class-hierarchy-raditem%}) represents a visual element which
                    could be added to an ItemsCollection and can be selected, deleted or moved during Visual Studio at design time. By default this class knows how to 
                    handle user input.
                  [RadControl]({%slug tpf-class-hierarchy-radcontrol%}) is the abstract base class for 
                  all RadControls. Each RadControl contains a tree of RadElements. The tree has a root, the <b>RadControl.RootElement </b>(type 
                  RootRadElement shown in the diagram) and children of the root element. RadControl acts as a bridge between the traditional Windows forms controls 
                  and the RadElement tree. RadControl also defines properties common across all controls e.g. ThemeName, Style, ImageList, image scaling properties,
                  minimum and maximum sizes.</td></tr><tr><td></td><td></td></tr></table>
