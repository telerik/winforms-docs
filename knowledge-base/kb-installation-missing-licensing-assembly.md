---
title: Could not Find Assembly Telerik.Licensing.Runtime Compile Error After Upgrade
description: Unknown build error 'Could not find assembly Telerik.Licensing.Runtime' exception after upgrade.
page_title: The Project Cannot Find Telerik.Licensing.Runtime Assembly After Upgrade
type: troubleshooting
slug: kb-installation-missing-licensing-assembly
position: 0
tags: licensing,installation, telerik, licensing, license, key
res_type: kb
---

## Environment

<table>
	<tbody>
		<tr>
			<td>Product Version</td>
			<td>2025.1.211</td>
		</tr>
		<tr>
			<td>Product</td>
			<td>UI for WinForms</td>
		</tr>
	</tbody>
</table>

## Description

An error occurs after upgrade that the `Telerik.Licensing.Runtime` assembly cannot be found. The error message is something like this:

`Unknown build error, 'Could not find assembly 'Telerik.Licensing.Runtime, Version=1.4.6.0, Culture=neutral, PublicKeyToken=tokenhere'. Either explicitly load this assembly using a method such as LoadFromAssemblyPath() or use a MetadataAssemblyResolver that returns a valid assembly.`

This may happen if you upgrade to 2025 Q1 from an older version. With 2025 Q1, a new [licensing mechanism]({%slug license-key%}) was introduced, which requires you to reference the `Telerik.Licensing.Runtime` dll.

## Solution

To resolve the error, reference the `Telerik.Licensing.Runtime.dll` file in the project or install the `Telerik.Licensing` NuGet package.

If you install the Telerik UI for WinForms assemblies using NuGet packages, the `Telerik.Licensing` package is installed automatically and you should not see the beforementioned error.
