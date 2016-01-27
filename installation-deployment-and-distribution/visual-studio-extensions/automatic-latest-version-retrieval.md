---
title: Automatic latest version retrieval
page_title: Automatic latest version retrieval | UI for WinForms Documentation
description: Automatic latest version retrieval
slug: winforms/installation-deployment-and-distribution/visual-studio-extensions/automatic-latest-version-retrieval
tags: automatic,latest,version,retrieval
published: True
position: 7
previous_url: installation-deployment-and-distribution-vsx-automatic-latest-version-retrieval
---

# Automatic latest version retrieval



## 

With the Telerik Visual Studio Extensions you keep your projects in an up-to-date state. The Latest Version Acquirer tool automatically retrieves the freshest Telerik UI for WinForms distribution, available on the Telerik website. Running the [Upgrade Wizard]({%slug winforms/installation-deployment-and-distribution/visual-studio-extensions/upgrade-wizard%}) as a next step makes the task of latest Telerik UI for WinForms package utilization extremely easy.
        

Once a day, upon Visual Studio launch, the Telerik WinForms VSExtensions queue the Telerik website for a new version of `. A dialog gets displayed when a new version is discovered:
 
![installation-deployment-and-distribution-vsx-automatic-latest-version-retrieval 001](images/installation-deployment-and-distribution-vsx-automatic-latest-version-retrieval001.png)

>note If you've disabled the notifications, you can use the [Options Dialog]({%slug winforms/installation-deployment-and-distribution/visual-studio-extensions/options-dialog%}) to activate them again.
>


Clicking the __Get Now__ button starts the Latest Version Acquirer tool, prompting for your Telerik credentials and the type of license you own in its first page. If you do not have a [www.telerik.com](http://www.telerik.com) account, you can create one through the __Register__ link.
 
![installation-deployment-and-distribution-vsx-automatic-latest-version-retrieval 002](images/installation-deployment-and-distribution-vsx-automatic-latest-version-retrieval002.png)

You can check the additional information about the release by clicking the Release Notes link. This will start a browser, navigated to a page with the release notes related to the specific version.
        

You can use the __Save my password__ checkbox to save having to enter your Telerik credentials multiple times. The persistence is done in a secure manner and credentials are saved in a per-user context. This way other users on the machine that do not have access to your user data from downloading through your account.
        

If your subscription has expired, you could either proceed with downloading a trial distribution  or you could renew it and initiate the download again.
 
![installation-deployment-and-distribution-vsx-automatic-latest-version-retrieval 003](images/installation-deployment-and-distribution-vsx-automatic-latest-version-retrieval003.png)

![installation-deployment-and-distribution-vsx-automatic-latest-version-retrieval 004](images/installation-deployment-and-distribution-vsx-automatic-latest-version-retrieval004.png)

![installation-deployment-and-distribution-vsx-automatic-latest-version-retrieval 005](images/installation-deployment-and-distribution-vsx-automatic-latest-version-retrieval005.png)

Once the download succeeds, the latest version of the ` will be available for use in the [Upgrade Wizard]({%slug winforms/installation-deployment-and-distribution/visual-studio-extensions/upgrade-wizard%}) and the [New Project Wizard]({%slug winforms/installation-deployment-and-distribution/visual-studio-extensions/creation-and-configuration-wizard%}).
        

>tip The Download buttons of the [Upgrade Wizard]({%slug winforms/installation-deployment-and-distribution/visual-studio-extensions/upgrade-wizard%}) and the [New Project Wizard]({%slug winforms/installation-deployment-and-distribution/visual-studio-extensions/creation-and-configuration-wizard%}) launch the Latest Version Acquirer tool too.
>

>note The Latest Version Acquirer tool actually downloads the hotfix zip files, containing the latest Telerik binaries and any resources vital for the Telerik WinForms project creation. These get unpacked to the %appdata%\Telerik\Updates folder.
>If you find the list of packages offered too long and you don't need the older versions, you can close Visual Studio and use Windows Explorer to delete these distributions.
>

