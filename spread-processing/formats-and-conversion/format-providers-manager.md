---
title: Format Providers Manager
page_title: Format Providers Manager | UI for WinForms Documentation
description: Format Providers Manager
slug: winforms/spread-processing/formats-and-conversion/format-providers-manager
tags: format,providers,manager
published: True
position: 1
---

# Format Providers Manager

__RadSpreadprocessing__  contains a __WorkbookFormatProvidersManager__ class that allows you to specify a set of format providers and import or export files letting the manager to choose the appropriate format provider. The class also exposes methods that return all registered providers and supported file extensions.

* [Registering Unregistering Format Providers](#registering-unregistering-format-providers)

* [Import](#import)

* [Export](#export)

* [Retrieve Registered Providers and Supported Extensions](#retrieve-registered-providers-and-supported-extensions)

## Registering Unregistering Format Providers

The __WorkbookFormatProvidersManager__ class contains two methods that allow you to register and unregister format providers respectively. The manager has the csv and txt format providers registered by default. The following snippet illustrates how to register the xlsx format provider.

>note Unlike the __CsvFormatProvider__ and __TxtFormatProvider__ classes, using __XlsxFormatProvider__ requires references to the following assemblies:

* Telerik.Windows.Documents.Spreadsheet.FormatProviders.OpenXml.dll
* Telerik.Windows.Zip.dll>

>



{{source=..\SamplesCS\RadSpreadProcessing\FormatsAndConversion\SpreadFormatProvidersManager.cs region=radspreadprocessing-formats-and-conversion-workbookformatprovidersmanager_0}} 
{{source=..\SamplesVB\RadSpreadProcessing\FormatsAndConversion\SpreadFormatProvidersManager.vb region=radspreadprocessing-formats-and-conversion-workbookformatprovidersmanager_0}} 

````C#
            
            WorkbookFormatProvidersManager.RegisterFormatProvider(new XlsxFormatProvider());
````
````VB.NET

        WorkbookFormatProvidersManager.RegisterFormatProvider(New XlsxFormatProvider())

        '
````

{{endregion}} 

You can also unregister format providers using the UnregisterFormatProvider() method. For example, the snippet below demonstrates how to unregister the TxtFormatProvider.

{{source=..\SamplesCS\RadSpreadProcessing\FormatsAndConversion\SpreadFormatProvidersManager.cs region=radspreadprocessing-formats-and-conversion-workbookformatprovidersmanager_1}} 
{{source=..\SamplesVB\RadSpreadProcessing\FormatsAndConversion\SpreadFormatProvidersManager.vb region=radspreadprocessing-formats-and-conversion-workbookformatprovidersmanager_1}} 

````C#
            
            IWorkbookFormatProvider provider = WorkbookFormatProvidersManager.GetProviderByName("TxtFormatProvider");
            if (provider != null)
            {
                WorkbookFormatProvidersManager.UnregisterFormatProvider(provider);
            }
````
````VB.NET

        Dim provider As IWorkbookFormatProvider = WorkbookFormatProvidersManager.GetProviderByName("TxtFormatProvider")
        If provider IsNot Nothing Then
            WorkbookFormatProvidersManager.UnregisterFormatProvider(provider)
        End If

        '
````

{{endregion}} 

## Import

The format providers manager exposes an Import() method that takes one string argument, which specifies the extension of the file to be imported,  and a Stream argument, which provides access to the file. The method tries to find a registered format provider that can handle the extension of the file you would like to import, and if such a provider is registered the file is imported. If the manager does not have an appropriate format registered, an __UnsupportedFileFormatException__ is thrown.

The following example demonstrates how to present the user with an OpenFileDialog and try to import the selected file. Note that you can use the __GetOpenFileDialogFilter__ () method of the __FileDialogHelper__ class to constructs the correct filter for all registered format providers.#_[C#]_

{{source=..\SamplesCS\RadSpreadProcessing\FormatsAndConversion\SpreadFormatProvidersManager.cs region=radspreadprocessing-formats-and-conversion-workbookformatprovidersmanager_2}} 
{{source=..\SamplesVB\RadSpreadProcessing\FormatsAndConversion\SpreadFormatProvidersManager.vb region=radspreadprocessing-formats-and-conversion-workbookformatprovidersmanager_2}} 

````C#
                
            Workbook workbook;
            OpenFileDialog openFileDialog = new OpenFileDialog();
            if (openFileDialog.ShowDialog() == System.Windows.Forms.DialogResult.OK)
            {
                try
                {
                    string extension = Path.GetExtension(openFileDialog.FileName);
                    using (Stream input = openFileDialog.OpenFile())
                    {
                        workbook = WorkbookFormatProvidersManager.Import(extension, input);
                    }
                }
                catch (IOException ex)
                {
                    throw new IOException("The file cannot be opened. It might be locked by another application.", ex);
                }
            }
````
````VB.NET

        Dim workbook As Workbook
        Dim openFileDialog As New OpenFileDialog()
        If openFileDialog.ShowDialog() = System.Windows.Forms.DialogResult.OK Then
            Try
                Dim extension As String = Path.GetExtension(openFileDialog.FileName)
                Using input As Stream = openFileDialog.OpenFile()
                    workbook = WorkbookFormatProvidersManager.Import(extension, input)
                End Using
            Catch ex As IOException
                Throw New IOException("The file cannot be opened. It might be locked by another application.", ex)
            End Try
        End If

        '
````

{{endregion}} 

You can achieve the same result through using the __OpenFile__ command. In fact, the command executes exactly the same code as above. That said, make sure you register the format providers you would like to use before using the command.

## Export

The format providers manager contains an __Export()__ method that takes three arguments: the workbook that is to be exported, a string that specified the extension of the saved file, and a Stream that will contain the data. The method attempts to find a provider that can handle a file of the specified extension and if such a provider is registered, the file is saved. If the manager does not have an appropriate registered provider, an __UnsupportedFileFormatException__ is raised.     
        

The next example illustrates how to use the __Export()__ method to save a file. The sample code presents the user with the SaveFileDialog. Note that here again you can use the __GetOpenFileDialogFilter()__ method of the __FileDialogHelper__  class to construct the correct filter for all registered format providers.

{{source=..\SamplesCS\RadSpreadProcessing\FormatsAndConversion\SpreadFormatProvidersManager.cs region=radspreadprocessing-formats-and-conversion-workbookformatprovidersmanager_3}} 
{{source=..\SamplesVB\RadSpreadProcessing\FormatsAndConversion\SpreadFormatProvidersManager.vb region=radspreadprocessing-formats-and-conversion-workbookformatprovidersmanager_3}} 

````C#
                
            SaveFileDialog saveFileDialog = new SaveFileDialog();
                    
            if (saveFileDialog.ShowDialog() == System.Windows.Forms.DialogResult.OK)
            {
                string extension = Path.GetExtension(saveFileDialog.FileName);
                using (Stream output = saveFileDialog.OpenFile())
                {
                    WorkbookFormatProvidersManager.Export(workbook, extension, output);
                }
            }
````
````VB.NET

        Dim saveFileDialog As New SaveFileDialog()

        If saveFileDialog.ShowDialog() = System.Windows.Forms.DialogResult.OK Then
            Dim extension As String = Path.GetExtension(saveFileDialog.FileName)
            Using output As Stream = saveFileDialog.OpenFile()
                WorkbookFormatProvidersManager.Export(workbook, extension, output)
            End Using
        End If

        '
````

{{endregion}} 

You can achieve the same result through using the __SaveFile__ command. In fact, the command executes exactly the same code as above. That said, make sure you register the format providers you would like to use before using the command.

## Retrieve Registered Providers and Supported Extensions

The __WorkbookFormatProvidersManager__ class offers several approaches to retrieve the registered format providers. The class offers the GetProviderByName() static method that searches through the registered providers to find a provider with a specific name. Also, the manager exposes the __GetProvderByExtension__ extension. The class also contains a static method ____xGetSupportedExtensions()__ that returns an IEnumeable of the currently supported file extensions.
