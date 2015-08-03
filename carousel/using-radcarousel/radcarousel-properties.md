---
title: RadCarousel Properties
page_title: RadCarousel Properties | UI for WinForms Documentation
description: RadCarousel Properties
slug: winforms/carousel/using-radcarousel/radcarousel-properties
tags: radcarousel,properties
published: True
position: 3
---

# RadCarousel Properties



Some of the other significant properties for RadCarousel are:

* __ButtonPositions:__  The buttons that trigger animation can be position at
            the __Bottom__ (default), __Left__, __Right__ or __Top__.
          

* __ButtonPrevious, ButtonNext__: These objects represent the buttons that trigger the animation.
            The sub-properties for these two properties let you define the visual properties for the buttons including the image used for the buttons.
          

* __EasingType__: This property controls how the animation is performed. The property can be assigned one of the
            RadEasingType enumeration members: __Linear, InQuad, OutQuad, InOutQuad, InCubic, OutCubic, InOutCubic, InQuart, OutQuart, InOutQuart,
              InQuint, OutQuint, InOutQuint, InSine, OutSine, InOutSine, InOutExponential, InCircular, OutCircular, InOutCircular, InElastic, OutElastic, InBack,
              OutBack, InOutBack, InBounce, OutBounce and InOutBounce__.
          

* __EnableKeyboardNavigation__: allows navigation through its item by using keyboard.
          

## Path-related properties

* __EnableLooping:__ When true, the items will loop in the control area, i.e. when they disappear on the either side, they will appear on the other.
              By default is false.
            

* __AutoLoop__: When true, the carousel items will move automatically over the specified path (ellipse or bezier).
              Still you can use the carousel buttons to navigate through carousel items. When you hover an item and/or click a button,
              the items will pause for few seconds or until you move the cursor.This property sets internally __EnableLooping__to __true__. 
            

* __EnableRelativePath__: When true, __RadCarousel__ will recalculate and scale the path
              proportionally when the form is resized so that the path will keep its contour.
            

## Item-interaction properties

* __ItemClickDefaultAction__: When set to __SelectItem__, clicking on a carousel item causes
              the item carousel to animate. When set to __None__, the items remain static in the carousel.
            

* __ItemReflectionPercentage__: This property controls the percentage amount, relative to the size of the item, that
              automatically displays as a reflection. The example below has __ItemReflectionPercentage__ set to .5, i.e. 50%.
            
             ![carousel-using-radcarousel-radcarousel-properties 001](images/carousel-using-radcarousel-radcarousel-properties001.png)

* __SelectedIndex__: Set this property to animate the indexed RadItem to the end of the carousel path. This programmatically
              produces the same effect as clicking an item when __ItemClickDefaultAction__ is set to __SelectItem__.
            
