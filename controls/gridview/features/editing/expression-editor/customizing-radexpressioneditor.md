---
title: Customizing RadExpressionEditor
page_title: Customizing RadExpressionEditor - WinForms GridView Control
description: WinForms GridView offers a mechanism for creating custom expression methods used in RadExpressionEditor. 
components: ["gridview"]
slug: winforms/gridview/expression-editor/customizing-radexpressioneditor
tags: customizing,radexpressioneditor
published: True
position: 2
previous_url: gridview-expressioneditor-cutomizing-radexpressioneditor
---

# Customizing RadExpressionEditor

## Creating custom expression functions

Although Telerik provides a large number of predefined functions, some scenarios require additional functionality. You can create a custom expression method for use in `RadExpressionEditor` or as a value of the `Expression` property. The parameterless `ExpressionContext()` constructor has been removed. A custom context subclass must pass an `ExpressionFunctionRegistry` to its base constructor.

Use `ExpressionFunctionRegistry.CreateWithBuiltInFunctions()` to retain the built-in functions and aggregates, or `ExpressionFunctionRegistry.CreateEmpty()` to start without any functions or aggregates. Register methods on the context with `AddGlobalFunction`, and methods invoked on expression values with `AddInstanceFunction`. Registration uses the public method's exact parameter types. For example, register a method that accepts a `string` with `typeof(string)`; methods such as `object.GetType()` are not automatically exposed as expression functions.

The following C# and VB examples create a registry with the built-ins, register a custom global `Pi()` function, and pass the registry to the base constructor:

#### Creating a custom expression context

<snippet id='gridview-customfunctions-customfunction-cs' />
<snippet id='gridview-customfunctions-customfunction-vb' />

Before evaluating expressions, assign the custom context to the static `ExpressionContext.Context` property:

<snippet id='gridview-customfunctions-settingcustom-cs' />
<snippet id='gridview-customfunctions-settingcustom-vb' />

Then you can use the new expression method:

#### Using the custom function

<snippet id='gridview-customfunctions-settingexpression-cs' />
<snippet id='gridview-customfunctions-settingexpression-vb' />

These examples assume that `radGridView1` has a column named `CustomExpression` and that the custom context has been assigned to `ExpressionContext.Context` as shown above.

The shared context is used by GridView expressions, TreeView filter descriptors, and shared collection-view expression filtering and evaluation. `RadCollectionView.FilterEvaluate` and `RadValidationProvider` rule evaluation create their own built-in registries, so custom functions registered in the shared context are not available in those paths.

## Customizing the functions list

__RadExpressionEditor__ supports loading functions, operators and constants from an XML file. This allows for customizing the available elements, localizing functions descriptions and adding custom functions. All available values should be described in the source XML file according to the following XML structure:

````xml
	<?xml version="1.0" encoding="utf-8" ?>
	<ExpressionItemsList>
	  <!-- Custom functions -->
	  <ExpressionItem Name="GetPi (Custom Function)" Value="PI()" Syntax="PI()" Type="OtherFunc">
	    <Description>
	      Get the value of Pi. This is a custom added function.
	    </Description>
	  </ExpressionItem>
	
	  <ExpressionItem Name="Sum" Value="SUM()" Syntax="SUM([List(Of Number)])" Type="AggregateFunc">
	    <Description>
	      Computes the sum of a sequence of values.
	    </Description>
	  </ExpressionItem>
	</ExpressionItemsList>
````

To load a prepared XML source file, use the `LoadFromXML` method as shown below:

<snippet id='gridview-customfunctions-loadingxml-cs' />
<snippet id='gridview-customfunctions-loadingxml-vb' />

## ExpressionEditorFormCreated event

This event fires before the expression editor form is shown. The following example changes the `BackColor` and hides the icon in the title bar: 

<snippet id='gridview-customfunctions-formatingexpressionform-cs' />
<snippet id='gridview-customfunctions-formatingexpressionform-vb' />

## See Also

* [Functions Reference]({%slug winforms/gridview/expression-editor/functions-reference%})

* [Expression Syntax and Operators]({%slug winforms/gridview/expression-editor/expression-syntax%})

* [Design-time]({%slug winforms/gridview/expression-editor/design-time%})

* [End-user Support]({%slug winforms/gridview/expression-editor/end-user-support%})

* [Overview]({%slug winforms/gridview/expression-editor%})

* [Localization]({%slug winforms/gridview/expression-editor/localization%})

