---
title: Properties, Methods and Events
page_title: Localization | Task Dialog
description: RadTaskDialog is a themable alternative of the windows dialog boxes and the newly released TaskDialog for .NET 5.
slug: task-dialog-properties-methods-events
tags: task dialog, api, properties, methods, events
published: True
position: 5 
---

## RadTaskDialog's Properties

|Property|Description|
|----|----|
|**OpenedForms**|Gets a collection of the opened task dialog forms.|
|**CurrentForm**|Gets the current RadTaskDialogForm that is about to be shown. Note that if the form is already shown, this property will return a new instance of RadTaskDialogForm. To access shown forms use the OpenedForms property.|

## RadTaskDialogPage's Properties

|Property|Description|
|----|----|
|**HeaderLayout**|Gets the header layout, which holds the Icon, header text element and the ContentArea.|
|**UseWideContentArea**|Gets or sets a value indicating, whether the content area will occupy the full width of the RadTaskDialogPage.|
|**UseEqualHeaderAndIconHeight**|Gets or sets a value indicating whether the header text and the icon will have equal heights.|
|**BottomLayout**|Gets the bottom layout of the page, which holds the CommandArea, Footnote and the bottom description.|
|**ContentArea**|Gets the content area, which holds the page text, expander(description) text, progress bar, radio buttons and the command link buttons.|
|**CommandArea**|Gets the command area, which holds the Expander, Verification and CommandAreaButtons.|
|**Footnote**|Gets or sets the footnote.|
|**ElementsStack**|Gets the vertical stack that holds the HeaderLayout and the BottomLayout.|
|**BoundDialog**|Gets the bounds RadTaskDialogForm.|
|**Caption**|Gets or sets the text of the RadTaskDialogForm when this page is shown in the dialog.|
|**Heading**|Gets or sets the heading text.|
|**Icon**|Gets or sets the icon.|
|**AllowCancel**|Gets or sets a value indicating whether to show the close button of the RadTaskDialogForm.|
|**AllowMinimize**|Gets or sets a value indicating whether to show the minimize button of the RadTaskDialogForm.|
|**SizeToContent**|Gets or sets a value indicating whether to use its default size or the size of the page(form) will be according to the content of the page.|
|**RightToLeftLayout**|Gets or sets a value indicating whether the page layout is right to left.|
|**ContentAreaButtons**|Gets or sets the RadTaskDialogCommandLinkButton collection.|
|**RadioButtons**|Gets or sets the RadTaskDialogRadioButton collection.|
|**CommandAreaButtons**|Gets or sets the command button collection.|
|**DefaultButton**|Gets or sets the default buttons of the page, which has the initial focus when the page is shown.|
|**Verification**|Gets or sets the page verification check box.|
|**Expander**|Gets or sets the page expander.|
|**ProgressBar**|Gets or sets the page progress bar.|
|**ClickedButton**|Gets the clicked button of the page.|

## RadTaskDialog's Methods 

|Method|Description|
|----|----|
|**Show(RadTaskDialogPage page, RadTaskDialogStartupLocation startupLocation = RadTaskDialogStartupLocation.CenterOwner)**|Displays a non-modal RadTaskDialog with UI that is specified by the RadTaskDialogPage.|
|**Show(IWin32Window owner, RadTaskDialogPage page, RadTaskDialogStartupLocation startupLocation = RadTaskDialogStartupLocation.CenterOwner)**|Displays a non-modal RadTaskDialog with UI that is specified by the RadTaskDialogPage and IWin32Window that will own the RadTaskDialog.|
|**Show(IntPtr hwndOwner, RadTaskDialogPage page, RadTaskDialogStartupLocation startupLocation = RadTaskDialogStartupLocation.CenterOwner)**|Displays a non-modal RadTaskDialog with UI that is specified by the RadTaskDialogPage and IWin32Window that will own the RadTaskDialog. The first input parameter is the handle of the owner window.|
|**ShowDialog(RadTaskDialogPage page, RadTaskDialogStartupLocation startupLocation = RadTaskDialogStartupLocation.CenterOwner)**|Displays a modal RadTaskDialog with UI that is specified by the RadTaskDialogPage.|
|**ShowDialog(IWin32Window owner, RadTaskDialogPage page, RadTaskDialogStartupLocation startupLocation = RadTaskDialogStartupLocation.CenterOwner)**|Displays a modal RadTaskDialog with UI that is specified by the RadTaskDialogPage and IWin32Window that will own the RadTaskDialog.|
|**ShowDialog(IntPtr hwndOwner, RadTaskDialogPage page, RadTaskDialogStartupLocation startupLocation = RadTaskDialogStartupLocation.CenterOwner)**|Displays a modal RadTaskDialog with UI that is specified by the RadTaskDialogPage and IWin32Window that will own the RadTaskDialog. The first input parameter is the handle of the owner window.|

## RadTaskDialogPage's Methods

|Method|Description|
|----|----|
|**AddedToForm**|Notifies the page, when it is added to a RadTaskDialogForm.|
|**Navigate**|Navigates the RadTaskDialogForm to another page.|

## RadTaskDialogPage's Events

|Event|Description|
|----|----|
|**Created**|Raised after the RadTaskDialogPage is bound to a task dialog: after the dialog was created or navigated.|
|**Destroyed**|Raised when this RadTaskDialogPage is about to be unbound from a task dialog: when the dialog is about to be destroyed or about to navigate to another page.|
|**HelpRequest**|Raised when the user presses `F1` or clicks the "Help" standard button.|



# See Also

* [Getting Started]({%slug task-dialog-getting-started%})
* [Structure]({%slug task-dialog-structure%})
* [Element Types]({%slug task-dialog-element-types%})
 
        
