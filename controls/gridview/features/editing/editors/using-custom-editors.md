---
title: Using custom editors
page_title: Using custom editors - WinForms GridView Control
description: WinForms GridView allows changing the default editor with a custom one. Learn how to change it with a track bar.
slug: winforms/gridview/editors/using-custom-editors
tags: using,custom,editors
published: True
position: 5
previous_url: gridview-editors-using-custom-editors
---

# Using custom editors

This following snippet demonstrates how to replace the standard spin editor with a track bar.

All grid editors inherit from __BaseGridEditor__. So, you have to inherit from this class and override several methods:

<snippet id='gridview-usingcustomeditors-trackbareditor-cs' />
<snippet id='gridview-usingcustomeditors-trackbareditor-vb' />

We use the standard __RadTrackBar__ element in this example with some modification to enable keyboard navigation:

<snippet id='gridview-usingcustomeditors-trackbareditorelement-cs' />
<snippet id='gridview-usingcustomeditors-trackbareditorelement-vb' />

The __EditorRequired__ event is the correct place to replace the default editor:

<snippet id='gridview-usingcustomeditors-changingtheeditor-cs' />
<snippet id='gridview-usingcustomeditors-changingtheeditor-vb' />

>note You can find a working version of this sample in our Demo application ( *GridView -> Custom Editors* ). To access the Live Demo simply click on the Windows Start button and type WinForms Demo. If you are not able to find the Live Demos using that approach you can also download it directly from [here](https://telerik-winforms-demos.s3.amazonaws.com/TelerikWinFormsExamplesLauncher.exe).
>

## See Also
* [API]({%slug winforms/gridview/editors/api%})

* [Customizing editor behavior]({%slug winforms/gridview/editors/customizing-editor-behavior%})

* [Data validation]({%slug winforms/gridview/editors/data-validation%})

* [Overview]({%slug winforms/gridview/editors/editors%})

* [Events]({%slug winforms/gridview/editors/events%})

* [Handling Editors' events]({%slug winforms/gridview/editors/handling-editors'-events%})

* [How to Achieve Checked RadMultiColumnComboBox]({%slug checked-multicolumncombobox%})

* [How to Use RadPopupEditor as a Custom Editor in RadGridView]({%slug use-popup-editor-as-gridview-editor%})

