---
title: Properties, Methods and Events
page_title: Properties, Methods and Events | RadMessageBox
description: RadMessageBox displays a modal dialog box that contains a system icon, a set of buttons, and a brief application-specific message, such as status or error information.
slug: winforms/forms-and-dialogs/messagebox/properties-methods-events
tags: messagebox, structure
published: True
position: 4
---

# Properties

|Property|Description|
|----|----|
|__Instance__|Gets the RadMessageBoxForm instance.|
|__ShowInTaskbar__|Set the message to be shown in windows task bar. Default is *false*|

# RadMessageBoxForm's Properties

|Property|Description|
|----|----| 
|__EnableBeep__|Gets or sets a value indicating whether a beep is played when the message box is shown.|
|__ButtonsConfiguration__|Specifies which buttons to be displayed. It is *typeof(MessageBoxButtons)*.|
|__DefaultButton__|Specifies the default buttons on RadMessageBox. It is *typeof(MessageBoxDefaultButton)*.|
|__RightToLeft__|Specifies a value indicating whether the text appears from right to left, such as when using Hebrew or Arabic fonts.|
|__MessageText__|Sets the RadMessageBox's text.|
|__Text__|Sets the RadMessageBox's caption text.|
|__DetailsText__|Sets the RadMessageBox's details text.|
|__MessageIcon__|Sets the RadMessageBox's icon.|
|__ButtonSize__|Gets or sets the size of the buttons shown in the message box.|


# Methods

|Method|Description|
|----|----|
|__Show(string text)__|Displays RadMessageBox with specified text.|
|__Show(string text, string caption)__|Displays RadMessageBox with specified text and caption.|
|__Show(string text, string caption, MessageBoxButtons buttons)__|Displays a RadMessageBox with specified text, caption, and buttons.|
|__Show(string text, string caption, MessageBoxButtons buttons, string detailsText)__|Displays a RadMessageBox with specified text, caption, and buttons.|
|__Show(string text, string caption, MessageBoxButtons buttons, RadMessageIcon icon)__|Displays a RadMessageBox with specified text, caption, buttons, and icon.|
|__Show(string text, string caption, MessageBoxButtons buttons, RadMessageIcon icon, string detailsText)__|Displays a RadMessageBox with specified text, caption, buttons, and icon. |
|__Show(string text, string caption, MessageBoxButtons buttons, RadMessageIcon icon, MessageBoxDefaultButton defaultButton)__|Displays a RadMessageBox with specified text, caption, buttons, icon and default button.|
|__Show(string text, string caption, MessageBoxButtons buttons, RadMessageIcon icon, MessageBoxDefaultButton defaultButton, string detailsText)__|Displays a RadMessageBox with specified text, caption, buttons, icon and default button.|
|__Show(IWin32Window parent, string text)__|Displays a RadMessageBox in front of the specified object and with the specified text.|
|__Show(IWin32Window parent, string text, string caption)__|Displays a RadMessageBox in front of the specified object and with the specified text and caption.|
|__Show(IWin32Window parent, string text, string caption, MessageBoxButtons buttons)__|Displays a RadMessageBox in front of the specified object and with the specified text, caption, and buttons.|
|__Show(IWin32Window parent, string text, string caption, MessageBoxButtons buttons, string detailsText)__|Displays a RadMessageBox in front of the specified object and with the specified text, caption, and buttons.|
|__Show(IWin32Window parent, string text, string caption, MessageBoxButtons buttons, RadMessageIcon icon)__|Displays a RadMessageBox in front of the specified object and with the specified text, caption, buttons, and icon.|
|__Show(IWin32Window parent, string text, string caption, MessageBoxButtons buttons, Bitmap icon)__|Displays a RadMessageBox in front of the specified object and with the specified text, caption, buttons, and icon.|
|__Show(IWin32Window parent, string text, string caption, MessageBoxButtons buttons, RadMessageIcon icon, MessageBoxDefaultButton defaultBtn)__|Displays a RadMessageBox in front of the specified object and with the specified text, caption, buttons, icon, and default button.|
|__Show(IWin32Window parent, string text, string caption, MessageBoxButtons buttons, RadMessageIcon icon, MessageBoxDefaultButton defaultBtn, RightToLeft rtl)__|Displays a RadMessageBox in front of the specified object and with the specified text, caption, buttons, icon, and default button.|
|__Show(IWin32Window parent, string text, string caption, MessageBoxButtons buttons, RadMessageIcon icon, MessageBoxDefaultButton defaultBtn, RightToLeft rtl, string detailsText)__|Displays a RadMessageBox in front of the specified object and with the specified text, caption, buttons, icon, and default button.|
|__Show(IWin32Window parent, string text, string caption, MessageBoxButtons buttons, Bitmap icon, MessageBoxDefaultButton defaultBtn)__|Displays a RadMessageBox in front of the specified object and with the specified text, caption, buttons, icon, and default button.|

# Events

|Event|Description|
|----|----|
|__RadMessageBox.Instance.Shown__|Occurs whenever the RadMessageBoxForm is first displayed.|

# See Also

* [Properties](http://docs.telerik.com/devtools/winforms/api/html/properties_t_telerik_wincontrols_radmessagebox.htm)
* [Methods](http://docs.telerik.com/devtools/winforms/api/html/methods_t_telerik_wincontrols_radmessagebox.htm)
* [RadMessageBoxForm.Properties](http://docs.telerik.com/devtools/winforms/api/html/properties_t_telerik_wincontrols_radmessageboxform.htm)
* [RadMessageBoxForm.Methods](http://docs.telerik.com/devtools/winforms/api/html/methods_t_telerik_wincontrols_radmessageboxform.htm)
* [RadMessageBoxForm.Events](http://docs.telerik.com/devtools/winforms/api/html/events_t_telerik_wincontrols_radmessageboxform.htm)

 

