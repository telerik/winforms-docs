---
title: Customizing RadExpressionEditor
page_title: Customizing RadExpressionEditor
description: Customizing RadExpressionEditor
slug: gridview-expressioneditor-cutomizing-radexpressioneditor
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
        

#### __[C#]__

{{source=..\SamplesCS\GridView\ExpressionEditor\CustomFunctions.cs region=customFunction}}
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
	{{endregion}}



#### __[VB.NET]__

{{source=..\SamplesVB\GridView\ExpressionEditor\CustomFunctions.vb region=customFunction}}
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
	{{endregion}}



Once implemented, the new custom ExpressionContext class,
          has to be set for the static Context property:
        

#### __[C#]__

{{source=..\SamplesCS\GridView\ExpressionEditor\CustomFunctions.cs region=settingCustom}}
	            Telerik.Data.Expressions.ExpressionContext.Context = new CustomExpressionContext();
	{{endregion}}



#### __[VB.NET]__

{{source=..\SamplesVB\GridView\ExpressionEditor\CustomFunctions.vb region=settingCustom}}
	        Telerik.Data.Expressions.ExpressionContext.Context = New CustomExpressionContext()
	{{endregion}}



Than the new expression method can be used:

        

#### __[C#]__

{{source=..\SamplesCS\GridView\ExpressionEditor\CustomFunctions.cs region=settingExpression}}
	            this.radGridView1.Columns["expression"].Expression = "PI()";
	{{endregion}}



#### __[VB.NET]__

{{source=..\SamplesVB\GridView\ExpressionEditor\CustomFunctions.vb region=settingExpression}}
	        Me.RadGridView1.Columns("expression").Expression = "PI()"
	{{endregion}}



## Customizing the functions list

RadExpressionEditor supports loading functions, operators and
          constants from an xml file. This allows for customizing the available elements,
          localizing functions descriptions and adding custom functions.
          All available values should be described in the source xml file according to the
          following xml structure:
        

#### __[XML]__

{{source=..\SamplesCS\GridView\ExpressionEditor\ExpressionItemsListData.xml region=customExpressions}}
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
	{{endregion}}



To load prepared xml source file LoadFromXML method should be used as shown bellow:

        

#### __[C#]__

{{source=..\SamplesCS\GridView\ExpressionEditor\CustomFunctions.cs region=loadingXML}}
	            string path = "Telerik.Examples.WinControls.GridView.Expressions.ExpressionItemsListData.xml";
	            Stream stream = Assembly.GetExecutingAssembly().GetManifestResourceStream(path);
	            RadExpressionEditorForm.ExpressionItemsList.LoadFromXML(stream);
	{{endregion}}



#### __[VB.NET]__

{{source=..\SamplesVB\GridView\ExpressionEditor\CustomFunctions.vb region=loadingXML}}
	        Dim path As String = "Telerik.Examples.WinControls.GridView.Expressions.ExpressionItemsListData.xml"
	        Dim stream_ As Stream = Assembly.GetExecutingAssembly().GetManifestResourceStream(path)
	        RadExpressionEditorForm.ExpressionItemsList.LoadFromXML(stream_)
	{{endregion}}


