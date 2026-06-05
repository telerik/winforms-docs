---
title: Customizing RadExpressionEditor
page_title: Customizing RadExpressionEditor - WinForms GridView Control
description: WinForms GridView offers a mechanism for creating custom expression methods used in RadExpressionEditor. 
slug: winforms/gridview/expression-editor/customizing-radexpressioneditor
tags: customizing,radexpressioneditor
published: True
position: 2
previous_url: gridview-expressioneditor-cutomizing-radexpressioneditor
---

# Customizing RadExpressionEditor

## Creating custom expression functions

Although Telerik provides a large number of predefined functions, some scenarios require additional functionality. You can create a custom expression method for use in `RadExpressionEditor` or as a value of the `Expression` property. To do that, create a class that inherits from the `ExpressionContext` class:

<snippet id='gridview-customfunctions-customfunction-cs' />
<snippet id='gridview-customfunctions-customfunction-vb' />

Once implemented, assign the new custom `ExpressionContext` class by using the static `Context` property:

<snippet id='gridview-customfunctions-settingcustom-cs' />
<snippet id='gridview-customfunctions-settingcustom-vb' />

Then you can use the new expression method:

<snippet id='gridview-customfunctions-settingexpression-cs' />
<snippet id='gridview-customfunctions-settingexpression-vb' />

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

