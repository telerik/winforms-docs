---
title: First Steps
page_title: First Steps
description: First Steps
slug: winforms/getting-started/first-steps
tags: get,started,first,steps
published: True
position: 0
---

# First Steps
This article explains how to get the Telerik UI for WinForms controls in your project and start using them quickly.
The process consists of the following steps:

1. [Download the Controls](#download-the-controls)
1. [Add the Controls to Your Project](#add-the-controls-to-your-project)
1. [Add Telerik Control to a Form](#add-telerik-control-to-a-form)

Once you have your first simple control up and running, take a look at the [next steps](#next-steps) section to start exploring the control functionality in more detail.

## Download the Controls
The easiest way to get the controls to your development machine is to use the [Progress Control Panel](https://www.telerik.com/download-trial-file/v2/control-panel) or to download the automated MSI installer from [your telerik.com account](https://www.telerik.com/account/product-download?product=RCWF).

>caption Figure 1: Download automated (.msi) installer

![Download automated installer Telerik_UI_for_WinForms_<version>_Dev.msi](images/download-msi.png)

> If you are not a customer, you can [download a free, fully functional trial](https://www.telerik.com/download-trial-file/v2-b/ui-for-winforms) and the same options will apply to you as well.

>tip The following article provides step-by-step instructions how to install Telerik UI for WinForms on your computer: [Installing UI for WinForms](http://docs.telerik.com/devtools/winforms/installation-deployment-and-distribution/installing-on-your-computer)

## Add the Controls to Your Project

The easiest way to get the Telerik UI for WinForms controls in your project is to:

1. Install the [Telerik WinForms Visual Studio Extensions](https://marketplace.visualstudio.com/items?itemName=TelerikInc.TelerikWinFormsVSExtensions) or open Visual Studio and go to **Tools** > **Extensions and Updates** >  **search** the **Online** Visual Studio Marketplace for "**telerik winforms vsextensions**". If you are running Visual Studion 2019 you will need to go to **Extentions** > **Manage Extensions**.

    Make sure that you restart VS to allow it to install the extensions.

    >caption Figure 2: Get the Telerik WinForms VS Extensions

    ![Install Telerik WinForms VS Extensions](images/get-vs-extensions.png "Install Telerik WinForms VS Extensions")

1. Reference the controls in your project:

    * If you **do not have a project**, run the [Create Project Wizard]({% slug winforms/installation-deployment-and-distribution/visual-studio-extensions/project-creation %}).

        >caption Figure 4: Go to Telerik > UI for WinForms > Create new Telerik Project

        ![Run Create Project Wizard](images/installation-deployment-and-distribution-vsx-overview001.png "Run Create Project Wizard")

	* If you already **have a WebForms project**, run the [Convert Project Wizard]({% slug winforms/installation-deployment-and-distribution/visual-studio-extensions/project-convert %}).
    
        >caption Figure 3: Start with going to Telerik > UI for WinForms > Add Reference

        ![Add Reference](images/installation-deployment-and-distribution-vsx-overview002.png "Add Reference")
		
## Add Telerik Control to a Form

The final step is to add a Telerik control to your application.

1. **Add a Telerik control** to a form. As an example we will use a [RadDropDownButton]({% slug winforms/buttons/dropdownbutton/getting-started %}) control.

To programmatically add a __RadDropDownButton__ to a form, create a new instance of a __RadDropDownButton__, and add it to the form __Controls__ collection.

#### Adding a RadDropDownButton at runtime 

````C#
RadDropDownButton radDropDownButton = new RadDropDownButton();
radDropDownButton1.Text = "Fruits";
RadMenuItem item1 = new RadMenuItem("Orange");
radDropDownButton1.Items.Add(item1);
RadMenuItem item2 = new RadMenuItem("Lemon");
radDropDownButton1.Items.Add(item2);
RadMenuItem item3 = new RadMenuItem("Banana");
radDropDownButton1.Items.Add(item3);
this.Controls.Add(radDropDownButton);

````
````VB.NET
Dim radDropDownButton As New RadDropDownButton()
radDropDownButton1.Text = "Fruits"
Dim item1 As New RadMenuItem("Orange")
radDropDownButton1.Items.Add(item1)
Dim item2 As New RadMenuItem("Lemon")
radDropDownButton1.Items.Add(item2)
Dim item3 As New RadMenuItem("Banana")
radDropDownButton1.Items.Add(item3)
Me.Controls.Add(radDropDownButton)

````

![buttons-dropdownbutton-overview 001](images/buttons-dropdownbutton-overview001.png)

> You can also add a __RadDropDownButton__ control from the Toolbox. To do that simply drag it from the toolbox to the surface of the form designer. If you do not see the Toolbox, go to **View** > **Toolbox**

## Next Steps

Now that you have the Telerik UI for WinForms controls running in your project, you may want to explore their features, customize their behavior or change their appearance. Below you can find guidance on getting started with such tasks:

* [Explore control features]({%slug winforms/getting-started/explore-control-features%})
* [Change control appearance]({%slug winforms/getting-started/change-control-appearance%})
* [Further information]({%slug winforms/getting-started/next-steps%})

## See Also

* [System Requirements](https://www.telerik.com/winforms/tech-sheets/system-requirements)
* [Download Product Files]({%slug winforms/installation-deployment-and-distribution/download-product-files%})
* [Predefined Template Applications](https://www.telerik.com/winforms/winforms-guide)
* [Progress Virtual Classroom](https://www.telerik.com/account/support/virtual-classroom)

