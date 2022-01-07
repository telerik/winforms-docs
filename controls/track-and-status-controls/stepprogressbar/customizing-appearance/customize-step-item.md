---
title: Customize Step Item
page_title: Customize Step Item - WinForms StepProgressBar Control
description: WinForms StepProgressBar 
slug: stepprogressbar-customize-appearance-step-item
tags: stepprogressbar
published: True
position: 0 
CTAControlName: StepProgressBar
---

# Customize Step Item 

The __RadStepProgreesBar__ and its __StepProgressItem__ expose various properties which can be used to further customize their visual appearance. In this article we are going to list 

## RadStepProgreesBar

>The following properties will be applied to all steps inside the control. In a case, where you want to customize specific steps and their connection, please refer to the next section of this article.

### __IndicatorSize__

Using this property, you can change the size of the indicator shapes. The default size is 30,30. In the following image this property is set to 60,60.

![stepprogressbar-layout 001](images/stepprogressbar-customize-appearance001.png)

### __StepSpacing__

Using this property, you can change the space between the steps. The default value is 80. In the following image this property is set to 150.

![stepprogressbar-layout 001](images/stepprogressbar-customize-appearance002.png)

### __ConnectionThickness__

Using this property, you can change the connection thickness of the steps. The default value is 3. In the following image this property is set to 8.

![stepprogressbar-layout 001](images/stepprogressbar-customize-appearance003.png)

### __HideConnections__

Using this property, you can hide the connection of the steps. In the following image this property is set to __true__.

![stepprogressbar-layout 001](images/stepprogressbar-customize-appearance004.png)

### __NavigationStep__

Using this property, you can control the scroll step of the navigation buttons. This property will take affect when the __LayoutMode__ property of the __RadStepProgreesBar__ is set to __Absolute__. The default value is 80. In the following example this property is set to 20 which will slowdown the scrolling process.

![stepprogressbar-layout 001](images/stepprogressbar-customize-appearance005.gif)
  
## StepProgressItem

>The following properties will be applied to the corresponding step. The other steps won't be affected.

### __IndicatorSize__

Using this property, you can change the size of the step progress item. The default size is 30,30. Setting the property of the step item itself will not affect the size of the other steps. If this property is used, the property will unbind from the RadStepProgreesBar IndicatorSize property. To bind it again, you can call the __ResetIndicatorSize()__ method of the item.

![stepprogressbar-layout 001](images/stepprogressbar-customize-appearance006.png)

### __ConnectionLength__

Using this property, you can control the connection lenght. The default value is 80. Setting the property of the step item itself will not affect the length of the other connections. If this property is used, the property will unbind from the RadStepProgreesBar __StepSpacing__ property. To bind it again, you can call the __ResetConnectionLength()__ method of the item.

![stepprogressbar-layout 001](images/stepprogressbar-customize-appearance007.png)

### __ConnectionThickness__

Using this property, you can control the connection thickness. The default value is 3. Setting the property of the step item itself will not affect the thickness of the other connections. If this property is used, the property will unbind from the RadStepProgreesBar __ConnectionThickness__ property. To bind it again, you can call the __ResetConnectionThickness()__ method of the item.

![stepprogressbar-layout 001](images/stepprogressbar-customize-appearance008.png)

# See Also

* [Getting Started]({%slug stepprogressbar-getting-started%})
* [Design Time]({%slug stepprogressbar-design-time%}) 
* [Structure]({%slug stepprogressbar-structure%}) 
 
        
