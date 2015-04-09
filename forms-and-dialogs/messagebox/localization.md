---
title: Localization
page_title: Localization
description: Localization
slug: forms-and-dialogs-messagebox-localization
tags: localization
published: True
position: 2
---

# Localization



## 

RadMessageBox provides localization of its buttons text via
RadMessageLocalizationProvider:

1. Start by creating a descendant of the RadGridLocalizationSettings
				    class. Then override the GetLocalizedString(string id) method, and, in its
				    implementation, provide a translation for the label and user messages. If
				    one is not provided, the default value will be returned - this is
				    guaranteed by the call to the base GetLocalizedString method in the default
				    clause of the switch statement. 
          	

#### __[C#] Creating a custom localization provider__

{{source=..\SamplesCS\Forms and Dialogs\MessageBox1.cs region=LocalizationProvider}}
	    public class MyRadMessageLocalizationProvider : RadMessageLocalizationProvider
	    {
	        public override string GetLocalizedString(string id)
	        {
	            switch (id)
	            {
	                case RadMessageStringID.AbortButton: return "Abbruch";
	                case RadMessageStringID.CancelButton: return "Löschen";
	                case RadMessageStringID.IgnoreButton: return "Ignorieren";
	                case RadMessageStringID.NoButton: return "Nein";
	                case RadMessageStringID.OKButton: return "OK";
	                case RadMessageStringID.RetryButton: return "Wiederholung";
	                case RadMessageStringID.YesButton: return "Ja";
	                default:
	                    return base.GetLocalizedString(id);
	            }
	        }
	    }
	{{endregion}}



#### __[VB.NET] Creating a custom localization provider__

{{source=..\SamplesVB\Forms and Dialogs\MessageBox1.vb region=LocalizationProvider}}
	Public Class MyRadMessageLocalizationProvider
	    Inherits RadMessageLocalizationProvider
	
	    Public Overloads Overrides Function GetLocalizedString(ByVal id As String) As String
	        Select Case id
	            Case RadMessageStringID.AbortButton
	                Return "Abbruch"
	            Case RadMessageStringID.CancelButton
	                Return "Löschen"
	            Case RadMessageStringID.IgnoreButton
	                Return "Ignorieren"
	            Case RadMessageStringID.NoButton
	                Return "Nein"
	            Case RadMessageStringID.OKButton
	                Return "OK"
	            Case RadMessageStringID.RetryButton
	                Return "Wiederholung"
	            Case RadMessageStringID.YesButton
	                Return "Ja"
	            Case Else
	                Return MyBase.GetLocalizedString(id)
	        End Select
	    End Function
	End Class
	{{endregion}}



1.  
          To apply the custom localization provider, instantiate and assign it to the current localization provider:
      		

#### __[C#] Setting the custom localization provider to RadMessageBox__

{{source=..\SamplesCS\Forms and Dialogs\MessageBox1.cs region=settingTheLocalizationProvider}}
	            RadMessageLocalizationProvider.CurrentProvider = new MyRadMessageLocalizationProvider();
	{{endregion}}



#### __[VB.NET] Setting the custom localization provider to RadMessageBox__

{{source=..\SamplesVB\Forms and Dialogs\MessageBox1.vb region=settingTheLocalizationProvider}}
	        RadMessageLocalizationProvider.CurrentProvider = New MyRadMessageLocalizationProvider()
	{{endregion}}


