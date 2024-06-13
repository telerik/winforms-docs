---
title: Unable to build project after upgrade. Now what?
description: Unable to build project after upgrade. Now what?. Check it now!
type: how-to
page_title: Unable to build project after upgrade. Now what?
slug: unable-to-build-project-after-upgrade
tags: common
res_type: kb
---


|Product Version|Product|Author|Last modified|
|----|----|----|----|
|Q2 2013|RadControls for WinForms|Stefan Stefanov|July 4, 2013|

 
## PROBLEM  

When updating from a **major to a** **minor version**(e.g. you have Q1 XXXX installed and you are installing the Q1 XXXX Service Pack), the Control Panel will uninstall the major version (from both the hard drive and GAC) and install the minor one (in both Program Files and GAC). However, in this case the path to the assemblies will not be changed i.e the minor version will be installed in the same location where the major version was installed, hence your projects will still work as they the needed references are in the same path (location).   

However, if you upgrade to a major version (Q or a Service Pack from a different major release e.g. from Q1 XXXX to Q2 XXXX or from Q1 XXXX SP2 to Q2 XXXX), this will first remove the already installed version (unless you have checked the "Keep previous parallel versions" check box in the Control Panel's settings (see the last image in this [blog post](http://blogs.telerik.com/chriseargle/posts/12-11-16/notifications-and-settings-in-telerik-control-panel.aspx))) and then it will install the new one. The difference with the previous case is that since this is another major release, the path will not be kept and the suite will be installed in its new folder. In this case your project remains with the old references and since they do not exist any more you will not be able to build it.  
   
 More information about parallel versions can be found in the Control Panel's documentation, which is available by clicking the help button on the top right corner of the form:  
 ![](images/ControlPanelHelp.png)  
   
## SOLUTION  
  
**Replace the project references** with the new ones. There are two ways to do that:     

1. Use our Upgrade Wizard (started by using the Telerik &gt; RadControls for WinForms &gt; Upgrade Wizard menu item) and upgrade your project with a few clicks. More information is available in the following documentation article: https://docs.telerik.com/devtools/winforms/visual-studio-integration/visual-studio-extensions/upgrade-project.  
   

2. Manually change your project references:
 
- Go ahead and open the References node in the Solution Explorer and make a list with all Telerik assemblies.
- Then select and remove them.
- Right click the References node &gt; Add Reference
- In the .NET tab (or the Assemblies &gt; Extensions node in VS2012 and above) find the Telerik references from your list and add them back.
 
With either approach, your project references will be updated to the new version and you wlll be able to successfully build your project.  
 

