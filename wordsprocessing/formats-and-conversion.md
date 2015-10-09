---
title: Formats and Conversion
page_title: Formats and Conversion | UI for WinForms Documentation
description: Formats and Conversion
slug: winforms/wordsprocessing/formats-and-conversion
tags: formats,and,conversion
published: True
position: 4
---

# Formats and Conversion



RadWordsProcessing does not need any external dependencies in order to convert documents from/to the supported formats. The document model is independent from UI and can be used on the server side as well as on the client.
      

You can use RadWordsProcessing to convert among variety of formats. Below you can see a feature / format matrix that describes supported features by file format. The currently supported format are Docx, RTF and plain text, as plain text is excluded from the comparison.
      

## 


| Feature | Docx Import | Docx Export | Rtf Import | Rtf Export | Html Import | Html Export | Pdf Export |
| ------ | ------ | ------ | ------ | ------ | ------ | ------ | ------ |
| __Text Formatting__ ||||||||
|Font Properties|Supported|Supported|Supported|Supported|Supported|Supported|Supported|
|Text Style|Supported|Supported|Supported|Supported|Supported|Supported|Supported|
|Baseline Alignment|Supported|Supported|Supported|Supported|Supported|Supported|Supported|
| __Paragraph Options__ ||||||||
|Text Alignment|Supported|Supported|Supported|Supported|Supported|Supported|Supported|
|Text Spacing|Supported|Supported|Supported|Supported|Supported|Supported|Supported|
|Text Indent|Supported|Supported|Supported|Supported|Supported|Supported|Supported|
|Shading|Supported|Supported|Supported|Supported|Supported|Supported||
|Borders|Supported|Supported|Supported|Supported|Not applicable|Not applicable||
| __Page/Section options__ ||||||||
|Page Size and Position|Supported|Supported|Supported|Supported|Not applicable|Not applicable|Supported|
|Page Orientation|Supported|Supported|Supported|Supported|Not applicable|Not applicable|Supported|
|Page Breaks|Supported|Supported|Supported|Supported|||Supported|
|Section Breaks|Supported|Supported|Supported|Supported|Not applicable|Not applicable|Supported|
|Columns||||||||
|Watermark|||||Not applicable|Not applicable||
|Headers/Footers|Supported|Supported|Supported|Supported|||Supported|
|Section Vertical Alignment|Supported|Supported|Supported|Supported|Not applicable|Not applicable||
|Page Numbering Settings|Supported|Supported|Supported|Supported|Not applicable|Not applicable|Supported|
| __Tables__ ||||||||
|Table Support|Supported|Supported|Supported|Supported|Supported|Supported|Supported|
|Nested Tables|Supported|Supported|Supported|Supported|Supported|Supported|Supported|
|Merged Cells|Supported|Supported|Supported|Supported|Supported|Supported|Supported|
|Floating Tables||||||||
| __Images__ ||||||||
|Inline Images|Supported|Supported|Supported|Supported|Supported|Supported|Supported|
|Floating Images|Supported|Supported|Supported|Supported|Partially Supported**|Partially Supported**||
| __Styles__ ||||||||
|Styles Support|Supported|Supported|Supported|Supported|Supported|Supported|Supported|
|Built-in Styles|Supported|Supported|Supported|Supported|Supported|Supported|Supported|
|Themes|Supported|Supported|||Supported|Supported|Supported|
|Conditional Table Styles||||||||
| __Lists__ ||||||||
|Lists Support|Supported|Supported|Supported|Supported|Supported|Supported|Supported|
|List Styles|Supported|Supported|Supported|Supported|Supported|Supported|Supported|
| __Fields__ ||||||||
|Hyperlinks|Supported|Supported|Supported|Supported|Supported|Supported|Supported|
|Expression Fields|Supported|Supported|Supported|Supported|Supported|Supported|Supported|
|Date and Time Fields|Supported|Supported|Supported|Supported|Not applicable|Partially Supported***|Partially Supported***|
|Merge fields|Supported|Supported|Supported|Supported|Not applicable|Partially Supported***|Partially Supported***|
|Document Variables|Supported|Supported|Supported|Supported|Not applicable|Partially Supported***|Partially Supported***|
|Other fields|Partially Supported*|Partially Supported*|Partially Supported*|Partially Supported*|Not applicable|Partially Supported***|Partially Supported***|
| __Review__ ||||||||
|Comments|Supported|Supported|Supported|Supported||||
|Protection|||||||Not applicable|
|Track Changes||||||||
| __Other Elements__ ||||||||
|Bookmarks|Supported|Supported|Supported|Supported||||

>note *All fields are supported through custom code fields. More information is available[here]({%slug winforms/wordsprocessing/concepts/customcodefield%}).
>


>note **Floating images are treated as inline images when importing/exporting to HTML.
>


>note ***The result of the fields is exported as text.
>

