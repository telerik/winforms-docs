---
title: App becomes DPI-aware at runtime
description: App becomes DPI-aware at runtime
type: how-to
page_title: App becomes DPI-aware at runtime
slug: app-becomes-dpi-aware
position: 0
tags: dpi, hdpi
res_type: kb
---

# Problem

Your application becomes smaller when exporting data or using cross platform controls (RadPdfViewer, RadRichTextEditor, RadSpreadsheetEditor, RadDiagram, The DocumentProcessingLibrary). This happens because we are using WPF assemblies where the DPI-awareness is enabled at assembly level. When a type from such assembly is initialized the application becomes DPI aware and the controls will became smaller. 

# Solution

There are two approaches in this case. 

1\. Make your application DPI-aware explicitly. with this approach your app will look smaller when started. It will no look blurry on HDPI displays. Detailed information is available [here]({%slug winforms/telerik-presentation-framework/dpi-support%}).

2\. Make your application DPI-unaware. This approach works on Windows 10 only. Detailed information about it is available in the last section of the following article: [HDPI Tips and Tricks]({%slug hdpi-tips-and-tricks%})

>note Both of the above approaches does not affect the application when the scaling is set to 100%. 

