---
title: Architecture
page_title: Architecture | RadPageView
description: RadPageView is yet another great addition to the Progress&reg; Telerik&reg; UI for WinForms suite. As the name implies, this control layouts pages of subcontrols in different views.
slug: winforms/pageview/architecture
tags: architecture
published: True
position: 2
previous_url: pageview-architecture
---

# Architecture

**RadPageView** aims to provide a full replacement for the currently existing **RadTabStrip** and **RadPanelBar** controls by shipping the same functionality with a simpler approach and improved performance. This new control is based on a very flexible and extensible platform that is fully compatible with the Telerik Presentation Framework, and allows implementing different layout scenarios as quick as never before.

The architecture of this control is pretty simple. It consists of pages which have associated items that can be used to show the corresponding page. A specific layout strategy arranges the pages and the items so that the end look and feel is achieved. The diagram below conceptually illustrates the **RadPageView**’s structure whereby the names of the diagram elements correspond to the actual Telerik types:

>caption Figure 1: Architecture

![pageview-architecture001](images/pageview-architecture001.png)

## View Modes

Currently, we ship the following modes of this control which implement different layout strategies and thus achieve the functionality of the **RadTabStrip** and **RadPanelBar** controls all in one:

* *Strip Mode*: equivalent to the **RadTabStrip** control.
* *Stack Mode*: equivalent to the **RadPanelBar**’s *ListBar* mode.
* *Outlook Mode*: equivalent to the **RadPanelBar**’s *OutlookNavPane* mode.
* *Explorer Mode*: designed to display multiple visible pages at once.
* *Backstage Mode*: designed after the Office 2010 backstage mode.

The following tables show the internal elements hierarchy and structure of **RadPageView** considering the view mode:

>caption Elements Hierarchy

|View Mode|Elements Hierarchy|
|----|----|
|**Strip**|![pageview-architecture002](images/pageview-architecture002.png)|
|**Stack**|![pageview-architecture003](images/pageview-architecture003.png)|
|**Outlook**|![pageview-architecture004](images/pageview-architecture004.png)|
|**ExplorerBar**|![pageview-architecture005](images/pageview-architecture005.png)|
|**Backstage**|![pageview-architecture006](images/pageview-architecture006.png)|

>caption Structure

|View Mode|Structure|
|----|----|
|**Strip**|![pageview-architecture007](images/pageview-architecture007.png)|
|**Stack**|![pageview-architecture008](images/pageview-architecture008.png)|
|**Outlook**|![pageview-architecture009](images/pageview-architecture009.png)|
|**ExplorerBar**|![pageview-architecture010](images/pageview-architecture010.png)|
|**Backstage**|![pageview-architecture011](images/pageview-architecture011.png)|

# See Also

* [RadControlSpy]({%slug winforms/tools/controlspy%})

