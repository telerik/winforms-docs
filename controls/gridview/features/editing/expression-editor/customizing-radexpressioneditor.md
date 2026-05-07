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

{{source=..\SamplesCS\GridView\ExpressionEditor\CustomFunctions.cs region=customFunction}} 
{{source=..\SamplesVB\GridView\ExpressionEditor\CustomFunctions.vb region=customFunction}} 

````C#
public class CustomExpressionContext : Telerik.Data.Expressions.ExpressionContext
    {
/// <summary>
/// My custom function, which returns Pi constant.
/// </summary>
/// <returns></returns>
public double Pi()
{
    return Math.PI;
}
    }

````
````VB.NET
Public Class CustomExpressionContext
    Inherits Telerik.Data.Expressions.ExpressionContext
    ''' <summary>
    ''' My custom function, which returns Pi constant.
    ''' </summary>
    ''' <returns></returns>
    Public Function Pi() As Double
        Return Math.PI
    End Function
End Class

````

{{endregion}} 

Once implemented, assign the new custom `ExpressionContext` class by using the static `Context` property:

{{source=..\SamplesCS\GridView\ExpressionEditor\CustomFunctions.cs region=settingCustom}} 
{{source=..\SamplesVB\GridView\ExpressionEditor\CustomFunctions.vb region=settingCustom}} 

````C#
Telerik.Data.Expressions.ExpressionContext.Context = new CustomExpressionContext();

````
````VB.NET
Telerik.Data.Expressions.ExpressionContext.Context = New CustomExpressionContext()

````

{{endregion}} 

Then you can use the new expression method:

{{source=..\SamplesCS\GridView\ExpressionEditor\CustomFunctions.cs region=settingExpression}} 
{{source=..\SamplesVB\GridView\ExpressionEditor\CustomFunctions.vb region=settingExpression}}
````C#
this.radGridView1.Columns["expression"].Expression = "PI()";

````
````VB.NET
Me.RadGridView1.Columns("expression").Expression = "PI()"

```` 

{{endregion}} 

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

{{source=..\SamplesCS\GridView\ExpressionEditor\CustomFunctions.cs region=loadingXML}} 
{{source=..\SamplesVB\GridView\ExpressionEditor\CustomFunctions.vb region=loadingXML}} 

````C#
string path = "Telerik.Examples.WinControls.GridView.Expressions.ExpressionItemsListData.xml";
Stream stream = Assembly.GetExecutingAssembly().GetManifestResourceStream(path);
RadExpressionEditorForm.ExpressionItemsList.LoadFromXML(stream);

````
````VB.NET
Dim path As String = "Telerik.Examples.WinControls.GridView.Expressions.ExpressionItemsListData.xml"
Dim stream_ As Stream = Assembly.GetExecutingAssembly().GetManifestResourceStream(path)
RadExpressionEditorForm.ExpressionItemsList.LoadFromXML(stream_)

````

{{endregion}} 

## ExpressionEditorFormCreated event

This event fires before the expression editor form is shown. The following example changes the `BackColor` and hides the icon in the title bar: 

{{source=..\SamplesCS\GridView\ExpressionEditor\CustomFunctions.cs region=FormatingExpressionForm}} 
{{source=..\SamplesVB\GridView\ExpressionEditor\CustomFunctions.vb region=FormatingExpressionForm}}
````C#
private void RadGridView1_ExpressionEditorFormCreated(object sender, ExpressionEditorFormCreatedEventArgs e)
{
    e.ExpressionEditorForm.FormElement.TitleBar.FillPrimitive.BackColor = Color.LightSkyBlue;
    e.ExpressionEditorForm.ShowIcon = false;
}

````
````VB.NET
Private Sub RadGridView1_ExpressionEditorFormCreated(ByVal sender As Object, ByVal e As ExpressionEditorFormCreatedEventArgs)
    e.ExpressionEditorForm.FormElement.TitleBar.FillPrimitive.BackColor = Color.LightSkyBlue
    e.ExpressionEditorForm.ShowIcon = False
End Sub
'#endgion
Class
gion customFunction
ic Class CustomExpressionContext
Inherits Telerik.Data.Expressions.ExpressionContext
''' <summary>
''' My custom function, which returns Pi constant.
''' </summary>
''' <returns></returns>
Public Function Pi() As Double
    Return Math.PI
End Function
Class

```` 


{{endregion}} 


## See Also

* [Functions Reference]({%slug winforms/gridview/expression-editor/functions-reference%})

* [Expression Syntax and Operators]({%slug winforms/gridview/expression-editor/expression-syntax%})

* [Design-time]({%slug winforms/gridview/expression-editor/design-time%})

* [End-user Support]({%slug winforms/gridview/expression-editor/end-user-support%})

* [Overview]({%slug winforms/gridview/expression-editor%})

* [Localization]({%slug winforms/gridview/expression-editor/localization%})

