---
title: PdfExportRenderer
page_title: PdfExportRenderer | Telerik Presentation Framework
description: The PdfExportRenderer class gives you access to the exported document and provides you with the ability to change it prior saving.
slug: winforms/telerik-presentation-framework/export-renderers/pdfexportrenderer
tags: pdfexportrenderer
published: True
position: 1
previous_url: tpf-export-data-support-pdf-export-renderer
---

# PdfExportRenderer

The __PdfExportRenderer__ class gives you access to the exported document and provides you with the ability to change it before it is saved.
        

The __PdfExportRenderer__ API gives you the ability to manipulate the document. The following two events are giving you the ability to make some final changes: 
        

* __PageExported:__ occurs when each page is exported. The __PageExportedEventArgs__ object gives you access to the [editor](http://docs.telerik.com/devtools/document-processing/libraries/radpdfprocessing/editing/fixedcontenteditor) which you can use to paint on the page.
            

* __PdfExporting:__ occurs before the export process is completed. This event gives you access to the exported document and at this point you can manipulate it using the [PdfProcessing Library](http://docs.telerik.com/devtools/document-processing/libraries/radpdfprocessing/overview)

# See Also
* [SpreadExportRenderer]({%slug winforms/telerik-presentation-framework/export-renderers/spreadexportrenderer%})

* [SpreadStreamExportRenderer]({%slug winforms/telerik-presentation-framework/export-renderers/spreadstreamexportrenderer%})

