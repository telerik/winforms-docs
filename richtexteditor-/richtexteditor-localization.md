---
title: Localization
page_title: Localization
description: Localization
slug: richtexteditor-localization
tags: localization
published: True
position: 11
---

# Localization



## 

To change the default English localization provider you should use the __CurrentProvider__ static property of the
          __RichTextBoxLocalizationProvider__ class. For example you can load the string from a xml file like this:
        

#### __[C#] __

{{region xml}}
	
	            RichTextBoxLocalizationProvider.CurrentProvider = RichTextBoxLocalizationProvider.FromFile(@"C:\RichTextBoxStrings.xml");
	
	{{endregion}}



#### __[VB.NET] __

{{region xml}}
	
	        RichTextBoxLocalizationProvider.CurrentProvider = RichTextBoxLocalizationProvider.FromFile("C:\RichTextBoxStrings.xml")
	
	        '#End Region
	
	        '#Region "change"
	
	        RichTextBoxLocalizationProvider.CurrentProvider = New MyRichTextBoxLocalizationProvider()
	
	        '#End Region
	    End Sub
	End Class
	
	#Region "custom"
	
	Public Class MyRichTextBoxLocalizationProvider
	    Inherits RichTextBoxLocalizationProvider
	
	    Public Overrides Function GetLocalizedString(ByVal id As String) As String
	        Select Case id
	            Case "Documents_FindReplaceDialog_FindNext"
	                Return "Weitersuchen"
	            Case "Documents_FindReplaceDialog_Header"
	                Return "Suchen und Ersetzen"
	            Case "Documents_FindReplaceDialog_Replace"
	                Return "Ersetzen"
	            Case "Documents_FindReplaceDialog_ReplaceAll"
	                Return "Alle ersetzen"
	            Case "Documents_FindReplaceDialog_ReplaceWith"
	                Return "Ersetzen durch"
	            Case "Documents_FindReplaceDialog_TextToFind"
	                Return "Suchen nach"
	            Case "Documents_FindReplaceDialog_RestartSearch"
	                Return "Zeigen unten die Multifunktionsleiste"
	            Case "Documents_FindReplaceDialog_SearchedTextNotFound"
	                Return "Der Suchbegriff wurde nicht gefunden"
	        End Select
	
	        Return MyBase.GetLocalizedString(id)
	    End Function
	End Class
	
	#End Region



Another approach is co create a custom localization provider class which inherits __RichTextBoxLocalizationProvider__.
        In it you should just override the __GetLocalizedString__ 
        method and return the localized string depending on current id.

#### __[C#] __

{{region custom}}
	        
	    public class MyRichTextBoxLocalizationProvider : RichTextBoxLocalizationProvider
	    {
	        public override string GetLocalizedString(string id)
	        {
	            switch (id)
	            {
	                case "Documents_FindReplaceDialog_FindNext":
	                    return "Weitersuchen";
	                case "Documents_FindReplaceDialog_Header":
	                    return "Suchen und Ersetzen";
	                case "Documents_FindReplaceDialog_Replace":
	                    return "Ersetzen";
	                case "Documents_FindReplaceDialog_ReplaceAll":
	                    return "Alle ersetzen";
	                case "Documents_FindReplaceDialog_ReplaceWith":
	                    return "Ersetzen durch";
	                case "Documents_FindReplaceDialog_TextToFind":
	                    return "Suchen nach";
	                case "Documents_FindReplaceDialog_RestartSearch":
	                    return "Zeigen unten die Multifunktionsleiste";
	                case "Documents_FindReplaceDialog_SearchedTextNotFound":
	                    return "Der Suchbegriff wurde nicht gefunden";
	            }
	    
	            return base.GetLocalizedString(id);
	        }
	    }
	
	{{endregion}}



#### __[VB.NET] __

{{region custom}}
	
	Public Class MyRichTextBoxLocalizationProvider
	    Inherits RichTextBoxLocalizationProvider
	
	    Public Overrides Function GetLocalizedString(ByVal id As String) As String
	        Select Case id
	            Case "Documents_FindReplaceDialog_FindNext"
	                Return "Weitersuchen"
	            Case "Documents_FindReplaceDialog_Header"
	                Return "Suchen und Ersetzen"
	            Case "Documents_FindReplaceDialog_Replace"
	                Return "Ersetzen"
	            Case "Documents_FindReplaceDialog_ReplaceAll"
	                Return "Alle ersetzen"
	            Case "Documents_FindReplaceDialog_ReplaceWith"
	                Return "Ersetzen durch"
	            Case "Documents_FindReplaceDialog_TextToFind"
	                Return "Suchen nach"
	            Case "Documents_FindReplaceDialog_RestartSearch"
	                Return "Zeigen unten die Multifunktionsleiste"
	            Case "Documents_FindReplaceDialog_SearchedTextNotFound"
	                Return "Der Suchbegriff wurde nicht gefunden"
	        End Select
	
	        Return MyBase.GetLocalizedString(id)
	    End Function
	End Class
	
	#End Region



The following code snipped shows how you can use the new class:

#### __[C#] __

{{region change}}
	            
	            RichTextBoxLocalizationProvider.CurrentProvider = new MyRichTextBoxLocalizationProvider();
	    
	{{endregion}}



#### __[VB.NET] __

{{region change}}
	
	        RichTextBoxLocalizationProvider.CurrentProvider = New MyRichTextBoxLocalizationProvider()
	
	        '#End Region
	    End Sub
	End Class
	
	#Region "custom"
	
	Public Class MyRichTextBoxLocalizationProvider
	    Inherits RichTextBoxLocalizationProvider
	
	    Public Overrides Function GetLocalizedString(ByVal id As String) As String
	        Select Case id
	            Case "Documents_FindReplaceDialog_FindNext"
	                Return "Weitersuchen"
	            Case "Documents_FindReplaceDialog_Header"
	                Return "Suchen und Ersetzen"
	            Case "Documents_FindReplaceDialog_Replace"
	                Return "Ersetzen"
	            Case "Documents_FindReplaceDialog_ReplaceAll"
	                Return "Alle ersetzen"
	            Case "Documents_FindReplaceDialog_ReplaceWith"
	                Return "Ersetzen durch"
	            Case "Documents_FindReplaceDialog_TextToFind"
	                Return "Suchen nach"
	            Case "Documents_FindReplaceDialog_RestartSearch"
	                Return "Zeigen unten die Multifunktionsleiste"
	            Case "Documents_FindReplaceDialog_SearchedTextNotFound"
	                Return "Der Suchbegriff wurde nicht gefunden"
	        End Select
	
	        Return MyBase.GetLocalizedString(id)
	    End Function
	End Class
	
	#End Region



You can download a xml file that contains all the currently used strings from here:
          [Strings file](http://www.telerik.com/docs/default-source/ui-for-winforms/richtextboxstrings.zip?sfvrsn=2)
