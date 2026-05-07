---
title: Localization
page_title: Localization - Filter View
description: Learn how you can localize all strings used in the WinForms FilterView control.  
slug: filter-view-localization
tags: filter, view, localization, translate
published: True
position: 6  
---

# Localization

To localize **RadFilterView** to display control text and messages in a specific language:

* All required classes for localization are defined in Telerik.WinControls.UI namespace.

* Start by creating a descendant of the **RadFilterViewLocalizationProvider** class.

* Override the **GetLocalizedString(string id)** method and provide a translation for the label and user messages. If a translation is not provided, the default value will be returned. This behavior is guaranteed by the call to the base **GetLocalizedString** method in the default clause of the switch statement in the example.

Below is a sample implementation of an English localization provider: 

#### Localizing RadFilterView Strings

<snippet id='filter-view-localization-englishprovider-cs' />
<snippet id='filter-view-localization-englishprovider-vb' />



To apply the custom localization provider, instantiate and assign it to the current localization provider:

#### Assigning the Current Localization Provider

<snippet id='filter-view-localization-applyprovider-cs' />
<snippet id='filter-view-localization-applyprovider-vb' />



 
# See Also

* [Getting Started]({%slug filter-view-getting-started%})
* [Structure]({%slug filter-view-structure%})
 
        
