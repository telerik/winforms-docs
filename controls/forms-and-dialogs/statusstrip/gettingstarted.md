---
title: Getting Started
page_title: Getting Started - WinForms StatusStrip Control
description: WinForms StatusStrip provides a status area that can be composed of any number of RadElement types - buttons, repeat buttons, image buttons, labels, panels, progress bars and separators.
slug: winforms/forms-and-dialogs/statusstrip/gettingstarted
tags: gettingstarted
published: True
position: 2
previous_url: forms-and-dialogs-statusstrip-getting-started
---

# Getting Started with WinForms StatusStrip

This article shows how you can start using **RadStatusStrip**.

## Adding Telerik Assemblies Using NuGet

To use `RadStatusStrip` when working with NuGet packages, install the `Telerik.UI.for.WinForms.AllControls` package. The [package target framework version may vary]({%slug winforms-available-nugets%}).

Read more about NuGet installation in the [Install using NuGet Packages]({%slug winforms/nuget%}) article.

>tip With the 2025 Q1 release, the Telerik UI for WinForms has a new licensing mechanism. You can learn more about it [here]({%slug license-key%}).

## Adding Assembly References Manually

When dragging and dropping a control from the Visual Studio (VS) Toolbox onto the Form Designer, VS automatically adds the necessary assemblies. However, if you're adding the control programmatically, you'll need to manually reference the following assemblies:

* __Telerik.Licensing.Runtime__
* __Telerik.WinControls__
* __Telerik.WinControls.UI__
* __TelerikCommon__

The Telerik UI for WinForms assemblies can be install by using one of the available [installation approaches]({%slug winforms/installation-deployment-and-distribution/installing-on-your-computer%}). 

## Defining the RadStatusStrip

The following tutorial demonstrates configuring __RadStatusStrip__ at design-time and programmatic access of individual status bar items at run-time. The status bar contains label, separator, buttons and progress bar elements. One of the button elements increments the __RadListControl__ selected index. The label and one of the button elements reflect the current selection in the __RadListControl__ while the progress bar mimics a process against the upcoming item.
        
![WinForms RadStatusStrip Getting Started](images/forms-and-dialogs-statusstrip-getting-started001.png)

1\. Add a __RadStatusStrip,__ and a __RadListControl__ to a form. 
        
2\. Take three images of your choice and set them as project resources.

3\. In the designer click the __RadStatusStrip__ label *Type here* and enter *Current:*. This step is one way to create a __RadLabelElement__ in __RadStatusStrip__ and populate it.

4\. Using the downward arrow of the __RadStatusStrip__ add a __RadLabelElement__. In the __Properties Window__ set the __Name__ property to be *lblStatus* and the __Spring__ property to __true__.

>note Setting the **Spring** property to *true* will stretch horizontally the respective element. Thus, this element will occupy the free space and the rest of the elements will be positioned on the right most side when resizing the **RadStatusStrip**. You can also use **SetSpring** method of **RadStatusStrip** and pass the element that needs to stretch horizontally.
            
![WinForms RadStatusStrip Spring](images/forms-and-dialogs-statusstrip-getting-started002.png)

5\. In the *Type here* element click the downward arrow. Add the following elements:
            
1. __RadImageButtonElement__

1. __CommandBarSeparator__

1. __RadProgressBarElement__

1. __RadButtonElement__ 

6\. Use the Properties window to set the following properties to the elements above:

1. __RadImageButtonElement: Name__ = "imgStatus", __DisplayStyle__ = *Image*.
                
1. __CommandBarSeparator__. *There are no properties to set for the separator element.*

1. __RadProgressBarElement__: __Name__ = "pbStatus"
                
1. __RadButtonElement: Name__ = "btnStatus", __Text__ = "Go!", __Spring__ = __true__.
                
7\. Double-click "btnStatus" to create a __Click__ event handler. Add the code below to replace the event handler. This code block bumps the list control selected index until the end of the list is reached, and then moves the index back to the first item in the list.
  
<snippet id='statusstrip-statusstripgettingstarted-statusclick-cs' />
<snippet id='statusstrip-statusstripgettingstarted-statusclick-vb' />



8\. In the __Properties Window__ for the __RadListControl:__

1. Set the __Dock__ property to __Fill__.
                
1. Select the __Items__ property ellipses. This will open the __RadItem Collection Editor__.
                
1. Click the __Add__ button. Set the __RadListDataItem.Text__ property to "Music", __TextImageRelation__ to ImageBeforeText and __Image__ to one of the images previously set as project resources.
                
1. Click the __Add__ button. Set the __RadListDataItem.Text__ property to "Pictures", __TextImageRelation__ to ImageBeforeText and __Image__ to one of the images previously set as project resources.
                
1. Click the __Add__ button. Set the __RadListDataItem.Text__ property to "Email", __TextImageRelation__ to ImageBeforeText and __Image__ to one of the images previously set as project resources.
                
1. Click __OK__ to close the __RadItem Collection Editor__.
                
9\. In the __Properties Window__ for the __RadListControl__ select the __Events__ button.
            
10\. Locate and double-click the __RadListControl.SelectedIndexChanged__ event to create an event handler.
            
11\. Paste the following code to the __SelectedIndexChanged__ event handler.  *The code retrieves the selected item and assigns the text and image for the selected item to the status bar label and image elements. Then the progress bar element mimics an operation against the newly selected item.*
 

<snippet id='statusstrip-statusstripgettingstarted-selectedindexchanged-cs' />
<snippet id='statusstrip-statusstripgettingstarted-selectedindexchanged-vb' />



12\. Add __Telerik.WinControls.UI__ and __System.Threading__ references to the "using" (C#) or Imports (VB) section of the code.
            
<snippet id='statusstrip-statusstripgettingstarted-namespaces-cs' />
<snippet id='statusstrip-statusstripgettingstarted-namespaces-vb' />



13\. Press __F5__ to run the application. Press the "Go!" button to see the status bar react to list control changes.


## See Also

* [Properties and events]({%slug winforms/forms-and-dialogs/statusstrip/properties-events%})
            

## Telerik UI for WinForms Learning Resources
* [Telerik UI for WinForms StatusStrip Component](https://www.telerik.com/products/winforms/statusstrip.aspx)
* [Getting Started with Telerik UI for WinForms Components](https://docs.telerik.com/devtools/winforms/getting-started/first-steps)
* [Telerik UI for WinForms Setup](https://docs.telerik.com/devtools/winforms/installation-and-upgrades/installing-on-your-computer)
* [Telerik UI for WinForms Application Modernization](https://docs.telerik.com/devtools/winforms/winforms-converter/overview)
* [Telerik UI for WinForms Visual Studio Templates](https://docs.telerik.com/devtools/winforms/visual-studio-integration/visual-studio-templates)
* [Deploy Telerik UI for WinForms Applications](https://docs.telerik.com/devtools/winforms/deployment-and-distribution/application-deployment)
* [Telerik UI for WinForms Virtual Classroom(Training Courses for Registered Users)](https://learn.telerik.com/learn/course/external/view/elearning/17/telerik-ui-for-winforms)
* [Telerik UI for WinForms License Agreement)](https://www.telerik.com/purchase/license-agreement/winforms-dlw-s)

