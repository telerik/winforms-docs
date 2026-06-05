---
title: Customizing Editor Behavior
page_title: Customizing editor behavior - RadPropertyGrid
description: The appearance and behavior of property grid editors can be changed programmatically.
slug: winforms/propertygrid/editors/customizing-editor-behavior
tags: customizing,editor,behavior
published: True
position: 4
previous_url: propertygrid-editors-customizing-editor-behavior
---

# Customizing Editor Behavior

The appearance and behavior of property grid editors can be changed programmatically. This can be done in the __EditorInitialized__ event. __EditorInitialized__ is fired when the editor is created and initialized with a predefined set of properties.

>caption Figure 1: Customize Editor

![WinForms RadPropertyGrid Customize Editor](images/propertygrid-editors-customize-editor.png)

The following sample demonstrates how to change the default font of __PropertyGridTextBoxEditor__:

#### Customize editor

<snippet id='propertygrid-propertygridcustomizingeditorbehavior-customizeeditor-cs' />
<snippet id='propertygrid-propertygridcustomizingeditorbehavior-customizeeditor-vb' />



# PropertyGridSpinEditor null values support.

The following snippet shows how you can enable the null values support in the spin editor:

<snippet id='propertygrid-propertygridcustomizingeditorbehavior-nullvalues-cs' />
<snippet id='propertygrid-propertygridcustomizingeditorbehavior-nullvalues-vb' />



# See Also

* [Custom Editors]({%slug winforms/propertygrid/editors/using-custom-editor%})
* [Validation]({%slug winforms/propertygrid/editors/validation%})
* [How to allow end-users to add custom items to PropertyGridDropDownListEditor]({%slug allow-end-users-to-add-items-to-propertygriddropdownlisteditor%})
