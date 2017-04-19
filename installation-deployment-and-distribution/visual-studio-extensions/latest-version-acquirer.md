---
title: Download New Version
page_title: Download New Version
description: Download New Version
slug: winforms/installation-deployment-and-distribution/visual-studio-extensions/latest-version-acquirer
tags: automatic,latest,version,retrieval,acquirer
published: True
position: 5
previous_url: installation-deployment-and-distribution-vsx-automatic-latest-version-retrieval,/devtools/winforms/installation-deployment-and-distribution/visual-studio-extensions/automatic-latest-version-retrieval
---

# Download New Version

With the Telerik Visual Studio Extensions you keep your projects in an up-to-date state. The __Latest Version Acquirer__ tool automatically retrieves the freshest Progress&reg; Telerik&reg; UI for WinForms distribution, available on the Telerik website. Running the [Upgrade Wizard]({%slug winforms/installation-deployment-and-distribution/visual-studio-extensions/upgrade-project%}) as a next step makes the task of latest Progress&reg; Telerik&reg; UI for WinForms package utilization extremely easy.

When a solution containing an UI for WinForms project is loaded in Visual Studio, the Telerik WinForms VSExtension checks the Telerik website for a new version of Progress&reg; Telerik&reg; UI for WinForms. A dialog gets displayed when a new version is available:

![installation-deployment-and-distribution-vsx-automatic-latest-version-acquirer 001](images/installation-deployment-and-distribution-vsx-automatic-latest-version-acquirer001.png)

>note If you've disabled the notifications, you can use the [Options Dialog]({%slug winforms/installation-deployment-and-distribution/visual-studio-extensions/options%}) to activate them again.
>


Clicking the __Update Now__ button starts the Latest Version Acquirer tool, prompting for your Telerik credentials and the type of license you own in its first page. If you do not have a [www.telerik.com](http://www.telerik.com) account, you can create one through the __Register__ link.

![installation-deployment-and-distribution-vsx-automatic-latest-version-acquirer 002](images/installation-deployment-and-distribution-vsx-automatic-latest-version-acquirer002.png)

You can use the __Save my password__ checkbox to save having to enter your Telerik credentials multiple times. The persistence is done in a secure manner and credentials are saved in a per-user context. This way other users on the machine that do not have access to your user data from downloading through your account.

If your subscription has expired, you could either proceed with downloading a trial distribution  or you could renew it and initiate the download again.

![installation-deployment-and-distribution-vsx-automatic-latest-version-acquirer 003](images/installation-deployment-and-distribution-vsx-automatic-latest-version-acquirer003.png)

You can check the additional information about the release by clicking the __Release Notes__ link. This will start a browser, navigated to a page with the release notes related to the specific version.

![installation-deployment-and-distribution-vsx-automatic-latest-version-acquirer 004](images/installation-deployment-and-distribution-vsx-automatic-latest-version-acquirer004.png)

![installation-deployment-and-distribution-vsx-automatic-latest-version-acquirer 005](images/installation-deployment-and-distribution-vsx-automatic-latest-version-acquirer005.png)

Once the download succeeds, the latest version of the Progress&reg; Telerik&reg; UI for WinForms will be available for use in the [Upgrade Wizard]({%slug winforms/installation-deployment-and-distribution/visual-studio-extensions/upgrade-project%}) and the [New Project Wizard]({%slug winforms/installation-deployment-and-distribution/visual-studio-extensions/project-creation%}).


>tip The Download buttons of the [Upgrade Wizard]({%slug winforms/installation-deployment-and-distribution/visual-studio-extensions/upgrade-project%}) and the [New Project Wizard]({%slug winforms/installation-deployment-and-distribution/visual-studio-extensions/project-creation%}) launch the Latest Version Acquirer tool too.
>

>note The Latest Version Acquirer tool actually downloads the hotfix zip files, containing the latest Telerik binaries and any resources vital for the Telerik WinForms project creation. These get unpacked to the %appdata%\Telerik\Updates folder.
>If you find the list of packages offered too long and you don't need the older versions, you can close Visual Studio and use Windows Explorer to delete these distributions.
>
