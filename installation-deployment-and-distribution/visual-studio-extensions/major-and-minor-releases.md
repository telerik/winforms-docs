---
title: Major and Minor releases
page_title: Major and Minor releases
description: Major and Minor releases
slug: winforms/installation-deployment-and-distribution/visual-studio-extensions/major-and-minor-releases
tags: major,and,minor,releases
published: True
position: 10
previous_url: installation-deployment-and-distribution-vsx-major-and-minor-releases
---

# Major and Minor releases



## 

Telerik UI for WinForms has two types of official releases – major and minor releases. Examples of major releases are Q1 2011, Q3 2011 and examples of minor releases are Q3 2011 SP1, Q3 2011 SP2 and Q1 2012 SP1. Both major and minor releases are distributed as msi installation package which follows certain upgrade logic explained below.
        

First, major releases can be installed in parallel on the same machine. This means that when you install new major release it doesn’t uninstall your existing major releases. An example is that you can have Q2 2011, Q3 2011 and Q1 2012 installed at the same time.
        

Minor releases on the other hand can’t be installed in parallel when they are from the same major release. This means that when you install a newer minor release it will automatically uninstall the previous version minor release which is from the same major release. An example is that if there are two minor releases for the same major release e.g. Q1 2012 SP1 and Q1 2012 SP2 for the Q1 2012 release then you can have only one of the specified versions.
        

Here are some sample scenarios:

1. Parallel major releases

1. Install Q2 2011

1. Install Q3 2011

1. Install Q1 2012Result: all three versions (Q2 2011, Q3 2011 and Q1 2012) are installed in parallel on the machine
                

1. Minor releases from the same major release

1. Install Q1 2012

1. Install Q1 2012 SP1

1. Install Q1 2012 SP2Result: only the latest version (Q1 2012 SP2) is installed on the machine
                

1. Minor releases from different major releases

1. Install Q3 2011

1. Install Q3 2011 SP1

1. Install Q1 2012 SP1Result: Q3 2011 SP1 and Q1 2012 SP1 are installed on the machine
                

>note Part of the Telerik UI for WinForms are the Visual Studio Extensions. Since the Visual Studio Extensions integrate into the Visual Studio IDE they don’t support parallel versions. When newer version is installed regardless of its type (major/minor) the Visual Studio Extensions get updated to the newer version.
>

