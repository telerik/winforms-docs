---
title: Custom Functions
page_title: Custom Functions
description: Custom Functions
slug: spreadprocessing-features-formulas-custom-functions
tags: custom,functions
published: True
position: 4
---

# Custom Functions



This article provides information about the possible approaches for creating a custom function. It contains the following sections:
      

* [
              Inheriting FunctionBase Abstract Class
            ](#inheriting-functionbase-abstract-class)

* [
              Functions Inheritance Tree
            ](#functions-inheritance-tree)

* [
              ArgumentConversionRules
            ](#argumentconversionrules)

* [
              FunctionInfo
            ](#functioninfo)

* [
              Custom Function Examples
            ](#custom-function-examples)

## Inheriting FunctionBase abstract class

The document model provides powerful API for creating custom functions. All functions must inherit from the abstract __FunctionBase__ class, providing basic methods and properties for each function instance.
        

These are the basic __FunctionBase__ members:
        

* __Name__: Property of type String, defining the name of the function. The property is used for registering the function, so the name of the function must be unique (case insensitive). If a function with repeating name is registered, it overrides the previous function registered with this name.
            

* __FunctionInfo__: Property of type FunctionInfo providing description of the function and its arguments. For more detailed description of this class you may follow [this](#functioninfo) link.
            

* __ArgumentConversionRules__: Property describing the way different argument types are interpreted. The functions API works with 5 argument types (Logical, Number, Text, Reference and Array) and each function may interpret each of this argument types differently. For more information you may follow [this](#argumentconversionrules) link.
            

* __Evaluate__ and __EvaluateOverride methods__: The methods where the function calculations take place. In order to define custom function you need to override the __EvaluateOverride__ method so that later you may obtain function calculations value through the __Evaluate__ method.
            

Additionally each custom function needs to be registered through the __FunctionManager__ class. This is easily done by passing an instance of the function class to the static __Register()__ method.
        

__Example 1__ shows how to register a function class ArgumentsFunction, inheritor of FunctionBase.
        

#### __[C#] Example 1: Register custom function__

{{source=..\SamplesCS\RadSpreadProcessing\Features\Formulas\RadSpreadProcessingCustomFunctions.cs region=radspreadprocessing-features-formulas-custom-functions_0}}
	            FunctionManager.RegisterFunction(new ArgumentsFunction());
	{{endregion}}



#### __[VB] Example 1: Register custom function__

{{source=..\SamplesVB\RadSpreadProcessing\Features\Formulas\RadSpreadProcessingCustomFunctions.vb region=radspreadprocessing-features-formulas-custom-functions_0}}
	        FunctionManager.RegisterFunction(New ArgumentsFunction())
	        '#End Region
	    End Sub
	
	#Region "radspreadprocessing-features-formulas-custom-functions_1"
	    Public Shared ReadOnly BoolFunctionConversion As New ArgumentConversionRules(emptyIndirectArgument:=ArgumentInterpretation.Ignore, textNumberDirectArgument:=ArgumentInterpretation.TreatAsError, textNumberIndirectArgument:=ArgumentInterpretation.Ignore, nonTextNumberDirectArgument:=ArgumentInterpretation.TreatAsError, nonTextNumberIndirectArgument:=ArgumentInterpretation.Ignore, arrayArgument:=ArrayArgumentInterpretation.UseAllElements)
	#End Region
	
	    Public Sub FunctionInfo()
	        '#Region "radspreadprocessing-features-formulas-custom-functions_2"
	        Dim functionName As String = "ADD"
	
	        Dim description As String = "Adds all the numbers in range of cells."
	
	        Dim requiredArguments As IEnumerable(Of ArgumentInfo) = New ArgumentInfo() {New ArgumentInfo("Number", "number1, number2,... are the numbers to sum. Logical values and text are ignored in cells, included if typed as arguments.", ArgumentType.Number)}
	
	        Dim optionalArguments As IEnumerable(Of ArgumentInfo) = New ArgumentInfo() {New ArgumentInfo("Number", "number1, number2,... are the numbers to sum. Logical values and text are ignored in cells, included if typed as arguments.", ArgumentType.Number)}
	
	        Dim sumFunctionInfo As New FunctionInfo(functionName, FunctionCategory.MathTrig, description, requiredArguments, optionalArguments, 254, _
	            True)
	
	        '#End Region
	    End Sub
	
	    Private Class ArgumentsFunction
	        Inherits FunctionBase
	        Protected Overrides Function EvaluateOverride(arguments As RadExpression()) As RadExpression
	            ' TODO: Implement this method
	            Throw New NotImplementedException()
	        End Function
	
	        Public Overrides ReadOnly Property Name() As String
	            Get
	                ' TODO: Implement this property getter
	                Throw New NotImplementedException()
	            End Get
	        End Property
	
	        Public Overrides ReadOnly Property FunctionInfo() As FunctionInfo
	            Get
	                ' TODO: Implement this property getter
	                Throw New NotImplementedException()
	            End Get
	        End Property
	    End Class
	
	#Region "radspreadprocessing-features-formulas-custom-functions_3"
	
	    Public Class Arguments
	        Inherits FunctionBase
	        Public Shared ReadOnly FunctionName As String = "ARGUMENTS"
	        Private Shared ReadOnly Info As FunctionInfo
	
	        Public Overrides ReadOnly Property Name() As String
	            Get
	                Return FunctionName
	            End Get
	        End Property
	
	        Public Overrides ReadOnly Property FunctionInfo() As FunctionInfo
	            Get
	                Return Info
	            End Get
	        End Property
	
	        Shared Sub New()
	            Dim description As String = "Returns number of used arguments."
	
	            Dim requiredArguments As IEnumerable(Of ArgumentInfo) = New ArgumentInfo() {New ArgumentInfo("First", "First argument.", ArgumentType.Any), New ArgumentInfo("Second", "Second argument.", ArgumentType.Any), New ArgumentInfo("Third", "Third argument.", ArgumentType.Any)}
	
	            Dim optionalArguments As IEnumerable(Of ArgumentInfo) = New ArgumentInfo() {New ArgumentInfo("First", "First argument.", ArgumentType.Any), New ArgumentInfo("Second", "Second argument.", ArgumentType.Any), New ArgumentInfo("Third", "Third argument.", ArgumentType.Any)}
	
	            Info = New FunctionInfo(FunctionName, FunctionCategory.MathTrig, description, requiredArguments, optionalArguments, optionalArgumentsRepeatCount:=3)
	        End Sub
	
	        Protected Overrides Function EvaluateOverride(arguments As RadExpression()) As RadExpression
	            Return New NumberExpression(arguments.Length)
	        End Function
	    End Class
	#End Region
	
	#Region "radspreadprocessing-features-formulas-custom-functions_4"
	    Public Class E
	        Inherits FunctionBase
	        Public Shared ReadOnly FunctionName As String = "E"
	        Private Shared ReadOnly Info As FunctionInfo
	
	        Public Overrides ReadOnly Property Name() As String
	            Get
	                Return FunctionName
	            End Get
	        End Property
	
	        Public Overrides ReadOnly Property FunctionInfo() As FunctionInfo
	            Get
	                Return Info
	            End Get
	        End Property
	
	        Shared Sub New()
	            Dim description As String = "Returns the Napier's constant."
	
	            Info = New FunctionInfo(FunctionName, FunctionCategory.MathTrig, description)
	        End Sub
	
	        Protected Overrides Function EvaluateOverride(arguments As RadExpression()) As RadExpression
	            Return NumberExpression.E
	        End Function
	    End Class
	#End Region
	
	#Region "radspreadprocessing-features-formulas-custom-functions_5"
	    Public Class RepeatString
	        Inherits FunctionWithArguments
	        Public Shared ReadOnly FunctionName As String = "REPEAT.STRING"
	        Private Shared ReadOnly Info As FunctionInfo
	
	        Public Overrides ReadOnly Property Name() As String
	            Get
	                Return FunctionName
	            End Get
	        End Property
	
	        Public Overrides ReadOnly Property FunctionInfo() As FunctionInfo
	            Get
	                Return Info
	            End Get
	        End Property
	
	        Shared Sub New()
	            Dim requiredArguments As IEnumerable(Of ArgumentInfo) = New ArgumentInfo() {New ArgumentInfo("Text", "Text is the text you want to repeat.", ArgumentType.Text)}
	
	            Dim optionalArguments As IEnumerable(Of ArgumentInfo) = New ArgumentInfo() {New ArgumentInfo("NumberTimes", "NumberTimes is a positive number specifying the number of times to repeat text.", ArgumentType.Number)}
	
	            Dim description As String = "REPEAT.STRING repeats some text a desired number of times."
	
	            Info = New FunctionInfo(FunctionName, FunctionCategory.Text, description, requiredArguments, optionalArguments, 1, _
	                False)
	        End Sub
	
	        Protected Overrides Function EvaluateOverride(arguments As Object()) As RadExpression
	            Dim text As String = arguments(0).ToString()
	
	            Dim numberTimes As Double = 1
	            If arguments.Length > 1 Then
	                numberTimes = CDbl(arguments(1))
	            End If
	            Dim builder As New StringBuilder()
	
	            If numberTimes < 0 Then
	                Return ErrorExpressions.ValueError
	            End If
	
	            For i As Integer = 0 To numberTimes - 1
	                builder.Append(text)
	            Next
	
	            Return New StringExpression(builder.ToString())
	        End Function
	    End Class
	
	#End Region
	
	#Region "radspreadprocessing-features-formulas-custom-functions_6"
	    Public Class Add
	        Inherits NumbersInFunction
	        Public Shared ReadOnly FunctionName As String = "ADD"
	        Private Shared ReadOnly Info As FunctionInfo
	
	        Public Overrides ReadOnly Property ArgumentConversionRules() As ArgumentConversionRules
	            Get
	                Return ArgumentConversionRules.NaryIgnoreIndirectNumberFunctionConversion
	            End Get
	        End Property
	
	        Public Overrides ReadOnly Property Name() As String
	            Get
	                Return FunctionName
	            End Get
	        End Property
	
	        Public Overrides ReadOnly Property FunctionInfo() As FunctionInfo
	            Get
	                Return Info
	            End Get
	        End Property
	
	        Shared Sub New()
	            '#Region "FunctionInfo"
	
	            Dim description As String = "Adds all the numbers in range of cells."
	
	            Dim requiredArguments As IEnumerable(Of ArgumentInfo) = New ArgumentInfo() {New ArgumentInfo("Number", "number1, number2,... are the numbers to sum. Logical values and text are ignored in cells, included if typed as arguments.", ArgumentType.Number)}
	
	            Dim optionalArguments As IEnumerable(Of ArgumentInfo) = New ArgumentInfo() {New ArgumentInfo("Number", "number1, number2,... are the numbers to sum. Logical values and text are ignored in cells, included if typed as arguments.", ArgumentType.Number)}
	
	
	            '#End Region
	            Info = New FunctionInfo(FunctionName, FunctionCategory.MathTrig, description, requiredArguments, optionalArguments, 254, _
	                True)
	        End Sub
	
	        Protected Overrides Function EvaluateOverride(arguments As Double()) As Telerik.Windows.Documents.Spreadsheet.Expressions.RadExpression
	            Dim result As Double = 0
	
	            For i As Integer = 0 To arguments.Length - 1
	                result += arguments(i)
	            Next
	
	            If Double.IsInfinity(result) Then
	                Return ErrorExpressions.NumberError
	            End If
	
	            Return New NumberExpression(result)
	        End Function
	    End Class
	
	#End Region
	
	#Region "radspreadprocessing-features-formulas-custom-functions_7"
	    Private Class GeoMean
	        Inherits NumbersInFunction
	        Public Shared ReadOnly FunctionName As String = "GEOMEAN"
	        Private Shared ReadOnly info As FunctionInfo
	        Private Shared ReadOnly conversionRules As New ArgumentConversionRules(nonTextNumberDirectArgument:=ArgumentInterpretation.TreatAsError, nonTextNumberIndirectArgument:=ArgumentInterpretation.TreatAsError, emptyIndirectArgument:=ArgumentInterpretation.Ignore, emptyDirectArgument:=ArgumentInterpretation.Ignore, arrayArgument:=ArrayArgumentInterpretation.UseAllElements)
	
	        Public Overrides ReadOnly Property ArgumentConversionRules() As ArgumentConversionRules
	            Get
	                Return GeoMean.conversionRules
	            End Get
	        End Property
	
	        Public Overrides ReadOnly Property Name() As String
	            Get
	                Return FunctionName
	            End Get
	        End Property
	
	        Public Overrides ReadOnly Property FunctionInfo() As FunctionInfo
	            Get
	                Return info
	            End Get
	        End Property
	
	        Shared Sub New()
	            Dim description As String = "Returns the geometric mean of a sequance of numbers."
	
	            Dim requiredArguments As IEnumerable(Of ArgumentInfo) = New ArgumentInfo() {New ArgumentInfo("Number", "Positive number", ArgumentType.Number)}
	
	            Dim optionalArguments As IEnumerable(Of ArgumentInfo) = New ArgumentInfo() {New ArgumentInfo("Number", "Positive number", ArgumentType.Number)}
	
	            info = New FunctionInfo(FunctionName, FunctionCategory.Statistical, description, requiredArguments, optionalArguments, optionalArgumentsRepeatCount:=255)
	        End Sub
	
	        Protected Overrides Function EvaluateOverride(arguments As Double()) As RadExpression
	            Dim product As Double = 1
	
	            For Each argument As Double In arguments
	                If argument <= 0 Then
	                    Return ErrorExpressions.NumberError
	                End If
	
	                product *= argument
	            Next
	
	            Dim result As Double = Math.Pow(product, 1.0 / arguments.Length)
	
	            Return New NumberExpression(result)
	        End Function
	    End Class
	
	#End Region
	
	#Region "radspreadprocessing-features-formulas-custom-functions_8"
	
	    Public Class Nand
	        Inherits BooleansInFunction
	        Public Shared ReadOnly FunctionName As String = "NAND"
	        Private Shared ReadOnly Info As FunctionInfo
	
	        Public Overrides ReadOnly Property Name() As String
	            Get
	                Return FunctionName
	            End Get
	        End Property
	
	        Public Overrides ReadOnly Property FunctionInfo() As FunctionInfo
	            Get
	                Return Info
	            End Get
	        End Property
	
	        Shared Sub New()
	            Dim description As String = "Returns the Sheffer stroke (or also known as the NAND operator) of two booleans."
	
	            Dim requiredArguments As IEnumerable(Of ArgumentInfo) = New ArgumentInfo() {New ArgumentInfo("Logical", "The first logical argument.", ArgumentType.Logical), New ArgumentInfo("Logical", "The second logical argument.", ArgumentType.Logical)}
	
	            Info = New FunctionInfo(FunctionName, FunctionCategory.Text, description, requiredArguments)
	        End Sub
	
	        Protected Overrides Function EvaluateOverride(arguments As Boolean()) As RadExpression
	            Dim result As Boolean = Not (arguments(0) And arguments(1))
	
	            Return If(result, BooleanExpression.[True], BooleanExpression.[False])
	        End Function
	    End Class
	#End Region
	
	#Region "radspreadprocessing-features-formulas-custom-functions_9"
	
	    Public Class Upper
	        Inherits StringsInFunction
	        Public Shared ReadOnly FunctionName As String = "UPPER"
	        Private Shared ReadOnly Info As FunctionInfo
	
	        Public Overrides ReadOnly Property Name() As String
	            Get
	                Return FunctionName
	            End Get
	        End Property
	
	        Public Overrides ReadOnly Property FunctionInfo() As FunctionInfo
	            Get
	                Return Info
	            End Get
	        End Property
	
	        Shared Sub New()
	            Dim description As String = "Converts text to uppercase."
	
	            Dim requiredArguments As IEnumerable(Of ArgumentInfo) = New ArgumentInfo() {New ArgumentInfo("Text", "Text is the text you want converted to uppercase. Text can be a reference or text string.", ArgumentType.Text)}
	
	            Info = New FunctionInfo(FunctionName, FunctionCategory.Text, description, requiredArguments)
	        End Sub
	
	        Protected Overrides Function EvaluateOverride(arguments As String()) As RadExpression
	            Dim text As String = arguments(0)
	
	            Dim builder As New StringBuilder()
	
	            For i As Integer = 0 To text.Length - 1
	                Dim c As Char = Char.ToUpperInvariant(text(i))
	                builder.Append(c)
	            Next
	
	            Return New StringExpression(builder.ToString())
	        End Function
	    End Class
	#End Region
	End Class



## Functions Inheritance Tree

The document model provides an inheritance tree of classes providing ready to use functionalities for different function types depending on the function arguments and the desired result.
        

__Figure 1__ the base abstract function classes.
        

Figure 1: Functiona Inheritance![spreadprocessing-features-formulas-custom-functions 001](images/spreadprocessing-features-formulas-custom-functions001.png)

* __FunctionBase__: Provides the base functions properties (__Name, FunctionInfo, ArgumentConvertionRules__). Also provides the logic of the __IsArgumentNumberValid()__ method which handles the logic when invalid arguments count is inputted by the user. By inheriting __FunctionBase__ you must override the __EvaluateOverride(RadExpression[] arguments)__ method, so you need to handle the whole logic of converting __RadExpression__ arguments to function arguments.
            

* __FunctionWithArguments__: Handles the basic logic of converting __RadExpression__'s value to some other value type corresponding to the ArgumentType defined in FunctionInfo property. By inheriting from this class you need to override the __EvaluateOverride(object[] arguments)__ method and handle and array of already converted function argument values.
            

* __FunctionWithSameTypeArguments<T>__: By inheriting this class you need to override __EvaluateOverride(T[] arguments)__ method and handle an array of arguments with same type T.
            

* __StringInFunctions, NumbersInFunction, BooleansInFunction__: These classes inherit directly from __FunctionWithSameTypeArguments<String>, FunctionWithSameTypeArguments<double> and FunctionWithSameTypeArguments<bool>__. Using them is appropriate in cases when the function the respective argument type - String, double or Boolean.
            

## ArgumentConversionRules

The __ArgumentConversionRules__ class provides properties describing the way different function argument types are interpreted. The functions API works with 5 argument types (Logical, Number, Text, Reference and Array) and each function may interpret each of these argument types differently. Additionally RadSpreadsheet allows to be made difference between __direct arguments__ (value passed directly into the formula) and __indirect arguments__ (values that depending on some other cells referencing).
        

ArgumentConversionRules has the following properties:
        

* __EmptyDirectArgument__: The ArgumentInterpretation of an Empty cell value, passed as direct argument.
            

* __NumberDirectArgument__: The ArgumentInterpretation of a Number cell value, passed as direct argument.
            

* __BoolDirectArgument__: The ArgumentInterpretation of a Boolean cell value, passed as direct argument.
            

* __TextNumberDirectArgument__: The ArgumentInterpretation of a String cell value that may successfully be parsed to a number, passed as direct argument.
            

* __NonTextNumberDirectArgument__: The ArgumentInterpretation of a String cell value that cannot be parsed to a number, passed as direct argument.
            

* __EmptyIndirectArgument__: The ArgumentInterpretation of an Empty cell value, passed as indirect argument.
            

* __NumberIndirectArgument__: The ArgumentInterpretation of a Number cell value, passed as direct argument.
            

* __BoolIndirectArgument__: The ArgumentInterpretation of a Boolean cell value, passed as indirect argument.
            

* __TextNumberIndirectArgument__: The ArgumentInterpretation of a String cell value that may successfully be parsed to a number, passed as indirect argument.
            

* __NonTextNumberIndirectArgument__: The ArgumentInterpretation of a String cell value that cannot be parsed to a number, passed as indirect argument.
            

* __ArrayArgument__: The ArrayArgumentInterpretaion.
            

The value of these properties are from the enumerations
          [ArgumentInterpretation](http://www.telerik.com/help/winforms/t_telerik_windows_documents_spreadsheet_expressions_functions_argumentinterpretation.html)
          and
          [ArrayArgumentInterpretation](http://www.telerik.com/help/winforms/t_telerik_windows_documents_spreadsheet_expressions_functions_arrayargumentinterpretation.html)
          and they are set through the constructor of __ArgumentConversionRules__. The default values of these interpretations in the constructor are accordingly __ArgumentInterpretation.UseAsIs__ and __ArrayArgumentInterpretation.UseFirstElement__.
        

__Example 2__ creates an instance of ArgumentConversionRules:
        

#### __[C#] Example 2: Create ArgumentConversionRules__

{{source=..\SamplesCS\RadSpreadProcessing\Features\Formulas\RadSpreadProcessingCustomFunctions.cs region=radspreadprocessing-features-formulas-custom-functions_1}}
	        public static readonly ArgumentConversionRules BoolFunctionConversion = new ArgumentConversionRules(
	                    emptyIndirectArgument: ArgumentInterpretation.Ignore,
	                    textNumberDirectArgument: ArgumentInterpretation.TreatAsError,
	                    textNumberIndirectArgument: ArgumentInterpretation.Ignore,
	                    nonTextNumberDirectArgument: ArgumentInterpretation.TreatAsError,
	                    nonTextNumberIndirectArgument: ArgumentInterpretation.Ignore,
	                    arrayArgument: ArrayArgumentInterpretation.UseAllElements);
	{{endregion}}



#### __[VB] Example 2: Create ArgumentConversionRules__

{{source=..\SamplesVB\RadSpreadProcessing\Features\Formulas\RadSpreadProcessingCustomFunctions.vb region=radspreadprocessing-features-formulas-custom-functions_1}}
	    Public Shared ReadOnly BoolFunctionConversion As New ArgumentConversionRules(emptyIndirectArgument:=ArgumentInterpretation.Ignore, textNumberDirectArgument:=ArgumentInterpretation.TreatAsError, textNumberIndirectArgument:=ArgumentInterpretation.Ignore, nonTextNumberDirectArgument:=ArgumentInterpretation.TreatAsError, nonTextNumberIndirectArgument:=ArgumentInterpretation.Ignore, arrayArgument:=ArrayArgumentInterpretation.UseAllElements)
	#End Region
	
	    Public Sub FunctionInfo()
	        '#Region "radspreadprocessing-features-formulas-custom-functions_2"
	        Dim functionName As String = "ADD"
	
	        Dim description As String = "Adds all the numbers in range of cells."
	
	        Dim requiredArguments As IEnumerable(Of ArgumentInfo) = New ArgumentInfo() {New ArgumentInfo("Number", "number1, number2,... are the numbers to sum. Logical values and text are ignored in cells, included if typed as arguments.", ArgumentType.Number)}
	
	        Dim optionalArguments As IEnumerable(Of ArgumentInfo) = New ArgumentInfo() {New ArgumentInfo("Number", "number1, number2,... are the numbers to sum. Logical values and text are ignored in cells, included if typed as arguments.", ArgumentType.Number)}
	
	        Dim sumFunctionInfo As New FunctionInfo(functionName, FunctionCategory.MathTrig, description, requiredArguments, optionalArguments, 254, _
	            True)
	
	        '#End Region
	    End Sub
	
	    Private Class ArgumentsFunction
	        Inherits FunctionBase
	        Protected Overrides Function EvaluateOverride(arguments As RadExpression()) As RadExpression
	            ' TODO: Implement this method
	            Throw New NotImplementedException()
	        End Function
	
	        Public Overrides ReadOnly Property Name() As String
	            Get
	                ' TODO: Implement this property getter
	                Throw New NotImplementedException()
	            End Get
	        End Property
	
	        Public Overrides ReadOnly Property FunctionInfo() As FunctionInfo
	            Get
	                ' TODO: Implement this property getter
	                Throw New NotImplementedException()
	            End Get
	        End Property
	    End Class
	
	#Region "radspreadprocessing-features-formulas-custom-functions_3"
	
	    Public Class Arguments
	        Inherits FunctionBase
	        Public Shared ReadOnly FunctionName As String = "ARGUMENTS"
	        Private Shared ReadOnly Info As FunctionInfo
	
	        Public Overrides ReadOnly Property Name() As String
	            Get
	                Return FunctionName
	            End Get
	        End Property
	
	        Public Overrides ReadOnly Property FunctionInfo() As FunctionInfo
	            Get
	                Return Info
	            End Get
	        End Property
	
	        Shared Sub New()
	            Dim description As String = "Returns number of used arguments."
	
	            Dim requiredArguments As IEnumerable(Of ArgumentInfo) = New ArgumentInfo() {New ArgumentInfo("First", "First argument.", ArgumentType.Any), New ArgumentInfo("Second", "Second argument.", ArgumentType.Any), New ArgumentInfo("Third", "Third argument.", ArgumentType.Any)}
	
	            Dim optionalArguments As IEnumerable(Of ArgumentInfo) = New ArgumentInfo() {New ArgumentInfo("First", "First argument.", ArgumentType.Any), New ArgumentInfo("Second", "Second argument.", ArgumentType.Any), New ArgumentInfo("Third", "Third argument.", ArgumentType.Any)}
	
	            Info = New FunctionInfo(FunctionName, FunctionCategory.MathTrig, description, requiredArguments, optionalArguments, optionalArgumentsRepeatCount:=3)
	        End Sub
	
	        Protected Overrides Function EvaluateOverride(arguments As RadExpression()) As RadExpression
	            Return New NumberExpression(arguments.Length)
	        End Function
	    End Class
	#End Region
	
	#Region "radspreadprocessing-features-formulas-custom-functions_4"
	    Public Class E
	        Inherits FunctionBase
	        Public Shared ReadOnly FunctionName As String = "E"
	        Private Shared ReadOnly Info As FunctionInfo
	
	        Public Overrides ReadOnly Property Name() As String
	            Get
	                Return FunctionName
	            End Get
	        End Property
	
	        Public Overrides ReadOnly Property FunctionInfo() As FunctionInfo
	            Get
	                Return Info
	            End Get
	        End Property
	
	        Shared Sub New()
	            Dim description As String = "Returns the Napier's constant."
	
	            Info = New FunctionInfo(FunctionName, FunctionCategory.MathTrig, description)
	        End Sub
	
	        Protected Overrides Function EvaluateOverride(arguments As RadExpression()) As RadExpression
	            Return NumberExpression.E
	        End Function
	    End Class
	#End Region
	
	#Region "radspreadprocessing-features-formulas-custom-functions_5"
	    Public Class RepeatString
	        Inherits FunctionWithArguments
	        Public Shared ReadOnly FunctionName As String = "REPEAT.STRING"
	        Private Shared ReadOnly Info As FunctionInfo
	
	        Public Overrides ReadOnly Property Name() As String
	            Get
	                Return FunctionName
	            End Get
	        End Property
	
	        Public Overrides ReadOnly Property FunctionInfo() As FunctionInfo
	            Get
	                Return Info
	            End Get
	        End Property
	
	        Shared Sub New()
	            Dim requiredArguments As IEnumerable(Of ArgumentInfo) = New ArgumentInfo() {New ArgumentInfo("Text", "Text is the text you want to repeat.", ArgumentType.Text)}
	
	            Dim optionalArguments As IEnumerable(Of ArgumentInfo) = New ArgumentInfo() {New ArgumentInfo("NumberTimes", "NumberTimes is a positive number specifying the number of times to repeat text.", ArgumentType.Number)}
	
	            Dim description As String = "REPEAT.STRING repeats some text a desired number of times."
	
	            Info = New FunctionInfo(FunctionName, FunctionCategory.Text, description, requiredArguments, optionalArguments, 1, _
	                False)
	        End Sub
	
	        Protected Overrides Function EvaluateOverride(arguments As Object()) As RadExpression
	            Dim text As String = arguments(0).ToString()
	
	            Dim numberTimes As Double = 1
	            If arguments.Length > 1 Then
	                numberTimes = CDbl(arguments(1))
	            End If
	            Dim builder As New StringBuilder()
	
	            If numberTimes < 0 Then
	                Return ErrorExpressions.ValueError
	            End If
	
	            For i As Integer = 0 To numberTimes - 1
	                builder.Append(text)
	            Next
	
	            Return New StringExpression(builder.ToString())
	        End Function
	    End Class
	
	#End Region
	
	#Region "radspreadprocessing-features-formulas-custom-functions_6"
	    Public Class Add
	        Inherits NumbersInFunction
	        Public Shared ReadOnly FunctionName As String = "ADD"
	        Private Shared ReadOnly Info As FunctionInfo
	
	        Public Overrides ReadOnly Property ArgumentConversionRules() As ArgumentConversionRules
	            Get
	                Return ArgumentConversionRules.NaryIgnoreIndirectNumberFunctionConversion
	            End Get
	        End Property
	
	        Public Overrides ReadOnly Property Name() As String
	            Get
	                Return FunctionName
	            End Get
	        End Property
	
	        Public Overrides ReadOnly Property FunctionInfo() As FunctionInfo
	            Get
	                Return Info
	            End Get
	        End Property
	
	        Shared Sub New()
	            '#Region "FunctionInfo"
	
	            Dim description As String = "Adds all the numbers in range of cells."
	
	            Dim requiredArguments As IEnumerable(Of ArgumentInfo) = New ArgumentInfo() {New ArgumentInfo("Number", "number1, number2,... are the numbers to sum. Logical values and text are ignored in cells, included if typed as arguments.", ArgumentType.Number)}
	
	            Dim optionalArguments As IEnumerable(Of ArgumentInfo) = New ArgumentInfo() {New ArgumentInfo("Number", "number1, number2,... are the numbers to sum. Logical values and text are ignored in cells, included if typed as arguments.", ArgumentType.Number)}
	
	
	            '#End Region
	            Info = New FunctionInfo(FunctionName, FunctionCategory.MathTrig, description, requiredArguments, optionalArguments, 254, _
	                True)
	        End Sub
	
	        Protected Overrides Function EvaluateOverride(arguments As Double()) As Telerik.Windows.Documents.Spreadsheet.Expressions.RadExpression
	            Dim result As Double = 0
	
	            For i As Integer = 0 To arguments.Length - 1
	                result += arguments(i)
	            Next
	
	            If Double.IsInfinity(result) Then
	                Return ErrorExpressions.NumberError
	            End If
	
	            Return New NumberExpression(result)
	        End Function
	    End Class
	
	#End Region
	
	#Region "radspreadprocessing-features-formulas-custom-functions_7"
	    Private Class GeoMean
	        Inherits NumbersInFunction
	        Public Shared ReadOnly FunctionName As String = "GEOMEAN"
	        Private Shared ReadOnly info As FunctionInfo
	        Private Shared ReadOnly conversionRules As New ArgumentConversionRules(nonTextNumberDirectArgument:=ArgumentInterpretation.TreatAsError, nonTextNumberIndirectArgument:=ArgumentInterpretation.TreatAsError, emptyIndirectArgument:=ArgumentInterpretation.Ignore, emptyDirectArgument:=ArgumentInterpretation.Ignore, arrayArgument:=ArrayArgumentInterpretation.UseAllElements)
	
	        Public Overrides ReadOnly Property ArgumentConversionRules() As ArgumentConversionRules
	            Get
	                Return GeoMean.conversionRules
	            End Get
	        End Property
	
	        Public Overrides ReadOnly Property Name() As String
	            Get
	                Return FunctionName
	            End Get
	        End Property
	
	        Public Overrides ReadOnly Property FunctionInfo() As FunctionInfo
	            Get
	                Return info
	            End Get
	        End Property
	
	        Shared Sub New()
	            Dim description As String = "Returns the geometric mean of a sequance of numbers."
	
	            Dim requiredArguments As IEnumerable(Of ArgumentInfo) = New ArgumentInfo() {New ArgumentInfo("Number", "Positive number", ArgumentType.Number)}
	
	            Dim optionalArguments As IEnumerable(Of ArgumentInfo) = New ArgumentInfo() {New ArgumentInfo("Number", "Positive number", ArgumentType.Number)}
	
	            info = New FunctionInfo(FunctionName, FunctionCategory.Statistical, description, requiredArguments, optionalArguments, optionalArgumentsRepeatCount:=255)
	        End Sub
	
	        Protected Overrides Function EvaluateOverride(arguments As Double()) As RadExpression
	            Dim product As Double = 1
	
	            For Each argument As Double In arguments
	                If argument <= 0 Then
	                    Return ErrorExpressions.NumberError
	                End If
	
	                product *= argument
	            Next
	
	            Dim result As Double = Math.Pow(product, 1.0 / arguments.Length)
	
	            Return New NumberExpression(result)
	        End Function
	    End Class
	
	#End Region
	
	#Region "radspreadprocessing-features-formulas-custom-functions_8"
	
	    Public Class Nand
	        Inherits BooleansInFunction
	        Public Shared ReadOnly FunctionName As String = "NAND"
	        Private Shared ReadOnly Info As FunctionInfo
	
	        Public Overrides ReadOnly Property Name() As String
	            Get
	                Return FunctionName
	            End Get
	        End Property
	
	        Public Overrides ReadOnly Property FunctionInfo() As FunctionInfo
	            Get
	                Return Info
	            End Get
	        End Property
	
	        Shared Sub New()
	            Dim description As String = "Returns the Sheffer stroke (or also known as the NAND operator) of two booleans."
	
	            Dim requiredArguments As IEnumerable(Of ArgumentInfo) = New ArgumentInfo() {New ArgumentInfo("Logical", "The first logical argument.", ArgumentType.Logical), New ArgumentInfo("Logical", "The second logical argument.", ArgumentType.Logical)}
	
	            Info = New FunctionInfo(FunctionName, FunctionCategory.Text, description, requiredArguments)
	        End Sub
	
	        Protected Overrides Function EvaluateOverride(arguments As Boolean()) As RadExpression
	            Dim result As Boolean = Not (arguments(0) And arguments(1))
	
	            Return If(result, BooleanExpression.[True], BooleanExpression.[False])
	        End Function
	    End Class
	#End Region
	
	#Region "radspreadprocessing-features-formulas-custom-functions_9"
	
	    Public Class Upper
	        Inherits StringsInFunction
	        Public Shared ReadOnly FunctionName As String = "UPPER"
	        Private Shared ReadOnly Info As FunctionInfo
	
	        Public Overrides ReadOnly Property Name() As String
	            Get
	                Return FunctionName
	            End Get
	        End Property
	
	        Public Overrides ReadOnly Property FunctionInfo() As FunctionInfo
	            Get
	                Return Info
	            End Get
	        End Property
	
	        Shared Sub New()
	            Dim description As String = "Converts text to uppercase."
	
	            Dim requiredArguments As IEnumerable(Of ArgumentInfo) = New ArgumentInfo() {New ArgumentInfo("Text", "Text is the text you want converted to uppercase. Text can be a reference or text string.", ArgumentType.Text)}
	
	            Info = New FunctionInfo(FunctionName, FunctionCategory.Text, description, requiredArguments)
	        End Sub
	
	        Protected Overrides Function EvaluateOverride(arguments As String()) As RadExpression
	            Dim text As String = arguments(0)
	
	            Dim builder As New StringBuilder()
	
	            For i As Integer = 0 To text.Length - 1
	                Dim c As Char = Char.ToUpperInvariant(text(i))
	                builder.Append(c)
	            Next
	
	            Return New StringExpression(builder.ToString())
	        End Function
	    End Class
	#End Region
	End Class



## FunctionInfo

The __FunctionInfo__ class provides properties describing the purpose of the function and each of its arguments.
        

__FunctionInfo__ has the following properties:
        

* __Category__: The FunctionCategory to which the function belongs.
            

* __Description__: Description of the function as string value.
            

* __RequiredArgumentsCount__: Returns the number of required arguments of the function. If the user inputs less arguments than the RequiredArgumentsCount an error is raised.
            

* __OptionalArgumentsCount__: Returns the count of the optional arguments group.
            

* __OptionalArgumentsRepetitionCount__: Returns the number of repetitions of the optional group. The valid count of all arguments depends on this value by satisfying the following conditions:
            

* When __OptionalArgumentsRepetionCount <= 1:__

* __ValidArgumentsCount >= RequiredArgumentsCount__

* __ValidArgumentsCount <= RequiredArgumentsCount + OptionalArgumentsCount__

* When __OptionalArgumentsRepetitionsCount > 1:__

* __ValidArgumentsCount = RequiredArgumentsCount + i * OptionalArgumentsCount__

* __i >= 0__

* __i <= OptionalArgumentsRepetitionsCount__

* __i is integer number__

* __IsDefaultValueFunction__: Returns Boolean indicating whether the function is default value function.
            

* When __true__ – the function returns some default value when __all inputted values__ have __ArgumentInterpretation.Ignore__ in ArgumentConversionRules of the function.
                

* When __false__ – the function returns ErrorExpressions.ValueError when __all inputted values__ are invalid even if they have __ArgumentInterpretation.Ignore__ in ArgumentConversionRules of the function.
                

* __Format__: Returns the CellValueFormat of the function result, if the result needs specific formatting (for example DateTime or Currency).
            

__Example 3__ shows how to create an instance of FunctionInfo class.
        

#### __[C#] Example 3: Create FunctionInfo__

{{source=..\SamplesCS\RadSpreadProcessing\Features\Formulas\RadSpreadProcessingCustomFunctions.cs region=radspreadprocessing-features-formulas-custom-functions_2}}
	            string functionName = "ADD";
	
	            string description = "Adds all the numbers in range of cells.";
	
	            IEnumerable<ArgumentInfo> requiredArguments = new ArgumentInfo[]
		        {
			        new ArgumentInfo("Number", "number1, number2,... are the numbers to sum. Logical values and text are ignored in cells, included if typed as arguments.", ArgumentType.Number),
		        };
	
	            IEnumerable<ArgumentInfo> optionalArguments = new ArgumentInfo[]
		        {
			        new ArgumentInfo("Number", "number1, number2,... are the numbers to sum. Logical values and text are ignored in cells, included if typed as arguments.", ArgumentType.Number),
		        };
	
	            FunctionInfo sumFunctionInfo = new FunctionInfo(functionName, FunctionCategory.MathTrig, description, requiredArguments, optionalArguments, 254, true);
	
	{{endregion}}



#### __[VB] Example 3: Create FunctionInfo__

{{source=..\SamplesVB\RadSpreadProcessing\Features\Formulas\RadSpreadProcessingCustomFunctions.vb region=radspreadprocessing-features-formulas-custom-functions_2}}
	        Dim functionName As String = "ADD"
	
	        Dim description As String = "Adds all the numbers in range of cells."
	
	        Dim requiredArguments As IEnumerable(Of ArgumentInfo) = New ArgumentInfo() {New ArgumentInfo("Number", "number1, number2,... are the numbers to sum. Logical values and text are ignored in cells, included if typed as arguments.", ArgumentType.Number)}
	
	        Dim optionalArguments As IEnumerable(Of ArgumentInfo) = New ArgumentInfo() {New ArgumentInfo("Number", "number1, number2,... are the numbers to sum. Logical values and text are ignored in cells, included if typed as arguments.", ArgumentType.Number)}
	
	        Dim sumFunctionInfo As New FunctionInfo(functionName, FunctionCategory.MathTrig, description, requiredArguments, optionalArguments, 254, _
	            True)
	
	        '#End Region
	    End Sub
	
	    Private Class ArgumentsFunction
	        Inherits FunctionBase
	        Protected Overrides Function EvaluateOverride(arguments As RadExpression()) As RadExpression
	            ' TODO: Implement this method
	            Throw New NotImplementedException()
	        End Function
	
	        Public Overrides ReadOnly Property Name() As String
	            Get
	                ' TODO: Implement this property getter
	                Throw New NotImplementedException()
	            End Get
	        End Property
	
	        Public Overrides ReadOnly Property FunctionInfo() As FunctionInfo
	            Get
	                ' TODO: Implement this property getter
	                Throw New NotImplementedException()
	            End Get
	        End Property
	    End Class
	
	#Region "radspreadprocessing-features-formulas-custom-functions_3"
	
	    Public Class Arguments
	        Inherits FunctionBase
	        Public Shared ReadOnly FunctionName As String = "ARGUMENTS"
	        Private Shared ReadOnly Info As FunctionInfo
	
	        Public Overrides ReadOnly Property Name() As String
	            Get
	                Return FunctionName
	            End Get
	        End Property
	
	        Public Overrides ReadOnly Property FunctionInfo() As FunctionInfo
	            Get
	                Return Info
	            End Get
	        End Property
	
	        Shared Sub New()
	            Dim description As String = "Returns number of used arguments."
	
	            Dim requiredArguments As IEnumerable(Of ArgumentInfo) = New ArgumentInfo() {New ArgumentInfo("First", "First argument.", ArgumentType.Any), New ArgumentInfo("Second", "Second argument.", ArgumentType.Any), New ArgumentInfo("Third", "Third argument.", ArgumentType.Any)}
	
	            Dim optionalArguments As IEnumerable(Of ArgumentInfo) = New ArgumentInfo() {New ArgumentInfo("First", "First argument.", ArgumentType.Any), New ArgumentInfo("Second", "Second argument.", ArgumentType.Any), New ArgumentInfo("Third", "Third argument.", ArgumentType.Any)}
	
	            Info = New FunctionInfo(FunctionName, FunctionCategory.MathTrig, description, requiredArguments, optionalArguments, optionalArgumentsRepeatCount:=3)
	        End Sub
	
	        Protected Overrides Function EvaluateOverride(arguments As RadExpression()) As RadExpression
	            Return New NumberExpression(arguments.Length)
	        End Function
	    End Class
	#End Region
	
	#Region "radspreadprocessing-features-formulas-custom-functions_4"
	    Public Class E
	        Inherits FunctionBase
	        Public Shared ReadOnly FunctionName As String = "E"
	        Private Shared ReadOnly Info As FunctionInfo
	
	        Public Overrides ReadOnly Property Name() As String
	            Get
	                Return FunctionName
	            End Get
	        End Property
	
	        Public Overrides ReadOnly Property FunctionInfo() As FunctionInfo
	            Get
	                Return Info
	            End Get
	        End Property
	
	        Shared Sub New()
	            Dim description As String = "Returns the Napier's constant."
	
	            Info = New FunctionInfo(FunctionName, FunctionCategory.MathTrig, description)
	        End Sub
	
	        Protected Overrides Function EvaluateOverride(arguments As RadExpression()) As RadExpression
	            Return NumberExpression.E
	        End Function
	    End Class
	#End Region
	
	#Region "radspreadprocessing-features-formulas-custom-functions_5"
	    Public Class RepeatString
	        Inherits FunctionWithArguments
	        Public Shared ReadOnly FunctionName As String = "REPEAT.STRING"
	        Private Shared ReadOnly Info As FunctionInfo
	
	        Public Overrides ReadOnly Property Name() As String
	            Get
	                Return FunctionName
	            End Get
	        End Property
	
	        Public Overrides ReadOnly Property FunctionInfo() As FunctionInfo
	            Get
	                Return Info
	            End Get
	        End Property
	
	        Shared Sub New()
	            Dim requiredArguments As IEnumerable(Of ArgumentInfo) = New ArgumentInfo() {New ArgumentInfo("Text", "Text is the text you want to repeat.", ArgumentType.Text)}
	
	            Dim optionalArguments As IEnumerable(Of ArgumentInfo) = New ArgumentInfo() {New ArgumentInfo("NumberTimes", "NumberTimes is a positive number specifying the number of times to repeat text.", ArgumentType.Number)}
	
	            Dim description As String = "REPEAT.STRING repeats some text a desired number of times."
	
	            Info = New FunctionInfo(FunctionName, FunctionCategory.Text, description, requiredArguments, optionalArguments, 1, _
	                False)
	        End Sub
	
	        Protected Overrides Function EvaluateOverride(arguments As Object()) As RadExpression
	            Dim text As String = arguments(0).ToString()
	
	            Dim numberTimes As Double = 1
	            If arguments.Length > 1 Then
	                numberTimes = CDbl(arguments(1))
	            End If
	            Dim builder As New StringBuilder()
	
	            If numberTimes < 0 Then
	                Return ErrorExpressions.ValueError
	            End If
	
	            For i As Integer = 0 To numberTimes - 1
	                builder.Append(text)
	            Next
	
	            Return New StringExpression(builder.ToString())
	        End Function
	    End Class
	
	#End Region
	
	#Region "radspreadprocessing-features-formulas-custom-functions_6"
	    Public Class Add
	        Inherits NumbersInFunction
	        Public Shared ReadOnly FunctionName As String = "ADD"
	        Private Shared ReadOnly Info As FunctionInfo
	
	        Public Overrides ReadOnly Property ArgumentConversionRules() As ArgumentConversionRules
	            Get
	                Return ArgumentConversionRules.NaryIgnoreIndirectNumberFunctionConversion
	            End Get
	        End Property
	
	        Public Overrides ReadOnly Property Name() As String
	            Get
	                Return FunctionName
	            End Get
	        End Property
	
	        Public Overrides ReadOnly Property FunctionInfo() As FunctionInfo
	            Get
	                Return Info
	            End Get
	        End Property
	
	        Shared Sub New()
	            '#Region "FunctionInfo"
	
	            Dim description As String = "Adds all the numbers in range of cells."
	
	            Dim requiredArguments As IEnumerable(Of ArgumentInfo) = New ArgumentInfo() {New ArgumentInfo("Number", "number1, number2,... are the numbers to sum. Logical values and text are ignored in cells, included if typed as arguments.", ArgumentType.Number)}
	
	            Dim optionalArguments As IEnumerable(Of ArgumentInfo) = New ArgumentInfo() {New ArgumentInfo("Number", "number1, number2,... are the numbers to sum. Logical values and text are ignored in cells, included if typed as arguments.", ArgumentType.Number)}
	
	
	            '#End Region
	            Info = New FunctionInfo(FunctionName, FunctionCategory.MathTrig, description, requiredArguments, optionalArguments, 254, _
	                True)
	        End Sub
	
	        Protected Overrides Function EvaluateOverride(arguments As Double()) As Telerik.Windows.Documents.Spreadsheet.Expressions.RadExpression
	            Dim result As Double = 0
	
	            For i As Integer = 0 To arguments.Length - 1
	                result += arguments(i)
	            Next
	
	            If Double.IsInfinity(result) Then
	                Return ErrorExpressions.NumberError
	            End If
	
	            Return New NumberExpression(result)
	        End Function
	    End Class
	
	#End Region
	
	#Region "radspreadprocessing-features-formulas-custom-functions_7"
	    Private Class GeoMean
	        Inherits NumbersInFunction
	        Public Shared ReadOnly FunctionName As String = "GEOMEAN"
	        Private Shared ReadOnly info As FunctionInfo
	        Private Shared ReadOnly conversionRules As New ArgumentConversionRules(nonTextNumberDirectArgument:=ArgumentInterpretation.TreatAsError, nonTextNumberIndirectArgument:=ArgumentInterpretation.TreatAsError, emptyIndirectArgument:=ArgumentInterpretation.Ignore, emptyDirectArgument:=ArgumentInterpretation.Ignore, arrayArgument:=ArrayArgumentInterpretation.UseAllElements)
	
	        Public Overrides ReadOnly Property ArgumentConversionRules() As ArgumentConversionRules
	            Get
	                Return GeoMean.conversionRules
	            End Get
	        End Property
	
	        Public Overrides ReadOnly Property Name() As String
	            Get
	                Return FunctionName
	            End Get
	        End Property
	
	        Public Overrides ReadOnly Property FunctionInfo() As FunctionInfo
	            Get
	                Return info
	            End Get
	        End Property
	
	        Shared Sub New()
	            Dim description As String = "Returns the geometric mean of a sequance of numbers."
	
	            Dim requiredArguments As IEnumerable(Of ArgumentInfo) = New ArgumentInfo() {New ArgumentInfo("Number", "Positive number", ArgumentType.Number)}
	
	            Dim optionalArguments As IEnumerable(Of ArgumentInfo) = New ArgumentInfo() {New ArgumentInfo("Number", "Positive number", ArgumentType.Number)}
	
	            info = New FunctionInfo(FunctionName, FunctionCategory.Statistical, description, requiredArguments, optionalArguments, optionalArgumentsRepeatCount:=255)
	        End Sub
	
	        Protected Overrides Function EvaluateOverride(arguments As Double()) As RadExpression
	            Dim product As Double = 1
	
	            For Each argument As Double In arguments
	                If argument <= 0 Then
	                    Return ErrorExpressions.NumberError
	                End If
	
	                product *= argument
	            Next
	
	            Dim result As Double = Math.Pow(product, 1.0 / arguments.Length)
	
	            Return New NumberExpression(result)
	        End Function
	    End Class
	
	#End Region
	
	#Region "radspreadprocessing-features-formulas-custom-functions_8"
	
	    Public Class Nand
	        Inherits BooleansInFunction
	        Public Shared ReadOnly FunctionName As String = "NAND"
	        Private Shared ReadOnly Info As FunctionInfo
	
	        Public Overrides ReadOnly Property Name() As String
	            Get
	                Return FunctionName
	            End Get
	        End Property
	
	        Public Overrides ReadOnly Property FunctionInfo() As FunctionInfo
	            Get
	                Return Info
	            End Get
	        End Property
	
	        Shared Sub New()
	            Dim description As String = "Returns the Sheffer stroke (or also known as the NAND operator) of two booleans."
	
	            Dim requiredArguments As IEnumerable(Of ArgumentInfo) = New ArgumentInfo() {New ArgumentInfo("Logical", "The first logical argument.", ArgumentType.Logical), New ArgumentInfo("Logical", "The second logical argument.", ArgumentType.Logical)}
	
	            Info = New FunctionInfo(FunctionName, FunctionCategory.Text, description, requiredArguments)
	        End Sub
	
	        Protected Overrides Function EvaluateOverride(arguments As Boolean()) As RadExpression
	            Dim result As Boolean = Not (arguments(0) And arguments(1))
	
	            Return If(result, BooleanExpression.[True], BooleanExpression.[False])
	        End Function
	    End Class
	#End Region
	
	#Region "radspreadprocessing-features-formulas-custom-functions_9"
	
	    Public Class Upper
	        Inherits StringsInFunction
	        Public Shared ReadOnly FunctionName As String = "UPPER"
	        Private Shared ReadOnly Info As FunctionInfo
	
	        Public Overrides ReadOnly Property Name() As String
	            Get
	                Return FunctionName
	            End Get
	        End Property
	
	        Public Overrides ReadOnly Property FunctionInfo() As FunctionInfo
	            Get
	                Return Info
	            End Get
	        End Property
	
	        Shared Sub New()
	            Dim description As String = "Converts text to uppercase."
	
	            Dim requiredArguments As IEnumerable(Of ArgumentInfo) = New ArgumentInfo() {New ArgumentInfo("Text", "Text is the text you want converted to uppercase. Text can be a reference or text string.", ArgumentType.Text)}
	
	            Info = New FunctionInfo(FunctionName, FunctionCategory.Text, description, requiredArguments)
	        End Sub
	
	        Protected Overrides Function EvaluateOverride(arguments As String()) As RadExpression
	            Dim text As String = arguments(0)
	
	            Dim builder As New StringBuilder()
	
	            For i As Integer = 0 To text.Length - 1
	                Dim c As Char = Char.ToUpperInvariant(text(i))
	                builder.Append(c)
	            Next
	
	            Return New StringExpression(builder.ToString())
	        End Function
	    End Class
	#End Region
	End Class



## Custom Function Examples

The next example is of a custom function named __"ARGUMENTS"__ inheriting from the __FunctionBase__ class. In the __FunctionInfo__ definition you can see that the function has three required arguments and three optional arguments with __optionalArgumentsRepeatsCount__ equal to 3.
        

The result of the function's calculations is the number of arguments passed to the function, as you can see in the EvaluateOverride() method.
        

__Example 4__ shows how to create the 'ARGUMENTS' function.
        

#### __[C#] Example 4: Create ARGUMENTS function__

{{source=..\SamplesCS\RadSpreadProcessing\Features\Formulas\RadSpreadProcessingCustomFunctions.cs region=radspreadprocessing-features-formulas-custom-functions_3}}
	
	        public class Arguments : FunctionBase
	        {
	            public static readonly string FunctionName = "ARGUMENTS";
	            private static readonly FunctionInfo Info;
	
	            public override string Name
	            {
	                get
	                {
	                    return FunctionName;
	                }
	            }
	
	            public override FunctionInfo FunctionInfo
	            {
	                get
	                {
	                    return Info;
	                }
	            }
	
	            static Arguments()
	            {
	                string description = "Returns number of used arguments.";
	
	                IEnumerable<ArgumentInfo> requiredArguments = new ArgumentInfo[]
			{
				new ArgumentInfo("First", "First argument.", ArgumentType.Any),
				new ArgumentInfo("Second", "Second argument.", ArgumentType.Any),
				new ArgumentInfo("Third", "Third argument.", ArgumentType.Any),
			};
	
	                IEnumerable<ArgumentInfo> optionalArguments = new ArgumentInfo[]
			{
				new ArgumentInfo("First", "First argument.", ArgumentType.Any),
				new ArgumentInfo("Second", "Second argument.", ArgumentType.Any),
				new ArgumentInfo("Third", "Third argument.", ArgumentType.Any),
			};
	
	                Info = new FunctionInfo(FunctionName, FunctionCategory.MathTrig, description, requiredArguments, optionalArguments, optionalArgumentsRepeatCount: 3);
	            }
	
	            protected override RadExpression EvaluateOverride(RadExpression[] arguments)
	            {
	                return new NumberExpression(arguments.Length);
	            }
	        }
	{{endregion}}



#### __[VB] Example 4: Create ARGUMENTS function__

{{source=..\SamplesVB\RadSpreadProcessing\Features\Formulas\RadSpreadProcessingCustomFunctions.vb region=radspreadprocessing-features-formulas-custom-functions_3}}
	
	    Public Class Arguments
	        Inherits FunctionBase
	        Public Shared ReadOnly FunctionName As String = "ARGUMENTS"
	        Private Shared ReadOnly Info As FunctionInfo
	
	        Public Overrides ReadOnly Property Name() As String
	            Get
	                Return FunctionName
	            End Get
	        End Property
	
	        Public Overrides ReadOnly Property FunctionInfo() As FunctionInfo
	            Get
	                Return Info
	            End Get
	        End Property
	
	        Shared Sub New()
	            Dim description As String = "Returns number of used arguments."
	
	            Dim requiredArguments As IEnumerable(Of ArgumentInfo) = New ArgumentInfo() {New ArgumentInfo("First", "First argument.", ArgumentType.Any), New ArgumentInfo("Second", "Second argument.", ArgumentType.Any), New ArgumentInfo("Third", "Third argument.", ArgumentType.Any)}
	
	            Dim optionalArguments As IEnumerable(Of ArgumentInfo) = New ArgumentInfo() {New ArgumentInfo("First", "First argument.", ArgumentType.Any), New ArgumentInfo("Second", "Second argument.", ArgumentType.Any), New ArgumentInfo("Third", "Third argument.", ArgumentType.Any)}
	
	            Info = New FunctionInfo(FunctionName, FunctionCategory.MathTrig, description, requiredArguments, optionalArguments, optionalArgumentsRepeatCount:=3)
	        End Sub
	
	        Protected Overrides Function EvaluateOverride(arguments As RadExpression()) As RadExpression
	            Return New NumberExpression(arguments.Length)
	        End Function
	    End Class
	#End Region
	
	#Region "radspreadprocessing-features-formulas-custom-functions_4"
	    Public Class E
	        Inherits FunctionBase
	        Public Shared ReadOnly FunctionName As String = "E"
	        Private Shared ReadOnly Info As FunctionInfo
	
	        Public Overrides ReadOnly Property Name() As String
	            Get
	                Return FunctionName
	            End Get
	        End Property
	
	        Public Overrides ReadOnly Property FunctionInfo() As FunctionInfo
	            Get
	                Return Info
	            End Get
	        End Property
	
	        Shared Sub New()
	            Dim description As String = "Returns the Napier's constant."
	
	            Info = New FunctionInfo(FunctionName, FunctionCategory.MathTrig, description)
	        End Sub
	
	        Protected Overrides Function EvaluateOverride(arguments As RadExpression()) As RadExpression
	            Return NumberExpression.E
	        End Function
	    End Class
	#End Region
	
	#Region "radspreadprocessing-features-formulas-custom-functions_5"
	    Public Class RepeatString
	        Inherits FunctionWithArguments
	        Public Shared ReadOnly FunctionName As String = "REPEAT.STRING"
	        Private Shared ReadOnly Info As FunctionInfo
	
	        Public Overrides ReadOnly Property Name() As String
	            Get
	                Return FunctionName
	            End Get
	        End Property
	
	        Public Overrides ReadOnly Property FunctionInfo() As FunctionInfo
	            Get
	                Return Info
	            End Get
	        End Property
	
	        Shared Sub New()
	            Dim requiredArguments As IEnumerable(Of ArgumentInfo) = New ArgumentInfo() {New ArgumentInfo("Text", "Text is the text you want to repeat.", ArgumentType.Text)}
	
	            Dim optionalArguments As IEnumerable(Of ArgumentInfo) = New ArgumentInfo() {New ArgumentInfo("NumberTimes", "NumberTimes is a positive number specifying the number of times to repeat text.", ArgumentType.Number)}
	
	            Dim description As String = "REPEAT.STRING repeats some text a desired number of times."
	
	            Info = New FunctionInfo(FunctionName, FunctionCategory.Text, description, requiredArguments, optionalArguments, 1, _
	                False)
	        End Sub
	
	        Protected Overrides Function EvaluateOverride(arguments As Object()) As RadExpression
	            Dim text As String = arguments(0).ToString()
	
	            Dim numberTimes As Double = 1
	            If arguments.Length > 1 Then
	                numberTimes = CDbl(arguments(1))
	            End If
	            Dim builder As New StringBuilder()
	
	            If numberTimes < 0 Then
	                Return ErrorExpressions.ValueError
	            End If
	
	            For i As Integer = 0 To numberTimes - 1
	                builder.Append(text)
	            Next
	
	            Return New StringExpression(builder.ToString())
	        End Function
	    End Class
	
	#End Region
	
	#Region "radspreadprocessing-features-formulas-custom-functions_6"
	    Public Class Add
	        Inherits NumbersInFunction
	        Public Shared ReadOnly FunctionName As String = "ADD"
	        Private Shared ReadOnly Info As FunctionInfo
	
	        Public Overrides ReadOnly Property ArgumentConversionRules() As ArgumentConversionRules
	            Get
	                Return ArgumentConversionRules.NaryIgnoreIndirectNumberFunctionConversion
	            End Get
	        End Property
	
	        Public Overrides ReadOnly Property Name() As String
	            Get
	                Return FunctionName
	            End Get
	        End Property
	
	        Public Overrides ReadOnly Property FunctionInfo() As FunctionInfo
	            Get
	                Return Info
	            End Get
	        End Property
	
	        Shared Sub New()
	            '#Region "FunctionInfo"
	
	            Dim description As String = "Adds all the numbers in range of cells."
	
	            Dim requiredArguments As IEnumerable(Of ArgumentInfo) = New ArgumentInfo() {New ArgumentInfo("Number", "number1, number2,... are the numbers to sum. Logical values and text are ignored in cells, included if typed as arguments.", ArgumentType.Number)}
	
	            Dim optionalArguments As IEnumerable(Of ArgumentInfo) = New ArgumentInfo() {New ArgumentInfo("Number", "number1, number2,... are the numbers to sum. Logical values and text are ignored in cells, included if typed as arguments.", ArgumentType.Number)}
	
	
	            '#End Region
	            Info = New FunctionInfo(FunctionName, FunctionCategory.MathTrig, description, requiredArguments, optionalArguments, 254, _
	                True)
	        End Sub
	
	        Protected Overrides Function EvaluateOverride(arguments As Double()) As Telerik.Windows.Documents.Spreadsheet.Expressions.RadExpression
	            Dim result As Double = 0
	
	            For i As Integer = 0 To arguments.Length - 1
	                result += arguments(i)
	            Next
	
	            If Double.IsInfinity(result) Then
	                Return ErrorExpressions.NumberError
	            End If
	
	            Return New NumberExpression(result)
	        End Function
	    End Class
	
	#End Region
	
	#Region "radspreadprocessing-features-formulas-custom-functions_7"
	    Private Class GeoMean
	        Inherits NumbersInFunction
	        Public Shared ReadOnly FunctionName As String = "GEOMEAN"
	        Private Shared ReadOnly info As FunctionInfo
	        Private Shared ReadOnly conversionRules As New ArgumentConversionRules(nonTextNumberDirectArgument:=ArgumentInterpretation.TreatAsError, nonTextNumberIndirectArgument:=ArgumentInterpretation.TreatAsError, emptyIndirectArgument:=ArgumentInterpretation.Ignore, emptyDirectArgument:=ArgumentInterpretation.Ignore, arrayArgument:=ArrayArgumentInterpretation.UseAllElements)
	
	        Public Overrides ReadOnly Property ArgumentConversionRules() As ArgumentConversionRules
	            Get
	                Return GeoMean.conversionRules
	            End Get
	        End Property
	
	        Public Overrides ReadOnly Property Name() As String
	            Get
	                Return FunctionName
	            End Get
	        End Property
	
	        Public Overrides ReadOnly Property FunctionInfo() As FunctionInfo
	            Get
	                Return info
	            End Get
	        End Property
	
	        Shared Sub New()
	            Dim description As String = "Returns the geometric mean of a sequance of numbers."
	
	            Dim requiredArguments As IEnumerable(Of ArgumentInfo) = New ArgumentInfo() {New ArgumentInfo("Number", "Positive number", ArgumentType.Number)}
	
	            Dim optionalArguments As IEnumerable(Of ArgumentInfo) = New ArgumentInfo() {New ArgumentInfo("Number", "Positive number", ArgumentType.Number)}
	
	            info = New FunctionInfo(FunctionName, FunctionCategory.Statistical, description, requiredArguments, optionalArguments, optionalArgumentsRepeatCount:=255)
	        End Sub
	
	        Protected Overrides Function EvaluateOverride(arguments As Double()) As RadExpression
	            Dim product As Double = 1
	
	            For Each argument As Double In arguments
	                If argument <= 0 Then
	                    Return ErrorExpressions.NumberError
	                End If
	
	                product *= argument
	            Next
	
	            Dim result As Double = Math.Pow(product, 1.0 / arguments.Length)
	
	            Return New NumberExpression(result)
	        End Function
	    End Class
	
	#End Region
	
	#Region "radspreadprocessing-features-formulas-custom-functions_8"
	
	    Public Class Nand
	        Inherits BooleansInFunction
	        Public Shared ReadOnly FunctionName As String = "NAND"
	        Private Shared ReadOnly Info As FunctionInfo
	
	        Public Overrides ReadOnly Property Name() As String
	            Get
	                Return FunctionName
	            End Get
	        End Property
	
	        Public Overrides ReadOnly Property FunctionInfo() As FunctionInfo
	            Get
	                Return Info
	            End Get
	        End Property
	
	        Shared Sub New()
	            Dim description As String = "Returns the Sheffer stroke (or also known as the NAND operator) of two booleans."
	
	            Dim requiredArguments As IEnumerable(Of ArgumentInfo) = New ArgumentInfo() {New ArgumentInfo("Logical", "The first logical argument.", ArgumentType.Logical), New ArgumentInfo("Logical", "The second logical argument.", ArgumentType.Logical)}
	
	            Info = New FunctionInfo(FunctionName, FunctionCategory.Text, description, requiredArguments)
	        End Sub
	
	        Protected Overrides Function EvaluateOverride(arguments As Boolean()) As RadExpression
	            Dim result As Boolean = Not (arguments(0) And arguments(1))
	
	            Return If(result, BooleanExpression.[True], BooleanExpression.[False])
	        End Function
	    End Class
	#End Region
	
	#Region "radspreadprocessing-features-formulas-custom-functions_9"
	
	    Public Class Upper
	        Inherits StringsInFunction
	        Public Shared ReadOnly FunctionName As String = "UPPER"
	        Private Shared ReadOnly Info As FunctionInfo
	
	        Public Overrides ReadOnly Property Name() As String
	            Get
	                Return FunctionName
	            End Get
	        End Property
	
	        Public Overrides ReadOnly Property FunctionInfo() As FunctionInfo
	            Get
	                Return Info
	            End Get
	        End Property
	
	        Shared Sub New()
	            Dim description As String = "Converts text to uppercase."
	
	            Dim requiredArguments As IEnumerable(Of ArgumentInfo) = New ArgumentInfo() {New ArgumentInfo("Text", "Text is the text you want converted to uppercase. Text can be a reference or text string.", ArgumentType.Text)}
	
	            Info = New FunctionInfo(FunctionName, FunctionCategory.Text, description, requiredArguments)
	        End Sub
	
	        Protected Overrides Function EvaluateOverride(arguments As String()) As RadExpression
	            Dim text As String = arguments(0)
	
	            Dim builder As New StringBuilder()
	
	            For i As Integer = 0 To text.Length - 1
	                Dim c As Char = Char.ToUpperInvariant(text(i))
	                builder.Append(c)
	            Next
	
	            Return New StringExpression(builder.ToString())
	        End Function
	    End Class
	#End Region
	End Class



The next example is of a custom function named "E" that inherits from the __FunctionBase__ class. The function takes no arguments and it always returns the Napier's constant.
        

__Example 5__ shows how to create the 'E' function.
        

#### __[C#] Example 5: Create E function__

{{source=..\SamplesCS\RadSpreadProcessing\Features\Formulas\RadSpreadProcessingCustomFunctions.cs region=radspreadprocessing-features-formulas-custom-functions_4}}
	        public class E : FunctionBase
	        {
	            public static readonly string FunctionName = "E";
	            private static readonly FunctionInfo Info;
	
	            public override string Name
	            {
	                get
	                {
	                    return FunctionName;
	                }
	            }
	
	            public override FunctionInfo FunctionInfo
	            {
	                get
	                {
	                    return Info;
	                }
	            }
	
	            static E()
	            {
	                string description = "Returns the Napier's constant.";
	
	                Info = new FunctionInfo(FunctionName, FunctionCategory.MathTrig, description);
	            }
	
	            protected override RadExpression EvaluateOverride(RadExpression[] arguments)
	            {
	                return NumberExpression.E;
	            }
	        }
	{{endregion}}



#### __[VB] Example 5: Create E function__

{{source=..\SamplesVB\RadSpreadProcessing\Features\Formulas\RadSpreadProcessingCustomFunctions.vb region=radspreadprocessing-features-formulas-custom-functions_4}}
	    Public Class E
	        Inherits FunctionBase
	        Public Shared ReadOnly FunctionName As String = "E"
	        Private Shared ReadOnly Info As FunctionInfo
	
	        Public Overrides ReadOnly Property Name() As String
	            Get
	                Return FunctionName
	            End Get
	        End Property
	
	        Public Overrides ReadOnly Property FunctionInfo() As FunctionInfo
	            Get
	                Return Info
	            End Get
	        End Property
	
	        Shared Sub New()
	            Dim description As String = "Returns the Napier's constant."
	
	            Info = New FunctionInfo(FunctionName, FunctionCategory.MathTrig, description)
	        End Sub
	
	        Protected Overrides Function EvaluateOverride(arguments As RadExpression()) As RadExpression
	            Return NumberExpression.E
	        End Function
	    End Class
	#End Region
	
	#Region "radspreadprocessing-features-formulas-custom-functions_5"
	    Public Class RepeatString
	        Inherits FunctionWithArguments
	        Public Shared ReadOnly FunctionName As String = "REPEAT.STRING"
	        Private Shared ReadOnly Info As FunctionInfo
	
	        Public Overrides ReadOnly Property Name() As String
	            Get
	                Return FunctionName
	            End Get
	        End Property
	
	        Public Overrides ReadOnly Property FunctionInfo() As FunctionInfo
	            Get
	                Return Info
	            End Get
	        End Property
	
	        Shared Sub New()
	            Dim requiredArguments As IEnumerable(Of ArgumentInfo) = New ArgumentInfo() {New ArgumentInfo("Text", "Text is the text you want to repeat.", ArgumentType.Text)}
	
	            Dim optionalArguments As IEnumerable(Of ArgumentInfo) = New ArgumentInfo() {New ArgumentInfo("NumberTimes", "NumberTimes is a positive number specifying the number of times to repeat text.", ArgumentType.Number)}
	
	            Dim description As String = "REPEAT.STRING repeats some text a desired number of times."
	
	            Info = New FunctionInfo(FunctionName, FunctionCategory.Text, description, requiredArguments, optionalArguments, 1, _
	                False)
	        End Sub
	
	        Protected Overrides Function EvaluateOverride(arguments As Object()) As RadExpression
	            Dim text As String = arguments(0).ToString()
	
	            Dim numberTimes As Double = 1
	            If arguments.Length > 1 Then
	                numberTimes = CDbl(arguments(1))
	            End If
	            Dim builder As New StringBuilder()
	
	            If numberTimes < 0 Then
	                Return ErrorExpressions.ValueError
	            End If
	
	            For i As Integer = 0 To numberTimes - 1
	                builder.Append(text)
	            Next
	
	            Return New StringExpression(builder.ToString())
	        End Function
	    End Class
	
	#End Region
	
	#Region "radspreadprocessing-features-formulas-custom-functions_6"
	    Public Class Add
	        Inherits NumbersInFunction
	        Public Shared ReadOnly FunctionName As String = "ADD"
	        Private Shared ReadOnly Info As FunctionInfo
	
	        Public Overrides ReadOnly Property ArgumentConversionRules() As ArgumentConversionRules
	            Get
	                Return ArgumentConversionRules.NaryIgnoreIndirectNumberFunctionConversion
	            End Get
	        End Property
	
	        Public Overrides ReadOnly Property Name() As String
	            Get
	                Return FunctionName
	            End Get
	        End Property
	
	        Public Overrides ReadOnly Property FunctionInfo() As FunctionInfo
	            Get
	                Return Info
	            End Get
	        End Property
	
	        Shared Sub New()
	            '#Region "FunctionInfo"
	
	            Dim description As String = "Adds all the numbers in range of cells."
	
	            Dim requiredArguments As IEnumerable(Of ArgumentInfo) = New ArgumentInfo() {New ArgumentInfo("Number", "number1, number2,... are the numbers to sum. Logical values and text are ignored in cells, included if typed as arguments.", ArgumentType.Number)}
	
	            Dim optionalArguments As IEnumerable(Of ArgumentInfo) = New ArgumentInfo() {New ArgumentInfo("Number", "number1, number2,... are the numbers to sum. Logical values and text are ignored in cells, included if typed as arguments.", ArgumentType.Number)}
	
	
	            '#End Region
	            Info = New FunctionInfo(FunctionName, FunctionCategory.MathTrig, description, requiredArguments, optionalArguments, 254, _
	                True)
	        End Sub
	
	        Protected Overrides Function EvaluateOverride(arguments As Double()) As Telerik.Windows.Documents.Spreadsheet.Expressions.RadExpression
	            Dim result As Double = 0
	
	            For i As Integer = 0 To arguments.Length - 1
	                result += arguments(i)
	            Next
	
	            If Double.IsInfinity(result) Then
	                Return ErrorExpressions.NumberError
	            End If
	
	            Return New NumberExpression(result)
	        End Function
	    End Class
	
	#End Region
	
	#Region "radspreadprocessing-features-formulas-custom-functions_7"
	    Private Class GeoMean
	        Inherits NumbersInFunction
	        Public Shared ReadOnly FunctionName As String = "GEOMEAN"
	        Private Shared ReadOnly info As FunctionInfo
	        Private Shared ReadOnly conversionRules As New ArgumentConversionRules(nonTextNumberDirectArgument:=ArgumentInterpretation.TreatAsError, nonTextNumberIndirectArgument:=ArgumentInterpretation.TreatAsError, emptyIndirectArgument:=ArgumentInterpretation.Ignore, emptyDirectArgument:=ArgumentInterpretation.Ignore, arrayArgument:=ArrayArgumentInterpretation.UseAllElements)
	
	        Public Overrides ReadOnly Property ArgumentConversionRules() As ArgumentConversionRules
	            Get
	                Return GeoMean.conversionRules
	            End Get
	        End Property
	
	        Public Overrides ReadOnly Property Name() As String
	            Get
	                Return FunctionName
	            End Get
	        End Property
	
	        Public Overrides ReadOnly Property FunctionInfo() As FunctionInfo
	            Get
	                Return info
	            End Get
	        End Property
	
	        Shared Sub New()
	            Dim description As String = "Returns the geometric mean of a sequance of numbers."
	
	            Dim requiredArguments As IEnumerable(Of ArgumentInfo) = New ArgumentInfo() {New ArgumentInfo("Number", "Positive number", ArgumentType.Number)}
	
	            Dim optionalArguments As IEnumerable(Of ArgumentInfo) = New ArgumentInfo() {New ArgumentInfo("Number", "Positive number", ArgumentType.Number)}
	
	            info = New FunctionInfo(FunctionName, FunctionCategory.Statistical, description, requiredArguments, optionalArguments, optionalArgumentsRepeatCount:=255)
	        End Sub
	
	        Protected Overrides Function EvaluateOverride(arguments As Double()) As RadExpression
	            Dim product As Double = 1
	
	            For Each argument As Double In arguments
	                If argument <= 0 Then
	                    Return ErrorExpressions.NumberError
	                End If
	
	                product *= argument
	            Next
	
	            Dim result As Double = Math.Pow(product, 1.0 / arguments.Length)
	
	            Return New NumberExpression(result)
	        End Function
	    End Class
	
	#End Region
	
	#Region "radspreadprocessing-features-formulas-custom-functions_8"
	
	    Public Class Nand
	        Inherits BooleansInFunction
	        Public Shared ReadOnly FunctionName As String = "NAND"
	        Private Shared ReadOnly Info As FunctionInfo
	
	        Public Overrides ReadOnly Property Name() As String
	            Get
	                Return FunctionName
	            End Get
	        End Property
	
	        Public Overrides ReadOnly Property FunctionInfo() As FunctionInfo
	            Get
	                Return Info
	            End Get
	        End Property
	
	        Shared Sub New()
	            Dim description As String = "Returns the Sheffer stroke (or also known as the NAND operator) of two booleans."
	
	            Dim requiredArguments As IEnumerable(Of ArgumentInfo) = New ArgumentInfo() {New ArgumentInfo("Logical", "The first logical argument.", ArgumentType.Logical), New ArgumentInfo("Logical", "The second logical argument.", ArgumentType.Logical)}
	
	            Info = New FunctionInfo(FunctionName, FunctionCategory.Text, description, requiredArguments)
	        End Sub
	
	        Protected Overrides Function EvaluateOverride(arguments As Boolean()) As RadExpression
	            Dim result As Boolean = Not (arguments(0) And arguments(1))
	
	            Return If(result, BooleanExpression.[True], BooleanExpression.[False])
	        End Function
	    End Class
	#End Region
	
	#Region "radspreadprocessing-features-formulas-custom-functions_9"
	
	    Public Class Upper
	        Inherits StringsInFunction
	        Public Shared ReadOnly FunctionName As String = "UPPER"
	        Private Shared ReadOnly Info As FunctionInfo
	
	        Public Overrides ReadOnly Property Name() As String
	            Get
	                Return FunctionName
	            End Get
	        End Property
	
	        Public Overrides ReadOnly Property FunctionInfo() As FunctionInfo
	            Get
	                Return Info
	            End Get
	        End Property
	
	        Shared Sub New()
	            Dim description As String = "Converts text to uppercase."
	
	            Dim requiredArguments As IEnumerable(Of ArgumentInfo) = New ArgumentInfo() {New ArgumentInfo("Text", "Text is the text you want converted to uppercase. Text can be a reference or text string.", ArgumentType.Text)}
	
	            Info = New FunctionInfo(FunctionName, FunctionCategory.Text, description, requiredArguments)
	        End Sub
	
	        Protected Overrides Function EvaluateOverride(arguments As String()) As RadExpression
	            Dim text As String = arguments(0)
	
	            Dim builder As New StringBuilder()
	
	            For i As Integer = 0 To text.Length - 1
	                Dim c As Char = Char.ToUpperInvariant(text(i))
	                builder.Append(c)
	            Next
	
	            Return New StringExpression(builder.ToString())
	        End Function
	    End Class
	#End Region
	End Class



# See Also

 * [Cell Value Types]({%slug spreadprocessing-working-with-cells-cell-value-types%})[ArgumentInterpretation](http://www.telerik.com/help/winforms/t_telerik_windows_documents_spreadsheet_expressions_functions_argumentinterpretation.html)[ArrayArgumentInterpretation](http://www.telerik.com/help/winforms/t_telerik_windows_documents_spreadsheet_expressions_functions_arrayargumentinterpretation.html)
