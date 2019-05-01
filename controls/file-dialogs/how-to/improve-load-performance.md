---
title: Improve Load Performance
page_title: Improve Load Performance | File Dialogs
description: File Dialogs represent the three most commonly used file and folder manipulation dialogs
slug: winforms/file-dialogs/improve-load-performance
tags: filedialogs, performance
published: True
position: 0 
---

# Improve Load Performance

In order to achieve optimal load performance with **RadFileDialogs** controls, you should be familiar with the following performance tips:

* Whenever possible, you should use a single instance of a dialog for multiple openings. This will reduce the opening time for every open after the initial one.

* Setting the **ExpandToCurrentDirectory** to *False* will improve the loading time.

* Setting an **InitialDirectory** that has fewer directories and files will reduce the loading time.

* When developing an application that contains **RadFileDialogs**, run it in Release mode, instead of in Debug mode. This way you will avoid the caught exceptions while traversing the file system, which will improve performance.
