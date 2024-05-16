---
title: License file (licx)
page_title: License file (licx) - UI for WinForms Documentation
description: License file (licx)
slug: winforms/licensing/license-file-(licx)
tags: license,file,(licx)
published: True
position: 1
previous_url: licensing-license-file
---

# License file (licx)

>caution  As of __Q2 2024__, __Telerik UI for WinForms__ suite does not generate anymore the License file (licx).

Тhe __Telerik UI for WinForms__ suite uses the standard .NET licensing mechanism, which means that using the controls in design-time causes Visual Studio to add a  [__license.licx file__](https://docs.microsoft.com/en-us/dotnet/framework/tools/lc-exe-license-compiler) to the solution. This file is used only in design-mode and is not needed for deployment.
      

The purpose of the license file is to:
			

* combat copyright infringement.
					

* provide license holders in the company with statistics on the use of the available licenses.
					

* send anonymous statistics about the controls usage (so it may generate some network requests to the Telerik servers).
					

Having this license file is not expected to bring any performance/compilation issues and you can ignore it.
      

In case your project build fails with errors pointing to the license file, you can delete it and rebuild.
      

If you are working under source control, once the file is created it will be detected as a change by your source control system. We would suggest that you check-in this file initially. Then, when it is checked out again during your work, it is up to you to decide whether to check it in, or discard the changes.
      

## 
