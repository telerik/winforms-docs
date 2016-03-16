---
title: Style Properties
page_title: Style Properties | UI for WinForms Documentation
description: Style Properties
slug: winforms/wordsprocessing/concepts/style-properties
tags: style,properties
published: True
position: 5
previous_url: wordsprocessing-concepts-style-properties
---

# Style Properties



__Style property__ is part of the style system, used to hold information about a formatting value of the document elements. It can be used to check if the value is local or it is inherited from base style. Information about how the style system works and how values are inherited from base styles can be found in the Style Evaluation and Inheritance section of the [Styles]({%slug winforms/wordsprocessing/concepts/styles%}) article.
      

* [Style Property Implementation Overview](#style-property-implementation-overview)

* [Style Property Definitions](#style-property-definitions)

* [Using Style Properties](#using-style-properties)

* [Style Properties Default Values](#style-properties-default-values)

## Style Property Implementation Overview

Style properties are exposed through [IStyleProperty<T>]( http://www.telerik.com/help/winforms/t_telerik_windows_documents_flow_model_styles_core_istyleproperty.html) interface, which contains the following properties and methods:
        

* __LocalValue__: Used to get or set the local value. If it is not set, the value is __null__.
            

* __HasLocalValue__: Returns value indicating whether the style property has local value.
            

* __GetActualValue()__: Returns the actual value of the property. This value is evaluated on every call by the style system using the evaluation rules described [Styles]({%slug winforms/wordsprocessing/concepts/styles%}).
            

* __ClearValue()__: Clears the local value.
            

* __PropertyDefinition__: The [property definition](#style-property-definitions) is exposed through the [IStylePropertyDefinition](http://www.telerik.com/help/winforms/allmembers_t_telerik_windows_documents_flow_model_styles_core_istylepropertydefinition.html) interface and specifies some details for the style property as:
            

  * __PropertyName__: Returns the name of the style property.
                

  * __StylePropertyType__: Returns the type of the style property.
                

  * __Validation__: Used to determine if a value is valid for this style property.
                

  * __GetDefaultValueAsObject()__: This method returns the default value as object.
                

Some of the style properties always contain local value and are normally referred to as local style properties. They are used only by the document elements and their values are not respected by styles and style inheritance .
        

## Style Property Definitions

Style property definition is represented from the __StylePropertyDefinition<T>__ class and can be accessed from the style property itself (through its base interface __IStylePropertyDefinition__) or as a static member of [Run]({%slug winforms/wordsprocessing/model/run%}), [Paragraph]({%slug winforms/wordsprocessing/model/paragraph%}), [Table]({%slug winforms/wordsprocessing/model/table%}), [TableRow]({%slug winforms/wordsprocessing/model/tablerow%}) and [TableCell]({%slug winforms/wordsprocessing/model/tablecell%}) document elements. Style property definitions specify the following details of the style property:
        

* __PropertyName__: Specifies the name of the style property.
            

* __efaultValue__: Specifies the default value of the style property.
            

* __StylePropertyType__: Specifies the type of the style property as[StylePropertyType](http://www.telerik.com/help/winforms/t_telerik_windows_documents_flow_model_styles_core_stylepropertytype.html) enumeration.
            

* __Validation__: Used to determine if a value is valid for the style property associated with this style property definition.
            

## Using Style Properties

### Style properties in document elements

Document elements expose sets of style properties through the __Properties__ property. For convenience style properties can be also used through CLR shorthand properties exposed directly from the document elements. Shorthand property getter gets the *actual value* of the property, while property setter sets the *local* value of the property.

Here is example for equivalent getting of a value with CLR property and style property:

{{source=..\SamplesCS\WordsProcessing\Concepts\WordsProcessingStyleProperties.cs region=radwordsprocessing-concepts-style-properties_0}} 
{{source=..\SamplesVB\WordsProcessing\Concepts\WordsProcessingStyleProperties.vb region=radwordsprocessing-concepts-style-properties_0}} 

````C#
bool keepOnOnePageActualValueShorthand = paragraph.KeepOnOnePage;
bool keepOnOnePageActualValue = paragraph.Properties.KeepOnOnePage.GetActualValue().Value;

````
````VB.NET
Dim keepOnOnePageActualValueShorthand As Boolean = paragraph.KeepOnOnePage
Dim keepOnOnePageActualValue As Boolean = paragraph.Properties.KeepOnOnePage.GetActualValue().Value

````

{{endregion}}

Here is example for equivalent setting of a value with CLR property and style property:

{{source=..\SamplesCS\WordsProcessing\Concepts\WordsProcessingStyleProperties.cs region=radwordsprocessing-concepts-style-properties_1}} 
{{source=..\SamplesVB\WordsProcessing\Concepts\WordsProcessingStyleProperties.vb region=radwordsprocessing-concepts-style-properties_1}} 

````C#
paragraph.KeepOnOnePage = true;
paragraph.Properties.KeepOnOnePage.LocalValue = true;

````
````VB.NET
paragraph.KeepOnOnePage = True
paragraph.Properties.KeepOnOnePage.LocalValue = True

````

{{endregion}} 

### Style properties in styles

The style properties in a style are accessible through the following property sets: __CharacterProperties__, __ParagraphProperties__, __TableProperties__, __TableRowProperties__ and __TableCellProperties__.

Here is a code snippet illustrating how to get the local value of a style property in style:

{{source=..\SamplesCS\WordsProcessing\Concepts\WordsProcessingStyleProperties.cs region=radwordsprocessing-concepts-style-properties_2}} 
{{source=..\SamplesVB\WordsProcessing\Concepts\WordsProcessingStyleProperties.vb region=radwordsprocessing-concepts-style-properties_2}} 

````C#
bool? keepOnOnePage = style.ParagraphProperties.KeepOnOnePage.LocalValue;

````
````VB.NET
Dim keepOnOnePage As System.Nullable(Of Boolean) = style.ParagraphProperties.KeepOnOnePage.LocalValue

````

{{endregion}} 

Here is a code snippet illustrating how to get the actual value of style property in style:

{{source=..\SamplesCS\WordsProcessing\Concepts\WordsProcessingStyleProperties.cs region=radwordsprocessing-concepts-style-properties_3}} 
{{source=..\SamplesVB\WordsProcessing\Concepts\WordsProcessingStyleProperties.vb region=radwordsprocessing-concepts-style-properties_3}} 

````C#
bool keepOnOnePage = style.ParagraphProperties.KeepOnOnePage.GetActualValue().Value;

````
````VB.NET
Dim keepOnOnePage As Boolean = style.ParagraphProperties.KeepOnOnePage.GetActualValue().Value

````

{{endregion}} 

## Style Properties Default Values

The default values of all style properties are available in their [StylePropertyDefinitions](Style_Property_Definitions) and cannot be changed. To set the default values of properties for particular document you can change the default styles for the document.

The following code snippet illustrates how to get the default value for a style property:

{{source=..\SamplesCS\WordsProcessing\Concepts\WordsProcessingStyleProperties.cs region=radwordsprocessing-concepts-style-properties_4}} 
{{source=..\SamplesVB\WordsProcessing\Concepts\WordsProcessingStyleProperties.vb region=radwordsprocessing-concepts-style-properties_4}} 

````C#
bool keepOnOnePageDefaultValue = Paragraph.KeepOnOnePagePropertyDefinition.DefaultValue.Value;

````
````VB.NET
Dim keepOnOnePageDefaultValue As Boolean = Paragraph.KeepOnOnePagePropertyDefinition.DefaultValue.Value

````

{{endregion}} 

Following is a list of all available style properties and their default values:


| Name | Description | Default Value |
| ------ | ------ | ------ |
| __CharacterProperties__ |||
|FontFamily|The font family.|Verdana|
|FontSize|The size of the font.|13.3333333333333|
|FontStyle|The font style.|Normal|
|FontWeight|The font weight.|Normal|
|ForegroundColor|The foreground color.|Black|
|HighlightColor|The color of the highlight.|Transparent|
|BaselineAlignment|The baseline alignment.|Baseline|
|Strikethrough|The strikethrough.|False|
|BackgroundColor|The color of the background.|Transparent|
|ShadingPatternColor|A value indicating the color for any foreground pattern used in this shading.|Transparent|
|ShadingPattern|A value indicating the pattern which shall be used to lay the pattern color over the background color for this shading.|Clear|
|UnderlineColor|The color for the underlining.|Transparent|
|UnderlinePattern|A value indicating the pattern which shall be used to create the underlining applied beneath the text.|None|
| __ParagraphProperties__ |||
|FlowDirection|The flow direction.|LeftToRight|
|TextAlignment|The paragraph text alignment.|Left|
|SpacingBefore|The spacing that should be added above the first line in a paragraph.|0|
|AutomaticSpacingBefore|A value indicating whether a consumer shall automatically determine the spacing before the paragraph based on its contents the automatic spacing after.|False|
|SpacingAfter|The spacing that should be added after the last line in a paragraph.|0|
|AutomaticSpacingAfter|A value indicating whether a consumer shall automatically determine the spacing after the paragraph based on its contents the automatic spacing after.|False|
|LineSpacing|The value indicating the amount of vertical spacing between lines of text within a paragraph.|1.15|
|LineSpacingType|The value indicating how the spacing between lines is calculated.|Auto|
|KeepOnOnePage|A value indicating if this paragraph should be rendered on one page when the document is shown in page view mode.|False|
|KeepWithNextParagraph|A value indicating if this paragraph should be rendered at least partly on the one page with the following paragraph when this is possible and when the document is shown in page view mode.|False|
|OutlineLevel|A value indicating the outline level. The outline level defines the level of this paragraph in TOC field.|None|
|ApplyEastAsianLineBreakingRules|A value indicating whether East-Asian line breaking rules are applied to this paragraph.|True|
|PageBreakBefore|A value indicating if this paragraph should be rendered on new page when the document is shown in page view mode.|False|
|Borders|The paragraph borders.|None|
|ContextualSpacing|A value indicating whether spacing before/after are ignored when preceding/following paragraph has same paragraph style.|False|
|MirrorIndents|A value indicating whether left and right indents should be swapped on odd pages.|False|
|BackgroundColor|The color of the background.|Transparent|
|ShadingPatternColor|A value indicating the color for any foreground pattern used in this shading.|Transparent|
|ShadingPattern|A value indicating the pattern which shall be used to lay the pattern color over the background color for this shading.|Clear|
|FirstLineIndent|A value indicating the additional indentation which shall be applied to the first line of the paragraph.|0|
|HangingIndent|A value which shall be removed from the indentation of the first line of the paragraph, by moving the indentation on the first line back towards the beginning of the direction of text flow.|0|
|LeftIndent|A value indicating the indentation which shall be applied to the left side of the whole paragraph.|0|
|RightIndent|A value indicating the indentation which shall be applied to the right side of the whole paragraph.|0|
|AllowOverflowPunctuation|A value indicating whether the last punctuation character on a line can overflow in paragraph margin/indent.|True|
| __TableProperties__ |||
|Alignment|The alignment of the table.|Left|
|BackgroundColor|The color of the background.|Transparent|
|ShadingPatternColor|A value indicating the color for any foreground pattern used in this shading.|Transparent|
|ShadingPattern|A value indicating the pattern which shall be used to lay the pattern color over the background color for this shading.|Clear|
|Borders|The top border.|None|
|TableCellPadding|Default padding of the cells inside the table.|0, 0, 0, 0|
|TableCellSpacing|A value indicating the spacing between adjacent cells and the edges of the table.|0|
|Indent|A value which shall be added before the leading edge of the table.|0|
|RowBanding|The number of banded rows.|0|
|ColumnBanding|The number of banded columns.|0|
|FlowDirection|The flow direction of cells inside the table.|LeftToRight|
|PreferredWidth|The preferred width.|Auto|
|Looks|The value indicating which components of the conditional style should be applied if such exists.|BandedRows, BandedColumns|
|LayoutType|A value indicating which algorithm shall be used to lay out the content of the table.|AutoFit|
|Overlap|A value indicating whether this floating table shall allow other floating tables to overlap its extents.|True|
| __TableRowProperties__ |||
|TableCellSpacing|A value indicating the spacing between adjacent cells and the edges of the table.|0|
|RepeatOnEveryPage|A value indicating whether this row should be repeated on every new page.|False|
|CanSplit|A value indicating whether the content of the row can be split across multiple pages.|True|
|Height|The height.|Auto|
| __TableCellProperties__ |||
|Borders|The borders.|None|
|BackgroundColor|The color of the background.|Transparent|
|ShadingPatternColor|A value indicating the color for any foreground pattern used in this shading.|Transparent|
|ShadingPattern|A value indicating the pattern which shall be used to lay the pattern color over the background color for this shading.|Clear|
|Padding|The padding.|0, 0, 0, 0|
|ColumnSpan|The column span.|1|
|RowSpan|The row span.|1|
|IgnoreCellMarkerInRowHeightCalculation|A value indicating whether cell marker will be ignored when row height is calculated.|False|
|CanWrapContent|A value indicating whether the content can be wrapped during the table layout.|True|
|PreferredWidth|The preferred width.|Auto|
|VerticalAlignment|The vertical alignment.|Top|
| __SectionProperties__ |||
|HasDifferentFirstPageHeaderFooter|Has different first page header footer.|False|
|PageOrientation|Page orientation property.|Portrait|
|PageSize|Page size property.|816,1056|
|PageMargins|Page margins property.|96, 96, 96, 96|
|HeaderTopMargin|Header top margin property.|48|
|FooterBottomMargin|Footer bottom margin property.|48|
|SectionType|Section type property.|NextPage|
| __DocumentProperties__ |||
|HasDifferentEvenOddPageHeadersFooters|A value indicating whether pages in this document will have different headers and footers for even and odd pages.|False|
|ViewType|A value indicating the view type of the document.|PrintLayout|

# See Also

 * [Styles]({%slug winforms/wordsprocessing/concepts/styles%})

 * [IStyleProperty<T> API Reference]( http://www.telerik.com/help/winforms/t_telerik_windows_documents_flow_model_styles_core_istyleproperty.html)

 * [IStylePropertyDefinition API Reference](http://www.telerik.com/help/winforms/allmembers_t_telerik_windows_documents_flow_model_styles_core_istylepropertydefinition.html)
