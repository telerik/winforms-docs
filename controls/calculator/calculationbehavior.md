---
title: CalculationBehavior
page_title: CalculationBehaviors - RadCalculator
description: Learn how to create a custom function in the WinForms Calculator control.    
slug: calculator-calculationbehavior
tags: calculator, calculation, behavior
published: True
position: 6 
---

# CalculationBehavior

**RadCalculator** handles the whole calculation logic by its **StandardCalculatorCalculationBehavior**. It can be accessed by the **CalculationBehavior** property of the control. 

It offers a convenient public API that can be used for any customization purposes.

## Custom StandardCalculatorCalculationBehavior

1\. Create a derivative of the **StandardCalculatorCalculationBehavior** class and override the **OnButtonMouseUp** and **OnButtonKeyDown** methods where it is possible to control what button action to be executed. 

2\. Restrict all memory commands considering the passed CalculatorButtonType. In addition to this, Keys.NumPad5 is also forbidden by the keyboard:

<snippet id='calculator-calculationbehavior-behavior-cs' />
<snippet id='calculator-calculationbehavior-behavior-vb' />



3\. Apply the custom behavior to the CalculatorElement.**CalculationBehavior** property.

<snippet id='calculator-calculationbehavior-apply-cs' />
<snippet id='calculator-calculationbehavior-apply-vb' />



# See Also
	
* [Design Time]({%slug calculator-design-time%})	
* [Getting Started]({%slug calculator-getting-started%})	



