---
title: Troubleshooting
page_title: Troubleshooting
description: Troubleshooting
slug: richtexteditor-troubleshooting
tags: troubleshooting
published: False
position: 15
---

# Troubleshooting



This article describes common problems that can be encountered when using __RadRichTextEditor__ and their solutions.
      

It contains the following topics:

* [Exception when inserting or manipulating images.](#Exception_when_inserting_or_manipulating_images)

## Exception when inserting or manipulating images

RadRichTextEditor uses the RadBitmap class to visualize images. RadBitmap, on the other hand, internally uses
            [WritableBitmap](http://msdn.microsoft.com/en-us/library/system.windows.media.imaging.writeablebitmap(v=vs.100).aspx).
          

Unfortunately, WritableBitmap is not always very efficient when populated with an extremely large image and on some occasions inserting or
          manipulating (for example, applying an effect to) such image might cause performance diminishment as well as an OutOfMemory exception. At this
          point there is no workaround for the issue.
        
