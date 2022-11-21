---
title: API
page_title: API - RadPropertyGrid
description: The editing process can be controlled by using the methods described in this article.
slug: winforms/propertygrid/editors/api
tags: api
published: True
position: 1
previous_url: propertygrid-editors-api
---

# API

The editing process can be controlled by using the following methods:

* __BeginEdit__: Puts the current item in edit mode.

* __EndEdit__: Ends the edit operation on the current item and commits any changes.

* __CancelEdit__: Closes the currently active editor and discards all changes.

* __ActiveEditor__: Contains reference to the currently active editor.

* __IsInEditMode__: Indicates whether the property grid is in edit mode.

All editors used in RadPropertyGrid inherit from __BaseInputEditor__ class. This class does not inherit from __RadElement__. You should use its __EditorElement__ property if you want to customize any element properties.
		
# See Also

* [Events]({%slug winforms/propertygrid/editors/events%})
* [Validation]({%slug winforms/propertygrid/editors/validation%})
* [Custom Editors]({%slug winforms/propertygrid/editors/using-custom-editor%})
