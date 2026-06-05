---
title: Localization
page_title: Localization - RadPdfViewer
description: RadPdfViewer can be fully localized to display text messages in a specific language.
slug: winforms/pdfviewer/localization
tags: localization
published: True
position: 12
previous_url: pdfviewer-localization
---

# Localization

To localize __RadPdfViewer__ to display any text and messages in a specific language:

* Create a custom __PdfViewerLocalizationProvider__ class.

* Override the __GetLocalizedString(string id)__ method and provide a translation for the label and user messages. If a translation is not provided, the default value will be returned. This behavior is guaranteed by the call to the base __GetLocalizedString__ method in the default clause of the switch statement in the example.

Below is a sample implementation of an English localization provider:

#### RadPdfViewer Localization

<snippet id='pdfviewer-pdflocalization-localization-cs' />
<snippet id='pdfviewer-pdflocalization-localization-vb' />



To apply the custom localization provider, instantiate and assign it to the current localization provider:

#### Changing the Localization Provider

<snippet id='pdfviewer-pdflocalization-change-cs' />
<snippet id='pdfviewer-pdflocalization-change-vb' />



# See Also

* [Getting Started]({%slug winforms/pdfviewer/getting-started%})
* [Logical Structure]({%slug winforms/pdfviewer/structure/logical-structure%})
* [Visual Structure]({%slug winforms/pdfviewer/structure/visual-structure%})
* [Properties, Methods and Events]({%slug winforms/pdfviewer/properties-methods-and-events%})
