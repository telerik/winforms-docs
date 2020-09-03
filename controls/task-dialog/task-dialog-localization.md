---
title: Localization
page_title: Localization | Task Dialog
description: RadTaskDialog is a themable alternative of the windows dialog boxes and the newly released TaskDialog for .NET 5.
slug: task-dialog-localization
tags: task dialog, icons
published: True
position: 6 
---

# Localization

To localize **RadTaskDialog** to display control text and messages in a specific language, :

* All required classes for localization are defined in Telerik.WinControls.UI.Localization namespace.

* Start by creating a descendant of the **RadTaskDialogLocalizationProvider** class.

* Override the **GetLocalizedString(string id)** method and provide a translation for the label and user messages. If a translation is not provided, the default value will be returned. This behavior is guaranteed by the call of the base **GetLocalizedString** method in the default clause of the switch statement in the example.

Below is a sample implementation of an English localization provider:

#### Localizing Task Dialog

{{source=..\SamplesCS\TaskDialog\TaskDialogGettingStarted.cs region=Localization}} 
{{source=..\SamplesVB\TaskDialog\TaskDialogGettingStarted.vb region=Localization}}

````C#
     

````
````VB.NET
  

````

{{endregion}}

To apply the custom localization provider, instantiate and assign it to the current localization provider:

#### Assigning the Current Localization Provider

{{source=..\SamplesCS\TaskDialog\TaskDialogGettingStarted.cs region=SetProvider}} 
{{source=..\SamplesVB\TaskDialog\TaskDialogGettingStarted.vb region=SetProvider}}

````C#
     

````
````VB.NET
  

````

{{endregion}}

# See Also

* [Getting Started]({%slug task-dialog-getting-started%})
* [Structure]({%slug task-dialog-structure%})
* [Element Types]({%slug task-dialog-element-types%})
 
        
