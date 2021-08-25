---
title: How to Deal with AntiVirus Alerts
description: Learn how to deal with AntiVirus alerts detecting Telerik UI for WinForms suite as malware.
type: how-to
page_title: How to Deal with AntiVirus Alerts
slug: antivirus-alert
position: 5
tags: alert, virus, malware
ticketid: 1450364
res_type: kb
---


## Environment
|Product Version|Product|Author|
|----|----|----|
|2021.2.511|Telerik UI for WinForms|[Desislava Yordanova](https://www.telerik.com/blogs/author/desislava-yordanova)|

## Description

AntiVirus software may block the compiled Telerik WinForms application running from Visual Studio debugger, flagging the EXE as Malware or Trojan. 
 
## Solution

We understand that getting this kind of warning might be really disturbing to you. Telerik UI for WinForms suite doesn't contain any threats, the same is also valid for all of our assemblies. There are a few possible scenarios which might cause getting this warning.

One of them is that the file might have been corrupted/infected by other malicious software locally on your computer. To ensure this is not the case, you can check if the same version of Windows Defender gives the same warning on another machine with the same file. You can also try to zip the "infected" executable and send it to us by submitting a support ticket from your Telerik account. We will investigate if it has been corrupted in any way.

Another scenario is that such a warning is a detection for files that have a low reputation score based on analyzing data from the specific anti-virus' community of users. In other words, the protection software is giving a false positive. This functionality seems to be pretty new and it aims to protect you from "entirely new" malware which means it can give warnings for software it doesn't know much about (which might be the case, having in mind that our release may have been released just recently).

You can use [Virus total](https://www.virustotal.com/gui/home/upload) and test the file with various anti-virus software.

You are safe to ignore the alert. Generally speaking, very rarely we receive reports for similar issues. Usually, they are related to the installers. These issues, however, are with the anti-virus software.

 