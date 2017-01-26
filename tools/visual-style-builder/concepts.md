---
title: Concepts
page_title: Concepts | UI for WinForms Tools
description: Visual Style Builder is an end-user application that allows fast and intuitive styling of all controls in the Windows Forms suite.
slug: winforms/tools/visual-style-builder/concepts
tags: concepts
published: True
position: 2
previous_url: tools-visual-style-builder-concepts
---

# Concepts

Visual Style Builder introduces several powerful and innovative for the Winforms Market concepts and approaches that make it much more powerful, intuitive and easier to use than its previous equivalent. To enable these new concepts we have significantly refactorred our internal theming framework, which refactoring gave us both performance benefit and much more straightforward way of using themes and styles across entire suite.

Following is a list of the above described concepts:

## Repository

Instead of defining group of property settings for each element we may simply reuse one group across common elements. Having support for reusable property setting groups greatly reduces the amount of time needed to style common elements. All such reusable groups are stored in the so called “Theme Repository”. Each PropertySettingGroup may have a BasedOn member, which specifies association with a repository item. When such an association exists the group will use the settings defined in the repository item as well as the ones registered locally for the group. These local settings have higher priority than the ones inherited from a repository and may override them. For example if a group is associated with a gradient repository item, which defines BackColor as Red and we have a locally registered the group BackColor as Green, then the actual style setting, carried by this group will be Green.

## VisualStates, StateManagers and VisualStateSelectors

Each RadItem instance may now enter different visual states, where each state is connected with one or more of item’s properties. An item may or may not be associated with a StateManager. If it is not associated then it will always be in its default visual state, which is actually the ThemeRole of the item. For example RootRadElement derives from RadItem but does not define a StateManager and will always have its default VisualState – “RootRadElement”. While the RadButtonItem has a StateManager associated and may enter the MouseOver, Pressed and Disabled states. For each VisualState the item may have a PropertySettingGroup defined which contains property settings that alter its appearance. Having all these visual states predefined and internally managed by the associated StateManager makes it extremely easy to style the item without the need to know the anatomy of each item and all the properties that participate in these states. For example the RadButtonItem.Pressed state is applied when the IsMouseOver and IsMouseDown properties are both set to true. To allow an item to be selected by a StyleSheet, we added a new selector – the VisualStateSelector one.

## Child Selectors

These are new IElementSelector implementations, which, much like in the CSS styling mechanism, allow an element to be chosen depending on its current parent. Previously supported were only TypeSelector and ClassSelector, which, while providing the styling basis, would not give you the flexibility of making an element look different on different parent elements. The most important benefit of these new selectors is the fact that we may define the style conditions at root level and omit the need of forcing child elements to know for their parent’s properties. For example, in order to style a RadButtonElement, all we need is to create a VisualStateSelector for the desired VisualState, assign the proper ChildSelector and specify the desired property settings. The following code snippet demonstrates how to create a selector for RadButtonElement, which selects its FillPrimitve child:

{{source=..\SamplesCS\Tools\VisualStyleBuilder\Overview\Concepts.cs region=VisualStateSelector}} 
{{source=..\SamplesVB\Tools\VisualStyleBuilder\Overview\Concepts.vb region=VisualStateSelector}} 

````C#
VisualStateSelector stateSelector = new VisualStateSelector("RadButtonElement");
stateSelector.ChildSelector = new TypeSelector(typeof(FillPrimitive));

````
````VB.NET
Dim stateSelector = New VisualStateSelector("RadButtonElement")
stateSelector.ChildSelector = New TypeSelector(GetType(FillPrimitive))

````

{{endregion}} 

## StyleManager

Entire theming mechanism is centralized and managed by a new StyleManager class, instantiated per RadControl instance. It is responsible for parsing a StyleSheet instance and mapping it to live elements, depending on the provided selectors. A parallel tree of StyleSheetTreeNode objects is built on top of the associated StyleSheet and each element on the element tree is mapped to such a style node, which provides all the defined visual settings. This approach allows fast and easy re-apply of element’s style, styling and animation suspension as well as straight forward way for retrieving each element’s style-defined property settings on a given element tree.


# See Also
* [Architecture]({%slug winforms/tools/visual-style-builder/architecture%})

* [Getting Started]({%slug winforms/tools/visual-style-builder/getting-started%})

* [Starting VSB]({%slug winforms/tools/visual-style-builder/starting-vsb%})

* [Overview]({%slug winforms/tools/visual-style-builder%})

