---
title: Customization
page_title: Customization | UI for WinForms Documentation
description: Customization
slug: winforms/editors/calculatordropdown/customization
tags: customization
published: True
position: 2
previous_url: editors-calculatordropdown-customization
---

# Customization
 
This topic will demonstrate how to access different element in the control in order to change their appearance.
      
## Modify the appearance of the memory element 

{{source=..\SamplesCS\Editors\RadCalculatorDropDownCustomization.cs region=ChangeTheImageOfMemoryElement}} 
{{source=..\SamplesVB\Editors\RadCalculatorDropDownCustomization.vb region=ChangeTheImageOfMemoryElement}} 

````C#
this.radCalculatorDropDown1.CalculatorElement.MemoryElement.Image = Resources.email;

````
````VB.NET
Me.RadCalculatorDropDown1.CalculatorElement.MemoryElement.Image = My.Resources.email

````

{{endregion}} 


![editors-calculatordropdown-customization 001](images/editors-calculatordropdown-customization001.png)

## Modify the appearance of the  of the text box 

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


![editors-calculatordropdown-customization 002](images/editors-calculatordropdown-customization002.png)

## Modify the appearance of the calculator in the popup 

{{source=..\SamplesCS\Editors\RadCalculatorDropDownCustomization.cs region=ChangeTheBackColorOfTheCalculator}} 
{{source=..\SamplesVB\Editors\RadCalculatorDropDownCustomization.vb region=ChangeTheBackColorOfTheCalculator}} 

````C#
this.radCalculatorDropDown1.CalculatorElement.CalculatorContentElement.BackColor = Color.Green;

````
````VB.NET
Me.RadCalculatorDropDown1.CalculatorElement.CalculatorContentElement.BackColor = Color.Green

````

{{endregion}} 


![editors-calculatordropdown-customization 003](images/editors-calculatordropdown-customization003.png)

## Modify the appearance of the of the buttons 

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


![editors-calculatordropdown-customization 004](images/editors-calculatordropdown-customization004.png)
