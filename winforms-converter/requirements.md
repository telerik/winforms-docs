---
title: Requirements
page_title: Requirements | WinForms Converter
description: This article explains which what you require in order to convert your projects. 
slug: winforms/winforms-converter/requirements
tags: covert, winforms, requirements
published: True
position: 2
---

# Requirements

The following article lists what is required in order to be able to use the controls converter.

* __Visual Studio 2015 Update 2__
 
* __.NET 4.6.1__ - this is required if your Visual Studio does not have __Update 2__ installed. You can download it from [here](https://www.microsoft.com/en-us/download/details.aspx?id=49978).

* Solution that contains project with default .NET controls.

>important The WinForms converter crashes when converting a project with Visual Studio 2017 18.7 or newer. This is caused because in the latest version of Visual Studio a type used in the converter was moved. Additional information is available here: [WinForms Converter crashes with Visual Studio 15.8](https://docs.telerik.com/devtools/winforms/knowledge-base/converter-exception)

>important WinForms Converter is not available for VS 2019 yet because of breaking changes in Roslyn.

## See Also

* [Step-by-step tutorial]({%slug winforms/winforms-converter/step-by-step-tutorial%})

