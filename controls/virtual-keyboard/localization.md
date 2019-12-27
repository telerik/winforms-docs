---
title: Localization
page_title: Localization | Virtual Keyboard
description: RadVirtualKeyboard is a software component that allows the input of characters without the need for physical keys. 
slug: virtual-keyboard-localization
tags: virtual, keyboard
published: True
position: 10
---

# Localization

To localize **RadVirtualKeyboard** and **RadVirtualKeyboardForm** to display control text and messages in a specific language:

* All required classes for localization are defined in Telerik.WinControls.UI.Localization namespace.

* Start by creating a descendant of the **VirtualKeyboardLocalizationProvider** class.

* Override the **GetLocalizedString(string id)** method and provide a translation for the label and user messages. If a translation is not provided, the default value will be returned. This behavior is guaranteed by the call of the base **GetLocalizedString** method in the default clause of the switch statement in the example.

Below is a sample implementation of an English localization provider:

#### English localization provider

{{source=..\SamplesCS\VirtualKeyboard\VirtualKeyboardLocalization.cs region=Localization}} 
{{source=..\SamplesVB\VirtualKeyboard\VirtualKeyboardLocalization.vb region=Localization}}

````C#
public class EnglishVirtualKeyboardLocalizationProvider : VirtualKeyboardLocalizationProvider
{
    public override string GetLocalizedString(string id)
    {
        switch (id)
        {
            case VirtualKeyboardStringId.KeyEscape: return "Esc";
            case VirtualKeyboardStringId.KeyTab: return "Tab";
            case VirtualKeyboardStringId.KeyCapsLock: return "CapsLock";
            case VirtualKeyboardStringId.KeyLeftShift: return "Shift";
            case VirtualKeyboardStringId.KeyLeftControl: return "Ctrl";
            case VirtualKeyboardStringId.KeyLeftWin: return "Win";
            case VirtualKeyboardStringId.KeyAlt: return "Alt";
            case VirtualKeyboardStringId.KeySpace: return "";
            case VirtualKeyboardStringId.KeyAltGr: return "AltGr";
            case VirtualKeyboardStringId.KeyRightWin: return "Win";
            case VirtualKeyboardStringId.KeyRightControl: return "Ctrl";
            case VirtualKeyboardStringId.KeyRightShift: return "Shift";
            case VirtualKeyboardStringId.KeyEnter: return "Enter";
            case VirtualKeyboardStringId.KeyBackspace: return "Back";
            case VirtualKeyboardStringId.KeyNumLock: return "NumLock";
            case VirtualKeyboardStringId.KeyNumpadEnter: return "Enter";
            case VirtualKeyboardStringId.KeyInsert: return "Ins";
            case VirtualKeyboardStringId.KeyDelete: return "Del";
            case VirtualKeyboardStringId.KeyHome: return "Home";
            case VirtualKeyboardStringId.KeyEnd: return "End";
            case VirtualKeyboardStringId.KeyPageUp: return "PgUp";
            case VirtualKeyboardStringId.KeyPageDown: return "PgDn";
            case VirtualKeyboardStringId.KeyUp: return '\ue013'.ToString();
            case VirtualKeyboardStringId.KeyDown: return '\ue015'.ToString();
            case VirtualKeyboardStringId.KeyLeft: return '\ue016'.ToString();
            case VirtualKeyboardStringId.KeyRight: return '\ue014'.ToString();

            case VirtualKeyboardStringId.KeyF1: return "F1";
            case VirtualKeyboardStringId.KeyF2: return "F2";
            case VirtualKeyboardStringId.KeyF3: return "F3";
            case VirtualKeyboardStringId.KeyF4: return "F4";
            case VirtualKeyboardStringId.KeyF5: return "F5";
            case VirtualKeyboardStringId.KeyF6: return "F6";
            case VirtualKeyboardStringId.KeyF7: return "F7";
            case VirtualKeyboardStringId.KeyF8: return "F8";
            case VirtualKeyboardStringId.KeyF9: return "F9";
            case VirtualKeyboardStringId.KeyF10: return "F10";
            case VirtualKeyboardStringId.KeyF11: return "F11";
            case VirtualKeyboardStringId.KeyF12: return "F12";

            case VirtualKeyboardStringId.ErrorBoxTitle: return "Error!";
            case VirtualKeyboardStringId.ErrorFileNotFoundMessage: return "File not found!";
            case VirtualKeyboardStringId.ErrorLoadingLayoutMessage: return "Error loading layout!";

            case VirtualKeyboardStringId.FormText: return "Virtual Keyboard";
            default:
                return id;
        }
    }
}



````
````VB.NET

Public Class EnglishVirtualKeyboardLocalizationProvider
    Inherits VirtualKeyboardLocalizationProvider

    Public Overrides Function GetLocalizedString(ByVal id As String) As String
        Select Case id
            Case VirtualKeyboardStringId.KeyEscape
                Return "Esc"
            Case VirtualKeyboardStringId.KeyTab
                Return "Tab"
            Case VirtualKeyboardStringId.KeyCapsLock
                Return "CapsLock"
            Case VirtualKeyboardStringId.KeyLeftShift
                Return "Shift"
            Case VirtualKeyboardStringId.KeyLeftControl
                Return "Ctrl"
            Case VirtualKeyboardStringId.KeyLeftWin
                Return "Win"
            Case VirtualKeyboardStringId.KeyAlt
                Return "Alt"
            Case VirtualKeyboardStringId.KeySpace
                Return ""
            Case VirtualKeyboardStringId.KeyAltGr
                Return "AltGr"
            Case VirtualKeyboardStringId.KeyRightWin
                Return "Win"
            Case VirtualKeyboardStringId.KeyRightControl
                Return "Ctrl"
            Case VirtualKeyboardStringId.KeyRightShift
                Return "Shift"
            Case VirtualKeyboardStringId.KeyEnter
                Return "Enter"
            Case VirtualKeyboardStringId.KeyBackspace
                Return "Back"
            Case VirtualKeyboardStringId.KeyNumLock
                Return "NumLock"
            Case VirtualKeyboardStringId.KeyNumpadEnter
                Return "Enter"
            Case VirtualKeyboardStringId.KeyInsert
                Return "Ins"
            Case VirtualKeyboardStringId.KeyDelete
                Return "Del"
            Case VirtualKeyboardStringId.KeyHome
                Return "Home"
            Case VirtualKeyboardStringId.KeyEnd
                Return "End"
            Case VirtualKeyboardStringId.KeyPageUp
                Return "PgUp"
            Case VirtualKeyboardStringId.KeyPageDown
                Return "PgDn"
            Case VirtualKeyboardStringId.KeyUp
                Return ""c.ToString()
            Case VirtualKeyboardStringId.KeyDown
                Return ""c.ToString()
            Case VirtualKeyboardStringId.KeyLeft
                Return ""c.ToString()
            Case VirtualKeyboardStringId.KeyRight
                Return ""c.ToString()
            Case VirtualKeyboardStringId.KeyF1
                Return "F1"
            Case VirtualKeyboardStringId.KeyF2
                Return "F2"
            Case VirtualKeyboardStringId.KeyF3
                Return "F3"
            Case VirtualKeyboardStringId.KeyF4
                Return "F4"
            Case VirtualKeyboardStringId.KeyF5
                Return "F5"
            Case VirtualKeyboardStringId.KeyF6
                Return "F6"
            Case VirtualKeyboardStringId.KeyF7
                Return "F7"
            Case VirtualKeyboardStringId.KeyF8
                Return "F8"
            Case VirtualKeyboardStringId.KeyF9
                Return "F9"
            Case VirtualKeyboardStringId.KeyF10
                Return "F10"
            Case VirtualKeyboardStringId.KeyF11
                Return "F11"
            Case VirtualKeyboardStringId.KeyF12
                Return "F12"
            Case VirtualKeyboardStringId.ErrorBoxTitle
                Return "Error!"
            Case VirtualKeyboardStringId.ErrorFileNotFoundMessage
                Return "File not found!"
            Case VirtualKeyboardStringId.ErrorLoadingLayoutMessage
                Return "Error loading layout!"
            Case VirtualKeyboardStringId.FormText
                Return "Virtual Keyboard"
            Case Else
                Return id
        End Select
    End Function
End Class


```` 

{{endregion}}

To apply the custom localization provider, instantiate and assign it to the current localization provider:

#### Apply the custom provider

{{source=..\SamplesCS\VirtualKeyboard\VirtualKeyboardLocalization.cs region=ApplyProvider}} 
{{source=..\SamplesVB\VirtualKeyboard\VirtualKeyboardLocalization.vb region=ApplyProvider}}

````C#
VirtualKeyboardLocalizationProvider.CurrentProvider = new EnglishVirtualKeyboardLocalizationProvider();


````
````VB.NET
VirtualKeyboardLocalizationProvider.CurrentProvider = New EnglishVirtualKeyboardLocalizationProvider()


```` 

{{endregion}}

 


 
        
