---
title: Localization
page_title: Localization
description: Localization
slug: radspreadsheet-localization
tags: localization
published: True
position: 7
---

# Localization
 
To change the default English localization provider you should use the __CurrentProvider__ static property of the __SpreadsheetLocalizationProvider__ class. For example, you can load the string from a XML file like this:

{{source=..\SamplesCS\Spreadsheet\Localization.cs region=LoadFromFile}} 
{{source=..\SamplesVB\Spreadsheet\Localization.vb region=LoadFromFile}}
````C#
public void FileProvider()
{
    SpreadsheetLocalizationProvider.CurrentProvider = SpreadsheetLocalizationProvider.FromFile(@"C:\SpreadSheedStringsFile");
}

````
````VB.NET
Public Sub FileProvider()
    SpreadsheetLocalizationProvider.CurrentProvider = SpreadsheetLocalizationProvider.FromFile("C:\SpreadSheedStringsFile")
End Sub

```` 

 
{{endregion}} 

 
>important You can download a XML file that contains all the currently used strings from here: [Strings file]()
>

>note __SpreadsheetLocalizationProvider__ contains all strings related to the __RadSpreadsheetRibbonBar__ as well.
>

Another approach is to create a custom localization provider class which inherits __SpreadsheetLocalizationProvider__. In it you should just override the __GetLocalizedString__  method and return the localized string depending on current id.

{{source=..\SamplesCS\Spreadsheet\Localization.cs region=CustomProvider}} 
{{source=..\SamplesVB\Spreadsheet\Localization.vb region=CustomProvider}}
````C#
public class MySpreadsheetLocalizationProvider : SpreadsheetLocalizationProvider
{
    public override string GetLocalizedString(string id)
    {
        switch (id)
        {
            //----------------------
            case "Spreadsheet_Workbook":
                return "Spreadsheet Workbook";
           //----------------------
        }
        return base.GetLocalizedString(id);
    }
}

````
````VB.NET
Public Class MySpreadsheetLocalizationProvider
    Inherits SpreadsheetLocalizationProvider
    Public Overrides Function GetLocalizedString(ByVal id As String) As String
        Select Case id
                '----------------------
            Case "Spreadsheet_Workbook"
                Return "Spreadsheet Workbook"
                '----------------------
        End Select
        Return MyBase.GetLocalizedString(id)
    End Function
End Class

```` 

 
{{endregion}} 

The following code snippet shows how you can use the new class:

{{source=..\SamplesCS\Spreadsheet\Localization.cs region=ChangeProvider}} 
{{source=..\SamplesVB\Spreadsheet\Localization.vb region=ChangeProvider}}
````C#
public Localization()
{
    SpreadsheetLocalizationProvider.CurrentProvider = new MySpreadsheetLocalizationProvider();
    InitializeComponent();
}

````
````VB.NET
Public Sub New()
    SpreadsheetLocalizationProvider.CurrentProvider = New MySpreadsheetLocalizationProvider()
    InitializeComponent()
End Sub

```` 

 
{{endregion}} 

>note It is necessary to set the SpreadsheetLocalizationProvider. __CurrentProvider__ property before initializing the components.
>