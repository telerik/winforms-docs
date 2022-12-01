---
title: Accessing and Customizing Elements
page_title: Accessing and Customizing Elements - CalculatorDropDown
description: This topic will demonstrate how to access different element in the control in order to change their appearance.
slug: winforms/editors/customizing-appearance/accessing-and-customizing-elements
tags: customization
published: True
position: 0
previous_url: editors-calculatordropdown-customization
---

# Customization
 
This topic will demonstrate how to access different element in the control in order to change their appearance.
      
## Memory Element Visual Customization

{{source=..\SamplesCS\Editors\RadCalculatorDropDownCustomization.cs region=ChangeTheImageOfMemoryElement}} 
{{source=..\SamplesVB\Editors\RadCalculatorDropDownCustomization.vb region=ChangeTheImageOfMemoryElement}} 

````C#
this.radCalculatorDropDown1.CalculatorElement.MemoryElement.Image = Resources.email;

````
````VB.NET
Me.RadCalculatorDropDown1.CalculatorElement.MemoryElement.Image = My.Resources.email

````

{{endregion}} 

>caption Figure 1: RadCalculatorMemoryElement Customization
![WinForms RadCalculatorDropDown RadCalculatorMemoryElement Customization](images/editors-calculatordropdown-customization001.png)

## Text Box Visual Customization 

{{source=..\SamplesCS\Editors\RadCalculatorDropDownCustomization.cs region=ChangeTheBackColorOfTheTextBox}} 
{{source=..\SamplesVB\Editors\RadCalculatorDropDownCustomization.vb region=ChangeTheBackColorOfTheTextBox}} 

````C#
this.radCalculatorDropDown1.CalculatorElement.FillPrimitive.BackColor = Color.Yellow;
this.radCalculatorDropDown1.CalculatorElement.EditorContentElement.Fill.BackColor = Color.Yellow;

````
````VB.NET
Me.RadCalculatorDropDown1.CalculatorElement.FillPrimitive.BackColor = Color.Yellow
Me.RadCalculatorDropDown1.CalculatorElement.EditorContentElement.Fill.BackColor = Color.Yellow

````

{{endregion}} 

>caption Figure 2: Text Box Customization
![WinForms RadCalculatorDropDown Text Box Customization](images/editors-calculatordropdown-customization002.png)

## Calculator Visual Customization 

{{source=..\SamplesCS\Editors\RadCalculatorDropDownCustomization.cs region=ChangeTheBackColorOfTheCalculator}} 
{{source=..\SamplesVB\Editors\RadCalculatorDropDownCustomization.vb region=ChangeTheBackColorOfTheCalculator}} 

````C#
this.radCalculatorDropDown1.CalculatorElement.CalculatorContentElement.BackColor = Color.Green;

````
````VB.NET
Me.RadCalculatorDropDown1.CalculatorElement.CalculatorContentElement.BackColor = Color.Green

````

{{endregion}} 

>caption Figure 3: Calculator Customization
![WinForms RadCalculatorDropDown Calculator Customization](images/editors-calculatordropdown-customization003.png)

## Buttons Visual Customization 

{{source=..\SamplesCS\Editors\RadCalculatorDropDownCustomization.cs region=ChangeTheBackColorOfButtons}} 
{{source=..\SamplesVB\Editors\RadCalculatorDropDownCustomization.vb region=ChangeTheBackColorOfButtons}} 

````C#
this.radCalculatorDropDown1.CalculatorElement.CalculatorContentElement.ButtonEquals.GradientStyle = Telerik.WinControls.GradientStyles.Solid;
this.radCalculatorDropDown1.CalculatorElement.CalculatorContentElement.ButtonEquals.BackColor = Color.Navy;
this.radCalculatorDropDown1.CalculatorElement.CalculatorContentElement.ButtonDelete.GradientStyle = Telerik.WinControls.GradientStyles.Solid;
this.radCalculatorDropDown1.CalculatorElement.CalculatorContentElement.ButtonDelete.BackColor = Color.Red;

````
````VB.NET
Me.RadCalculatorDropDown1.CalculatorElement.CalculatorContentElement.ButtonEquals.GradientStyle = Telerik.WinControls.GradientStyles.Solid
Me.RadCalculatorDropDown1.CalculatorElement.CalculatorContentElement.ButtonEquals.BackColor = Color.Navy
Me.RadCalculatorDropDown1.CalculatorElement.CalculatorContentElement.ButtonDelete.GradientStyle = Telerik.WinControls.GradientStyles.Solid
Me.RadCalculatorDropDown1.CalculatorElement.CalculatorContentElement.ButtonDelete.BackColor = Color.Red

````

{{endregion}} 

>caption Figure 4: Button Elements Customization
![WinForms RadCalculatorDropDown Button Elements Customization](images/editors-calculatordropdown-customization004.png)

## See Also

* [Design Time]({%slug winforms/calculatordropdown/design-time/smart-tag%})
* [Getting Started]({%slug winforms/editors/calculatordropdown/getting-started%})
