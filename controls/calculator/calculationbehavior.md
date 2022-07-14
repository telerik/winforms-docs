---
title: CalculationBehavior
page_title: CalculationBehaviors | RadCalculator
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

{{source=..\SamplesCS\Calculator\CalculatorGettingStarted.cs region=Behavior}} 
{{source=..\SamplesVB\Calculator\CalculatorGettingStarted.vb region=Behavior}} 

````C#

public class CustomStandardCalculatorCalculationBehavior : StandardCalculatorCalculationBehavior
{
    public CustomStandardCalculatorCalculationBehavior(ICalculatorElement calculatorElement):base(calculatorElement)
    { 
    }
    //Handles keyboard input
    public override void OnButtonKeyDown(KeyEventArgs e)
    {
        if (e.KeyData== Keys.NumPad5)
        {
            //restricts 5 from the Numpad
            return;
        }
        base.OnButtonKeyDown(e);
    }

    public override void OnButtonKeyPress(KeyPressEventArgs e)
    {
        //If someone needs to handle the input char, can use this method.
        base.OnButtonKeyPress(e);
    }

    //Handles mouse input
    public override void OnButtonMouseUp(CalculatorButtonType buttonType, CalculatorAction buttonAction, MouseEventArgs e)
    {
        if (buttonType == CalculatorButtonType.Memory)
        {
            //restrict the memory commands
            return;
        }
        base.OnButtonMouseUp(buttonType, buttonAction, e);
    }
}

````
````VB.NET

Public Class CustomStandardCalculatorCalculationBehavior
    Inherits StandardCalculatorCalculationBehavior

    Public Sub New(ByVal calculatorElement As ICalculatorElement)
        MyBase.New(calculatorElement)
    End Sub

    Public Overrides Sub OnButtonKeyDown(ByVal e As KeyEventArgs)
        If e.KeyData = Keys.NumPad5 Then
            Return
        End If

        MyBase.OnButtonKeyDown(e)
    End Sub

    Public Overrides Sub OnButtonKeyPress(ByVal e As KeyPressEventArgs)
        MyBase.OnButtonKeyPress(e)
    End Sub

    Public Overrides Sub OnButtonMouseUp(ByVal buttonType As CalculatorButtonType, ByVal buttonAction As CalculatorAction, ByVal e As MouseEventArgs)
        If buttonType = CalculatorButtonType.Memory Then
            Return
        End If

        MyBase.OnButtonMouseUp(buttonType, buttonAction, e)
    End Sub
End Class

````

{{endregion}}

3\. Apply the custom behavior to the CalculatorElement.**CalculationBehavior** property.

{{source=..\SamplesCS\Calculator\CalculatorGettingStarted.cs region=Apply}} 
{{source=..\SamplesVB\Calculator\CalculatorGettingStarted.vb region=Apply}} 

````C#

this.radCalculator1.CalculatorElement.CalculationBehavior = new CustomStandardCalculatorCalculationBehavior(this.radCalculator1.CalculatorElement);

````
````VB.NET

radCalculator1.CalculatorElement.CalculationBehavior = New CustomStandardCalculatorCalculationBehavior(radCalculator1.CalculatorElement)

````

{{endregion}}

# See Also
	
* [Design Time]({%slug calculator-design-time%})	
* [Getting Started]({%slug calculator-getting-started%})	



