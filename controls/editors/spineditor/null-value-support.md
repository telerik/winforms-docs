---
title: Null Value Support
page_title: Null Value Support - RadSpinEditor 
description: RadSpinEditor is a themable alternative to the standard Windows Numeric Up Down control.
slug: winforms/editors/spineditor/null-value-support
tags: spineditor
published: True
position: 6 
---

# Null Value Support

Since R1 2017 **RadSpinEditor** supports *null* value. In order to enable this functionality it is necessary to set the **EnableNullValueInput** property to *true*. Thus, when the text is cleared and **RadSpinEditor** looses focus, *null* value will be set. The default **Value** property is of type *int* and it cannot be set to *null*. A new property,called **NullableValue**, is introduced for this purpose and it can be set to *null*. The **NullableValueChanged** event is fired when the **NullableValue** property is changed.

## Simple Data Binding

You can find below a sample code snippet demonstrating how to use the **NullableValue** property with simple data binding:

#### Simple data binding with null value

<snippet id='editors-spineditor1-nullablevalue-cs' />
<snippet id='editors-spineditor1-nullablevalue-vb' />



# See Also

* [Getting Started]({%slug winforms/editors/spineditor/getting-started%})
* [Properties and Events]({%slug winforms/editors/spineditor/working-with-radspineditor%})

