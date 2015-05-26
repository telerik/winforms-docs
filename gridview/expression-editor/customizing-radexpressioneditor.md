---
title: Customizing RadExpressionEditor
page_title: Customizing RadExpressionEditor | UI for WinForms Documentation
description: Customizing RadExpressionEditor
slug: winforms/gridview/expression-editor/customizing-radexpressioneditor
tags: customizing,radexpressioneditor
published: True
position: 2
---

# Customizing RadExpressionEditor



## Creating custom expression functions

Although Telerik provides a great number of predefined functions, there could be scenarios,
          which require additional functionality. We provide a mechanism,
          which allows the developer to create a custom expression method,
          which can be used in RadExpressionEditor or as a value of the Expression property.
          In order to do that, ExpressionContext class has to
          derive from the ExpressionContext class:
        #_[C#]_

	



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
'
````

{{endregion}} 




Once implemented, the new custom ExpressionContext class,
          has to be set for the static Context property:
        #_[C#]_

	



{{source=..\SamplesCS\GridView\ExpressionEditor\CustomFunctions.cs region=settingCustom}} 
{{source=..\SamplesVB\GridView\ExpressionEditor\CustomFunctions.vb region=settingCustom}} 

````C#
            Telerik.Data.Expressions.ExpressionContext.Context = new CustomExpressionContext();
````
````VB.NET
        Telerik.Data.Expressions.ExpressionContext.Context = New CustomExpressionContext()
        '
````

{{endregion}} 




Than the new expression method can be used:

        #_[C#]_

	



{{source=..\SamplesCS\GridView\ExpressionEditor\CustomFunctions.cs region=settingExpression}} 
{{source=..\SamplesVB\GridView\ExpressionEditor\CustomFunctions.vb region=settingExpression}} 

````C#
            this.radGridView1.Columns["expression"].Expression = "PI()";
````
````VB.NET
        Me.RadGridView1.Columns("expression").Expression = "PI()"
        '
````

{{endregion}} 




## Customizing the functions list

RadExpressionEditor supports loading functions, operators and
          constants from an xml file. This allows for customizing the available elements,
          localizing functions descriptions and adding custom functions.
          All available values should be described in the source xml file according to the
          following xml structure:
        

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



To load prepared xml source file LoadFromXML method should be used as shown bellow:

        #_[C#]_

	

#_[VB.NET]_

	


