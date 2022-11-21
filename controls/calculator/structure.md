---
title: Structure
page_title: Structure - RadCalculator
description: Get familiar with the internal elements structure of the WinForms Calculator control.    
slug: calculator-structure
tags: calculator
published: True
position: 0 
---

# Structure

This article describes the inner structure and organization of the elements which build **RadCalculator**.

![calculator-structure 001](images/calculator-structure001.png)

* **RadCalculatorElement**
	* **RadCalculatorTextAreaElement** - represents the area at the top of the control that displays the calculated value.
	* **RadCalculatorContentElement** - represents a content element that contains all the calculator buttons.	
		* **GridLayout** - represents a container element that holds the buttons
		
			1\. **RadCalculatorMemoryButtonElement**

			2\. **RadCalculatorOperationButtonElement**

			3\. **RadCalculatorEqualsButtonElement**

			4\. **RadCalculatorCommandButtonElement**

			5\. **RadCalculatorDeleteButtonElement**
			
			6\. **RadCalculatorDigitButtonElement**

## Elements Hierarchy

![calculator-structure 002](images/calculator-structure002.png)
 

# See Also
	
* [Design Time]({%slug calculator-design-time%})	
* [Getting Started]({%slug calculator-getting-started%})	



