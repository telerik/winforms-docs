---
title: Adding RadControls to Visual Studio Toolbox in .NET Framework Projects
page_title: Adding RadControls to Visual Studio Toolbox
description: Telerik UI for WinForms are automatically added to Visual Studio Toolbox during installation. But there are also two ways to manually do that.
slug: winforms/installation-deployment-and-distribution/adding-radcontrols-to-visual-studio-toolbox
tags: adding,radcontrols,to,visual,studio,toolbox,net framework
published: True
position: 3
previous_url: installation-deployment-and-distribution-adding-radcontrols-to-visual-studio-toolbox
---

# Adding RadControls to Visual Studio Toolbox in .NET Framework Projects

Telerik UI for WinForms are automatically added to Visual Studio 2019/2022 Toolbox [during installation]({%slug winforms/installation-deployment-and-distribution/installing-on-your-computer%}). If however they do not appear in the toolbox after the installation, you can do this manually. There are two ways to manually add Telerik UI for WinForms to the Toolbox in your Visual Studio.

>caution This article is relevant when using .NET Framework. For .NET Core or newer versions, please refer to [NET Core Toolbox Version]({%slug core-toolbox-version%}).
      
## Using the Visual Studio menus

1. Run Visual Studio.

1. Open any windows forms project/solution.

1. Expand the Toolbox.

1. Right-click the Toolbox in the empty area underneath and choose __Add Tab__ to create a new tab. Name the tab "__Telerik UI for WinForms__".
         
1. Right-click in the empty space of the newly created tab and select __Choose Items__. A dialog will open, which lists all available controls from the assemblies in the GAC.
            
    >tip If you do not see Telerik WinForms controls, please see the __Troubleshooting__ section below.
              
1. Sort the assemblies by name and navigate to Telerik assemblies. Select all corresponding Telerik Controls (except for FilteredPropertyGrid) and click __OK__ to finish the operation.
            

1. All Telerik UI for WinForms should appear in the toolbox and you can start using them right away.

## Using the drag-drop approach

1. Run Visual Studio.

1. Open any windows forms project/solution.

1. Expand the Toolbox.

1. Right-click the Toolbox in the empty area underneath and choose __Add Tab__ to create a new tab. Name the tab "__Telerik UI for WinForms__".
            

1. Open a Windows Explorer and locate the Telerik assemblies folder.             
            
    >tip If you have installed the controls with the default settings then it would be this directory: 'C:\Program Files\Telerik\UI for WinForms\Version\Bin' or 'C:\Program Files (x86)\Progress\Telerik UI for WinForms R2 2019'. For the .NET2.0 version the assemblies are in the 'Bin' folder, for the .NET4.0 version the assemblies are in the 'Bin40' folder (note that currently RadRichTextEditor and RadSpellChecker are only available in the .NET4.0 version).
              
1. Select the following assemblies and drag-drop them to the empty space in the newly created tab in Visual Studio:
            
 * Telerik.WinControls.SpellChecker.dll

 * Telerik.WinControls.dll

 * Telerik.WinControls.GridView.dll

 * Telerik.WinControls.RadChart.dll

 * Telerik.WinControls.RadDiagram.dll

 * Telerik.WinControls.RadDock.dll

 * Telerik.WinControls.RadMarkupEditor.dll

 * Telerik.WinControls.Scheduler.dll

 * Telerik.WinControls.Themes.Aqua.dll

 * Telerik.WinControls.Themes.Breeze.dll

 * Telerik.WinControls.Themes.Desert.dll

 * Telerik.WinControls.Themes.HighContrastBlack.dll

 * Telerik.WinControls.Themes.Office2007Black.dll

 * Telerik.WinControls.Themes.Office2007Silver.dll

 * Telerik.WinControls.Themes.Office2010Black.dll

 * Telerik.WinControls.Themes.Office2010Blue.dll

 * Telerik.WinControls.Themes.Office2010Silver.dll

 * Telerik.WinControls.Themes.TelerikMetro.dll

 * Telerik.WinControls.Themes.Windows7.dll

 * Telerik.WinControls.UI.dll

 * Telerik.WinControls.ChartView.dll

 * Telerik.WinControls.Themes.Office2013Dark.dll

 * Telerik.WinControls.Themes.Office2013Light.dll

 * Telerik.WinControls.Themes.TelerikMetroBlue.dll

 * Telerik.WinControls.Themes.TelerikMetroTouch.dll
 
 * Telerik.WinControls.Themes.Material.dll

 * Telerik.WinControls.Themes.MaterialPink.dll

 * Telerik.WinControls.Themes.MaterialBlueGrey.dll

 * Telerik.WinControls.Themes.MaterialTeal.dll

 * Telerik.WinControls.Themes.VisualStudio2012Dark.dll

 * Telerik.WinControls.Themes.VisualStudio2012Light.dll

 * Telerik.WinControls.Themes.Windows8.dll
 
 * Telerik.WinControls.Themes.Fluent.dll
 
 * Telerik.WinControls.Themes.FluentDark.dll
 
 * Telerik.WinControls.Themes.Crystal.dll

 * Telerik.WinControls.Themes.CrystalDark.dll

 * Telerik.WinControls.PdfViewer.dll

 * Telerik.WinControls.PivotGrid.dll

 * Telerik.WinControls.RichTextEditor.dll
 
 * Telerik.WinControls.RadMap.dll
 
 * Telerik.WinControls.RadSpreadsheet.dll
 
 *  Telerik.WinControls.SyntaxEditor.dll

 * Telerik.WinControls.Themes.VisualStudio2022.dll


>Resetting the toolbox through the __Reset__ context command will remove the tools from the toolbox. If you need to reset the toolbox, just add the controls as described above.

## Troubleshooting

__Telerik assemblies do not appear in Visual Studio's Add reference dialog__

Make sure that the Telerik WinForms controls are added in the Global Assembly Cache (GAC) as described in the [Add/Remove RadControls to the Global Assembly Cache (GAC)]({%slug winforms/installation-deployment-and-distribution/application-deploymentadd-remove-radcontrols-to-the-global-assembly-cache-(gac)%}) topic. 

__Telerik assemblies do not appear in Visual Studio's Add reference dialog although they are added in the GAC__

To display your assembly in the __Add Reference__ dialog box, you can add a registry key, such as the following, which points to the location of the assembly:

[HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\.NETFramework\AssemblyFolders\Telerik UI for WinForms Q1 2014]@="C:\Program Files\Telerik\UI for WinForms\Q1 2014\bin\"
              
Change this according to your installation and version specifics. Restart Visual Studio .NET after you have added the key.

> note You can create the this registry entry under the __HKEY_LOCAL_MACHINE__ hive. This will change the setting for all of the users on the system. If you create this registry entry under __HKEY_CURRENT_USER__, this entry will affect the setting for only the current user. 
                
More information about this topic you could find in Microsoft Support Center: [How to display an assembly in the "Add Reference" dialog box](http://support.microsoft.com/?kbid=306149) 

__Repetitive RadControls entries in the Toolbox__

We have identified several occurrences of multiple/duplicated ToolBox items existing in the Visual Studio Toolbox. Unfortunately these seem to stem from a glitch in Visual Studio, which was still not reproduced reliably so that we can fix it, or ask Microsoft for a fix.
              
Below are the different kinds of occurrences and their possible fixes:
              

* Duplicate Toolbox items, remaining two entries per control:
                
 * this could be a result of having parallel Telerik UI for WinForms installations, which is the correct behavior (Visual Studio 2008 only)

 * this could be the result of an improper underregistration of an older Telerik UI for WinForms distribution, followed by the registration of the newer one. Usually either of the two approaches below helps fixing the problem:
                      

     * Close Visual Studio instances, start Windows Explorer, navigate to %localappdata%\Microsoft\VisualStudio\10.0 and delete the *.tbd files

     * Right-click the Toolbox inside Visual Studio and click Reset

* Multiple entries per control, number increasing with each start of the IDE: this is the worst scenario we have come across. All the registry entries and files on the customer machine seemed fine in this case. The only fix we were able to apply was a complete uninstall of Telerik UI for WinForms and Visual Studio 2010, followed by a clean install of the IDE and the suite.

# See Also

* [How to Deal with Multiplied Controls in Toolbox]({%slug multiplied-controls-in-toolbox%})
