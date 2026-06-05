---
title: Validation
page_title: Validation - RadPropertyGrid
description: RadPropertyGrid provides a convenient way to perform validation before data is committed.
slug: winforms/propertygrid/editors/validation
tags: validation
published: True
position: 3
previous_url: propertygrid-editors-validation
---

# Validation

**RadPropertyGrid** provides a convenient way to perform validation before data is committed. You can validate data by handling __PropertyValidating__ event which is raised by RadPropertyGrid when the current item changes or when the item loses input focus (when pressing the *Enter* key). Canceling this event prevents the user from exiting the item until a valid editor value is entered or the edit process is canceled.

Here is a list of all validation events:

* __PropertyValidating__: Fires when an item loses input focus, enabling content validation.

* __PropertyValidated__: Fires after the item has finished validating.

You can use the error indicator of the item to visualize error when such occurs.

>caption Figure 1: RadPropertyGrid Validation 

![WinForms RadPropertyGrid Validation](images/propertygrid-editors-validation.png)

The code snippet below demonstrates simple data validation scenario. It is performed on a string property to do not allow entering an empty string. In the __PropertyValidating__ event we check if an empty string is entered, if this is the case the validation fails, the error indicator is shown and the event is canceled. If the value entered is valid in the __Edited__ event we reset the error text and the error indicator is hidden:

#### Property validation

<snippet id='propertygrid-propertygridvalidation-propertyvalidating-cs' />
<snippet id='propertygrid-propertygridvalidation-propertyvalidating-vb' />



# See Also

* [API]({%slug winforms/propertygrid/editors/api%})
* [Validation]({%slug winforms/propertygrid/editors/validation%})
* [Custom Editors]({%slug winforms/propertygrid/editors/using-custom-editor%})
