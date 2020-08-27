---
title: Validation Rules
page_title: Validation Rules | Validation Provider
description: RadValidationProvider supports three types of validation rules all of which implements the IRadValidationRule interface. 
slug: validation-provider-validation-rules
tags: validation, provider
published: True
position: 4 
---

# Validation Rules

**RadValidationProvider** supports three types of validation rules all of which implements the **IRadValidationRule** interface:

* **RadValidationRule**: allows you to define validation logic for a single control considering a validation operator and a value.
* **RadValidationRuleWithTargetControl**: allows you to define validation logic of a control against a second control, e.g. if you have two **RadDateTimePicker** controls for selecting start/end date and you need to ensure that start date is less than end date. 
* **RadCompositeValidationRule**: allows defining more complex validation logic by adding multiple simpler **RadValidationRules**.

>note As of **R3 2020** RadValidationProvider supports nested PropertyNames to validate, e.g. **Text.Length**.

## RadValidationRule

**RadValidationRule** requires the following properties to be set in order to define a validation logic for a single control:

* **AutoToolTip**: a boolean value indicating whether a tool tip will be shown when the validation fails. 
* **Controls**: a collection that contains all controls to which this rule is applied, e.g. you can use one rule for multiple controls.
* **Operator**: specifies the operator to be used for the validation logic. It is of type [FilterOperator](https://docs.telerik.com/devtools/winforms/api/telerik.wincontrols.data.filteroperator.html). Hence, similar to the filter operator, you can use the same validation operators.
* **Value**: specifies the value for the validation comparison. 
* **ToolTipText**: specifies the text to be displayed when the validation fails.
* **ToolTipTitle**: specifies the title of the error tool tip. Its default value is *"Validation Failed"*.

The following code snippet demonstrates how to add a validation rule ensuring that a **RadTextBox** is not empty. When you focus the control and try to exit without entering any text, the validation logic won't succeed and the error tool tip will be displayed: 

![validation-provider-validation-rules 001](images/validation-provider-validation-rules001.png) 

{{source=..\SamplesCS\ValidationProvider\ValidationProviderGettingStarted.cs region=SimpleRule}} 
{{source=..\SamplesVB\ValidationProvider\ValidationProviderGettingStarted.vb region=SimpleRule}}

````C#
RadValidationRule radValidationRule1 = new RadValidationRule();
radValidationRule1.AutoToolTip = true;
radValidationRule1.Controls.Add(this.radTextBox1);
radValidationRule1.Operator = Telerik.WinControls.Data.FilterOperator.IsNotLike;
radValidationRule1.ToolTipText = "Location can\'t be empty!";
radValidationRule1.Value = "";

radValidationProvider1.ValidationRules.Add(radValidationRule1);


````
````VB.NET
Dim radValidationRule1 As RadValidationRule = New RadValidationRule()
radValidationRule1.AutoToolTip = True
radValidationRule1.Controls.Add(Me.RadTextBox1)
radValidationRule1.[Operator] = Telerik.WinControls.Data.FilterOperator.IsNotLike
radValidationRule1.ToolTipText = "Location can't be empty!"
radValidationRule1.Value = ""
radValidationProvider1.ValidationRules.Add(radValidationRule1)


````

{{endregion}} 

## RadValidationRuleWithTargetControl

**RadValidationRuleWithTargetControl** requires the following properties to be set in order to define a validation logic for a control against a second control:

* **AutoToolTip**: a boolean value indicating whether a tool tip will be shown when the validation fails. 
* **Controls**: a collection that contains all controls to which this rule is applied, e.g. you can use one rule for multiple controls.
* **Operator**: specifies the operator to be used for the validation logic. It is of type [FilterOperator](https://docs.telerik.com/devtools/winforms/api/telerik.wincontrols.data.filteroperator.html). Hence, similar to the filter operator, you can use the same validation operators.
* **PropertyName**: specifies the name of the property which to be used for the validation comparison.
* **TargetControl**: specifies the second control against which the validation logic will be performed.  
* **TargetControlPropertyName**: specifies the name of the second control's property which to be used for the validation comparison.
* **ToolTipText**: specifies the text to be displayed when the validation fails.
* **ToolTipTitle**: specifies the title of the error tool tip. Its default value is *"Validation Failed"*.

The following rule will ensure that the first **RadDateTimePicker**'s value is less than the value of the second one:

![validation-provider-validation-rules 002](images/validation-provider-validation-rules002.png) 

{{source=..\SamplesCS\ValidationProvider\ValidationProviderGettingStarted.cs region=SecondControl}} 
{{source=..\SamplesVB\ValidationProvider\ValidationProviderGettingStarted.vb region=SecondControl}}

````C#

            RadValidationRuleWithTargetControl radValidationRuleWithTargetControl1 = new RadValidationRuleWithTargetControl();
            radValidationRuleWithTargetControl1.AutoToolTip = true;
            radValidationRuleWithTargetControl1.Controls.Add(this.radDateTimePicker1);
            radValidationRuleWithTargetControl1.Operator = Telerik.WinControls.Data.FilterOperator.IsLessThan;
            radValidationRuleWithTargetControl1.PropertyName = "Value";
            radValidationRuleWithTargetControl1.TargetControl = this.radDateTimePicker2;
            radValidationRuleWithTargetControl1.TargetControlPropertyName = "Value";
            radValidationRuleWithTargetControl1.ToolTipText = "Start date should be less than End date!";

            radValidationProvider1.ValidationRules.Add(radValidationRuleWithTargetControl1);


````
````VB.NET
        Dim radValidationRuleWithTargetControl1 As RadValidationRuleWithTargetControl = New RadValidationRuleWithTargetControl()
        radValidationRuleWithTargetControl1.AutoToolTip = True
        radValidationRuleWithTargetControl1.Controls.Add(Me.RadDateTimePicker1)
        radValidationRuleWithTargetControl1.[Operator] = Telerik.WinControls.Data.FilterOperator.IsLessThan
        radValidationRuleWithTargetControl1.PropertyName = "Value"
        radValidationRuleWithTargetControl1.TargetControl = Me.RadDateTimePicker2
        radValidationRuleWithTargetControl1.TargetControlPropertyName = "Value"
        radValidationRuleWithTargetControl1.ToolTipText = "Start date should be less than End date!"
        radValidationProvider1.ValidationRules.Add(radValidationRuleWithTargetControl1)


````

{{endregion}}

In order to cover the case that the second **RadDateTimePicker** is greater than the first one, you will need to add one more **RadValidationRuleWithTargetControl**:

![validation-provider-validation-rules 003](images/validation-provider-validation-rules003.png) 

{{source=..\SamplesCS\ValidationProvider\ValidationProviderGettingStarted.cs region=TargetControl}} 
{{source=..\SamplesVB\ValidationProvider\ValidationProviderGettingStarted.vb region=TargetControl}}

````C#

            RadValidationRuleWithTargetControl radValidationRuleWithTargetControl2 = new RadValidationRuleWithTargetControl();
            radValidationRuleWithTargetControl2.AutoToolTip = true;
            radValidationRuleWithTargetControl2.Controls.Add(this.radDateTimePicker2);
            radValidationRuleWithTargetControl2.Operator = Telerik.WinControls.Data.FilterOperator.IsGreaterThan;
            radValidationRuleWithTargetControl2.PropertyName = "Value";
            radValidationRuleWithTargetControl2.TargetControl = this.radDateTimePicker1;
            radValidationRuleWithTargetControl2.TargetControlPropertyName = "Value";
            radValidationRuleWithTargetControl2.ToolTipText = "End date should be greater than Start date!";

            radValidationProvider1.ValidationRules.Add(radValidationRuleWithTargetControl2);


````
````VB.NET

        Dim radValidationRuleWithTargetControl2 As RadValidationRuleWithTargetControl = New RadValidationRuleWithTargetControl()
        radValidationRuleWithTargetControl2.AutoToolTip = True
        radValidationRuleWithTargetControl2.Controls.Add(Me.RadDateTimePicker2)
        radValidationRuleWithTargetControl2.[Operator] = Telerik.WinControls.Data.FilterOperator.IsGreaterThan
        radValidationRuleWithTargetControl2.PropertyName = "Value"
        radValidationRuleWithTargetControl2.TargetControl = Me.RadDateTimePicker1
        radValidationRuleWithTargetControl2.TargetControlPropertyName = "Value"
        radValidationRuleWithTargetControl2.ToolTipText = "End date should be greater than Start date!"
        radValidationProvider1.ValidationRules.Add(radValidationRuleWithTargetControl2)

````

{{endregion}}



## RadCompositeValidationRule

**RadCompositeValidationRule** allows you to define a collection of multiple validation rules added to the **ValidationRules** collection. 


The following code snippet demonstrates how to define a **RadCompositeValidationRule** composed of two **RadValidationRuleWithTargetControls** and one **RadValidationRule** ensuring that **Car Price** (radSpinEditor1) is greater than **Minimum Price** (radSpinEditor2) and less than **Maximum Price** (radSpinEditor3). In addition, the price cannot be equal to *5000*:
 
>caution
None of the associated controls (e.g. radSpinEditor1) of a composite rule should be added as a target in any of the nested rules! Please be careful when defining composite rules in order to get the proper validation logic. Usually, it is even possible to simplify the validation logic and define separate **RadValidationRuleWithTargetControls** outside a composite rule.
>

{{source=..\SamplesCS\ValidationProvider\ValidationProviderGettingStarted.cs region=CompositeRule}} 
{{source=..\SamplesVB\ValidationProvider\ValidationProviderGettingStarted.vb region=CompositeRule}}

````C#
            this.radSpinEditor2.Minimum = 0;
            this.radSpinEditor2.Maximum = 10000;
            this.radSpinEditor2.Value = 1000;

            this.radSpinEditor3.Minimum = 0;
            this.radSpinEditor3.Maximum = 10000;
            this.radSpinEditor3.Value = 10000;

            this.radSpinEditor1.Maximum = 10000;

            RadCompositeValidationRule compositeValidationRule = new RadCompositeValidationRule();
            compositeValidationRule.LogicalOperator = Telerik.WinControls.Data.FilterLogicalOperator.And;
            compositeValidationRule.ToolTipText = "Car price should be greater than Minimum and less than Maximum price!";

            RadValidationRuleWithTargetControl radValidationRuleWithTargetControl1 = new RadValidationRuleWithTargetControl();
            radValidationRuleWithTargetControl1.AutoToolTip = true;
            radValidationRuleWithTargetControl1.PropertyName = "Value";
            radValidationRuleWithTargetControl1.AddControl(this.radSpinEditor1);
            radValidationRuleWithTargetControl1.Operator = Telerik.WinControls.Data.FilterOperator.IsGreaterThan;
            radValidationRuleWithTargetControl1.TargetControl = this.radSpinEditor2;
            radValidationRuleWithTargetControl1.TargetControlPropertyName = "Value";

            compositeValidationRule.ValidationRules.Add(radValidationRuleWithTargetControl1);

            RadValidationRuleWithTargetControl radValidationRuleWithTargetControl2 = new RadValidationRuleWithTargetControl();
            radValidationRuleWithTargetControl2.AutoToolTip = true;
            radValidationRuleWithTargetControl2.PropertyName = "Value";
            radValidationRuleWithTargetControl2.AddControl(this.radSpinEditor1);
            radValidationRuleWithTargetControl2.Operator = Telerik.WinControls.Data.FilterOperator.IsLessThan;
            radValidationRuleWithTargetControl2.TargetControl = this.radSpinEditor3;
            radValidationRuleWithTargetControl2.TargetControlPropertyName = "Value";

            compositeValidationRule.ValidationRules.Add(radValidationRuleWithTargetControl2);

            RadValidationRule radValidationRule3 = new RadValidationRule();
            radValidationRule3.AutoToolTip = true;
            radValidationRule3.AddControl(this.radSpinEditor1);
            radValidationRule3.PropertyName = "Value";
            radValidationRule3.Operator = Telerik.WinControls.Data.FilterOperator.IsNotEqualTo;
            radValidationRule3.Value = 5000;

            compositeValidationRule.ValidationRules.Add(radValidationRule3);

            this.radValidationProvider1.ValidationRules.Add(compositeValidationRule); 
 

````
````VB.NET
 
        Me.radSpinEditor2.Minimum = 0
        Me.radSpinEditor2.Maximum = 10000
        Me.radSpinEditor2.Value = 1000
        Me.radSpinEditor3.Minimum = 0
        Me.radSpinEditor3.Maximum = 10000
        Me.radSpinEditor3.Value = 10000
        Me.radSpinEditor1.Maximum = 10000
        Dim compositeValidationRule As RadCompositeValidationRule = New RadCompositeValidationRule()
        compositeValidationRule.LogicalOperator = Telerik.WinControls.Data.FilterLogicalOperator.[And]
        compositeValidationRule.ToolTipText = "Car price should be greater than Minimum and less than Maximum price!"
        Dim radValidationRuleWithTargetControl1 As RadValidationRuleWithTargetControl = New RadValidationRuleWithTargetControl()
        radValidationRuleWithTargetControl1.AutoToolTip = True
        radValidationRuleWithTargetControl1.PropertyName = "Value"
        radValidationRuleWithTargetControl1.AddControl(Me.radSpinEditor1)
        radValidationRuleWithTargetControl1.[Operator] = Telerik.WinControls.Data.FilterOperator.IsGreaterThan
        radValidationRuleWithTargetControl1.TargetControl = Me.radSpinEditor2
        radValidationRuleWithTargetControl1.TargetControlPropertyName = "Value"
        compositeValidationRule.ValidationRules.Add(radValidationRuleWithTargetControl1)
        Dim radValidationRuleWithTargetControl2 As RadValidationRuleWithTargetControl = New RadValidationRuleWithTargetControl()
        radValidationRuleWithTargetControl2.AutoToolTip = True
        radValidationRuleWithTargetControl2.PropertyName = "Value"
        radValidationRuleWithTargetControl2.AddControl(Me.radSpinEditor1)
        radValidationRuleWithTargetControl2.[Operator] = Telerik.WinControls.Data.FilterOperator.IsLessThan
        radValidationRuleWithTargetControl2.TargetControl = Me.radSpinEditor3
        radValidationRuleWithTargetControl2.TargetControlPropertyName = "Value"
        compositeValidationRule.ValidationRules.Add(radValidationRuleWithTargetControl2)
        Dim radValidationRule3 As RadValidationRule = New RadValidationRule()
        radValidationRule3.AutoToolTip = True
        radValidationRule3.AddControl(Me.radSpinEditor1)
        radValidationRule3.PropertyName = "Value"
        radValidationRule3.[Operator] = Telerik.WinControls.Data.FilterOperator.IsNotEqualTo
        radValidationRule3.Value = 5000
        compositeValidationRule.ValidationRules.Add(radValidationRule3)
        Me.radValidationProvider1.ValidationRules.Add(compositeValidationRule)

````

{{endregion}}

![validation-provider-validation-rules 004](images/validation-provider-validation-rules004.png) 

When the validation fails, the **ControlValidation** event is fired. The **RadValidationEventArgs** offers the following information:
* **ValidationHelperElement**: stores the styling information of the error indication. 
* **IsValid**: determines whether the controls is validated or not. Even though the validation may fail according to the defined rules, you can determine that the situation is valid in certain cases and set it to *true*.
* **Control**: returns the control being validated. 
* **ErrorImage**: specifies the error image that is being shown when the validation fails.  
* **ErrorSvgImage**: specifies the error vector image that is being shown when the validation fails. 
* **ToolTip**: gives you access to the error tooltip.
* **ToolTipX** and **ToolTipY**: specifies the location of the tooltip. 
* **ToolTipDuration**: specifies the duration how long the tooltip is being shown. 
* **ValidationRule**: returns the rule that fails. 
* **ErrorText**: specifies the error message. 
* **ErrorTitle**: specifies the error title.
* **DisplayIconAndToolTip**: controls whether to display icon and tooltip.
* **EnableToolTipShadow**: controls whether the tooltip's shadow will be rendered.


# See Also

* [Getting Started]({%slug validation-provider-getting-started%})
* [Design Time]({%slug validation-provider-design-time%})
* [Customizing Error Indication]({%slug validation-provider-customizing-error-indication%})
 
        
